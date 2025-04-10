//###########################################################################
//
// FILE:    Example_281xEvTimerPeriod.c
//
// TITLE:  EV模块通用定时器周期中断实验.
// 
//
// 描述:
//
//          编程设置EVA Timer 1, EVA Timer 2, EVB Timer 3
//          EVB Timer 4为周期中断，每次中断进入中断服务子程序 
//          中相应计数值加1；
//
//          定时器1定时周期最短，EVB定时器4定时周期最长
//
//          运行程序后观察以下变量:
//
//                EvaTimer1InterruptCount;
//                EvaTimer2InterruptCount;
//                EvbTimer3InterruptCount;
//                EvbTimer4InterruptCount;
//
//###########################################################################
// 释放日期：150205
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File


// 使用前，声明本文件中的相关函数
interrupt void eva_timer1_isr(void);
interrupt void eva_timer2_isr(void);
interrupt void evb_timer3_isr(void);
interrupt void evb_timer4_isr(void);
void init_eva_timer1(void);
void init_eva_timer2(void);
void init_evb_timer3(void);
void init_evb_timer4(void);

// 本例中使用的全局变量
Uint32  EvaTimer1InterruptCount;
Uint32  EvaTimer2InterruptCount;
Uint32  EvbTimer3InterruptCount;
Uint32  EvbTimer4InterruptCount;

void main(void)
{


// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤

// 步骤 3. 清除所有中断,初始化中断向量表:
// 禁止CPU全局中断 
   DINT;

// 初始化PIE控制寄存器到他们的默认状态.
// 这个默认状态就是禁止PIE中断及清除所有PIE中断标志 
// 这个函数放在DSP281x_PieCtrl.c源文件里
   InitPieCtrl();
   
// 禁止CPU中断和清除所有CPU中断标志 
   IER = 0x0000;
   IFR = 0x0000;

//初始化PIE中断向量表，并使其指向中断服务子程序（ISR）
// 这些中断服务子程序被放在了DSP281x_DefaultIsr.c源文件中
// 这个函数放在了DSP281x_PieVect.c源文件里面.
   InitPieVectTable();

// 本例中的中断重新映射到本文件中的中断服务子程序中  
   EALLOW;  //解除寄存器保护
   PieVectTable.T1PINT = &eva_timer1_isr;
   PieVectTable.T2PINT = &eva_timer2_isr;
   PieVectTable.T3PINT = &evb_timer3_isr;
   PieVectTable.T4PINT = &evb_timer4_isr;
   EDIS;   // 添加寄存器保护

// 步骤 4.初始化片内外设:
   init_eva_timer1();
   init_eva_timer2();
   init_evb_timer3();
   init_evb_timer4();
   

// 步骤 5. 用户特定的代码来允许中断

    // 初始化计数值为0
    EvaTimer1InterruptCount = 0;
    EvaTimer2InterruptCount = 0;
    EvbTimer3InterruptCount = 0;
    EvbTimer4InterruptCount = 0;
 
    // 对于T1PINT使能PIE 组2中断4
    PieCtrlRegs.PIEIER2.all = M_INT4;
    // 对于T2PINT使能PIE 组3中断1
    PieCtrlRegs.PIEIER3.all = M_INT1;    
    //对于T3PINT使能PIE 组4中断4
    PieCtrlRegs.PIEIER4.all = M_INT4;
    // 对于T4PINT使能PIE 组5中断1
    PieCtrlRegs.PIEIER5.all = M_INT1;

    // 对于T1PINT使能CPU IN2；
    // 对于T2PINT使能CPU IN3；对于T3PINT使能CPU IN4；对于T4PINT使能CPU IN5
    IER |= (M_INT2 | M_INT3 | M_INT4 | M_INT5);

   //使能全局中断和高优先级的实时调试事件；
   EINT;   // 使能全局中断INTM
   ERTM;   // 使能全局实时中断DBGM

    // 步骤6：循环函数，等待周期中断；
    for(;;);

}

void init_eva_timer1(void)
{
    // 初始化 EVA定时器1:
    // 设置通用定时器控制寄存器（EV A）
    EvaRegs.GPTCONA.all = 0;
   
    // 设置通用定时器1的周期值为 0x0200
    EvaRegs.T1PR = 0x0200;       // 设置周期
    EvaRegs.T1CMPR = 0x0000;     // 比较寄存器
   
    // 使能定时器1相应的周期中断位
    // 使能T1中期中断，复位周期中断标志位
    EvaRegs.EVAIMRA.bit.T1PINT = 1;
    EvaRegs.EVAIFRA.bit.T1PINT = 1;

    // T1计数寄存器清零
    EvaRegs.T1CNT = 0x0000;
    EvaRegs.T1CON.all = 0x1742;//连续增计数模式，输入时钟为HSPCLK/128，使能定时器操作，使能定时器比较操作

    // 设置定时器1周期中断时启动ADC转换
    EvaRegs.GPTCONA.bit.T1TOADC = 2;

}

void init_eva_timer2(void)
{
    // 初始化 EVA定时器2:
    // 设置通用定时器控制寄存器（EV A）
    EvaRegs.GPTCONA.all = 0;
   
    // 设置通用定时器2的周期值为 0x0400
    EvaRegs.T2PR = 0x0400;       // 设置周期
    EvaRegs.T2CMPR = 0x0000;     // 比较寄存器
   
    // 使能定时器2相应的周期中断位
    // 使能T2中期中断，复位周期中断标志位
    EvaRegs.EVAIMRB.bit.T2PINT = 1;
    EvaRegs.EVAIFRB.bit.T2PINT = 1;

    // T2计数寄存器清零
    EvaRegs.T2CNT = 0x0000;
    EvaRegs.T2CON.all = 0x1742;

    // 设置定时器2周期中断时启动ADC转换
    EvaRegs.GPTCONA.bit.T2TOADC = 2;
}

void init_evb_timer3(void)
{
    // 初始化 EVB定时器3:
    // 设置通用定时器控制寄存器（EV A）
    EvbRegs.GPTCONB.all = 0;
   
    // 设置通用定时器3的周期值为 0x0800
    EvbRegs.T3PR = 0x0800;       // 设置周期
    EvbRegs.T3CMPR = 0x0000;     // 比较寄存器
   
    // 使能定时器3相应的周期中断位
    // 使能T3中期中断，复位周期中断标志位
    EvbRegs.EVBIMRA.bit.T3PINT = 1;
    EvbRegs.EVBIFRA.bit.T3PINT = 1;

    // T3计数寄存器清零
    EvbRegs.T3CNT = 0x0000;
    EvbRegs.T3CON.all = 0x1742;

    // 设置定时器3周期中断时启动ADC转换
    EvbRegs.GPTCONB.bit.T3TOADC = 2;
}

void init_evb_timer4(void)
{
    // 初始化 EVB定时器4:
    // 设置通用定时器控制寄存器（EV A）
    EvbRegs.GPTCONB.all = 0;
   
    // 设置通用定时器4的周期值为 0x1000
    EvbRegs.T4PR = 0x1000;       // 设置周期
    EvbRegs.T4CMPR = 0x0000;     // 比较寄存器
   
    // 使能定时器4相应的周期中断位
    // 使能T4中期中断，复位周期中断标志位
    EvbRegs.EVBIMRB.bit.T4PINT = 1;
    EvbRegs.EVBIFRB.bit.T4PINT = 1;

    // T4计数寄存器清零
    EvbRegs.T4CNT = 0x0000;
    EvbRegs.T4CON.all = 0x1742;

     // 设置定时器4周期中断时启动ADC转换
    EvbRegs.GPTCONB.bit.T4TOADC = 2;
} 


interrupt void eva_timer1_isr(void)
{
   EvaTimer1InterruptCount++;

   // 使能T1周期中断
   EvaRegs.EVAIMRA.bit.T1PINT = 1;

   // 清除T1PINT标志位
   EvaRegs.EVAIFRA.all = BIT7;

   // 应答位写1，允许PIE组2再次接受中断
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP2;
}

interrupt void eva_timer2_isr(void)
{
  EvaTimer2InterruptCount++;
 // 使能T2周期中断
  EvaRegs.EVAIMRB.bit.T2PINT = 1;
 
  // 清除T2PINT标志位 
  EvaRegs.EVAIFRB.all = BIT0;

  // 应答位写1，允许PIE组3再次接受中断
  PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}

interrupt void evb_timer3_isr(void)
{
  EvbTimer3InterruptCount++;
  // 清除T3PINT标志位 
  EvbRegs.EVBIFRA.all = BIT7;

  // 应答位写1，允许PIE组4再次接受中断
  PieCtrlRegs.PIEACK.all = PIEACK_GROUP4;

}

interrupt void evb_timer4_isr(void)
{
   EvbTimer4InterruptCount++;
   // 清除T4PINT标志位 
   EvbRegs.EVBIFRB.all = BIT0;

   // 应答位写1，允许PIE组5再次接受中断
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP5;

}


//===========================================================================
// No more.
//===========================================================================

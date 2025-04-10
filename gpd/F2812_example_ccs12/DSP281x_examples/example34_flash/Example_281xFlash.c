//###########################################################################
//
// FILE:   DSP28_281xFlash.c
//
// TITLE:  Flash烧写实验.
//
// ASSUMPTIONS:
//
//            
//          本例程需要将四位拨码S2的开关全部处于数字端，从而使DSP上电"boot to Flash"  
//
//          本例在FLASH里运行EV周期定时中断
//          
//          操作步骤：
//          1) 确认四位拨码S2的开关全部处于数字端
//          2)  连接CCS与DSP，之后编译项目
//          3) 烧写Flash the .out文件到FLASH中.
//          4) 将变量添加到watch window中 
//
//          Steps that were taken to convert the EV example from RAM 
//          to Flash execution:
//
//          - Change the linker cmd file to reflect the flash memory map.
//            This example uses the DSP281x F2812.cmd file.
//          - Make sure any initialized sections are mapped to Flash.  
//            In SDFlash utility this can be checked by the View->Coff/Hex
//            status utility. Any section marked as "load" should be
//            allocated to Flash.
//          - Make sure there is a branch instruction from the entry to Flash
//            at 0x3F7FF6 to the beginning of code execution. This example
//            uses the DSP281x_CodeStartBranch.asm file to accomplish this.
//          - Set boot mode Jumpers to "boot to Flash"
//          - For best performance from the flash, modify the waitstates
//            and enable the flash pipeline as shown in this example.
//            Note: any code that manipulates the flash waitstate and pipeline
//            control must be run from RAM. Thus these functions are located
//            in their own memory section called ramfuncs.
// 
// DESCRIPTION:
//
//          本例设置 EVA Timer 1, EVA Timer 2, EVB Timer 3和EVB Timer 4
//          为周期溢出中断，每次中断时，通过中断服务子程序里的计数变量来  
//          跟踪中断次数。
//
//          EVA Timer 1 拥有最短的计数周期，而 EVB Timer4 拥有最长的计数周期
//
//                eva_timer1_isr  在 RAM里运行, 使flash处于sleep模式
//                eva_timer2_isr  在 RAM里运行, 使flash处于standby模式
//                evb_timer3_isr  在 RAM里运行, 使flash处于sleep模式
//                                              之后使flash处于standby模式
//                evb_timer4_isr  在 FLASH里运行
//        
//          观察变量:
//
//                EvaTimer1InterruptCount;
//                EvaTimer2InterruptCount;
//                EvbTimer3InterruptCount;
//                EvbTimer4InterruptCount;
//
//###########################################################################
// 释放日期: 20150402
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

//  这些函数将再RAM里运行，所以需要定义不同的段
//这些段将被CMD文件映射到相应的地址

#pragma CODE_SECTION(eva_timer1_isr, "ramfuncs");
#pragma CODE_SECTION(eva_timer2_isr, "ramfuncs");
#pragma CODE_SECTION(evb_timer3_isr, "ramfuncs");

// 使用前，声明本文件中的相关函数
interrupt void eva_timer1_isr(void);
interrupt void eva_timer2_isr(void);
interrupt void evb_timer3_isr(void);
interrupt void evb_timer4_isr(void);
void init_eva_timer1(void);
void init_eva_timer2(void);
void init_evb_timer3(void);
void init_evb_timer4(void);

//本例使用的全局变量
Uint32 EvaTimer1InterruptCount;
Uint32 EvaTimer2InterruptCount;
Uint32 EvbTimer3InterruptCount;
Uint32 EvbTimer4InterruptCount;
Uint32 LoopCount;

// 申明外部变量(这里变量将在F2812.cmd里定义)
extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;


void main(void)
{
// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();
   
// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例跳过


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
   EALLOW;   //解除寄存器保护
   PieVectTable.T1PINT = &eva_timer1_isr;
   PieVectTable.T2PINT = &eva_timer2_isr;
   PieVectTable.T3PINT = &evb_timer3_isr;
   PieVectTable.T4PINT = &evb_timer4_isr;
   EDIS;   // 这里需要禁止写 EALLOW来保护寄存器

// 步骤 4.初始化片内外设:
   init_eva_timer1();
   init_eva_timer2();
   init_evb_timer3();
   init_evb_timer4();
     

// 步骤 5. 用户指定代码，允许中断；

// 复制关键代码和FLASH初始化代码到RAM里
// 这里包含以下子函数: EvaTimer1(), EvaTimer2()
// EvbTimer3 和 InitFlash();
// RamfuncsLoadStart, RamfuncsLoadEnd, 和 RamfuncsRunStart被考
// 链接器创建，具体请参F2812.cmd。
   MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);

// 调用FLASH初始化函数来配置flash等待状态
// 该函数必须在RAM里运行
   InitFlash();

   //初始化计数值为 0
   EvaTimer1InterruptCount = 0;
   EvaTimer2InterruptCount = 0;
   EvbTimer3InterruptCount = 0;
   EvbTimer4InterruptCount = 0;
   LoopCount = 0;
 

   // 使能 PIE 组 2 中断 4 为 T1PINT
   PieCtrlRegs.PIEIER2.all = M_INT4;
   // 使能 PIE 组 3中断 1 为 T2PINT
   PieCtrlRegs.PIEIER3.all = M_INT1;    
   // 使能 PIE 组 4 中断 4 为 T3PINT
   PieCtrlRegs.PIEIER4.all = M_INT4;
   // 使能 PIE 组 5 中断 1 为T4PINT
   PieCtrlRegs.PIEIER5.all = M_INT1;

   // 使能 CPU INT2 为 T1PINT, INT3 为 T2PINT, INT4 为 T3PINT
   // 和 INT5 为 T4PINT:
   IER |= (M_INT2 | M_INT3 | M_INT4 | M_INT5);

   // 启用全局中断和高优先级的实时调试事件： 


   EINT;   // 使能全局中断INTM
   ERTM;   // 使能全局实时中断 DBGM

// 步骤 6. 无限循环，等待中断；	
   while(1)
   {
       LoopCount++;
   }

} 
 

void init_eva_timer1(void)
{
    // 初始化 EVA 定时器 1:
    // 配置定时器 1 寄存器 (EV A)
    EvaRegs.GPTCONA.all = 0;
   
    // 为通用定时器 1设置周期值为 0x0200;
    EvaRegs.T1PR = 0x0200;       // 周期
    EvaRegs.T1CMPR = 0x0000;     // 比较寄存器
   
    // 使能通用定时器 1周期中断位
    // 增计数, x128, 内部时钟, 使能比较, 使用自己的周期寄存器值
    EvaRegs.EVAIMRA.bit.T1PINT = 1;
    EvaRegs.EVAIFRA.bit.T1PINT = 1;

    // 清除通用定时器 1计数值
    EvaRegs.T1CNT = 0x0000;
    EvaRegs.T1CON.all = 0x1742;

    //在定时器1周期中断时启动 EVA ADC 转换
    EvaRegs.GPTCONA.bit.T1TOADC = 2;

}

void init_eva_timer2(void)
{
	// 初始化 EVA 定时器 2:
    // 配置定时器 2 寄存器 (EV A)
    EvaRegs.GPTCONA.all = 0;
   
    // 为通用定时器 2设置周期值为 0x0400;
    EvaRegs.T2PR = 0x0400;       // 周期
    EvaRegs.T2CMPR = 0x0000;     // 比较寄存器
   
    // 使能通用定时器 2周期中断位
    // 增计数, x128, 内部时钟, 使能比较, 使用自己的周期寄存器值
    EvaRegs.EVAIMRB.bit.T2PINT = 1;
    EvaRegs.EVAIFRB.bit.T2PINT = 1;

    // 清除通用定时器 2计数值
    EvaRegs.T2CNT = 0x0000;
    EvaRegs.T2CON.all = 0x1742;

    //在定时器2周期中断时启动 EVA ADC 转换
    EvaRegs.GPTCONA.bit.T2TOADC = 2;
}

void init_evb_timer3(void)
{
    // 初始化 EVA 定时器 3:
    // 配置定时器 3 寄存器 (EV A)
    EvbRegs.GPTCONB.all = 0;
   
    // 为通用定时器 3设置周期值为 0x0800;
    EvbRegs.T3PR = 0x0800;       
    EvbRegs.T3CMPR = 0x0000;     // 比较寄存器
   
    /// 使能通用定时器3周期中断位
    // 增计数, x128, 内部时钟, 使能比较, 使用自己的周期寄存器值
    EvbRegs.EVBIMRA.bit.T3PINT = 1;
    EvbRegs.EVBIFRA.bit.T3PINT = 1;

    // 清除通用定时器 3计数值
    EvbRegs.T3CNT = 0x0000;
    EvbRegs.T3CON.all = 0x1742;

    //在定时器3周期中断时启动 EVA ADC 转换
    EvbRegs.GPTCONB.bit.T3TOADC = 2;
}

void init_evb_timer4(void)
{
    // 初始化 EVA 定时器 4:
    // 配置定时器4 寄存器 (EV A)
    EvbRegs.GPTCONB.all = 0;
   
    // 为通用定时器 3设置周期值为 0x1000;
    EvbRegs.T4PR = 0x1000;       
    EvbRegs.T4CMPR = 0x0000;     
   
    /// 使能通用定时器4周期中断位
    // 增计数, x128, 内部时钟, 使能比较, 使用自己的周期寄存器值
    EvbRegs.EVBIMRB.bit.T4PINT = 1;
    EvbRegs.EVBIFRB.bit.T4PINT = 1;

     // 清除通用定时器 4计数值
    EvbRegs.T4CNT = 0x0000;
    EvbRegs.T4CON.all = 0x1742;

     //在定时器4周期中断时启动 EVA ADC 转换
    EvbRegs.GPTCONB.bit.T4TOADC = 2;
} 
 
// 该子程序必须在RAM里执行，因它将使FLASH处于休眠状态
interrupt void eva_timer1_isr(void)
{
    Uint16 i;

    // 使FLASH处于休眠状态
    FlashRegs.FPWR.bit.PWR = FLASH_SLEEP; 
    
    EvaTimer1InterruptCount++;
    // 延迟一段时间来模拟一些子程序的运行
    for(i = 1; i < 0x03FF; i++) {}

    // 使能定时中断
    EvaRegs.EVAIMRA.bit.T1PINT = 1;

    // 清除相应中断标志位
    EvaRegs.EVAIFRA.all = BIT7;

    //清除 PIE组 2的应答位，以便接收下次中断
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP2;
}

// 该子程序必须在RAM里执行，因它将使FLASH处于standby模式
interrupt void eva_timer2_isr(void)
{
    Uint16 i;

    // 使FLASH处于休眠状态
    FlashRegs.FPWR.bit.PWR = FLASH_STANDBY; 

    EvaTimer2InterruptCount++;

    // 延迟一段时间来模拟一些子程序的运行
    for(i = 1; i < 0x02FF; i++) {}

    // 使能定时中断
    EvaRegs.EVAIMRB.bit.T2PINT = 1;

   // 清除相应中断标志位
   EvaRegs.EVAIFRB.all = BIT0;

   // 清除 PIE组3的应答位，以便接收下次中断
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}

// 该子程序必须在RAM里执行，因它将使FLASH处于休眠状态
// 之后让FLASH处于Standby模式
interrupt void evb_timer3_isr(void)
{

    Uint16 i;

    // 使FLASH处于休眠状态
    FlashRegs.FPWR.bit.PWR = FLASH_SLEEP; 

    EvbTimer3InterruptCount++;

    // 延迟一段时间来模拟一些子程序的运行
    for(i = 1; i < 0x01FF; i++) {}

    // 让FLASH处于Standby模式
    FlashRegs.FPWR.bit.PWR = FLASH_STANDBY; 

    // 清除相应中断标志位
    EvbRegs.EVBIFRA.all = BIT7;

    //  清除 PIE组4的应答位，以便接收下次中断
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP4;

}

// 该子程序将在FLASH里运行
interrupt void evb_timer4_isr(void)
{

    Uint16 i;
    
    EvbTimer4InterruptCount++;

    // 延迟一段时间来模拟一些子程序的运行
    for(i = 1; i < 0x00FF; i++) {}
 
    // 清除相应中断标志位
    EvbRegs.EVBIFRB.all = BIT0;	

    //  清除 PIE组5的应答位，以便接收下次中断
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP5;

}


//===========================================================================
// No more.
//===========================================================================

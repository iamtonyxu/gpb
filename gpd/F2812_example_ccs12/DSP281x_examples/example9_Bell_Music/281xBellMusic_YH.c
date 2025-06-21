//###########################################################################
//
// FILE:    281xBellMusic_YH.c
//
// TITLE:   I/O口控制蜂鸣器播放音乐
//
// ASSUMPTIONS:
//
//          This program requires the DSP281x V1.00 header files.  
//          As supplied, this project is configured for "boot to H0" operation.
//
//          Other then boot mode configuration, no other hardware configuration
//          is required.   
//
// 描述:
//
//          本例可以使开发板上的蜂鸣器发出‘生日快乐"’的音乐
//
//###########################################################################
// $Release Date: 20150205
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

/***************全局变量定义****************/
#define uchar unsigned char

/****************端口宏定义*****************/
#define BUZZ_CLK_GENER	GpioDataRegs.GPATOGGLE.bit.GPIOA9 = 1;	//蜂鸣器控制IO，IO电平翻转，产生控制脉冲

// 使用前，声明本文件中的相关函数
interrupt void cpu_timer0_isr(void);
extern void Show(void);
extern void Buzz_Gpio_Init(void);

void main(void)
{
// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();


// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了

// 本例需要使用GPIOA9，所以这里需要对其进行初始化
    Buzz_Gpio_Init();//设置蜂鸣器端口输出  

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
   PieVectTable.TINT0 = &cpu_timer0_isr;
   EDIS;   // 添加寄存器保护

// 步骤 4.初始化片内外设:
   InitCpuTimers();   // 本例仅需要初始化CPU定时器


// 配置CPU定时器0每秒发生一次中断
// 100MHz的CPU频率, 1000000 (单位是us)，通过这两个参数计算出周期寄存器的值；
   ConfigCpuTimer(&CpuTimer0, 150, 1000000);
   StartCpuTimer0();

// 步骤 5. 用户特定的代码来允许中断


//允许CPU中断线INT1，它是连接到CPU定时器0的；
   IER |= M_INT1;

// 在PIE组1中断7中使能TINT0中断；
   PieCtrlRegs.PIEIER1.bit.INTx7 = 1;

//使能全局中断和高优先级的实时调试事件；
   EINT;   // 使能全局中断INTM
   ERTM;   // 使能全局实时中断DBGM

// 步骤 6. 循环函数，演奏音乐；
    while(1)
   {

	Show();
   }
    
} 

/*------------------------------------------*/
/*形式参数：void                            */
/*返回值:void				                */
/*函数描述:定时器CPU0中断服务子程序         */
/*------------------------------------------*/ 

interrupt void cpu_timer0_isr(void)
{
   CpuTimer0.InterruptCount++;
   BUZZ_CLK_GENER;
   // Acknowledge this interrupt to receive more interrupts from group 1
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}


//===========================================================================
// No more.
//===========================================================================

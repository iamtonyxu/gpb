//###########################################################################
//
// FILE:    Example_281xHaltWake.c
//
// TITLE:   外部不可屏蔽中断XNMI从HALT低功耗模式唤醒CPU测试.
//
//    首先用杜邦线将黄色插件P5上的PWM12与黄色插件P8上的NMI短接起来；
//    引脚被配置为低功耗模式唤醒引脚来触发一个外部不可屏蔽中断
//    通过引脚上的下降沿来触发的；通过按键SW3按下，在PWM12上产生一个下降沿
//    因PWM12与NMI短接，所以在NMI引脚上也产生一个下降沿，从而触发了NMI中断
//
//    通过观察按键按下后，GPIO1控制的LED灯D9的变化，来验证器件从HALT模式退出
//    
//
//
//
//
//###########################################################################
// 释放日期: 20150313
//###########################################################################

#include "DSP281x_Device.h"
#include "DSP281x_Examples.h"

// 使用前，声明本文件中的相关函数

interrupt void XNMI_ISR(void);      // 唤醒后使用的中断服务子程序


void main()

{

//asm("  EALLOW");

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤


    
//初始化按键SW3相关的两个GPIO口
   //初始化行3的GPIOB0
   EALLOW;
    
    GpioMuxRegs.GPBMUX.bit.PWM7_GPIOB0 = 0;  									// GPIOB0 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB0 = 1;   									// GPIOB0 = output 
    GpioDataRegs.GPBCLEAR.bit.GPIOB0 = 1;   									// Load output latch 

    GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5 = 0;  					// 设置为一般IO口	//初始化列1的GPIOB5
    GpioMuxRegs.GPBDIR.bit.GPIOB5  = 0;   									// IO口方向为输入
   EDIS;

	EALLOW;
	GpioMuxRegs.GPEMUX.bit.XNMI_XINT13_GPIOE2 = 1; //引脚配置成XNMI	
	XIntruptRegs.XNMICR.bit.POLARITY=0;//下降沿产生中断
	XIntruptRegs.XNMICR.bit.SELECT=0; //CPU_Timer1连接到XINT13
	//XIntruptRegs.XNMICR.bit.ENABLE=1; //使能非屏蔽中断NMI
	EDIS;

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
   PieVectTable.XNMI = &XNMI_ISR;//中断服务程序入口地址放入中断向量表
   EDIS;

// 步骤 4.初始化片内外设:
    EALLOW;
    XIntruptRegs.XNMICR.bit.ENABLE = 1;            // 使能 NMI引脚   /* 配置 XNMI引脚 */
    GpioMuxRegs.GPADIR.bit.GPIOA1 = 1;             // GPIOA1在中断服务子程序里用来指示器件被唤醒
    GpioDataRegs.GPACLEAR.bit.GPIOA1 = 1;
     EDIS;
   

// 步骤 5. 用户特定的代码,允许中断:

// 使能全局中断:
   EINT;   // 使能全局中断 INTM

// 写LPM代码值

    EALLOW;
    SysCtrlRegs.LPMCR0.bit.LPM = 0x0002;   // LPM 模式= Halt
    EDIS;
// 迫使器件进入HALT低功耗模式

    asm(" IDLE");                          // 器件在HALT模式等待直到在XNMI引脚上出现下降沿

    while(1);                             // 唤醒后运行到这里

}

/* ----------------------------------------------- */
/* ISR for WAKEINT - Will be executed when         */
/* low pulse triggered on GPIO0 pin                */
/* ------------------------------------------------*/
interrupt void XNMI_ISR(void)
{
   GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;  // 取反GPIO1，GPIO1上控制的D9发光二极管会闪烁
   // CPU acknowledges interrupt (IFR)
   return;
}




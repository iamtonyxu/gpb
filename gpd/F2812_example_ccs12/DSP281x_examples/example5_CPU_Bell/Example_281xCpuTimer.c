//###########################################################################
//
// FILE:    Example_281xCpuTimer.c
//
// TITLE:   GPIO应用之蜂鸣器实验
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
//          本例可以使开发板上的蜂鸣器发出‘123456’的声音
//
//###########################################################################
// $Release Date: 20150105
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

/****************端口宏定义*****************/
#define BUZZ_CLK_GENER	GpioDataRegs.GPATOGGLE.bit.GPIOA9 = 1;	//蜂鸣器控制IO，IO电平翻转，                                                                //产生控制脉冲
#define BELL_DIR GpioMuxRegs.GPADIR.bit.GPIOA9
#define BELL_DAT GpioDataRegs.GPADAT.bit.GPIOA9
#define DISABLE_TIMER0_INT		IER &= 0xFFFE;
#define ENABLE_TIMER0_INT		IER |= M_INT1;
#define BUZZ_OFF				GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;

Uint16 Musi[23]={		//单位 us，不同频率下，蜂鸣器发出不同音调的声音
				0,
				3816,	//L_do
				3496,	//L_re
				3215,	//L_mi
				2865,	//L_fa
				2551,	//L_so
				2272,	//L_la
				2024,	//L_xi
				1912,	//do
				1703,	//re
				1517,	//mi
				1432,	//fa
				1275,	//so
				1136,	//la
				1013,	//xi
				956,	//H_do
				851,	//H_re
				758,	//H_mi
				716,	//H_fa
				638,	//H_so
				568,	//H_la
				506,	//H_xi
				0xFF	//STOP
				};
Uint16 Song[]={1,2,3,4,5,6,7}; //乐谱：do,re,mi,fa,so,la,xi

/****************函数声明*******************/ 
void Init_Bell(void);
interrupt void cpu_timer0_isr(void);
void Delay(Uint16 t);

void main(void)
{
Uint16 addr=0;
Uint16 k;
// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();


// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了

// 本例需要使用GPIOA9，所以这里需要对其进行初始化
   BELL_DAT=0;
   Init_Bell(); //设置蜂鸣器端口输出  

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

// 步骤 6. 中断控制蜂鸣器开关频率，延时函数定义乐拍，7次循环分别让蜂鸣器响7种乐声:
    for(k=0;k<7;k++)
  	{
        	StopCpuTimer0();												//停止计数
			DISABLE_TIMER0_INT;												//不使能定时中断
			ConfigCpuTimer(&CpuTimer0, 150, Musi[Song[addr]+8]/2);			//设置定时时间
			StartCpuTimer0();												//重启定时器
			ENABLE_TIMER0_INT;												//使能定时中断
			Delay(8);												//音乐节拍延时
			StopCpuTimer0();												//停止计数
			DISABLE_TIMER0_INT;												//不使能定时中断
			BUZZ_OFF;														//关闭蜂鸣器
			Delay(2);														//音乐停顿
			addr++;
  	}
	while(1); 
} 

/*------------------------------------------*/
/*形式参数：void                            */
/*返回值:void				                */
/*函数描述:初始化蜂鸣器端口为输出           */
/*------------------------------------------*/
void Init_Bell(void)
{
	EALLOW;	   //解除寄存器保护
	BELL_DIR=1;//Bell端口输出
	EDIS;      //寄存器保护
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

void Delay(Uint16 t)														//延时函数
{
	Uint32 i=0;
	Uint32 gain = 300000;													//延时增益
	Uint32 base=0;								
	base=gain*t; 															
	for(i=0;i<=base;i++);
}
//===========================================================================
// No more.
//===========================================================================

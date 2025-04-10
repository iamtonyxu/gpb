//###########################################################################
//
// FILE:    Example_281xCodeRunFromXintf.c
//
// TITLE:   从外扩RAM里运行程序 (设置 MPNMC = 1)
//
// 
//           本例程被配置为"boot from XINTF Zone 6"操作
//           
//
//          XMP/MCn 引脚 = 1
//
//          在程序里将外部区域7映射为RAM
//    
//
// 描述:
//
//          
//          在F2812_XintfBoot.cmd文件里已将代码编译后生成的段文件分配到外部区域6
//          外部区域6/7定时参数函数xintf_zone6and7_timing(void)不能在相同的区域内执行，所以需要拷到
//          dsp片内RAM里运行，其他程序将在外部区域6中运行，本例配置CPU定时器0每次中断时增加相应的计数;，
//          通过观察计数值递增测验证了程序在外部RAM里正常运行；
//
//          观察变量:
//                 CpuTimer0.InterruptCount
//                 BackgroundCount
//###########################################################################
// 释放日期: 20150319
//###########################################################################

// 步骤 0: 包含所需要的头文件:

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// 使用前，声明本文件中的相关函数
// 定义该xintf_zone6and7_timing函数链接到片内RAM
#pragma CODE_SECTION(xintf_zone6and7_timing,"ramfuncs");
void xintf_zone6and7_timing(void);
interrupt void ISR_CPUTimer0(void);
void error(void);

// 定义全局变量
Uint32 BackgroundCount = 0;

// RAM Count - 这个计数器被储存在片内 RAM, 它与储存在外部RAM里的计数器相对比
// 从而验证程序是否运行正常
#pragma DATA_SECTION(RamInterruptCount,"ramdata");
Uint32 RamInterruptCount = 0;

void main(void)
{
    //-----------------------------------------------------------------------
    //
    // 步骤 1: 禁止CPU中断和清除所有CPU中断标志; 禁止CPU全局中断
       DINT;
       IER = 0x0000;
       IFR = 0x0000;

    // 步骤 2. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到
    InitSysCtrl();

    //  步骤 3. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤

    // 步骤 4.  初始化PIE控制寄存器到他们的默认状态.
// 这个默认状态就是禁止PIE中断及清除所有PIE中断标志 
// 这个函数放在DSP281x_PieCtrl.c源文件里.
    InitPieCtrl();

     //初始化PIE中断向量表，并使其指向中断服务子程序（ISR）
// 这些中断服务子程序被放在了DSP281x_DefaultIsr.c源文件中
// 这个函数放在了DSP281x_PieVect.c源文件里面.
    InitPieVectTable();

    // 使能 CPU 和 PIE 中断
    // 这个函数放在DSP281x_PieCtrl.c源文件里. 
    EnableInterrupts();	
	
    // 步骤 5.初始化片内外设:
    InitCpuTimers();
    
    //-----------------------------------------------------------------------
    // 用户指定代码:
    // 
    // 初始化外部区域6和7的定时
    // 首先将函数拷到片内RAM, 然后调用函数来改变区域定时
    
    // RamfuncsLoadStart, RamfuncsLoadEnd, 和 RamfuncsRunStart在DSP281x_GlobalPrototypes.h里被定义为外部变量
    // 又在F2812_XintfBoot.cmd里定义了地址，通过MemCopy函数将xintf_zone6and7_timing()子程序拷到片内RAM中
    // 然后在片内RAM里初始化外部区域6和7的定时
    MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);	
	xintf_zone6and7_timing();
	
	EALLOW;	   									// 这里需要写入EALLOW来保护寄存器
	PieVectTable.TINT0 = &ISR_CPUTimer0;
	EDIS;      									// 这里需要禁止写EALLOW保护寄存器
    
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;			// 使能 INT1.7 ，它连接到 CPU-Timer 0:
    IER |= M_INT1;
    	
    SetDBGIER(M_INT1); 							// 对于实时模式使能 INT1
	EINT;   									// 使能全局中断 INTM
	ERTM;										// 使能全局实时调试DBGM

	// 配置初始化CPU Timer 0 为:
	//     > CPU Timer 0 连接到 INT1.7
	//	   > 设置为1s周期中断
	//	   > 发生定时器中断，然后跳到 "ISR_CPUTimer0" 函数里执行
	
	ConfigCpuTimer(&CpuTimer0, 150, 1000000);	// 150MHz CPU 频率， 1 秒周期 (in uSeconds)
 	StartCpuTimer0();



	for(;;)
		BackgroundCount++;                      // 无限循环，等待中断

	//exit(0);									
} 	


interrupt void ISR_CPUTimer0(void)
{
	PieCtrlRegs.PIEACK.all = 0xFFFF;
	ERTM;             							// 使能全局实时调试DBGM
	
	CpuTimer0.InterruptCount++;					// 每秒增加1
    RamInterruptCount++;
    if(RamInterruptCount != CpuTimer0.InterruptCount) error();

}


// 对区域 6和7配置定时参数.
// 注意: 该函数不能在被配置的区域内运行
void xintf_zone6and7_timing()
{

    // 所有区域---------------------------------
    // 所有区域的定时基于 XTIMCLK = SYSCLKOUT 
    XintfRegs.XINTCNF2.bit.XTIMCLK = 0;
    // 缓存器深度为3
    XintfRegs.XINTCNF2.bit.WRBUFF = 3;
    // XCLKOUT被使能
    XintfRegs.XINTCNF2.bit.CLKOFF = 0;
    // XCLKOUT = XTIMCLK 
    XintfRegs.XINTCNF2.bit.CLKMODE = 0;
    
    
    // 区域 6------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING6.bit.XWRLEAD = 1;
    XintfRegs.XTIMING6.bit.XWRACTIVE = 1;
    XintfRegs.XTIMING6.bit.XWRTRAIL = 1;
    // Zone read timing
    XintfRegs.XTIMING6.bit.XRDLEAD = 1;
    XintfRegs.XTIMING6.bit.XRDACTIVE = 2;
    XintfRegs.XTIMING6.bit.XRDTRAIL = 0;
    
    // do not double all Zone read/write lead/active/trail timing 
    XintfRegs.XTIMING6.bit.X2TIMING = 0;
 
    // Zone will not sample READY 
    XintfRegs.XTIMING6.bit.USEREADY = 0;
    XintfRegs.XTIMING6.bit.READYMODE = 0;  
 
    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING6.bit.XSIZE = 3;
 

    // Zone 7------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING7.bit.XWRLEAD = 1;
    XintfRegs.XTIMING7.bit.XWRACTIVE = 1;
    XintfRegs.XTIMING7.bit.XWRTRAIL = 1;
    // Zone read timing
    XintfRegs.XTIMING7.bit.XRDLEAD = 1;
    XintfRegs.XTIMING7.bit.XRDACTIVE = 2;
    XintfRegs.XTIMING7.bit.XRDTRAIL = 0;
    
    // don't double all Zone read/write lead/active/trail timing 
    XintfRegs.XTIMING7.bit.X2TIMING = 0;
 
    // Zone will not sample XREADY signal  
    XintfRegs.XTIMING7.bit.USEREADY = 0;
    XintfRegs.XTIMING7.bit.READYMODE = 0;
 
    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING7.bit.XSIZE = 3;
    
   //Force a pipeline flush to ensure that the write to 
   //the last register configured occurs before returning.  
   asm(" RPT #7 || NOP"); 
}

void error(void)
{
    asm("      ESTOP0");   // 软件断点
}

//===========================================================================
// No more.
//===========================================================================

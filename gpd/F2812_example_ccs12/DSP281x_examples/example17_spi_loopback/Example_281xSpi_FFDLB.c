//###########################################################################
//
// FILE:   Example_281xSpi_FFDLB.c
//
// TITLE:   Spi数字回环测试程序. 
//
//
// 描述:
//
// 该例程是一个使用SPI内部回环测试的例子，该例程不使用中断
//
// 一串数据被发送，之后用接收的数据与发送的数据进行对比；
//  
// 发送的数据如下所示:
// 0000 0001 0002 0003 0004 0005 0006 0007 .... FFFE FFFF
//
//数据循环发送
//          观察变量:         
//                sdata - sent data
//                rdata - received data
//		
////###########################################################################		
// 释放日期: 2015.02.28
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// 使用前，声明本文件中的相关函数
// interrupt void ISRTimer2(void);
void delay_loop(void);
void spi_xmit(Uint16 a);
void spi_fifo_init(void);
void spi_init(void);
void error(void);

void main(void)
{
   Uint16 sdata;  // 发送数据的变量
   Uint16 rdata;  // 接收数据的变量
   
// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤
// 仅设置相应GPIO为为SPI功能引脚
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x000F;	// 选择GPIO为SPI引脚	 
 									// 端口F MUX - x000 0000 0000 1111
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
	
// 步骤 4.初始化片内外设:
// InitPeripherals(); // 本例未使用
   spi_fifo_init();	  // 初始化Spi FIFO
   spi_init();		  // 初始化 SPI

// 步骤 5. 用户特定的代码，本例不允许中断
   sdata = 0x0000;							
   for(;;)
   {    
     // 发送数据
     spi_xmit(sdata);
     // 等待，直到数据被接收
     while(SpiaRegs.SPIFFRX.bit.RXFFST !=1) { } 			
     // 对比接收数据和发送数据
     rdata = SpiaRegs.SPIRXBUF;				
     if(rdata != sdata) error();
     sdata++;  //接收正常，则+1
   }
} 	

	

void delay_loop()
{
    long      i;
    for (i = 0; i < 1000000; i++) {}
}


void error(void)
{
    asm("     ESTOP0");						//测试失败！停止！
    for (;;);
}

void spi_init()
{    
	SpiaRegs.SPICCR.all =0x000F;	             // SPI软件复位, 上升沿发送下降沿接收, 16-bit字节长度，禁止回环模式  
	SpiaRegs.SPICTL.all =0x0006;    		     // 配置为主机, 正常的SPI时钟安排,
                                                 // 配置4脚数据传输, 禁止SPI中断.
	SpiaRegs.SPIBRR =0x007F;									
    SpiaRegs.SPICCR.all =0x009F;		         // SPI准备就绪；使能SPI回环测试模式  
    SpiaRegs.SPIPRI.bit.FREE = 1;                // 不管任何断点，连续运行SPI
}

void spi_xmit(Uint16 a)
{
    SpiaRegs.SPITXBUF=a;
}    

void spi_fifo_init()										
{
// 初始化 SPI FIFO 寄存器
    SpiaRegs.SPIFFTX.all=0xE040;
    SpiaRegs.SPIFFRX.all=0x204f;
    SpiaRegs.SPIFFCT.all=0x0;
}  

//===========================================================================
// No more.
//===========================================================================


//###########################################################################
//
// FILE:	Example_281xSci_Autobaud_.c
//
// TITLE:	SCI自动波特率检测实验
//
//          测试需要如下硬件连接：
//
//          SCIATX <-> SCIBRX
//          SCIARX <-> SCIATX
//
//          本测试运行在变化的波特率，包括非常高速的波特率
//          
//
//          本测试SICA与SCIB引脚直接用调试排线连接，中间无需转换器
//          
//
//
//          SCIA: 从机，自动波特率锁定，接收字节并将它们反馈给主机
//                使用RX中断来接收字节
//
//          SCIB: 主机，已知波特率，发送字节到从机并检查反馈回来的字节
//
// 描述:
//
//          内部回扫测试始终使用SCIA中断，FIFO被禁止；
//
//          观察变量:        BRRVal - 当前SCIB使用的波特率的值
//                           ReceivedAChar - SCIA接收的字节
//                           ReceivedBChar - SCIB接收的字节
//                           SendChar      -  SCIB发送的字节
//                           SciaRegs.SCILBAUD 
//                           SciaRegs.SCIHBAUD   通过自动波特率锁定设置SCIA波特率寄存器
//
//
//###########################################################################
// 释放日期: 2015-2-13
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define BAUDSTEP 100            // 自动波特率值将在每个自动波特率锁定时增加
                                

// 使用前，声明本文件中的相关函数
void scia_init(void);
void scib_init(void);
void scia_xmit(int a);
void scib_xmit(int a);
void scia_AutobaudLock(void);
void error(int);
interrupt void rxaint_isr(void);


// 本例程使用的全局变量
Uint16 LoopCount;

Uint16 ReceivedCount;
Uint16 ErrorCount;
Uint16 SendChar;
Uint16 ReceivedAChar;   // scia 接收的字节
Uint16 ReceivedBChar;   // scib 接收的字节
Uint16 BRRVal;
Uint16 Buff[10] = {0x55, 0xAA, 0xF0, 0x0F, 0x00, 0xFF, 0xF5, 0x5F, 0xA5, 0x5A};

void main(void)
{
   Uint16 i;

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤
// 设置GPIO仅作为 SCI-A 和 SCI-B 功能引脚
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x0030;	// 选择 GPIOs为Scia引脚
                                    // 端口 F MUX - x000 0000 0011 0000
   GpioMuxRegs.GPGMUX.all=0x0030;	//选择 GPIOs 为 Scib引脚
                                    // 端口 G MUX - x000 0000 0011 0000
   EDIS;

// 初始化PIE控制寄存器到他们的默认状态.
// 这个默认状态就是禁止PIE中断及清除所有PIE中断标志 
// 这个函数放在DSP281x_PieCtrl.c源文件里.
   InitPieCtrl();

// 禁止 CPU 中断 和 清除所有 CPU 中断标志位；
   IER = 0x0000;
   IFR = 0x0000;

//初始化PIE中断向量表，并使其指向中断服务子程序（ISR）
// 这些中断服务子程序被放在了DSP281x_DefaultIsr.c源文件中
// 这个函数放在了DSP281x_PieVect.c源文件里面.
   InitPieVectTable();

// 本例中的中断重新映射到本文件中的中断服务子程序中  
   EALLOW;   //解除寄存器保护
   PieVectTable.RXAINT = &rxaint_isr;
   EDIS;      // 添加寄存器保护

// 步骤 4.初始化片内外设:
// 本函数可以在 DSP281x_InitPeripherals.c文件里找到
   scia_init();       //初始化SCIA
   scib_init();       //初始化SCIB

// 步骤 5. 用户指定代码，允许中断；

   LoopCount = 0;
   ErrorCount = 0;

// 使能中断
   PieCtrlRegs.PIEIER9.all = 0x0001; // 使能所有的SCIA RXINT 中断
   IER |= 0x0100;			         // 使能 PIEIER9, 和 INT9
   EINT;

    // 从BRR = 1开始, 通过每次BRRVal增加BAUDSTEP来设置波特率
    for (BRRVal = 0x0000; BRRVal < (Uint32)0xFFFF; BRRVal+=BAUDSTEP)
    {

        // SCIB有一个已知波特率.  SCIA将自动与之匹配
	    ScibRegs.SCIHBAUD = (BRRVal >> 8);
	    ScibRegs.SCILBAUD = (BRRVal);

	    // 初始化SCIA自动波特率锁定，依据波特率锁定字节‘A’，检查反馈的字节
	    scia_AutobaudLock();
	    while(ScibRegs.SCIRXST.bit.RXRDY != 1) { }
	    ReceivedBChar = 0;
	    ReceivedBChar =  ScibRegs.SCIRXBUF.bit.RXDT;
	    if(ReceivedBChar != 'A')
	    {
	        error(0);
	    }

	    // 发送/反馈字节
	    // 55 AA F0 0F 00 FF F5 5F A5 5A
	    for(i= 0; i<=9; i++)
	    {
	      SendChar = Buff[i];
	      scib_xmit(SendChar);			    // 初始化中断，在中断时发送数据
	      //等待接收字节并依据发送的字节来检查反馈字节
	      while(ScibRegs.SCIRXST.bit.RXRDY != 1)
	      {
	          asm("   NOP");
	      }
	      ReceivedBChar = 0;
	      ReceivedBChar =  ScibRegs.SCIRXBUF.bit.RXDT;
	      if(ReceivedBChar != SendChar) error(1);
	    }

    } // 重复下个BRR设置

    // 停止在这里
    for(;;)
    {
       asm("    NOP");
    }


}


/* --------------------------------------------------- */
/* ISR for PIE INT9.1                                  */
/* SCI-A 接收中断服务子程序                         */
/* ----------------------------------------------------*/

interrupt void rxaint_isr(void)     // SCI-A
{
  // 清除应答位，以便再次响应中断

   PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;

   // 如果正在检测自动波特率，则必须清除CDC
   if(SciaRegs.SCIFFCT.bit.ABD == 1)//自动波特率硬件检测到SCIA接收到一个‘A’，完成自动波特率检测
   {
      SciaRegs.SCIFFCT.bit.ABDCLR = 1;
      SciaRegs.SCIFFCT.bit.CDC = 0;
      // 检查接收的字节-应该为‘A’
      ReceivedAChar = 0;
      ReceivedAChar = SciaRegs.SCIRXBUF.all;
      if(ReceivedAChar != 'A')
      {
         error(2);
      }
      else scia_xmit(ReceivedAChar);
   }

   // 以下不再自动波特率检测
   else
   {
      // 依据发送的字节检查接收的字节
      ReceivedAChar = 0;
      ReceivedAChar = SciaRegs.SCIRXBUF.all;
      if(ReceivedAChar != SendChar)
      {
         error(3);
      }
      else scia_xmit(ReceivedAChar);
   }

   SciaRegs.SCIFFRX.bit.RXFFINTCLR = 1;	// 清除接收中断标志位
   ReceivedCount++;
}


void error(int ErrorFlag)
{
      ErrorCount++;
      asm("     ESTOP0");  	       // 停在此处
      for (;;);

}

// SCIA  8-位字节, 波特率 0x000F, 默认, 1 个停止位, 无奇偶校验
void scia_init()
{
    // 在 InitSysCtrl()函数里已打开了SCIA片内外设的时钟

    //复位FIFO's
    SciaRegs.SCIFFTX.all=0x8000;

    SciaRegs.SCICCR.all =0x0007;   // 1个停止位,  禁止回环测试 
                                  // 无奇偶校验,字节长度为8位,
                                  // 异步模式, idle-line协议
    SciaRegs.SCICTL1.all =0x0003;  // 使能 TX, RX, 内部 SCICLK, 
                                  // 禁止 RX ERR, SLEEP, TXWAKE
    SciaRegs.SCICTL2.all =0x0003;
    SciaRegs.SCICTL2.bit.RXBKINTENA =1;
    SciaRegs.SCICTL1.all =0x0023;     


}

// SCIB  8-位字节, 波特率 0x000F, 默认, 1 个停止位, 无奇偶校验

void scib_init()
{
    // 复位 FIFO's
    ScibRegs.SCIFFTX.all=0x8000;


    ScibRegs.SCICCR.all = 0x0007;// 1个停止位,  禁止回环测试 
                                  // 无奇偶校验,字节长度为8位,
                                  // 异步模式, idle-line协议

    ScibRegs.SCICTL1.all = 0x0003;// 使能 TX, RX, 内部 SCICLK, 
                                  // 禁止 RX ERR, SLEEP, TXWAKE

    ScibRegs.SCICTL2.all = 0x0000;

    ScibRegs.SCICTL1.all = 0x0023;

    return;
}




// 从 SCI-A发送字节
void scia_xmit(int a)
{
    SciaRegs.SCITXBUF=a;
}

// 从SCI-B发送字节
void scib_xmit(int a)
{
    ScibRegs.SCITXBUF=a;
}


//------------------------------------------------
// 利用主机来完成自动波特率锁定
// 注意，如果没有发生自动波特
// 程序将会挂起，这个例程没有超时机制包括
//------------------------------------------------

void scia_AutobaudLock()
{   
    Uint32 i;
    SciaRegs.SCICTL1.bit.SWRESET = 0;
    SciaRegs.SCICTL1.bit.SWRESET = 1;

    // 首先，波特率寄存器 >= 1
    SciaRegs.SCIHBAUD = 0;
    SciaRegs.SCILBAUD = 1;

    // 准备自动波特率检测
    // 通过给ABDCLR写1来确保ABD位被清零
    // 将CDC位置1来使能自动波特率检测
    SciaRegs.SCIFFCT.bit.ABDCLR = 1;
    SciaRegs.SCIFFCT.bit.CDC = 1;

    // 等待直到正确地读到‘A’或‘a’，然后锁定
	//
	// 如果自动波特率校准被使能（CDC=1）,SCIB（主机）将连续发送‘A’，
	// 直到发生SCIA接收中断，这里SCI-A RXBUF接收到‘A’，波特率锁定（ABDCLR=1，CDC=0）
	// 并将‘A’反馈给主机，之后返回到该程序内并执行完该程序
	//

    while(SciaRegs.SCIFFCT.bit.CDC== 1) 
    {  
       for(i = 1; i<= 0x0FFFFFF; i++)
       {
          asm("     NOP");
       }  // 延时函数

       if(SciaRegs.SCIFFCT.bit.CDC == 1)  
           scib_xmit('A');  // 主机发送'A' 

   }

    return;
}

//===========================================================================
// No more.
//===========================================================================




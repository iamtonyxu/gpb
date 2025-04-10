//###########################################################################
//
// FILE:    Example_281xSci_FFDLB.c
//
// TITLE:   SCI FIFO数字回环测试实验
//
//
// 描述:
//
//          本例程使用SCI模块的回环测试模式来发送字节，字节从0x00到0xFF;
//          本测试是先发送一组字节然后在接收缓冲器里检查接收的字节是否与发送的一致；
//
//          观察变量:
//                LoopCount 里是发送的字节
//                ErrorCount ；ReceivedChar ；SendChar
//		
//
//###########################################################################
// 释放日期: 2015-02-06
//###########################################################################


#include "DSP281x_Device.h"
#include "DSP281x_Examples.h"

// 使用前，声明本文件中的相关函数
void scia_loopback_init(void);
void scia_fifo_init(void);	
void scia_xmit(int a);
void error(int);
interrupt void scia_rx_isr(void);
interrupt void scia_tx_isr(void);

// 本例程使用的全局变量
Uint16 LoopCount;
Uint16 ErrorCount; 

void main(void)
{
    Uint16 SendChar;
    Uint16 ReceivedChar;
    
// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
	InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤
    EALLOW;
    GpioMuxRegs.GPFMUX.all=0x0030;	// 设置GPIOF4，F5 为SCI引脚	 
                                    
    EDIS;

// 步骤 3. 清除所有中断,初始化中断向量表:
// 禁止CPU全局中断 
	DINT;
	IER = 0x0000;
	IFR = 0x0000;

      // 初始化PIE控制寄存器到他们的默认状态.
// 这个默认状态就是禁止PIE中断及清除所有PIE中断标志 
// 这个函数放在DSP281x_PieCtrl.c源文件里.
	  // InitPieCtrl(); 本例不使用PIE

      //初始化PIE中断向量表，并使其指向中断服务子程序（ISR）
// 这些中断服务子程序被放在了DSP281x_DefaultIsr.c源文件中
// 这个函数放在了DSP281x_PieVect.c源文件里面.
	  InitPieVectTable();  

      // 使能 CPU 和PIE 中断
      // 此函数可以在 DSP281x_PieCtrl.c 文件里找到  
      EnableInterrupts();
	
// 步骤 4.初始化片内外设:
      // InitPeripherals();对于 SCI测试跳过该项
	
// 步骤 5. 用户特定的代码来允许中断

    LoopCount = 0;
    ErrorCount = 0;
    
    scia_fifo_init();	   // 初始化SCI FIFO
    scia_loopback_init();  // 为数字回环测试初始化 SCI

    // Note: Autobaud lock is not required for this example
    
    // 发送的字节从0开始
    SendChar = 0;								

// 步骤6. 发送字节始终从0x00到0xFF，在每次发送之后检查接收缓冲器里接收的是否正确

	for(;;)
    { 
       scia_xmit(SendChar);
       while(SciaRegs.SCIFFRX.bit.RXFIFST !=1) { } // 等待RXFIFST=1时，接收到一个数据
       // 检查接收的字节
       ReceivedChar = SciaRegs.SCIRXBUF.all;			
       if(ReceivedChar != SendChar) error(1);

       // 发送的字节加1并重复测试
       SendChar++;
       //限值字节长度为8位
       SendChar &= 0x00FF;
       LoopCount++;
    }

} 	


// 步骤 7.定义中断服务子程序	

void error(int ErrorFlag)
{
      ErrorCount++;
//    asm("     ESTOP0");  // 停止测试
//    for (;;);

}

// Test 1,SCIA  DLB, 8-bit word, baud rate 0x000F, default, 1 STOP bit, no parity 
void scia_loopback_init()
{    
    // l在InitSysCtrl()函数里已打开了SCIA片内外设的时钟
    
 	SciaRegs.SCICCR.all =0x0007;   // 1个停止位,  禁止回环测试 
                                   // 无奇偶校验,字节长度为8位,
                                   // 异步模式, idle-line协议
	SciaRegs.SCICTL1.all =0x0003;  // 使能 TX, RX, 内部 SCICLK, 
                                   // 禁止 RX ERR, SLEEP, TXWAKE
	SciaRegs.SCICTL2.all =0x0003; 
	SciaRegs.SCICTL2.bit.TXINTENA =1;
	SciaRegs.SCICTL2.bit.RXBKINTENA =1;
    SciaRegs.SCIHBAUD    =0x0000;
    SciaRegs.SCILBAUD    =0x000F;
	SciaRegs.SCICCR.bit.LOOPBKENA =1; // 使能回环测试
	SciaRegs.SCICTL1.all =0x0023;     
}

// 从SCI发送字节
void scia_xmit(int a)
{
    SciaRegs.SCITXBUF=a;
}    

// 初始化SCI FIFO
void scia_fifo_init()										
{
    SciaRegs.SCIFFTX.all=0xE040;
    SciaRegs.SCIFFRX.all=0x204f;
    SciaRegs.SCIFFCT.all=0x0;
    
}  

                							
 
    


//===========================================================================
// No more.
//===========================================================================


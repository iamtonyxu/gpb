//###########################################################################
//
// FILE:   Example_281xSci_FFDLB_int.c
//
// TITLE:  SCI数字回环FIFO中断实验.
//
//
//
// 描述:
//
// 本例使用SCI内部回环测试，包含中断和SCI FIFOS被使用
//
// 一串数据被发送，然后接受数据后进行比较
//
// 发送的数据如下所示:
// 00 01 02 03 04 05 06 07
// 01 02 03 04 05 06 07 08
// 02 03 04 05 06 07 08 09
// ....
// FE FF 00 01 02 03 04 05
// FF 00 01 02 03 04 05 06
// etc..
//
//
// 观察以下变量:
//
//     SCI-A          
//     ----------------------
//     sdataA                   被发送的数据
//     rdataA                    接收的数据
//     rdata_pointA        跟踪数据串，在比较时需要用到这个
//     ErrorCount                       如果发送接收正常的话，该值为0  
// 点击运行程序，然后暂停程序运行，还可以发现rdataA=sdataA
//###########################################################################
// 释放日期: 2015-02-09
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define CPU_FREQ 	 150E6
#define LSPCLK_FREQ  CPU_FREQ/4
#define SCI_FREQ 	 100E3
#define SCI_PRD 	 (LSPCLK_FREQ/(SCI_FREQ*8))-1

// 使用前，声明本文件中的相关函数
interrupt void sciaTxFifoIsr(void);
interrupt void sciaRxFifoIsr(void);
void scia_fifo_init(void);
void error(void);


// 本例程使用的全局变量
Uint16 sdataA[8];    // SCI-A发送的数据数组
Uint16 rdataA[8];    // SCI-A接收的数据数组
Uint16 rdata_pointA; // 被用作检查接收的数据
Uint16 ErrorCount; 

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
   GpioMuxRegs.GPFMUX.bit.SCITXDA_GPIOF4 = 1;
   GpioMuxRegs.GPFMUX.bit.SCIRXDA_GPIOF5 = 1;
   GpioMuxRegs.GPGMUX.bit.SCITXDB_GPIOG4 = 1;
   GpioMuxRegs.GPGMUX.bit.SCIRXDB_GPIOG5 = 1;
   EDIS;

// 步骤 3. 清除所有中断,初始化中断向量表:
// 禁止CPU全局中断 
   DINT;

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
   EALLOW;  //解除寄存器保护
   PieVectTable.RXAINT = &sciaRxFifoIsr;
   PieVectTable.TXAINT = &sciaTxFifoIsr;
   EDIS;   // 添加寄存器保护


// 步骤 4.初始化片内外设:
   scia_fifo_init();  // 初始化SCI-A

// 步骤 5. 用户指定代码，允许中断；
 ErrorCount = 0;
//初始化发送数据，再发送每次数组后将更新下组数组

   for(i = 0; i<8; i++)
   {
      sdataA[i] = i-1;
   }

   
   

// 使能本例使用需要的中断
   PieCtrlRegs.PIECRTL.bit.ENPIE = 1;   // 使能PIE模块
   PieCtrlRegs.PIEIER9.bit.INTx1=1;     // PIE 组 9, INT1；SCIRXINTA
   PieCtrlRegs.PIEIER9.bit.INTx2=1;     // PIE 组 9, INT2；SCITXINTA
   PieCtrlRegs.PIEIER9.bit.INTx3=1;     // PIE 组 9, INT3；SCIRXINTB
   PieCtrlRegs.PIEIER9.bit.INTx4=1;     // PIE 组 9, INT4；SCITXINTB
   IER = 0x100;	// 使能 CPU INT9
   EINT;

  // 步骤6：循环函数，等待中断；
	for(;;);

}

void error(void)
{
    ErrorCount++;
    asm("     ESTOP0"); // 测试失败，停止；
    for (;;);
}


interrupt void sciaTxFifoIsr(void)
{
    Uint16 i;
	for(i=0; i< 8; i++)                 //每次发送数组内的1个字节
    {
 	   sdataA[i] = (sdataA[i]+1) & 0x00FF;
	}
    rdata_pointA = sdataA[0];

    for(i=0; i< 8; i++)
    {
 	   SciaRegs.SCITXBUF=sdataA[i];     // 发送数据
	}

  while(SciaRegs.SCIFFRX.bit.RXFIFST!=0x08){};

    
SciaRegs.SCIFFTX.bit.TXINTCLR=1;	// 清除SCI中断标志位
PieCtrlRegs.PIEACK.all|=0x100;      //PIE应答位置1，允许下次中断
	
}

interrupt void sciaRxFifoIsr(void)
{
    Uint16 i;
	for(i=0;i<8;i++)
	{
	   rdataA[i]=SciaRegs.SCIRXBUF.all;	 // 读数据
	}
	for(i=0;i<8;i++)                     // 检查接收的数据
	{
	   if(rdataA[i] != ( (rdata_pointA+i) & 0x00FF) ) error();
	}

	SciaRegs.SCIFFRX.bit.RXFFOVRCLR=1;   // 清除溢出标志位
	SciaRegs.SCIFFRX.bit.RXFFINTCLR=1;   // 清除中断标志位
	PieCtrlRegs.PIEACK.all|=0x100;       // PIE应答位置1，允许下次中断
}

void scia_fifo_init()
{
   SciaRegs.SCICCR.all =0x0007;   // 1个停止位,  禁止回环测试 
                                  // 无奇偶校验,字节长度为8位,
                                  // 异步模式, idle-line协议
   SciaRegs.SCICTL1.all =0x0003;  // 使能 TX, RX, 内部 SCICLK, 
                                  // 禁止 RX ERR, SLEEP, TXWAKE
   SciaRegs.SCICTL2.bit.TXINTENA =1;
   SciaRegs.SCICTL2.bit.RXBKINTENA =1;
   SciaRegs.SCIHBAUD = 0x0000;
   SciaRegs.SCILBAUD = SCI_PRD;
   SciaRegs.SCICCR.bit.LOOPBKENA =1; // 使能回环测试
   SciaRegs.SCIFFTX.all=0xC028;//FIFO内有8个字节即可发生发送中断
   SciaRegs.SCIFFRX.all=0x0028;//FIFO接收到8个字节后立即发生接收中断
   SciaRegs.SCIFFCT.all=0x00;

   SciaRegs.SCICTL1.all =0x0023;     
   SciaRegs.SCIFFTX.bit.TXFIFOXRESET=1;
   SciaRegs.SCIFFRX.bit.RXFIFORESET=1;


}


//===========================================================================
// No more.
//===========================================================================


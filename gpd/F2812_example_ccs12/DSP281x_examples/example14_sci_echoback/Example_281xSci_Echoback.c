//###########################################################################
//
// FILE:    Example_281xSci_Echoback.c
//
// TITLE:   SCI-RS232数据接收反馈实验.
//
// ASSUMPTIONS:
//
//    This program requires the DSP281x header files.
//    As supplied, this project is configured for "boot to H0 RAM" operation.
//
//    通过RS232转USB通讯线连接开发板上 SCI-A端口到电脑
//    通过电脑上位机软件可以看到用户发送的字节被反馈显示出来;
//
//
// 描述:
//
//
//    本例通过SCI-A端口测试数据的接收和反馈
//
//    1) 配置SCI_96.ht超级终端:
//       使用项目文件夹内的 SCI_96.ht超级终端配置文件.
//       
//    2) 双击打开SCI_96.ht文件，呼叫->呼叫，选择COM端口
//       如果端口不是COM1，设置波特率及相关参数并呼叫完成后
//       
//    3) 在CCS里运行程序，程序会自动在终端里打印欢迎语并询问你输入的字节
//    4) 当你输入字节后，终端会自动反馈你输入的字节
//
//    这里，本例配置SCIA的波特率为9600
//    SYSCLKOUT = 150MHz 和 LSPCLK = 37.5 MHz
//
//
//    观察变量:
//       LoopCount 为发送字节的数量
//       ErrorCount
//
//
//###########################################################################
// 释放日期: 2015-2-13
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// 使用前，声明本文件中的相关函数
void scia_echoback_init(void);
void scia_fifo_init(void);
void scia_xmit(int a);
void scia_msg(char *msg);

// 本例程使用的全局变量
Uint16 LoopCount;
Uint16 ErrorCount;

void main(void)
{

    Uint16 ReceivedChar;
    char *msg;

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
   GpioMuxRegs.GPGMUX.all=0x0030;	// 选择 GPIOs为 Scib引脚
                                    // 端口 G MUX - x000 0000 0011 0000
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

// 步骤 4.初始化片内外设:
// InitPeripherals(); // 本例未使用

// 步骤 5. 用户指定代码;

    LoopCount = 0;
    ErrorCount = 0;

    scia_fifo_init();	   // 初始化 SCI FIFO
    scia_echoback_init();  // 初始化 SCI 为反馈

    msg = "\r\n\n\nHello World!\0";
    scia_msg(msg);

    msg = "\r\nYou will enter a character, and the DSP will echo it back! \n\0";
    scia_msg(msg);

	for(;;)
    {
       msg = "\r\nEnter a character: \0";
       scia_msg(msg);

       // 等待接收字节
       while(SciaRegs.SCIFFRX.bit.RXFIFST!=1) { } // 等XRDY =1 ，则说明已接收到一个字节

       // 获得已接收的字节
       ReceivedChar = SciaRegs.SCIRXBUF.all;

       // 显示已接收到的字节
       msg = "  You sent: \0";
       scia_msg(msg);
       scia_xmit(ReceivedChar);

       LoopCount++;
    }

}


// SCIA  8-位字节, 波特率 0x000F, 默认, 1 个停止位, 无奇偶校验
void scia_echoback_init()
{
    // 在 InitSysCtrl()函数里已打开了SCIA片内外设的时钟

 	SciaRegs.SCICCR.all =0x0007;   // 1个停止位,  禁止回环测试 
                                  // 无奇偶校验,字节长度为8位,
                                  // 异步模式, idle-line协议
	SciaRegs.SCICTL1.all =0x0003;  // 使能 TX, RX, 内部 SCICLK, 
                                  // 禁止 RX ERR, SLEEP, TXWAKE
	SciaRegs.SCICTL2.all =0x0003;
	SciaRegs.SCICTL2.bit.TXINTENA =1;
	SciaRegs.SCICTL2.bit.RXBKINTENA =1;

	SciaRegs.SCIHBAUD    =0x0001;  // 9600 波特率 @LSPCLK = 37.5MHz.
	SciaRegs.SCILBAUD    =0x00E7;

	SciaRegs.SCICTL1.all =0x0023;  
}

//  从SCI发送字节
void scia_xmit(int a)
{
    while (SciaRegs.SCIFFTX.bit.TXFFST != 0) {}
    SciaRegs.SCITXBUF=a;

}

void scia_msg(char * msg)
{
    int i;
    i = 0;
    while(msg[i] != '\0')
    {
        scia_xmit(msg[i]);
        i++;
    }
}

// 初始化 SCI FIFO
void scia_fifo_init()
{
    SciaRegs.SCIFFTX.all=0xE040;
    SciaRegs.SCIFFRX.all=0x204f;
    SciaRegs.SCIFFCT.all=0x0;

}






//===========================================================================
// No more.
//===========================================================================


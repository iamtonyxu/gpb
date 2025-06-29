/********************************************************************
* 文件名： 	数码管显示程序
* 描述:  	执行该程序，数码管显示数字从0000~9999递增				 

**********************************************************************/
/********************************************************************
程序说明：	

			更换控制平台，仅需更改IO口初始化、宏定义 以及spi初始化
********************************************************************/

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
/********************************宏定义数码管位选 IO 接口*******************************************/
#define  SET_BIT4	GpioDataRegs.GPBSET.bit.GPIOB8	 = 1 		//与外设板 8_LEDS 端子的 IOB8 对应
#define  RST_BIT4	GpioDataRegs.GPBCLEAR.bit.GPIOB8 = 1		//与外设板 8_LEDS 端子的 IOB8 对应
#define  SET_BIT3   GpioDataRegs.GPBSET.bit.GPIOB9	 = 1		//与外设板 8_LEDS 端子的 IOB9 对应
#define  RST_BIT3	GpioDataRegs.GPBCLEAR.bit.GPIOB9 = 1		//与外设板 8_LEDS 端子的 IOB9 对应
#define  SET_BIT2   GpioDataRegs.GPBSET.bit.GPIOB10	 = 1		//与外设板 8_LEDS 端子的 IOB10 对应
#define  RST_BIT2	GpioDataRegs.GPBCLEAR.bit.GPIOB10 = 1		//与外设板 8_LEDS 端子的 IOB10 对应
#define  SET_BIT1   GpioDataRegs.GPBSET.bit.GPIOB13	 = 1		//与外设板 8_LEDS 端子的 IOB13 对应
#define  RST_BIT1	GpioDataRegs.GPBCLEAR.bit.GPIOB13 = 1		//与外设板 8_LEDS 端子的 IOB13 对应
/*****************************************************************************************************/


/*********************************************函数申明************************************************/
void mydelay(Uint32 t);
void DisData_Trans(Uint16 data);
void Sellect_Bit(Uint16 i);
void Init_LEDS_Gpio(void);
void spi_xmit(Uint16 a);
void spi_fifo_init(void);
void spi_init(void);

/*****************************************************************************************************/

/************************************定义相关变量*********************************************/
unsigned char msg[10]={0xC0,0xf9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};	//段码：0~9
unsigned char DisData_Bit[4] = {0};											//存放拆分后的四位数字
Uint16 DisData = 0;															//显示的数字
Uint16 Loop = 0;															//循环扫描变量

/*****************************************************************************************************/

/******************************数码管位选 IO 接口初始化*******************************************/
  
void Init_LEDS_Gpio(void)
{  
    EALLOW;
   
	
    GpioDataRegs.GPBSET.bit.GPIOB8 = 1;   					// 输出高电平
    GpioMuxRegs.GPBMUX.bit.CAP4Q1_GPIOB8 = 0;  					// GPIOB8 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB8 = 1;   					// GPIOB8 = output

    GpioDataRegs.GPBSET.bit.GPIOB9 = 1;   					// 输出高电平
    GpioMuxRegs.GPBMUX.bit.CAP5Q2_GPIOB9 = 0;  					// GPIOB9 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB9 = 1;   					// GPIOB9 = output
    
    GpioDataRegs.GPBSET.bit.GPIOB10 = 1;   					// 输出高电平
    GpioMuxRegs.GPBMUX.bit.CAP6QI2_GPIOB10 = 0;  					// GPIOB10 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB10 = 1;   					// GPIOB10 = output
    
    GpioDataRegs.GPBSET.bit.GPIOB13 = 1;   					// 输出高电平
    GpioMuxRegs.GPBMUX.bit.C4TRIP_GPIOB13 = 0;  					// GPIOB13 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB13 = 1;   					// GPIOB13 = output

    EDIS;  
    
    RST_BIT1;//关闭数码管显示
    RST_BIT2;
    RST_BIT3;
    RST_BIT4;   
}
/*****************************************************************************************************/


/******************************数码管位选函数（从低位到高位扫描）***************************************************/
void Sellect_Bit(Uint16 i)
{
	switch(i)
	{
		case 0:
			RST_BIT4;									//关断数码管第四位	
			SET_BIT1;									//选通数码管第一位
			break;

		case 1:
			RST_BIT1;									//关断数码管第一位
			SET_BIT2;									//选通数码管第二位
			break;

		case 2:
			RST_BIT2;									//关断数码管第二位
			SET_BIT3;									//选通数码管第三位
			break;

		case 3:
			RST_BIT3;									//关断数码管第三位
			SET_BIT4;									//选通数码管第四位
			break;

		default:
			break;
	}
}
/*****************************************************************************************************/

/************************** 拆分要显示的四位数保存到数组DisData_Trans【】*****************************/
void DisData_Trans(Uint16 data)
{
	DisData_Bit[3] = data / 1000;						//千位数
	DisData_Bit[2] = data % 1000 / 100 ;				//百位数
	DisData_Bit[1] = data % 100 / 10;					//十位数
	DisData_Bit[0] = data % 10;							//个位数
}
/*****************************************************************************************************/



/*********************************************延时函数************************************************/
void mydelay(Uint32 t)
{
	Uint32 i = 0;
	for (i = 0; i < t; i++);
}
/*****************************************************************************************************/

/*********************************************Spi初始化************************************************/

void spi_init()
{    
	SpiaRegs.SPICCR.all =0x004F;	             			// Reset on, rising edge, 16-bit char bits
	                                             			//0x000F对应Rising Edge，0x004F对应Falling Edge  
	SpiaRegs.SPICTL.all =0x0006;    		     			// Enable master mode, normal phase,
                                                 			// enable talk, and SPI int disabled.
	SpiaRegs.SPIBRR =0x007F;									
    SpiaRegs.SPICCR.all =0x00DF;		         			// Relinquish SPI from Reset   
    SpiaRegs.SPIPRI.bit.FREE = 1;                			// Set so breakpoints don't disturb xmission
}
/*****************************************************************************************************/

/****************************************Spi模块FIFO设置**********************************************/
void spi_fifo_init()										
{
// 初始化 SPI FIFO 寄存器
    SpiaRegs.SPIFFTX.all=0xE040;
    SpiaRegs.SPIFFRX.all=0x204f;
    SpiaRegs.SPIFFCT.all=0x0;
}  

/*****************************************************************************************************/

/*********************************************Spi发送************************************************/

void spi_xmit(Uint16 a)
{
    SpiaRegs.SPITXBUF=a;
}    
/*****************************************************************************************************/


void main(void)
{

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤
// 仅设置相应GPIO为为SPI功能引脚

   //初始化SPI
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x000F;	// 选择GPIO为SPI引脚	 
 									// 端口F MUX - x000 0000 0000 1111
   EDIS;


   Init_LEDS_Gpio();

// 步骤 3. 清除所有中断,初始化中断向量表:
// 禁止CPU全局中断
   DINT;

// 初始化PIE控制寄存器到他们的默认状态.
// 这个默认状态就是禁止PIE中断及清除所有PIE中断标志 
// 这个函数放在DSP281x_PieCtrl.c源文件里
   InitPieCtrl();

// 禁止CPU中断，清除CPU中断标志位
   IER = 0x0000;
   IFR = 0x0000;
   
//初始化PIE中断向量表，并使其指向中断服务子程序（ISR）
// 这些中断服务子程序被放在了DSP281x_DefaultIsr.c源文件中
// 这个函数放在了DSP281x_PieVect.c源文件里面.
   InitPieVectTable();
	
// 步骤 4.初始化片内外设:
   spi_fifo_init();	  // 初始化 Spi FIFO
   spi_init();		  // 初始化SPI

	for(;;)
	{
		
		DisData_Trans(DisData);									//拆分四位数
		for(Loop=0;Loop<4;Loop++)								//分别显示四位
		{
			Sellect_Bit(Loop);									//选择要扫描的数码管位
			spi_xmit(msg[DisData_Bit[Loop]]);					//串行输出要显示的数字
			mydelay(25000);										//延时配合人眼反应时间
		}

		DisData++;												//显示数字自加
		if(DisData > 9999)										//防止溢出 归零
		DisData = 0;
	}


} 	


//===========================================================================
// No more.
//===========================================================================


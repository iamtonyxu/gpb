/********************************************************************
* 文件名： 	数码管显示程序
* 描述:  	电压表采样实验			 

**********************************************************************/
/********************************************************************
// 功能描述:
//      用跳线帽将J9插件的1,2引脚短接
//    通过ADC通道A0采集模拟电压值，然后通过SPI传输给数码管
//    通过数码管显示电压值
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
Uint16 DisData = 1234;															//显示的数字
Uint16 Loop = 0;

Uint16 LedBuffer[2];
Uint16 showdata;	

// ADC启动参数
#define ADC_MODCLK 0x3   // HSPCLK = SYSCLKOUT/2*ADC_MODCLK2 = 150/(2*3)     = 25MHz
#define ADC_CKPS   0x0   // ADC 模块时钟 = HSPCLK/1      = 25MHz/(1)     = 25MHz
#define ADC_SHCLK  0x1   // 采样窗口时间                 = 2 ADC 周期
#define AVG        1000  // 平均采样限值
#define ZOFFSET    0x00  
#define BUF_SIZE   1024  // 采样缓冲器尺寸

// 该例程使用的全局变量
Uint16 SampleTable[BUF_SIZE];
														//循环扫描变量

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
//  初始化 SPI FIFO 寄存器
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
//延迟函数	

void mydelay_loop()
{
    long      i;
    for (i = 0; i < 4500000; i++) {} 
}


void main(void)
{
   Uint16 i;
   Uint32 Sum=0;
   Uint32 Vin;


// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤
// 仅设置相应GPIO为为SPI功能引脚
   
// 本例特定的时钟设置       
   EALLOW;
   SysCtrlRegs.HISPCP.all = ADC_MODCLK;	// HSPCLK = SYSCLKOUT/ADC_MODCLK
   EDIS;



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
   InitAdc();  // For this example, init the ADC
   
   spi_fifo_init();	  // 初始化Spi FIFO
   spi_init();		  // 初始化 SPI
   
   // 本例需要设置ADC参数
   AdcRegs.ADCTRL1.bit.ACQ_PS = ADC_SHCLK;  
   AdcRegs.ADCTRL3.bit.ADCCLKPS = ADC_CKPS;  // ADC 模块时钟 = HSPCLK/1      = 25MHz/(1)     = 25MHz   
   AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;        // 1  级联模式
   AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x0;   //ADC通道选择ADCIN0
   AdcRegs.ADCTRL1.bit.CONT_RUN = 1;       // 设置为连续运行

// Step 5.用户指定代码，使能中断:

// 采样表清0
   for (i=0; i<BUF_SIZE; i++)
   {
     SampleTable[i] = 0;
   }
   //关数码管；
   spi_xmit(0xFFFF);
     //延迟
      mydelay_loop();

   // 软件启动SEQ1
   AdcRegs.ADCTRL2.all = 0x2000;

   // 取ADC数据并写入采样数据表
   for(;;)
   {
     for (i=0; i<AVG; i++)
     {
        while (AdcRegs.ADCST.bit.INT_SEQ1== 0) {} // 等待中断
        AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;
        SampleTable[i] =((AdcRegs.ADCRESULT0>>4) );
     }
	 for (i=0;i<AVG;i++)
	 {
      Sum+=SampleTable[i];
	  Sum=Sum/2;
	 }
	 //输入电压和AD值之间的关系Vin/Sum=3/4096；
	 Vin=Sum*3*10000/4096;      //将输入电压放大100倍，以便于第2位有效小数的四舍五入计算；
	 if(Vin%10>=5)//最后一位整数>=5时，要五入；
	 showdata=Vin/10+1;
	 else
	 showdata=Vin/10;//要四舍；

	 for(i=0;i<100;i++)
	 	{

	 		DisData_Trans(showdata);									//拆分四位数
	 		for(Loop=0;Loop<4;Loop++)								//分别显示四位
	 		{
	 			Sellect_Bit(Loop);	                                //选择要扫描的数码管位
	 			if(Loop==3)
	 				spi_xmit(msg[DisData_Bit[Loop]]+0x80);
	 			else
	 			spi_xmit(msg[DisData_Bit[Loop]]);					//串行输出要显示的数字
	 			mydelay(25000);										//延时配合人眼反应时间
	 		}


	 	}


   }
}
 	


//===========================================================================
// No more.
//===========================================================================


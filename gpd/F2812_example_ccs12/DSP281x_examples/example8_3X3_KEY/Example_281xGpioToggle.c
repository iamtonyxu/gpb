//###########################################################################
//
// FILE:    Example_281xGpioToggle.c
//
// TITLE:   3*3矩阵键盘实验 
//
/********************************************************************
程序说明：
按键扫描原理：1、3列对应的IO设置为输出,3行对应的IO设置为输入；
			  2、若无按键按下，3行输入IO，均为高电平（因为有外部上拉电阻）
			 3、若按键按下，对应行IO被拉低（假设为第X行），检测为低电平。按键所在行（X行），被鉴别出来。
			4、此时，依次改变3列的输出为高，当遇到按键所在列时，第X行电平重新变为高。按键所在列。被鉴别出来。
			观测变量Key的值来判断哪个按键按下了；
********************************************************************/
// 描述:
//
//          运行程序，按下按键，观测变量Key的值（该值从从1~9)。
//         
//###########################################################################
// 释放日期: 2015.02.02
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File


/**************************************宏定义************************************************/

#define SET_KY1			GpioDataRegs.GPBSET.bit.GPIOB2 = 1						//Y1拉高
#define RST_KY1			GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1						//Y1拉低
#define SET_KY2			GpioDataRegs.GPBSET.bit.GPIOB1 = 1						//Y2拉高
#define RST_KY2			GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1						//Y2拉低
#define SET_KY3 		GpioDataRegs.GPBSET.bit.GPIOB0 = 1						//Y3拉高
#define RST_KY3			GpioDataRegs.GPBCLEAR.bit.GPIOB0 = 1						//Y3拉低


#define KX1_STATUS	 	GpioDataRegs.GPBDAT.bit.GPIOB5							//X1状态
#define KX2_STATUS	 	GpioDataRegs.GPBDAT.bit.GPIOB4						    //X2状态
#define KX3_STATUS	 	GpioDataRegs.GPBDAT.bit.GPIOB3						    //X3状态
/*****************************************************************************************************/

/**************************************函数声明************************************************/
void Init_KeyGpio(void);							//初始化按键IO
void delay1(Uint32 t);								//延时函数
void ResetAllKY(void);								//3列全部输出低电平
void KX_AllStatus(void);							//读取3行IO电平状态
void Read_KX(Uint16 x);								//读取按键所在行
void Set_KY(Uint16 x);								//设置任意列输出高电平
void Rst_KY(Uint16 x);								//设置任意列输出低电平
void Read_KY(Uint16 x);								//读取按键所在列
/****************************************************************************************************/

/**************************************变量定义************************************************/
Uint16 Keys[3][3] = {1,2,3,4,5,6,7,8,9};          //数据表，与9个按键对应{SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8,SW9}
Uint16 Key = 0;									  //实时按键信息变量
Uint16 KX_On = 0;
Uint16 KX_Tim[5] = {0};
Uint16 KX_Status[5]={0};
Uint16 KY_On = 0;
/*****************************************************************************************************/
/*********************************************延时函数************************************************/
void delay1(Uint32 t)
{
	Uint32 i = 0;
	for (i = 0; i < t; i++);
}
/*****************************************************************************************************/

/****************************************4列全部输出低电平************************************************/
void ResetAllKY(void)
{

	RST_KY3	;
	RST_KY2	;
	RST_KY1	;
}
/*****************************************************************************************************/

/****************************************读取4行IO电平状态************************************************/
void KX_AllStatus(void)
{
	KX_Status[1] = KX1_STATUS;
	KX_Status[2] = KX2_STATUS;
	KX_Status[3] = KX3_STATUS;

}
/*****************************************************************************************************/

/**************************************读取按键行位置**************************************/
void Read_KX(Uint16 x)
{
	KX_AllStatus();
	if(KX_Status[x] == 0)
	{
		 KX_Tim[x]++;
		 if(KX_Tim[x] >= 6000)
		 {
			 KX_On = x;	
			 KX_Tim[1]= 0;
			 KX_Tim[2]=0;
			 KX_Tim[3]=0;

		 }
	}
}
/*****************************************************************************************************/

/*******************************指定列输出高电平******************************************/
void Set_KY(Uint16 x)
{
	if(x==1){SET_KY1;}
	if(x==2){SET_KY2;}
	if(x==3){SET_KY3;}

}
/*****************************************************************************************************/

/*******************************指定列输出低电平**********************************************/
void Rst_KY(Uint16 x)
{
	if(x==1){RST_KY1;}
	if(x==2){RST_KY2;}
	if(x==3){RST_KY3;}

}
/*****************************************************************************************************/

/*******************************读取按键列位置**********************************************/
void Read_KY(Uint16 x)
{
	
	if(!KX_Status[KX_On] && KX_On)
	{
		Set_KY(x);
		delay1(200);
		KX_AllStatus();
		if(KX_Status[KX_On])
		{
			KY_On = x;
			Key = Keys[KX_On-1][KY_On-1];
			KY_On = 0;
			KX_On = 0;
			
		}
		Rst_KY(x);
	}
}
/*****************************************************************************************************/

/*******************************按键IO初始化***********************************/
void Init_KeyGpio(void)
{

	EALLOW; 
	 
	//////////////////////////////以下3个IO口设置为输出，作为列扫描////////////////////////////

	//初始化行1的GPIOB2
	
    GpioDataRegs.GPBSET.bit.GPIOB2= 1;   									// Load output latch
    GpioMuxRegs.GPBMUX.bit.PWM9_GPIOB2 = 0;  									// GPIO48 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB2 = 1;   									// GPIO48 = output

    //初始化行2的GPIOB1
	
    GpioDataRegs.GPBSET.bit.GPIOB1 = 1;   									// Load output latch
    GpioMuxRegs.GPBMUX.bit.PWM8_GPIOB1= 0;  									// GPIO49 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB1 = 1;   									// GPIO49 = output

    //初始化行3的GPIOB0
    
    GpioDataRegs.GPBSET.bit.GPIOB0 = 1;   									// Load output latch
    GpioMuxRegs.GPBMUX.bit.PWM7_GPIOB0 = 0;  									// GPIO50 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB0 = 1;   									// GPIO50 = output


	//////////////////////////////以下3个IO口设置为输入，作为行扫描////////////////////////////



	//初始化列1的GPIOB5
   
    GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5 = 0;  									// 设置为一般IO口
    GpioMuxRegs.GPBDIR.bit.GPIOB5  = 0;   									// IO口方向为输入

 	//初始化列2的GPIOB4
   
    GpioMuxRegs.GPBMUX.bit.PWM11_GPIOB4 = 0;  									// 设置为一般IO口
    GpioMuxRegs.GPBDIR.bit.GPIOB4  = 0;   									// IO口方向为输入

	//初始化列3的GPIOB3
   
    GpioMuxRegs.GPBMUX.bit.PWM10_GPIOB3 = 0;  									// 设置为一般IO口
    GpioMuxRegs.GPBDIR.bit.GPIOB3   = 0;   									// IO口方向为输入
 
    EDIS;  
 	ResetAllKY();
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
 
// 本例使用如下配置；
   Init_KeyGpio();	  

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
// 该函数可以在DSP281x_InitPeripherals.c里找到
// InitPeripherals(); // 本例不需要
	
// 步骤 5. 用户指定的例程:
	
while(1)												//死循环
	{
		Read_KX(1);
		Read_KX(2);
		Read_KX(3);
		Read_KY(1);
		Read_KY(2);
		Read_KY(3);

		
     }

} 	

//===========================================================================
// No more.
//===========================================================================


//###########################################################################
//
// FILE:    Example_281xGpioToggle.c
//
// TITLE:   E2ROM读写实验 
//
// 功能描述:
//
//   1.调用Eerom_Gpio_Init函数，初始化与Eeprom相关的IO
//   2.调用 writebyte(Uint16 addr,Uint16 data); //写Eeprom
//     readbyte(Uint16 addr);				 //读Eeprom
//  3.查看读取的内容与写入内容是否一致
//
//    查看读取的RecvBuf内容与写入TranBuf内容是否一致
//
//         
//###########################################################################
// 释放日期: 2015.03.31
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File




// 本文件中用到的函数需要先申明，如下所示：
extern void writebyte(Uint16 addr,Uint16 data);
extern Uint16 readbyte(Uint16 addr);
extern void Eerom_Gpio_Init(void);
void delay1(Uint32 k);

Uint16 addr = 0;
Uint16 RecvBuf[16]={0};
Uint16 TranBuf[16]={0,1,2,3,4,5,6,7,8,9,0xA,0xB,0xC,0xD,0xE,0xF};


void main(void)
{

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();
   
// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
 
// 本例使用如下配置；
   Eerom_Gpio_Init();				//初始化SCL SDA IO口	  

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
   for(addr = 0;addr<=0xf;addr++)
    	{    		
        	writebyte(addr,TranBuf[addr]);					//写Eeprom
            delay1(50000);
            RecvBuf[addr] = readbyte(addr);					//读Eeprom
            delay1(50000);
    	}

      
   while(1);  
}   

void delay1(Uint32 k)
{
   while(k--);
} 	


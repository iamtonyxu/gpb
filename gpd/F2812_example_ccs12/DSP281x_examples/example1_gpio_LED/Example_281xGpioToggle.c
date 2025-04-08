//###########################################################################
//
// FILE:    Example_281xGpioToggle.c
//
// TITLE:   用DSP点亮发光二极管实验 
//
// 说明
//
//          此例程是烧写到SRAM里运行的，BOOT四位开关都拨到数字端
//          本例程里面包含三个不同的例子：    
//          通过修改代码顶部的#define申明，编译链接后可以选择不同的例子运行；
//          三个例子分别对应GPIO (data, set/clear or toggle)的操作；
//
// 描述:
//
//          通过LED可以观察GPIO输出电平的变化 
//         
//###########################################################################
// 释放日期: 2015.01.01
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// 每次以下只能设定一个EXAMPLE为1，其他为0
// 编译链接生成新的.OUT文件，然后下载程序到DSP-RAM里，运行程序观察不同现象
#define EXAMPLE1 0  // 使用DATA寄存器取反I/O输出
#define EXAMPLE2 0  // 使用SET/CLEAR寄存器取反I/O输出
#define EXAMPLE3 1  // 使用TOGGLE寄存器取反I/O输出


// 本文件中用到的函数需要先申明，如下所示：
void delay_loop(void);
void Gpio_select(void);
void Gpio_example1(void);
void Gpio_example2(void);
void Gpio_example3(void);

void main(void)
{

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();
   
// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
 
// 本例使用如下配置；
   Gpio_select();	  

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
	
#if EXAMPLE1

    // 本例使用DATA寄存器来取反I/O口
    Gpio_example1();

#endif  // - EXAMPLE1

#if EXAMPLE2

    // 本例使用 SET/CLEAR寄存器来取反I/O口
    Gpio_example2();
    
#endif

#if EXAMPLE3

    // 本例使用TOGGLE寄存器来取反I/O口
    Gpio_example3();
    
#endif

} 	

//延迟子函数
void delay_loop()
{
    Uint32      i;
	Uint32      j;
	for(i=0;i<32;i++)
    for (j = 0; j < 100000; j++) {}
}


void Gpio_example1(void)
{ 
   // Example 1:
   // 取反I/O口使用 DATA寄存器
   while(1)
   {    
       GpioDataRegs.GPADAT.all    =0x00FF;   
       GpioDataRegs.GPBDAT.all    =0x0000;     
       GpioDataRegs.GPDDAT.all    =0x0000;    
       GpioDataRegs.GPEDAT.all    =0x0000; 
       GpioDataRegs.GPFDAT.all    =0x0000;    
       GpioDataRegs.GPGDAT.all    =0x0000; 	   			  
       delay_loop();
    
       GpioDataRegs.GPADAT.all    =0x0000;     			
       GpioDataRegs.GPBDAT.all    =0x0000;     
       GpioDataRegs.GPDDAT.all    =0x0000;    // Four I/Os only
       GpioDataRegs.GPEDAT.all    =0x0000;    // ThreeI/Os only
       GpioDataRegs.GPFDAT.all    =0x0000;    
       GpioDataRegs.GPGDAT.all    =0x0000;    // Two  I/Os only
       delay_loop();	
    }
}

void Gpio_example2(void)
{ 
   // Example 2:
   // 取反I/O口使用SET/CLEAR寄存器
   while(1)
   {    
       GpioDataRegs.GPASET.all    =0x00AA;
       GpioDataRegs.GPACLEAR.all  =0x0055;     			   
       
       GpioDataRegs.GPBSET.all    =0x0000;
       GpioDataRegs.GPBCLEAR.all  =0x0000;     
                   
       GpioDataRegs.GPDSET.all    =0x0000;
       GpioDataRegs.GPDCLEAR.all  =0x0000;    // Four I/Os only

       GpioDataRegs.GPESET.all    =0x0000;
       GpioDataRegs.GPECLEAR.all  =0x0000;    // ThreeI/Os only
               
       GpioDataRegs.GPFSET.all    =0x0000;
       GpioDataRegs.GPFCLEAR.all  =0x0000;    
                  
       GpioDataRegs.GPGSET.all    =0x0000;
       GpioDataRegs.GPGCLEAR.all  =0x0000;    // Two  I/Os only
               	   			  
       delay_loop();
       
       GpioDataRegs.GPACLEAR.all  =0x00AA;
       GpioDataRegs.GPASET.all    =0x0055;     			   
       
       GpioDataRegs.GPBCLEAR.all  =0x0000;
       GpioDataRegs.GPBSET.all    =0x0000;     
                   
       GpioDataRegs.GPDCLEAR.all  =0x0000;
       GpioDataRegs.GPDSET.all    =0x0000;    // Four I/Os only

       GpioDataRegs.GPECLEAR.all  =0x0000;
       GpioDataRegs.GPESET.all    =0x0000;    // ThreeI/Os only
               
       GpioDataRegs.GPFCLEAR.all  =0x0000;
       GpioDataRegs.GPFSET.all    =0x0000;    
                  
       GpioDataRegs.GPGCLEAR.all  =0x0000;
       GpioDataRegs.GPGSET.all    =0x0000;    // Two  I/Os only        	   			      

       delay_loop();	
    }
}

void Gpio_example3(void)
{ 
   // Example 2:
   // 取反I/O口使用TOGGLE寄存器

   // 首先设置引脚到一个已知状态
   GpioDataRegs.GPASET.all    =0x00AA;
       GpioDataRegs.GPACLEAR.all  =0x0055;     			   
       
       GpioDataRegs.GPBSET.all    =0x0000;
       GpioDataRegs.GPBCLEAR.all  =0x0000;     
                   
       GpioDataRegs.GPDSET.all    =0x0000;
       GpioDataRegs.GPDCLEAR.all  =0x0000;    // Four I/Os only

       GpioDataRegs.GPESET.all    =0x0000;
       GpioDataRegs.GPECLEAR.all  =0x0000;    // ThreeI/Os only
               
       GpioDataRegs.GPFSET.all    =0x0000;
       GpioDataRegs.GPFCLEAR.all  =0x0000;    
                  
       GpioDataRegs.GPGSET.all    =0x0000;
       GpioDataRegs.GPGCLEAR.all  =0x0000;    // Two  I/Os only
   
   // 然后使用TOGGLE来取反引脚的输出状态 
   // 任何位被设置为1将执行相应引脚的取反输出
   // 任何位被设置为0则相应为输出状态不变化
   while(1)
   {    
       GpioDataRegs.GPATOGGLE.all = 0x00FF;
       GpioDataRegs.GPBTOGGLE.all = 0x0000;
       GpioDataRegs.GPDTOGGLE.all = 0x0000;
       GpioDataRegs.GPETOGGLE.all = 0x0000;
       GpioDataRegs.GPFTOGGLE.all = 0x0000;
       GpioDataRegs.GPGTOGGLE.all = 0x0000;
               	   			  
       delay_loop();
    }
}



void Gpio_select(void)
{

    Uint16 var1;
    Uint16 var2;
    Uint16 var3;

    var1= 0x0000;		// 设置GPIO的功能为I/O口
    var2= 0xFFFF;		// 设置GPIO的方向为输出
    var3= 0x0000;		// 设置输入限定值
   
    EALLOW;
	 
	GpioMuxRegs.GPAMUX.all=var1;
    GpioMuxRegs.GPBMUX.all=var1;   
    GpioMuxRegs.GPDMUX.all=var1;
    GpioMuxRegs.GPFMUX.all=var1;		 
    GpioMuxRegs.GPEMUX.all=var1; 
    GpioMuxRegs.GPGMUX.all=var1;
										
    GpioMuxRegs.GPADIR.all=var2;		// 配置GPIO口为输出口
    GpioMuxRegs.GPBDIR.all=var2;   	
    GpioMuxRegs.GPDDIR.all=var2;
    GpioMuxRegs.GPEDIR.all=var2;		
    GpioMuxRegs.GPFDIR.all=var2; 
    GpioMuxRegs.GPGDIR.all=var2;

    GpioMuxRegs.GPAQUAL.all=var3;  		// 设置输入限定值
    GpioMuxRegs.GPBQUAL.all=var3;   
    GpioMuxRegs.GPDQUAL.all=var3;
    GpioMuxRegs.GPEQUAL.all=var3;
 
    EDIS;
     
}     
//===========================================================================
// No more.
//===========================================================================


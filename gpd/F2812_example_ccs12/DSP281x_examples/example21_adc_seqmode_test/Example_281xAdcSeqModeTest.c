//###########################################################################
//
// FILE:   Example_281xAdcSeqModeTest.c
//
// TITLE:  ADC序列发生器模式采样.
//  
// 
//       用跳线帽将J9插件的1,2引脚短接
// 描述:    
//
//          通道 A0 不断被转换然后记录到缓冲器内(SampleTable)
//
//          在观察窗口中添加 SampleTable变量，以便观察程序运行和停止时表内数值
//          SEQ_OVER=0，允许序列发生器在MAX_CONV设置的转换结束时回绕，所以可以
//          观察到AdcRegs.ADCRESULT8>>4的值与A0采样值不一样；
//
//          观察变量:
//             SampleTable - 记录转换的值
//        AdcRegs.ADCRESULT8>>4-------ADC结果寄存器0里的值（左右4位，数据右对齐）
//
//###########################################################################
// 释放日期: 20150303
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ADC启动参数
#define ADC_MODCLK 0x3   // HSPCLK = SYSCLKOUT/2*ADC_MODCLK2 = 150/(2*3)         = 25MHz
#define ADC_CKPS   0x1   // ADC 模块时钟 = HSPCLK/2*ADC_CKPS   = 25MHz/(1*2) = 12.5MHz
#define ADC_SHCLK  0xf   // 采样窗口的长度                     = 16 ADC 时钟
#define AVG        1000  // 平均采样限值
#define ZOFFSET    0x00  
#define BUF_SIZE   2048  // 采样缓存区尺寸

// 该例程使用的全局变量
Uint16 SampleTable[BUF_SIZE];

main() 
{
   Uint16 i;

// 步骤 1. 初始化系统控制:
// 设置PLL, WatchDog, 使能外设时钟
// 下面这个函数可以从DSP281x_SysCtrl.c文件中找到.
   InitSysCtrl();
      
// 本例特定的时钟设置    
   EALLOW;
   SysCtrlRegs.HISPCP.all = ADC_MODCLK;	// HSPCLK = SYSCLKOUT/ADC_MODCLK
   EDIS;

// 步骤 2. 初始化通用输入输出多路复用器GPIO: 
// 这个函数在DSP281x_Gpio.c源文件中被定义了
// InitGpio();  // 本例直接跳过该步骤 

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
   InitAdc();  // 本例需要初始化ADC

// 本例需要设置ADC参数
   AdcRegs.ADCTRL1.bit.ACQ_PS = ADC_SHCLK;
   AdcRegs.ADCTRL3.bit.ADCCLKPS = ADC_CKPS; // ADC 模块时钟 = HSPCLK/2*ADC_CKPS   = 25MHz/(1*2) = 12.5MHz    
   AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;        // 1  级联模式
   AdcRegs.ADCTRL3.bit.SMODE_SEL = 0;       // 0 顺序采样模式
   AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x0;   //ADC通道选择ADCIN0
   AdcRegs.ADCTRL1.bit.CONT_RUN = 1;       // 设置连续运行模式

   AdcRegs.ADCTRL1.bit.SEQ_OVRD = 0;       // 使能序列发生器 override 特征
   AdcRegs.ADCCHSELSEQ1.all = 0x0;         // 初始化ADC通道选择A0
   AdcRegs.ADCCHSELSEQ2.all = 0x0;
   AdcRegs.ADCCHSELSEQ3.all = 0x0;
   AdcRegs.ADCCHSELSEQ4.all = 0x0;
   AdcRegs.ADCMAXCONV.bit.MAX_CONV1 = 0x1;  // 转换和储存在2个结果寄存器里 


// 步骤 5. 用户特定的代码,允许中断:


// 清除SampleTable
   for (i=0; i<BUF_SIZE; i++)
   {
     SampleTable[i] = 0;
   }

   // 启动SEQ1
   AdcRegs.ADCTRL2.all = 0x2000;

   // 采集ADC数据，然后将数据记录到SampleTable数组内；
   while(1)
   {  
     for (i=0; i<AVG; i++)
     {
        while (AdcRegs.ADCST.bit.INT_SEQ1== 0) {} // 等待SEQ1转换完后的中断
        // Software wait = (HISPCP*2) * (ADCCLKPS*2) * (CPS+1) cycles
        //               = (3*2)      * (1*2)        * (0+1)   = 12 cycles
        asm(" RPT #11 || NOP");
        AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;
        SampleTable[i] =((AdcRegs.ADCRESULT0>>4) ); 
     }
   }
}

//===========================================================================
// No more.
//===========================================================================


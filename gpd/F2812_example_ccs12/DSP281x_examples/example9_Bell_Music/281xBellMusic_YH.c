//###########################################################################
//
// FILE:    281xBellMusic_YH.c
//
// TITLE:   I/O�ڿ��Ʒ�������������
//
// ASSUMPTIONS:
//
//          This program requires the DSP281x V1.00 header files.  
//          As supplied, this project is configured for "boot to H0" operation.
//
//          Other then boot mode configuration, no other hardware configuration
//          is required.   
//
// ����:
//
//          ��������ʹ�������ϵķ��������������տ���"��������
//
//###########################################################################
// $Release Date: 20150205
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

/***************ȫ�ֱ�������****************/
#define uchar unsigned char

/****************�˿ں궨��*****************/
#define BUZZ_CLK_GENER	GpioDataRegs.GPATOGGLE.bit.GPIOA9 = 1;	//����������IO��IO��ƽ��ת��������������

// ʹ��ǰ���������ļ��е���غ���
interrupt void cpu_timer0_isr(void);
extern void Show(void);
extern void Buzz_Gpio_Init(void);

void main(void)
{
// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();


// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������

// ������Ҫʹ��GPIOA9������������Ҫ������г�ʼ��
    Buzz_Gpio_Init();//���÷������˿����  

// ���� 3. ��������ж�,��ʼ���ж�������:
// ��ֹCPUȫ���ж�
   DINT;

// ��ʼ��PIE���ƼĴ��������ǵ�Ĭ��״̬.
// ���Ĭ��״̬���ǽ�ֹPIE�жϼ��������PIE�жϱ�־ 
// �����������DSP281x_PieCtrl.cԴ�ļ���
   InitPieCtrl();
   
// ��ֹCPU�жϺ��������CPU�жϱ�־ 
   IER = 0x0000;
   IFR = 0x0000;

//��ʼ��PIE�ж���������ʹ��ָ���жϷ����ӳ���ISR��
// ��Щ�жϷ����ӳ��򱻷�����DSP281x_DefaultIsr.cԴ�ļ���
// �������������DSP281x_PieVect.cԴ�ļ�����.

   InitPieVectTable();

// �����е��ж�����ӳ�䵽���ļ��е��жϷ����ӳ�����  
   EALLOW;  //����Ĵ�������
   PieVectTable.TINT0 = &cpu_timer0_isr;
   EDIS;   // ��ӼĴ�������

// ���� 4.��ʼ��Ƭ������:
   InitCpuTimers();   // ��������Ҫ��ʼ��CPU��ʱ��


// ����CPU��ʱ��0ÿ�뷢��һ���ж�
// 100MHz��CPUƵ��, 1000000 (��λ��us)��ͨ��������������������ڼĴ�����ֵ��
   ConfigCpuTimer(&CpuTimer0, 150, 1000000);
   StartCpuTimer0();

// ���� 5. �û��ض��Ĵ����������ж�


//����CPU�ж���INT1���������ӵ�CPU��ʱ��0�ģ�
   IER |= M_INT1;

// ��PIE��1�ж�7��ʹ��TINT0�жϣ�
   PieCtrlRegs.PIEIER1.bit.INTx7 = 1;

//ʹ��ȫ���жϺ͸����ȼ���ʵʱ�����¼���
   EINT;   // ʹ��ȫ���ж�INTM
   ERTM;   // ʹ��ȫ��ʵʱ�ж�DBGM

// ���� 6. ѭ���������������֣�
    while(1)
   {

	Show();
   }
    
} 

/*------------------------------------------*/
/*��ʽ������void                            */
/*����ֵ:void				                */
/*��������:��ʱ��CPU0�жϷ����ӳ���         */
/*------------------------------------------*/ 

interrupt void cpu_timer0_isr(void)
{
   CpuTimer0.InterruptCount++;
   BUZZ_CLK_GENER;
   // Acknowledge this interrupt to receive more interrupts from group 1
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}


//===========================================================================
// No more.
//===========================================================================

//###########################################################################
//
// FILE:    Example_281xHaltWake.c
//
// TITLE:   �ⲿ���������ж�XNMI��HALT�͹���ģʽ����CPU����.
//
//    �����öŰ��߽���ɫ���P5�ϵ�PWM12���ɫ���P8�ϵ�NMI�̽�������
//    ���ű�����Ϊ�͹���ģʽ��������������һ���ⲿ���������ж�
//    ͨ�������ϵ��½����������ģ�ͨ������SW3���£���PWM12�ϲ���һ���½���
//    ��PWM12��NMI�̽ӣ�������NMI������Ҳ����һ���½��أ��Ӷ�������NMI�ж�
//
//    ͨ���۲찴�����º�GPIO1���Ƶ�LED��D9�ı仯������֤������HALTģʽ�˳�
//    
//
//
//
//
//###########################################################################
// �ͷ�����: 20150313
//###########################################################################

#include "DSP281x_Device.h"
#include "DSP281x_Examples.h"

// ʹ��ǰ���������ļ��е���غ���

interrupt void XNMI_ISR(void);      // ���Ѻ�ʹ�õ��жϷ����ӳ���


void main()

{

//asm("  EALLOW");

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���


    
//��ʼ������SW3��ص�����GPIO��
   //��ʼ����3��GPIOB0
   EALLOW;
    
    GpioMuxRegs.GPBMUX.bit.PWM7_GPIOB0 = 0;  									// GPIOB0 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB0 = 1;   									// GPIOB0 = output 
    GpioDataRegs.GPBCLEAR.bit.GPIOB0 = 1;   									// Load output latch 

    GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5 = 0;  					// ����Ϊһ��IO��	//��ʼ����1��GPIOB5
    GpioMuxRegs.GPBDIR.bit.GPIOB5  = 0;   									// IO�ڷ���Ϊ����
   EDIS;

	EALLOW;
	GpioMuxRegs.GPEMUX.bit.XNMI_XINT13_GPIOE2 = 1; //�������ó�XNMI	
	XIntruptRegs.XNMICR.bit.POLARITY=0;//�½��ز����ж�
	XIntruptRegs.XNMICR.bit.SELECT=0; //CPU_Timer1���ӵ�XINT13
	//XIntruptRegs.XNMICR.bit.ENABLE=1; //ʹ�ܷ������ж�NMI
	EDIS;

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
   EALLOW;   //����Ĵ�������
   PieVectTable.XNMI = &XNMI_ISR;//�жϷ��������ڵ�ַ�����ж�������
   EDIS;

// ���� 4.��ʼ��Ƭ������:
    EALLOW;
    XIntruptRegs.XNMICR.bit.ENABLE = 1;            // ʹ�� NMI����   /* ���� XNMI���� */
    GpioMuxRegs.GPADIR.bit.GPIOA1 = 1;             // GPIOA1���жϷ����ӳ���������ָʾ����������
    GpioDataRegs.GPACLEAR.bit.GPIOA1 = 1;
     EDIS;
   

// ���� 5. �û��ض��Ĵ���,�����ж�:

// ʹ��ȫ���ж�:
   EINT;   // ʹ��ȫ���ж� INTM

// дLPM����ֵ

    EALLOW;
    SysCtrlRegs.LPMCR0.bit.LPM = 0x0002;   // LPM ģʽ= Halt
    EDIS;
// ��ʹ��������HALT�͹���ģʽ

    asm(" IDLE");                          // ������HALTģʽ�ȴ�ֱ����XNMI�����ϳ����½���

    while(1);                             // ���Ѻ����е�����

}

/* ----------------------------------------------- */
/* ISR for WAKEINT - Will be executed when         */
/* low pulse triggered on GPIO0 pin                */
/* ------------------------------------------------*/
interrupt void XNMI_ISR(void)
{
   GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;  // ȡ��GPIO1��GPIO1�Ͽ��Ƶ�D9��������ܻ���˸
   // CPU acknowledges interrupt (IFR)
   return;
}




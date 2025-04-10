//###########################################################################
//
// FILE:    Example_281xCpuTimer.c
//
// TITLE:   GPIOӦ��֮������ʵ��
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
//          ��������ʹ�������ϵķ�����������123456��������
//
//###########################################################################
// $Release Date: 20150105
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

/****************�˿ں궨��*****************/
#define BUZZ_CLK_GENER	GpioDataRegs.GPATOGGLE.bit.GPIOA9 = 1;	//����������IO��IO��ƽ��ת��                                                                //������������
#define BELL_DIR GpioMuxRegs.GPADIR.bit.GPIOA9
#define BELL_DAT GpioDataRegs.GPADAT.bit.GPIOA9
#define DISABLE_TIMER0_INT		IER &= 0xFFFE;
#define ENABLE_TIMER0_INT		IER |= M_INT1;
#define BUZZ_OFF				GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;

Uint16 Musi[23]={		//��λ us����ͬƵ���£�������������ͬ����������
				0,
				3816,	//L_do
				3496,	//L_re
				3215,	//L_mi
				2865,	//L_fa
				2551,	//L_so
				2272,	//L_la
				2024,	//L_xi
				1912,	//do
				1703,	//re
				1517,	//mi
				1432,	//fa
				1275,	//so
				1136,	//la
				1013,	//xi
				956,	//H_do
				851,	//H_re
				758,	//H_mi
				716,	//H_fa
				638,	//H_so
				568,	//H_la
				506,	//H_xi
				0xFF	//STOP
				};
Uint16 Song[]={1,2,3,4,5,6,7}; //���ף�do,re,mi,fa,so,la,xi

/****************��������*******************/ 
void Init_Bell(void);
interrupt void cpu_timer0_isr(void);
void Delay(Uint16 t);

void main(void)
{
Uint16 addr=0;
Uint16 k;
// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();


// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������

// ������Ҫʹ��GPIOA9������������Ҫ������г�ʼ��
   BELL_DAT=0;
   Init_Bell(); //���÷������˿����  

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

// ���� 6. �жϿ��Ʒ���������Ƶ�ʣ���ʱ�����������ģ�7��ѭ���ֱ��÷�������7������:
    for(k=0;k<7;k++)
  	{
        	StopCpuTimer0();												//ֹͣ����
			DISABLE_TIMER0_INT;												//��ʹ�ܶ�ʱ�ж�
			ConfigCpuTimer(&CpuTimer0, 150, Musi[Song[addr]+8]/2);			//���ö�ʱʱ��
			StartCpuTimer0();												//������ʱ��
			ENABLE_TIMER0_INT;												//ʹ�ܶ�ʱ�ж�
			Delay(8);												//���ֽ�����ʱ
			StopCpuTimer0();												//ֹͣ����
			DISABLE_TIMER0_INT;												//��ʹ�ܶ�ʱ�ж�
			BUZZ_OFF;														//�رշ�����
			Delay(2);														//����ͣ��
			addr++;
  	}
	while(1); 
} 

/*------------------------------------------*/
/*��ʽ������void                            */
/*����ֵ:void				                */
/*��������:��ʼ���������˿�Ϊ���           */
/*------------------------------------------*/
void Init_Bell(void)
{
	EALLOW;	   //����Ĵ�������
	BELL_DIR=1;//Bell�˿����
	EDIS;      //�Ĵ�������
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

void Delay(Uint16 t)														//��ʱ����
{
	Uint32 i=0;
	Uint32 gain = 300000;													//��ʱ����
	Uint32 base=0;								
	base=gain*t; 															
	for(i=0;i<=base;i++);
}
//===========================================================================
// No more.
//===========================================================================

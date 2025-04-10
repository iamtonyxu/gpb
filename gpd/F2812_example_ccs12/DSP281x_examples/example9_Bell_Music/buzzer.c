/********************************************************************
* �ļ����� 	���������ֳ���
* ����:  	ִ�иó��򣬷��������ࡶ���տ��֡���СС������������				 
* �����ˣ� 	Tony from YH Technology
* �汾�ţ� 	V1.0
* �Ա��� 	http://YH-007.taobao.com 
***********************************************************************/
/********************************************************************
����˵����1.����Buzz_Gpio_Init()��������ʼ�����������ص�IO
		  2.����Show()���ֲ��ź�����
		  3.��ʱ���жϳ�����д��BUZZ_CLK_GENER�������������������塣
********************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define DISABLE_TIMER1_INT		IER &= 0xFFFE;
#define ENABLE_TIMER1_INT		IER |= M_INT1;
#define BUZZ_OFF				GpioDataRegs.GPASET.bit.GPIOA9 = 1;
#define BUZZ_ON

void Show(void);
void Buzz_Gpio_Init(void);
void Delay(Uint16 t);

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
				/*
Uint16 Song[]={1,1,5,5,6,6,5,4,4,3,3,2,2,1,5,5,4,4,3,3,2,5,5,4,4,3,3,2,22}; //��СС����������������
Uint16 DT[]={2,2,2,2,2,2,4,2,2,2,2,2,2,4,2,2,2,2,2,2,4,2,2,2,2,2,2,4};		//����
*/
Uint16 Song[]=	{5,5,6,5,8,7,5,5,6,5,8,7,5,5,5,10,8,7,6,11,10,8,9,8,22	};	//��ף�����տ��֡�����			
Uint16 DT[]={2,2,5,4,6,8,2,2,5,6,6,9,4,2,5,4,6,12,2,2,5,6,8,12 };			//����

void Delay(Uint16 t)														//��ʱ����
{
	Uint32 i=0;
	Uint32 gain = 300000;													//��ʱ����
	Uint32 base=0;								
	base=gain*t; 															
	for(i=0;i<=base;i++);
}

void Show(void)
{
	Uint16 addr=0;
	while(1)
	{
		if(Musi[Song[addr]]==0xFF)									
		{
			return;															//���ֲ��Ž���
		}
		else
		{
			StopCpuTimer0();												//ֹͣ����
			DISABLE_TIMER1_INT;												//��ʹ�ܶ�ʱ�ж�
			ConfigCpuTimer(&CpuTimer0, 150, Musi[Song[addr]+8]/2);			//���ö�ʱʱ��
			StartCpuTimer0();												//������ʱ��
			ENABLE_TIMER1_INT;												//ʹ�ܶ�ʱ�ж�
			Delay(DT[addr]);												//���ֽ�����ʱ
			StopCpuTimer0();												//ֹͣ����
			DISABLE_TIMER1_INT;												//��ʹ�ܶ�ʱ�ж�
			BUZZ_OFF;														//�رշ�����
			Delay(2);														//����ͣ��
			addr++;
		}
	}

}

void Buzz_Gpio_Init(void)
{
	EALLOW;
/*	GpioCtrlRegs.GPAPUD.bit.GPIO11 = 0;   									// Enable pullup on GPIO11
    GpioDataRegs.GPASET.bit.GPIO11 = 1;   									// Load output latch
    GpioCtrlRegs.GPAMUX1.bit.GPIO11 = 0;  									// GPIO11 = GPIO
    GpioCtrlRegs.GPADIR.bit.GPIO11 = 1;   									// GPIO11 = output

	*/
   
    GpioDataRegs.GPASET.bit.GPIOA9= 1;  									 // ��λ�ߵ�ƽ
    GpioMuxRegs.GPAMUX.bit.CAP2Q2_GPIOA9 = 0;  									// ����GPIOΪIO��
    GpioMuxRegs.GPADIR.bit.GPIOA9 = 1;   									// ����GPIOΪ�����
    EDIS;
}

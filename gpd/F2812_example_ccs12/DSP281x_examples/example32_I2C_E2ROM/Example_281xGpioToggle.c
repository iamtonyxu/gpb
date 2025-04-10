//###########################################################################
//
// FILE:    Example_281xGpioToggle.c
//
// TITLE:   E2ROM��дʵ�� 
//
// ��������:
//
//   1.����Eerom_Gpio_Init��������ʼ����Eeprom��ص�IO
//   2.���� writebyte(Uint16 addr,Uint16 data); //дEeprom
//     readbyte(Uint16 addr);				 //��Eeprom
//  3.�鿴��ȡ��������д�������Ƿ�һ��
//
//    �鿴��ȡ��RecvBuf������д��TranBuf�����Ƿ�һ��
//
//         
//###########################################################################
// �ͷ�����: 2015.03.31
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File




// ���ļ����õ��ĺ�����Ҫ��������������ʾ��
extern void writebyte(Uint16 addr,Uint16 data);
extern Uint16 readbyte(Uint16 addr);
extern void Eerom_Gpio_Init(void);
void delay1(Uint32 k);

Uint16 addr = 0;
Uint16 RecvBuf[16]={0};
Uint16 TranBuf[16]={0,1,2,3,4,5,6,7,8,9,0xA,0xB,0xC,0xD,0xE,0xF};


void main(void)
{

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();
   
// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
 
// ����ʹ���������ã�
   Eerom_Gpio_Init();				//��ʼ��SCL SDA IO��	  

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

	
// ���� 4.��ʼ��Ƭ������:
// �ú���������DSP281x_InitPeripherals.c���ҵ�
// InitPeripherals(); // ��������Ҫ
	
// ���� 5. �û�ָ��������:
   for(addr = 0;addr<=0xf;addr++)
    	{    		
        	writebyte(addr,TranBuf[addr]);					//дEeprom
            delay1(50000);
            RecvBuf[addr] = readbyte(addr);					//��Eeprom
            delay1(50000);
    	}

      
   while(1);  
}   

void delay1(Uint32 k)
{
   while(k--);
} 	


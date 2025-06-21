//###########################################################################
//
// FILE:   Example_281xSpi_FFDLB.c
//
// TITLE:   Spi���ֻػ����Գ���. 
//
//
// ����:
//
// ��������һ��ʹ��SPI�ڲ��ػ����Ե����ӣ������̲�ʹ���ж�
//
// һ�����ݱ����ͣ�֮���ý��յ������뷢�͵����ݽ��жԱȣ�
//  
// ���͵�����������ʾ:
// 0000 0001 0002 0003 0004 0005 0006 0007 .... FFFE FFFF
//
//����ѭ������
//          �۲����:         
//                sdata - sent data
//                rdata - received data
//		
////###########################################################################		
// �ͷ�����: 2015.02.28
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ʹ��ǰ���������ļ��е���غ���
// interrupt void ISRTimer2(void);
void delay_loop(void);
void spi_xmit(Uint16 a);
void spi_fifo_init(void);
void spi_init(void);
void error(void);

void main(void)
{
   Uint16 sdata;  // �������ݵı���
   Uint16 rdata;  // �������ݵı���
   
// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���
// ��������ӦGPIOΪΪSPI��������
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x000F;	// ѡ��GPIOΪSPI����	 
 									// �˿�F MUX - x000 0000 0000 1111
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
	
// ���� 4.��ʼ��Ƭ������:
// InitPeripherals(); // ����δʹ��
   spi_fifo_init();	  // ��ʼ��Spi FIFO
   spi_init();		  // ��ʼ�� SPI

// ���� 5. �û��ض��Ĵ��룬�����������ж�
   sdata = 0x0000;							
   for(;;)
   {    
     // ��������
     spi_xmit(sdata);
     // �ȴ���ֱ�����ݱ�����
     while(SpiaRegs.SPIFFRX.bit.RXFFST !=1) { } 			
     // �ԱȽ������ݺͷ�������
     rdata = SpiaRegs.SPIRXBUF;				
     if(rdata != sdata) error();
     sdata++;  //������������+1
   }
} 	

	

void delay_loop()
{
    long      i;
    for (i = 0; i < 1000000; i++) {}
}


void error(void)
{
    asm("     ESTOP0");						//����ʧ�ܣ�ֹͣ��
    for (;;);
}

void spi_init()
{    
	SpiaRegs.SPICCR.all =0x000F;	             // SPI�����λ, �����ط����½��ؽ���, 16-bit�ֽڳ��ȣ���ֹ�ػ�ģʽ  
	SpiaRegs.SPICTL.all =0x0006;    		     // ����Ϊ����, ������SPIʱ�Ӱ���,
                                                 // ����4�����ݴ���, ��ֹSPI�ж�.
	SpiaRegs.SPIBRR =0x007F;									
    SpiaRegs.SPICCR.all =0x009F;		         // SPI׼��������ʹ��SPI�ػ�����ģʽ  
    SpiaRegs.SPIPRI.bit.FREE = 1;                // �����κζϵ㣬��������SPI
}

void spi_xmit(Uint16 a)
{
    SpiaRegs.SPITXBUF=a;
}    

void spi_fifo_init()										
{
// ��ʼ�� SPI FIFO �Ĵ���
    SpiaRegs.SPIFFTX.all=0xE040;
    SpiaRegs.SPIFFRX.all=0x204f;
    SpiaRegs.SPIFFCT.all=0x0;
}  

//===========================================================================
// No more.
//===========================================================================


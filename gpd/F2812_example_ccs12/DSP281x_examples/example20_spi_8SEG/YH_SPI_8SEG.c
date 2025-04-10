/********************************************************************
* �ļ����� 	�������ʾ����
* ����:  	ִ�иó����������ʾ���ִ�0000~9999����				 

**********************************************************************/
/********************************************************************
����˵����	

			��������ƽ̨���������IO�ڳ�ʼ�����궨�� �Լ�spi��ʼ��
********************************************************************/

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
/********************************�궨�������λѡ IO �ӿ�*******************************************/
#define  SET_BIT4	GpioDataRegs.GPBSET.bit.GPIOB8	 = 1 		//������� 8_LEDS ���ӵ� IOB8 ��Ӧ
#define  RST_BIT4	GpioDataRegs.GPBCLEAR.bit.GPIOB8 = 1		//������� 8_LEDS ���ӵ� IOB8 ��Ӧ
#define  SET_BIT3   GpioDataRegs.GPBSET.bit.GPIOB9	 = 1		//������� 8_LEDS ���ӵ� IOB9 ��Ӧ
#define  RST_BIT3	GpioDataRegs.GPBCLEAR.bit.GPIOB9 = 1		//������� 8_LEDS ���ӵ� IOB9 ��Ӧ
#define  SET_BIT2   GpioDataRegs.GPBSET.bit.GPIOB10	 = 1		//������� 8_LEDS ���ӵ� IOB10 ��Ӧ
#define  RST_BIT2	GpioDataRegs.GPBCLEAR.bit.GPIOB10 = 1		//������� 8_LEDS ���ӵ� IOB10 ��Ӧ
#define  SET_BIT1   GpioDataRegs.GPBSET.bit.GPIOB13	 = 1		//������� 8_LEDS ���ӵ� IOB13 ��Ӧ
#define  RST_BIT1	GpioDataRegs.GPBCLEAR.bit.GPIOB13 = 1		//������� 8_LEDS ���ӵ� IOB13 ��Ӧ
/*****************************************************************************************************/


/*********************************************��������************************************************/
void mydelay(Uint32 t);
void DisData_Trans(Uint16 data);
void Sellect_Bit(Uint16 i);
void Init_LEDS_Gpio(void);
void spi_xmit(Uint16 a);
void spi_fifo_init(void);
void spi_init(void);

/*****************************************************************************************************/

/************************************������ر���*********************************************/
unsigned char msg[10]={0xC0,0xf9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};	//���룺0~9
unsigned char DisData_Bit[4] = {0};											//��Ų�ֺ����λ����
Uint16 DisData = 0;															//��ʾ������
Uint16 Loop = 0;															//ѭ��ɨ�����

/*****************************************************************************************************/

/******************************�����λѡ IO �ӿڳ�ʼ��*******************************************/
  
void Init_LEDS_Gpio(void)
{  
    EALLOW;
   
	
    GpioDataRegs.GPBSET.bit.GPIOB8 = 1;   					// ����ߵ�ƽ
    GpioMuxRegs.GPBMUX.bit.CAP4Q1_GPIOB8 = 0;  					// GPIOB8 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB8 = 1;   					// GPIOB8 = output

    GpioDataRegs.GPBSET.bit.GPIOB9 = 1;   					// ����ߵ�ƽ
    GpioMuxRegs.GPBMUX.bit.CAP5Q2_GPIOB9 = 0;  					// GPIOB9 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB9 = 1;   					// GPIOB9 = output
    
    GpioDataRegs.GPBSET.bit.GPIOB10 = 1;   					// ����ߵ�ƽ
    GpioMuxRegs.GPBMUX.bit.CAP6QI2_GPIOB10 = 0;  					// GPIOB10 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB10 = 1;   					// GPIOB10 = output
    
    GpioDataRegs.GPBSET.bit.GPIOB13 = 1;   					// ����ߵ�ƽ
    GpioMuxRegs.GPBMUX.bit.C4TRIP_GPIOB13 = 0;  					// GPIOB13 = GPIO
    GpioMuxRegs.GPBDIR.bit.GPIOB13 = 1;   					// GPIOB13 = output

    EDIS;  
    
    RST_BIT1;//�ر��������ʾ
    RST_BIT2;
    RST_BIT3;
    RST_BIT4;   
}
/*****************************************************************************************************/


/******************************�����λѡ�������ӵ�λ����λɨ�裩***************************************************/
void Sellect_Bit(Uint16 i)
{
	switch(i)
	{
		case 0:
			RST_BIT4;									//�ض�����ܵ���λ	
			SET_BIT1;									//ѡͨ����ܵ�һλ
			break;

		case 1:
			RST_BIT1;									//�ض�����ܵ�һλ
			SET_BIT2;									//ѡͨ����ܵڶ�λ
			break;

		case 2:
			RST_BIT2;									//�ض�����ܵڶ�λ
			SET_BIT3;									//ѡͨ����ܵ���λ
			break;

		case 3:
			RST_BIT3;									//�ض�����ܵ���λ
			SET_BIT4;									//ѡͨ����ܵ���λ
			break;

		default:
			break;
	}
}
/*****************************************************************************************************/

/************************** ���Ҫ��ʾ����λ�����浽����DisData_Trans����*****************************/
void DisData_Trans(Uint16 data)
{
	DisData_Bit[3] = data / 1000;						//ǧλ��
	DisData_Bit[2] = data % 1000 / 100 ;				//��λ��
	DisData_Bit[1] = data % 100 / 10;					//ʮλ��
	DisData_Bit[0] = data % 10;							//��λ��
}
/*****************************************************************************************************/



/*********************************************��ʱ����************************************************/
void mydelay(Uint32 t)
{
	Uint32 i = 0;
	for (i = 0; i < t; i++);
}
/*****************************************************************************************************/

/*********************************************Spi��ʼ��************************************************/

void spi_init()
{    
	SpiaRegs.SPICCR.all =0x004F;	             			// Reset on, rising edge, 16-bit char bits
	                                             			//0x000F��ӦRising Edge��0x004F��ӦFalling Edge  
	SpiaRegs.SPICTL.all =0x0006;    		     			// Enable master mode, normal phase,
                                                 			// enable talk, and SPI int disabled.
	SpiaRegs.SPIBRR =0x007F;									
    SpiaRegs.SPICCR.all =0x00DF;		         			// Relinquish SPI from Reset   
    SpiaRegs.SPIPRI.bit.FREE = 1;                			// Set so breakpoints don't disturb xmission
}
/*****************************************************************************************************/

/****************************************Spiģ��FIFO����**********************************************/
void spi_fifo_init()										
{
// ��ʼ�� SPI FIFO �Ĵ���
    SpiaRegs.SPIFFTX.all=0xE040;
    SpiaRegs.SPIFFRX.all=0x204f;
    SpiaRegs.SPIFFCT.all=0x0;
}  

/*****************************************************************************************************/

/*********************************************Spi����************************************************/

void spi_xmit(Uint16 a)
{
    SpiaRegs.SPITXBUF=a;
}    
/*****************************************************************************************************/


void main(void)
{

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���
// ��������ӦGPIOΪΪSPI��������

   //��ʼ��SPI
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x000F;	// ѡ��GPIOΪSPI����	 
 									// �˿�F MUX - x000 0000 0000 1111
   EDIS;


   Init_LEDS_Gpio();

// ���� 3. ��������ж�,��ʼ���ж�������:
// ��ֹCPUȫ���ж�
   DINT;

// ��ʼ��PIE���ƼĴ��������ǵ�Ĭ��״̬.
// ���Ĭ��״̬���ǽ�ֹPIE�жϼ��������PIE�жϱ�־ 
// �����������DSP281x_PieCtrl.cԴ�ļ���
   InitPieCtrl();

// ��ֹCPU�жϣ����CPU�жϱ�־λ
   IER = 0x0000;
   IFR = 0x0000;
   
//��ʼ��PIE�ж���������ʹ��ָ���жϷ����ӳ���ISR��
// ��Щ�жϷ����ӳ��򱻷�����DSP281x_DefaultIsr.cԴ�ļ���
// �������������DSP281x_PieVect.cԴ�ļ�����.
   InitPieVectTable();
	
// ���� 4.��ʼ��Ƭ������:
   spi_fifo_init();	  // ��ʼ�� Spi FIFO
   spi_init();		  // ��ʼ��SPI

	for(;;)
	{
		
		DisData_Trans(DisData);									//�����λ��
		for(Loop=0;Loop<4;Loop++)								//�ֱ���ʾ��λ
		{
			Sellect_Bit(Loop);									//ѡ��Ҫɨ��������λ
			spi_xmit(msg[DisData_Bit[Loop]]);					//�������Ҫ��ʾ������
			mydelay(25000);										//��ʱ������۷�Ӧʱ��
		}

		DisData++;												//��ʾ�����Լ�
		if(DisData > 9999)										//��ֹ��� ����
		DisData = 0;
	}


} 	


//===========================================================================
// No more.
//===========================================================================


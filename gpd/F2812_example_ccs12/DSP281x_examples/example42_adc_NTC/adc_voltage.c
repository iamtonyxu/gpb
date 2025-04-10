/********************************************************************
* �ļ����� 	�������ʾ����
* ����:  	NTC�¶Ȳ���ʵ��

**********************************************************************/
/********************************************************************
// ��������:
//      ������ñ��J9�����3,4���Ŷ̽�
//    ͨ��ADCͨ��A1�ɼ�ģ���ѹֵ��Ȼ��ͨ��SPI����������
//    ͨ���������ʾ��ѹֵ��Ӧ���¶�ֵ
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
void delay1(Uint32 t);
void DisData_Trans(Uint16 data);
void Sellect_Bit(Uint16 i);
void Init_LEDS_Gpio(void);
void spi_xmit(Uint16 a);
void spi_fifo_init(void);
void spi_init(void);
static void Lookup_TAB(Uint16 data,const Uint16 *TABLE,Uint16 *aptr);
/*****************************************************************************************************/

/************************************������ر���*********************************************/
unsigned char msg[10]={0xC0,0xf9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};	//���룺0~9
unsigned char DisData_Bit[4] = {0};											//��Ų�ֺ����λ����
Uint16 DisData = 0;															//��ʾ������
Uint16 Loop = 0;

Uint16 LedBuffer[2];
Uint16 showdata;	

// ADC��������
#define ADC_MODCLK 0x5   // HSPCLK = SYSCLKOUT/2*ADC_MODCLK2 = 150/(2*3)     = 25MHz
#define ADC_CKPS   0x1   // ADC ģ��ʱ�� = HSPCLK/1      = 25MHz/(1)     = 25MHz
#define ADC_SHCLK  0xf   // ��������ʱ��                 = 2 ADC ����
#define AVG        100  // ƽ��������ֵ
#define ZOFFSET    0x00  
#define BUF_SIZE   2048  // �����������ߴ�

// ������ʹ�õ�ȫ�ֱ���
Uint16 SampleTable[BUF_SIZE];
static const Uint16 NTCTAB[101] ={3768 ,3760 ,3752 ,3744 ,3736 ,3727 ,3718 ,3708 ,3698 ,3688 ,
3677 ,3666 ,3655 ,3643 ,3631 ,3618 ,3605 ,3591 ,3577 ,3563 ,3548 ,3532 ,3516 ,
3500 ,3483 ,3466 ,3448 ,3430 ,3411 ,3392 ,3372 ,3351 ,3330 ,3309 ,3287 ,3266,
3243 ,3219 ,3195 ,3171 ,3146 ,3121 ,3095 ,3069 ,3042 ,3015 ,2987 ,2960 ,2931 ,
2902 ,2873 ,2844 ,2814 ,2784 ,2754 ,2723 ,2692 ,2661 ,2629 ,2597 ,2565 ,2533 ,
2500 ,2468 ,2436 ,2403 ,2370 ,2337 ,2304 ,2271 ,2238 ,2205 ,2172 ,2141 ,2108 ,
2074 ,2041 ,2008 ,1976 ,1944 ,1912 ,1880 ,1848 ,1817 ,1785 ,1755 ,1724 ,1693 ,
1663 ,1634 ,1604 ,1574 ,1546 ,1517 ,1488 ,1460 ,1433 ,1406 ,1380 ,1353 ,1327 };
														//ѭ��ɨ�����

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
void delay1(Uint32 t)
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
//  ��ʼ�� SPI FIFO �Ĵ���
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
//�ӳٺ���	

void delay_loop()
{
    long      i;
    for (i = 0; i < 4500000; i++) {} 
}


void main(void)
{
   Uint16 i;
   Uint32 Sum=0;



// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���
// ��������ӦGPIOΪΪSPI��������
   
// �����ض���ʱ������       
   EALLOW;
   SysCtrlRegs.HISPCP.all = ADC_MODCLK;	// HSPCLK = SYSCLKOUT/ADC_MODCLK
   EDIS;



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
   InitAdc();  // For this example, init the ADC
   
   spi_fifo_init();	  // ��ʼ��Spi FIFO
   spi_init();		  // ��ʼ�� SPI
   
   // ������Ҫ����ADC����
   AdcRegs.ADCTRL1.bit.ACQ_PS = ADC_SHCLK;  
   AdcRegs.ADCTRL3.bit.ADCCLKPS = ADC_CKPS;  // ADC ģ��ʱ�� = HSPCLK/1      = 25MHz/(1)     = 25MHz   
   AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;        // 1  ����ģʽ
   AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x1;   //ADCͨ��ѡ��ADCIN1
   AdcRegs.ADCTRL1.bit.CONT_RUN = 1;       // ����Ϊ��������

// Step 5.�û�ָ�����룬ʹ���ж�:

// ��������0
   for (i=0; i<BUF_SIZE; i++)
   {
     SampleTable[i] = 0;
   }
   //������ܣ�
   spi_xmit(0xFFFF);
     //�ӳ�
      delay_loop();

   // �������SEQ1
   AdcRegs.ADCTRL2.all = 0x2000;

   // ȡADC���ݲ�д��������ݱ�
   for(;;)
   {
     for (i=0; i<AVG; i++)
     {
        while (AdcRegs.ADCST.bit.INT_SEQ1== 0) {} // �ȴ��ж�
        AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;
        SampleTable[i] =((AdcRegs.ADCRESULT0>>4) );
     }
	 for (i=0;i<AVG;i++)
	 {
      Sum+=SampleTable[i];
	  Sum=Sum/2;
	 }
	 //��������¶Ȼ������С�¶�ʱ�Ĵ���
		 Uint16 Array[3];
		 if(Sum < NTCTAB[0]) //?Beyond Lowest Temperature
		 {
		 if(Sum > NTCTAB[100]) //?Beyond Highest Temperature
		 {
			 Lookup_TAB(Sum,NTCTAB,Array); //Lookup data
			 showdata=Array[0];
		 }
		 else showdata = 8888; //mark Underflow
		 }
		 else showdata = 9999; //mark Overflow


		 for(i=0;i<100;i++)
		 	{

		 		DisData_Trans(showdata);									//�����λ��
		 		for(Loop=0;Loop<4;Loop++)								//�ֱ���ʾ��λ
		 		{
		 			Sellect_Bit(Loop);	                                //ѡ��Ҫɨ��������λ
		 			if(Loop==1)                                         //�ڶ�λ���ֺ��С����
		 				spi_xmit(msg[DisData_Bit[Loop]]+0x80);
		 			else
		 			spi_xmit(msg[DisData_Bit[Loop]]);					//�������Ҫ��ʾ������
		 			delay1(25000);										//��ʱ������۷�Ӧʱ��
		 		}


		 	}


	   }
}
 	
/*****************************************************************************************************/
//�۰���
static void Lookup_TAB(Uint16 data,const Uint16 *TABLE,Uint16 *aptr)
{
register Uint16 i;
Uint16 *eptr=(Uint16 *)&TABLE[101]; //�߶�ָ��
Uint16 *sptr=(Uint16 *)TABLE; //�Ͷ�ָ��
Uint16 *ptr; //����ָ��
for(i=0;i<8;i++) //����ȫ��
{
ptr = (Uint16 *)(sptr+((eptr-sptr)>>1));//����ĵ�ַ�������ģ�
if(*ptr>data) sptr = ptr;
else if(*ptr<data) eptr = ptr;
else //�鵽��ȵĽڵ�
{
aptr[2] = *ptr; //Y1
aptr[1] = *(ptr+1); //Y2
aptr[0] = (Uint16)(ptr-TABLE)*10;//X1*10���Ŵ�10��
break;
}
if(eptr-sptr==1) //�鵽�ڵ�ķ�Χ
{aptr[2] = *sptr; //Y1
aptr[1] = *eptr; //Y2
aptr[0] = (Uint16)(sptr-TABLE)*10+(*sptr-data)*10/(*sptr-*eptr);//X1*10+(y-y1)*10/(y2-y1);�Ŵ�10���������ͽ��¶Ⱦ�����ߵ�һ��С��λ��
break;
}
}
}

//===========================================================================
// No more.
//===========================================================================


//###########################################################################
//
// FILE:    Example_281xGpioToggle.c
//
// TITLE:   ��DSP�������������ʵ�� 
//
// ˵��
//
//          ����������д��SRAM�����еģ�BOOT��λ���ض��������ֶ�
//          �������������������ͬ�����ӣ�    
//          ͨ���޸Ĵ��붥����#define�������������Ӻ����ѡ��ͬ���������У�
//          �������ӷֱ��ӦGPIO (data, set/clear or toggle)�Ĳ�����
//
// ����:
//
//          ͨ��LED���Թ۲�GPIO�����ƽ�ı仯 
//         
//###########################################################################
// �ͷ�����: 2015.01.01
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ÿ������ֻ���趨һ��EXAMPLEΪ1������Ϊ0
// �������������µ�.OUT�ļ���Ȼ�����س���DSP-RAM����г���۲첻ͬ����
#define EXAMPLE1 0  // ʹ��DATA�Ĵ���ȡ��I/O���
#define EXAMPLE2 0  // ʹ��SET/CLEAR�Ĵ���ȡ��I/O���
#define EXAMPLE3 1  // ʹ��TOGGLE�Ĵ���ȡ��I/O���


// ���ļ����õ��ĺ�����Ҫ��������������ʾ��
void delay_loop(void);
void Gpio_select(void);
void Gpio_example1(void);
void Gpio_example2(void);
void Gpio_example3(void);

void main(void)
{

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();
   
// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
 
// ����ʹ���������ã�
   Gpio_select();	  

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
	
#if EXAMPLE1

    // ����ʹ��DATA�Ĵ�����ȡ��I/O��
    Gpio_example1();

#endif  // - EXAMPLE1

#if EXAMPLE2

    // ����ʹ�� SET/CLEAR�Ĵ�����ȡ��I/O��
    Gpio_example2();
    
#endif

#if EXAMPLE3

    // ����ʹ��TOGGLE�Ĵ�����ȡ��I/O��
    Gpio_example3();
    
#endif

} 	

//�ӳ��Ӻ���
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
   // ȡ��I/O��ʹ�� DATA�Ĵ���
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
   // ȡ��I/O��ʹ��SET/CLEAR�Ĵ���
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
   // ȡ��I/O��ʹ��TOGGLE�Ĵ���

   // �����������ŵ�һ����֪״̬
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
   
   // Ȼ��ʹ��TOGGLE��ȡ�����ŵ����״̬ 
   // �κ�λ������Ϊ1��ִ����Ӧ���ŵ�ȡ�����
   // �κ�λ������Ϊ0����ӦΪ���״̬���仯
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

    var1= 0x0000;		// ����GPIO�Ĺ���ΪI/O��
    var2= 0xFFFF;		// ����GPIO�ķ���Ϊ���
    var3= 0x0000;		// ���������޶�ֵ
   
    EALLOW;
	 
	GpioMuxRegs.GPAMUX.all=var1;
    GpioMuxRegs.GPBMUX.all=var1;   
    GpioMuxRegs.GPDMUX.all=var1;
    GpioMuxRegs.GPFMUX.all=var1;		 
    GpioMuxRegs.GPEMUX.all=var1; 
    GpioMuxRegs.GPGMUX.all=var1;
										
    GpioMuxRegs.GPADIR.all=var2;		// ����GPIO��Ϊ�����
    GpioMuxRegs.GPBDIR.all=var2;   	
    GpioMuxRegs.GPDDIR.all=var2;
    GpioMuxRegs.GPEDIR.all=var2;		
    GpioMuxRegs.GPFDIR.all=var2; 
    GpioMuxRegs.GPGDIR.all=var2;

    GpioMuxRegs.GPAQUAL.all=var3;  		// ���������޶�ֵ
    GpioMuxRegs.GPBQUAL.all=var3;   
    GpioMuxRegs.GPDQUAL.all=var3;
    GpioMuxRegs.GPEQUAL.all=var3;
 
    EDIS;
     
}     
//===========================================================================
// No more.
//===========================================================================


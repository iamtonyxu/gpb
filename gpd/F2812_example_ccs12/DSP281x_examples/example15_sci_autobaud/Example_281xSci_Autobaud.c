//###########################################################################
//
// FILE:	Example_281xSci_Autobaud_.c
//
// TITLE:	SCI�Զ������ʼ��ʵ��
//
//          ������Ҫ����Ӳ�����ӣ�
//
//          SCIATX <-> SCIBRX
//          SCIARX <-> SCIATX
//
//          �����������ڱ仯�Ĳ����ʣ������ǳ����ٵĲ�����
//          
//
//          ������SICA��SCIB����ֱ���õ����������ӣ��м�����ת����
//          
//
//
//          SCIA: �ӻ����Զ������������������ֽڲ������Ƿ���������
//                ʹ��RX�ж��������ֽ�
//
//          SCIB: ��������֪�����ʣ������ֽڵ��ӻ�����鷴���������ֽ�
//
// ����:
//
//          �ڲ���ɨ����ʼ��ʹ��SCIA�жϣ�FIFO����ֹ��
//
//          �۲����:        BRRVal - ��ǰSCIBʹ�õĲ����ʵ�ֵ
//                           ReceivedAChar - SCIA���յ��ֽ�
//                           ReceivedBChar - SCIB���յ��ֽ�
//                           SendChar      -  SCIB���͵��ֽ�
//                           SciaRegs.SCILBAUD 
//                           SciaRegs.SCIHBAUD   ͨ���Զ���������������SCIA�����ʼĴ���
//
//
//###########################################################################
// �ͷ�����: 2015-2-13
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define BAUDSTEP 100            // �Զ�������ֵ����ÿ���Զ�����������ʱ����
                                

// ʹ��ǰ���������ļ��е���غ���
void scia_init(void);
void scib_init(void);
void scia_xmit(int a);
void scib_xmit(int a);
void scia_AutobaudLock(void);
void error(int);
interrupt void rxaint_isr(void);


// ������ʹ�õ�ȫ�ֱ���
Uint16 LoopCount;

Uint16 ReceivedCount;
Uint16 ErrorCount;
Uint16 SendChar;
Uint16 ReceivedAChar;   // scia ���յ��ֽ�
Uint16 ReceivedBChar;   // scib ���յ��ֽ�
Uint16 BRRVal;
Uint16 Buff[10] = {0x55, 0xAA, 0xF0, 0x0F, 0x00, 0xFF, 0xF5, 0x5F, 0xA5, 0x5A};

void main(void)
{
   Uint16 i;

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���
// ����GPIO����Ϊ SCI-A �� SCI-B ��������
   EALLOW;
   GpioMuxRegs.GPFMUX.all=0x0030;	// ѡ�� GPIOsΪScia����
                                    // �˿� F MUX - x000 0000 0011 0000
   GpioMuxRegs.GPGMUX.all=0x0030;	//ѡ�� GPIOs Ϊ Scib����
                                    // �˿� G MUX - x000 0000 0011 0000
   EDIS;

// ��ʼ��PIE���ƼĴ��������ǵ�Ĭ��״̬.
// ���Ĭ��״̬���ǽ�ֹPIE�жϼ��������PIE�жϱ�־ 
// �����������DSP281x_PieCtrl.cԴ�ļ���.
   InitPieCtrl();

// ��ֹ CPU �ж� �� ������� CPU �жϱ�־λ��
   IER = 0x0000;
   IFR = 0x0000;

//��ʼ��PIE�ж���������ʹ��ָ���жϷ����ӳ���ISR��
// ��Щ�жϷ����ӳ��򱻷�����DSP281x_DefaultIsr.cԴ�ļ���
// �������������DSP281x_PieVect.cԴ�ļ�����.
   InitPieVectTable();

// �����е��ж�����ӳ�䵽���ļ��е��жϷ����ӳ�����  
   EALLOW;   //����Ĵ�������
   PieVectTable.RXAINT = &rxaint_isr;
   EDIS;      // ��ӼĴ�������

// ���� 4.��ʼ��Ƭ������:
// ������������ DSP281x_InitPeripherals.c�ļ����ҵ�
   scia_init();       //��ʼ��SCIA
   scib_init();       //��ʼ��SCIB

// ���� 5. �û�ָ�����룬�����жϣ�

   LoopCount = 0;
   ErrorCount = 0;

// ʹ���ж�
   PieCtrlRegs.PIEIER9.all = 0x0001; // ʹ�����е�SCIA RXINT �ж�
   IER |= 0x0100;			         // ʹ�� PIEIER9, �� INT9
   EINT;

    // ��BRR = 1��ʼ, ͨ��ÿ��BRRVal����BAUDSTEP�����ò�����
    for (BRRVal = 0x0000; BRRVal < (Uint32)0xFFFF; BRRVal+=BAUDSTEP)
    {

        // SCIB��һ����֪������.  SCIA���Զ���֮ƥ��
	    ScibRegs.SCIHBAUD = (BRRVal >> 8);
	    ScibRegs.SCILBAUD = (BRRVal);

	    // ��ʼ��SCIA�Զ����������������ݲ����������ֽڡ�A������鷴�����ֽ�
	    scia_AutobaudLock();
	    while(ScibRegs.SCIRXST.bit.RXRDY != 1) { }
	    ReceivedBChar = 0;
	    ReceivedBChar =  ScibRegs.SCIRXBUF.bit.RXDT;
	    if(ReceivedBChar != 'A')
	    {
	        error(0);
	    }

	    // ����/�����ֽ�
	    // 55 AA F0 0F 00 FF F5 5F A5 5A
	    for(i= 0; i<=9; i++)
	    {
	      SendChar = Buff[i];
	      scib_xmit(SendChar);			    // ��ʼ���жϣ����ж�ʱ��������
	      //�ȴ������ֽڲ����ݷ��͵��ֽ�����鷴���ֽ�
	      while(ScibRegs.SCIRXST.bit.RXRDY != 1)
	      {
	          asm("   NOP");
	      }
	      ReceivedBChar = 0;
	      ReceivedBChar =  ScibRegs.SCIRXBUF.bit.RXDT;
	      if(ReceivedBChar != SendChar) error(1);
	    }

    } // �ظ��¸�BRR����

    // ֹͣ������
    for(;;)
    {
       asm("    NOP");
    }


}


/* --------------------------------------------------- */
/* ISR for PIE INT9.1                                  */
/* SCI-A �����жϷ����ӳ���                         */
/* ----------------------------------------------------*/

interrupt void rxaint_isr(void)     // SCI-A
{
  // ���Ӧ��λ���Ա��ٴ���Ӧ�ж�

   PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;

   // ������ڼ���Զ������ʣ���������CDC
   if(SciaRegs.SCIFFCT.bit.ABD == 1)//�Զ�������Ӳ����⵽SCIA���յ�һ����A��������Զ������ʼ��
   {
      SciaRegs.SCIFFCT.bit.ABDCLR = 1;
      SciaRegs.SCIFFCT.bit.CDC = 0;
      // �����յ��ֽ�-Ӧ��Ϊ��A��
      ReceivedAChar = 0;
      ReceivedAChar = SciaRegs.SCIRXBUF.all;
      if(ReceivedAChar != 'A')
      {
         error(2);
      }
      else scia_xmit(ReceivedAChar);
   }

   // ���²����Զ������ʼ��
   else
   {
      // ���ݷ��͵��ֽڼ����յ��ֽ�
      ReceivedAChar = 0;
      ReceivedAChar = SciaRegs.SCIRXBUF.all;
      if(ReceivedAChar != SendChar)
      {
         error(3);
      }
      else scia_xmit(ReceivedAChar);
   }

   SciaRegs.SCIFFRX.bit.RXFFINTCLR = 1;	// ��������жϱ�־λ
   ReceivedCount++;
}


void error(int ErrorFlag)
{
      ErrorCount++;
      asm("     ESTOP0");  	       // ͣ�ڴ˴�
      for (;;);

}

// SCIA  8-λ�ֽ�, ������ 0x000F, Ĭ��, 1 ��ֹͣλ, ����żУ��
void scia_init()
{
    // �� InitSysCtrl()�������Ѵ���SCIAƬ�������ʱ��

    //��λFIFO's
    SciaRegs.SCIFFTX.all=0x8000;

    SciaRegs.SCICCR.all =0x0007;   // 1��ֹͣλ,  ��ֹ�ػ����� 
                                  // ����żУ��,�ֽڳ���Ϊ8λ,
                                  // �첽ģʽ, idle-lineЭ��
    SciaRegs.SCICTL1.all =0x0003;  // ʹ�� TX, RX, �ڲ� SCICLK, 
                                  // ��ֹ RX ERR, SLEEP, TXWAKE
    SciaRegs.SCICTL2.all =0x0003;
    SciaRegs.SCICTL2.bit.RXBKINTENA =1;
    SciaRegs.SCICTL1.all =0x0023;     


}

// SCIB  8-λ�ֽ�, ������ 0x000F, Ĭ��, 1 ��ֹͣλ, ����żУ��

void scib_init()
{
    // ��λ FIFO's
    ScibRegs.SCIFFTX.all=0x8000;


    ScibRegs.SCICCR.all = 0x0007;// 1��ֹͣλ,  ��ֹ�ػ����� 
                                  // ����żУ��,�ֽڳ���Ϊ8λ,
                                  // �첽ģʽ, idle-lineЭ��

    ScibRegs.SCICTL1.all = 0x0003;// ʹ�� TX, RX, �ڲ� SCICLK, 
                                  // ��ֹ RX ERR, SLEEP, TXWAKE

    ScibRegs.SCICTL2.all = 0x0000;

    ScibRegs.SCICTL1.all = 0x0023;

    return;
}




// �� SCI-A�����ֽ�
void scia_xmit(int a)
{
    SciaRegs.SCITXBUF=a;
}

// ��SCI-B�����ֽ�
void scib_xmit(int a)
{
    ScibRegs.SCITXBUF=a;
}


//------------------------------------------------
// ��������������Զ�����������
// ע�⣬���û�з����Զ�����
// ���򽫻�����������û�г�ʱ���ư���
//------------------------------------------------

void scia_AutobaudLock()
{   
    Uint32 i;
    SciaRegs.SCICTL1.bit.SWRESET = 0;
    SciaRegs.SCICTL1.bit.SWRESET = 1;

    // ���ȣ������ʼĴ��� >= 1
    SciaRegs.SCIHBAUD = 0;
    SciaRegs.SCILBAUD = 1;

    // ׼���Զ������ʼ��
    // ͨ����ABDCLRд1��ȷ��ABDλ������
    // ��CDCλ��1��ʹ���Զ������ʼ��
    SciaRegs.SCIFFCT.bit.ABDCLR = 1;
    SciaRegs.SCIFFCT.bit.CDC = 1;

    // �ȴ�ֱ����ȷ�ض�����A����a����Ȼ������
	//
	// ����Զ�������У׼��ʹ�ܣ�CDC=1��,SCIB�����������������͡�A����
	// ֱ������SCIA�����жϣ�����SCI-A RXBUF���յ���A����������������ABDCLR=1��CDC=0��
	// ������A��������������֮�󷵻ص��ó����ڲ�ִ����ó���
	//

    while(SciaRegs.SCIFFCT.bit.CDC== 1) 
    {  
       for(i = 1; i<= 0x0FFFFFF; i++)
       {
          asm("     NOP");
       }  // ��ʱ����

       if(SciaRegs.SCIFFCT.bit.CDC == 1)  
           scib_xmit('A');  // ��������'A' 

   }

    return;
}

//===========================================================================
// No more.
//===========================================================================




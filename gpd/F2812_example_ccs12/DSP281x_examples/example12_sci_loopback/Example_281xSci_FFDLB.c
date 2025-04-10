//###########################################################################
//
// FILE:    Example_281xSci_FFDLB.c
//
// TITLE:   SCI FIFO���ֻػ�����ʵ��
//
//
// ����:
//
//          ������ʹ��SCIģ��Ļػ�����ģʽ�������ֽڣ��ֽڴ�0x00��0xFF;
//          ���������ȷ���һ���ֽ�Ȼ���ڽ��ջ�����������յ��ֽ��Ƿ��뷢�͵�һ�£�
//
//          �۲����:
//                LoopCount ���Ƿ��͵��ֽ�
//                ErrorCount ��ReceivedChar ��SendChar
//		
//
//###########################################################################
// �ͷ�����: 2015-02-06
//###########################################################################


#include "DSP281x_Device.h"
#include "DSP281x_Examples.h"

// ʹ��ǰ���������ļ��е���غ���
void scia_loopback_init(void);
void scia_fifo_init(void);	
void scia_xmit(int a);
void error(int);
interrupt void scia_rx_isr(void);
interrupt void scia_tx_isr(void);

// ������ʹ�õ�ȫ�ֱ���
Uint16 LoopCount;
Uint16 ErrorCount; 

void main(void)
{
    Uint16 SendChar;
    Uint16 ReceivedChar;
    
// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
	InitSysCtrl();

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���
    EALLOW;
    GpioMuxRegs.GPFMUX.all=0x0030;	// ����GPIOF4��F5 ΪSCI����	 
                                    
    EDIS;

// ���� 3. ��������ж�,��ʼ���ж�������:
// ��ֹCPUȫ���ж� 
	DINT;
	IER = 0x0000;
	IFR = 0x0000;

      // ��ʼ��PIE���ƼĴ��������ǵ�Ĭ��״̬.
// ���Ĭ��״̬���ǽ�ֹPIE�жϼ��������PIE�жϱ�־ 
// �����������DSP281x_PieCtrl.cԴ�ļ���.
	  // InitPieCtrl(); ������ʹ��PIE

      //��ʼ��PIE�ж���������ʹ��ָ���жϷ����ӳ���ISR��
// ��Щ�жϷ����ӳ��򱻷�����DSP281x_DefaultIsr.cԴ�ļ���
// �������������DSP281x_PieVect.cԴ�ļ�����.
	  InitPieVectTable();  

      // ʹ�� CPU ��PIE �ж�
      // �˺��������� DSP281x_PieCtrl.c �ļ����ҵ�  
      EnableInterrupts();
	
// ���� 4.��ʼ��Ƭ������:
      // InitPeripherals();���� SCI������������
	
// ���� 5. �û��ض��Ĵ����������ж�

    LoopCount = 0;
    ErrorCount = 0;
    
    scia_fifo_init();	   // ��ʼ��SCI FIFO
    scia_loopback_init();  // Ϊ���ֻػ����Գ�ʼ�� SCI

    // Note: Autobaud lock is not required for this example
    
    // ���͵��ֽڴ�0��ʼ
    SendChar = 0;								

// ����6. �����ֽ�ʼ�մ�0x00��0xFF����ÿ�η���֮������ջ���������յ��Ƿ���ȷ

	for(;;)
    { 
       scia_xmit(SendChar);
       while(SciaRegs.SCIFFRX.bit.RXFIFST !=1) { } // �ȴ�RXFIFST=1ʱ�����յ�һ������
       // �����յ��ֽ�
       ReceivedChar = SciaRegs.SCIRXBUF.all;			
       if(ReceivedChar != SendChar) error(1);

       // ���͵��ֽڼ�1���ظ�����
       SendChar++;
       //��ֵ�ֽڳ���Ϊ8λ
       SendChar &= 0x00FF;
       LoopCount++;
    }

} 	


// ���� 7.�����жϷ����ӳ���	

void error(int ErrorFlag)
{
      ErrorCount++;
//    asm("     ESTOP0");  // ֹͣ����
//    for (;;);

}

// Test 1,SCIA  DLB, 8-bit word, baud rate 0x000F, default, 1 STOP bit, no parity 
void scia_loopback_init()
{    
    // l��InitSysCtrl()�������Ѵ���SCIAƬ�������ʱ��
    
 	SciaRegs.SCICCR.all =0x0007;   // 1��ֹͣλ,  ��ֹ�ػ����� 
                                   // ����żУ��,�ֽڳ���Ϊ8λ,
                                   // �첽ģʽ, idle-lineЭ��
	SciaRegs.SCICTL1.all =0x0003;  // ʹ�� TX, RX, �ڲ� SCICLK, 
                                   // ��ֹ RX ERR, SLEEP, TXWAKE
	SciaRegs.SCICTL2.all =0x0003; 
	SciaRegs.SCICTL2.bit.TXINTENA =1;
	SciaRegs.SCICTL2.bit.RXBKINTENA =1;
    SciaRegs.SCIHBAUD    =0x0000;
    SciaRegs.SCILBAUD    =0x000F;
	SciaRegs.SCICCR.bit.LOOPBKENA =1; // ʹ�ܻػ�����
	SciaRegs.SCICTL1.all =0x0023;     
}

// ��SCI�����ֽ�
void scia_xmit(int a)
{
    SciaRegs.SCITXBUF=a;
}    

// ��ʼ��SCI FIFO
void scia_fifo_init()										
{
    SciaRegs.SCIFFTX.all=0xE040;
    SciaRegs.SCIFFRX.all=0x204f;
    SciaRegs.SCIFFCT.all=0x0;
    
}  

                							
 
    


//===========================================================================
// No more.
//===========================================================================


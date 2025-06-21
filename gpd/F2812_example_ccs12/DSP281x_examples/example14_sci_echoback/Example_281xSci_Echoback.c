//###########################################################################
//
// FILE:    Example_281xSci_Echoback.c
//
// TITLE:   SCI-RS232���ݽ��շ���ʵ��.
//
// ASSUMPTIONS:
//
//    This program requires the DSP281x header files.
//    As supplied, this project is configured for "boot to H0 RAM" operation.
//
//    ͨ��RS232תUSBͨѶ�����ӿ������� SCI-A�˿ڵ�����
//    ͨ��������λ��������Կ����û����͵��ֽڱ�������ʾ����;
//
//
// ����:
//
//
//    ����ͨ��SCI-A�˿ڲ������ݵĽ��պͷ���
//
//    1) ����SCI_96.ht�����ն�:
//       ʹ����Ŀ�ļ����ڵ� SCI_96.ht�����ն������ļ�.
//       
//    2) ˫����SCI_96.ht�ļ�������->���У�ѡ��COM�˿�
//       ����˿ڲ���COM1�����ò����ʼ���ز�����������ɺ�
//       
//    3) ��CCS�����г��򣬳�����Զ����ն����ӡ��ӭ�ﲢѯ����������ֽ�
//    4) ���������ֽں��ն˻��Զ�������������ֽ�
//
//    �����������SCIA�Ĳ�����Ϊ9600
//    SYSCLKOUT = 150MHz �� LSPCLK = 37.5 MHz
//
//
//    �۲����:
//       LoopCount Ϊ�����ֽڵ�����
//       ErrorCount
//
//
//###########################################################################
// �ͷ�����: 2015-2-13
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ʹ��ǰ���������ļ��е���غ���
void scia_echoback_init(void);
void scia_fifo_init(void);
void scia_xmit(int a);
void scia_msg(char *msg);

// ������ʹ�õ�ȫ�ֱ���
Uint16 LoopCount;
Uint16 ErrorCount;

void main(void)
{

    Uint16 ReceivedChar;
    char *msg;

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
   GpioMuxRegs.GPGMUX.all=0x0030;	// ѡ�� GPIOsΪ Scib����
                                    // �˿� G MUX - x000 0000 0011 0000
   EDIS;

// ���� 3. ��������ж�,��ʼ���ж�������:
// ��ֹCPUȫ���ж� 
   DINT;

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

// ���� 4.��ʼ��Ƭ������:
// InitPeripherals(); // ����δʹ��

// ���� 5. �û�ָ������;

    LoopCount = 0;
    ErrorCount = 0;

    scia_fifo_init();	   // ��ʼ�� SCI FIFO
    scia_echoback_init();  // ��ʼ�� SCI Ϊ����

    msg = "\r\n\n\nHello World!\0";
    scia_msg(msg);

    msg = "\r\nYou will enter a character, and the DSP will echo it back! \n\0";
    scia_msg(msg);

	for(;;)
    {
       msg = "\r\nEnter a character: \0";
       scia_msg(msg);

       // �ȴ������ֽ�
       while(SciaRegs.SCIFFRX.bit.RXFIFST!=1) { } // ��XRDY =1 ����˵���ѽ��յ�һ���ֽ�

       // ����ѽ��յ��ֽ�
       ReceivedChar = SciaRegs.SCIRXBUF.all;

       // ��ʾ�ѽ��յ����ֽ�
       msg = "  You sent: \0";
       scia_msg(msg);
       scia_xmit(ReceivedChar);

       LoopCount++;
    }

}


// SCIA  8-λ�ֽ�, ������ 0x000F, Ĭ��, 1 ��ֹͣλ, ����żУ��
void scia_echoback_init()
{
    // �� InitSysCtrl()�������Ѵ���SCIAƬ�������ʱ��

 	SciaRegs.SCICCR.all =0x0007;   // 1��ֹͣλ,  ��ֹ�ػ����� 
                                  // ����żУ��,�ֽڳ���Ϊ8λ,
                                  // �첽ģʽ, idle-lineЭ��
	SciaRegs.SCICTL1.all =0x0003;  // ʹ�� TX, RX, �ڲ� SCICLK, 
                                  // ��ֹ RX ERR, SLEEP, TXWAKE
	SciaRegs.SCICTL2.all =0x0003;
	SciaRegs.SCICTL2.bit.TXINTENA =1;
	SciaRegs.SCICTL2.bit.RXBKINTENA =1;

	SciaRegs.SCIHBAUD    =0x0001;  // 9600 ������ @LSPCLK = 37.5MHz.
	SciaRegs.SCILBAUD    =0x00E7;

	SciaRegs.SCICTL1.all =0x0023;  
}

//  ��SCI�����ֽ�
void scia_xmit(int a)
{
    while (SciaRegs.SCIFFTX.bit.TXFFST != 0) {}
    SciaRegs.SCITXBUF=a;

}

void scia_msg(char * msg)
{
    int i;
    i = 0;
    while(msg[i] != '\0')
    {
        scia_xmit(msg[i]);
        i++;
    }
}

// ��ʼ�� SCI FIFO
void scia_fifo_init()
{
    SciaRegs.SCIFFTX.all=0xE040;
    SciaRegs.SCIFFRX.all=0x204f;
    SciaRegs.SCIFFCT.all=0x0;

}






//===========================================================================
// No more.
//===========================================================================


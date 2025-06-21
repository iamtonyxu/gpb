//###########################################################################
//
// FILE:   Example_281xSci_FFDLB_int.c
//
// TITLE:  SCI���ֻػ�FIFO�ж�ʵ��.
//
//
//
// ����:
//
// ����ʹ��SCI�ڲ��ػ����ԣ������жϺ�SCI FIFOS��ʹ��
//
// һ�����ݱ����ͣ�Ȼ��������ݺ���бȽ�
//
// ���͵�����������ʾ:
// 00 01 02 03 04 05 06 07
// 01 02 03 04 05 06 07 08
// 02 03 04 05 06 07 08 09
// ....
// FE FF 00 01 02 03 04 05
// FF 00 01 02 03 04 05 06
// etc..
//
//
// �۲����±���:
//
//     SCI-A          
//     ----------------------
//     sdataA                   �����͵�����
//     rdataA                    ���յ�����
//     rdata_pointA        �������ݴ����ڱȽ�ʱ��Ҫ�õ����
//     ErrorCount                       ������ͽ��������Ļ�����ֵΪ0  
// ������г���Ȼ����ͣ�������У������Է���rdataA=sdataA
//###########################################################################
// �ͷ�����: 2015-02-09
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define CPU_FREQ 	 150E6
#define LSPCLK_FREQ  CPU_FREQ/4
#define SCI_FREQ 	 100E3
#define SCI_PRD 	 (LSPCLK_FREQ/(SCI_FREQ*8))-1

// ʹ��ǰ���������ļ��е���غ���
interrupt void sciaTxFifoIsr(void);
interrupt void sciaRxFifoIsr(void);
void scia_fifo_init(void);
void error(void);


// ������ʹ�õ�ȫ�ֱ���
Uint16 sdataA[8];    // SCI-A���͵���������
Uint16 rdataA[8];    // SCI-A���յ���������
Uint16 rdata_pointA; // �����������յ�����
Uint16 ErrorCount; 

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
   GpioMuxRegs.GPFMUX.bit.SCITXDA_GPIOF4 = 1;
   GpioMuxRegs.GPFMUX.bit.SCIRXDA_GPIOF5 = 1;
   GpioMuxRegs.GPGMUX.bit.SCITXDB_GPIOG4 = 1;
   GpioMuxRegs.GPGMUX.bit.SCIRXDB_GPIOG5 = 1;
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


// �����е��ж�����ӳ�䵽���ļ��е��жϷ����ӳ�����  
   EALLOW;  //����Ĵ�������
   PieVectTable.RXAINT = &sciaRxFifoIsr;
   PieVectTable.TXAINT = &sciaTxFifoIsr;
   EDIS;   // ��ӼĴ�������


// ���� 4.��ʼ��Ƭ������:
   scia_fifo_init();  // ��ʼ��SCI-A

// ���� 5. �û�ָ�����룬�����жϣ�
 ErrorCount = 0;
//��ʼ���������ݣ��ٷ���ÿ������󽫸�����������

   for(i = 0; i<8; i++)
   {
      sdataA[i] = i-1;
   }

   
   

// ʹ�ܱ���ʹ����Ҫ���ж�
   PieCtrlRegs.PIECRTL.bit.ENPIE = 1;   // ʹ��PIEģ��
   PieCtrlRegs.PIEIER9.bit.INTx1=1;     // PIE �� 9, INT1��SCIRXINTA
   PieCtrlRegs.PIEIER9.bit.INTx2=1;     // PIE �� 9, INT2��SCITXINTA
   PieCtrlRegs.PIEIER9.bit.INTx3=1;     // PIE �� 9, INT3��SCIRXINTB
   PieCtrlRegs.PIEIER9.bit.INTx4=1;     // PIE �� 9, INT4��SCITXINTB
   IER = 0x100;	// ʹ�� CPU INT9
   EINT;

  // ����6��ѭ���������ȴ��жϣ�
	for(;;);

}

void error(void)
{
    ErrorCount++;
    asm("     ESTOP0"); // ����ʧ�ܣ�ֹͣ��
    for (;;);
}


interrupt void sciaTxFifoIsr(void)
{
    Uint16 i;
	for(i=0; i< 8; i++)                 //ÿ�η��������ڵ�1���ֽ�
    {
 	   sdataA[i] = (sdataA[i]+1) & 0x00FF;
	}
    rdata_pointA = sdataA[0];

    for(i=0; i< 8; i++)
    {
 	   SciaRegs.SCITXBUF=sdataA[i];     // ��������
	}

  while(SciaRegs.SCIFFRX.bit.RXFIFST!=0x08){};

    
SciaRegs.SCIFFTX.bit.TXINTCLR=1;	// ���SCI�жϱ�־λ
PieCtrlRegs.PIEACK.all|=0x100;      //PIEӦ��λ��1�������´��ж�
	
}

interrupt void sciaRxFifoIsr(void)
{
    Uint16 i;
	for(i=0;i<8;i++)
	{
	   rdataA[i]=SciaRegs.SCIRXBUF.all;	 // ������
	}
	for(i=0;i<8;i++)                     // �����յ�����
	{
	   if(rdataA[i] != ( (rdata_pointA+i) & 0x00FF) ) error();
	}

	SciaRegs.SCIFFRX.bit.RXFFOVRCLR=1;   // ��������־λ
	SciaRegs.SCIFFRX.bit.RXFFINTCLR=1;   // ����жϱ�־λ
	PieCtrlRegs.PIEACK.all|=0x100;       // PIEӦ��λ��1�������´��ж�
}

void scia_fifo_init()
{
   SciaRegs.SCICCR.all =0x0007;   // 1��ֹͣλ,  ��ֹ�ػ����� 
                                  // ����żУ��,�ֽڳ���Ϊ8λ,
                                  // �첽ģʽ, idle-lineЭ��
   SciaRegs.SCICTL1.all =0x0003;  // ʹ�� TX, RX, �ڲ� SCICLK, 
                                  // ��ֹ RX ERR, SLEEP, TXWAKE
   SciaRegs.SCICTL2.bit.TXINTENA =1;
   SciaRegs.SCICTL2.bit.RXBKINTENA =1;
   SciaRegs.SCIHBAUD = 0x0000;
   SciaRegs.SCILBAUD = SCI_PRD;
   SciaRegs.SCICCR.bit.LOOPBKENA =1; // ʹ�ܻػ�����
   SciaRegs.SCIFFTX.all=0xC028;//FIFO����8���ֽڼ��ɷ��������ж�
   SciaRegs.SCIFFRX.all=0x0028;//FIFO���յ�8���ֽں��������������ж�
   SciaRegs.SCIFFCT.all=0x00;

   SciaRegs.SCICTL1.all =0x0023;     
   SciaRegs.SCIFFTX.bit.TXFIFOXRESET=1;
   SciaRegs.SCIFFRX.bit.RXFIFORESET=1;


}


//===========================================================================
// No more.
//===========================================================================


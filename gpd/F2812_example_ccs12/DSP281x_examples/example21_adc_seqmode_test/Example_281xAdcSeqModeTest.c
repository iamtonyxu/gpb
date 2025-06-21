//###########################################################################
//
// FILE:   Example_281xAdcSeqModeTest.c
//
// TITLE:  ADC���з�����ģʽ����.
//  
// 
//       ������ñ��J9�����1,2���Ŷ̽�
// ����:    
//
//          ͨ�� A0 ���ϱ�ת��Ȼ���¼����������(SampleTable)
//
//          �ڹ۲촰������� SampleTable�������Ա�۲�������к�ֹͣʱ������ֵ
//          SEQ_OVER=0���������з�������MAX_CONV���õ�ת������ʱ���ƣ����Կ���
//          �۲쵽AdcRegs.ADCRESULT8>>4��ֵ��A0����ֵ��һ����
//
//          �۲����:
//             SampleTable - ��¼ת����ֵ
//        AdcRegs.ADCRESULT8>>4-------ADC����Ĵ���0���ֵ������4λ�������Ҷ��룩
//
//###########################################################################
// �ͷ�����: 20150303
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ADC��������
#define ADC_MODCLK 0x3   // HSPCLK = SYSCLKOUT/2*ADC_MODCLK2 = 150/(2*3)         = 25MHz
#define ADC_CKPS   0x1   // ADC ģ��ʱ�� = HSPCLK/2*ADC_CKPS   = 25MHz/(1*2) = 12.5MHz
#define ADC_SHCLK  0xf   // �������ڵĳ���                     = 16 ADC ʱ��
#define AVG        1000  // ƽ��������ֵ
#define ZOFFSET    0x00  
#define BUF_SIZE   2048  // �����������ߴ�

// ������ʹ�õ�ȫ�ֱ���
Uint16 SampleTable[BUF_SIZE];

main() 
{
   Uint16 i;

// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();
      
// �����ض���ʱ������    
   EALLOW;
   SysCtrlRegs.HISPCP.all = ADC_MODCLK;	// HSPCLK = SYSCLKOUT/ADC_MODCLK
   EDIS;

// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò��� 

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
   InitAdc();  // ������Ҫ��ʼ��ADC

// ������Ҫ����ADC����
   AdcRegs.ADCTRL1.bit.ACQ_PS = ADC_SHCLK;
   AdcRegs.ADCTRL3.bit.ADCCLKPS = ADC_CKPS; // ADC ģ��ʱ�� = HSPCLK/2*ADC_CKPS   = 25MHz/(1*2) = 12.5MHz    
   AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;        // 1  ����ģʽ
   AdcRegs.ADCTRL3.bit.SMODE_SEL = 0;       // 0 ˳�����ģʽ
   AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x0;   //ADCͨ��ѡ��ADCIN0
   AdcRegs.ADCTRL1.bit.CONT_RUN = 1;       // ������������ģʽ

   AdcRegs.ADCTRL1.bit.SEQ_OVRD = 0;       // ʹ�����з����� override ����
   AdcRegs.ADCCHSELSEQ1.all = 0x0;         // ��ʼ��ADCͨ��ѡ��A0
   AdcRegs.ADCCHSELSEQ2.all = 0x0;
   AdcRegs.ADCCHSELSEQ3.all = 0x0;
   AdcRegs.ADCCHSELSEQ4.all = 0x0;
   AdcRegs.ADCMAXCONV.bit.MAX_CONV1 = 0x1;  // ת���ʹ�����2������Ĵ����� 


// ���� 5. �û��ض��Ĵ���,�����ж�:


// ���SampleTable
   for (i=0; i<BUF_SIZE; i++)
   {
     SampleTable[i] = 0;
   }

   // ����SEQ1
   AdcRegs.ADCTRL2.all = 0x2000;

   // �ɼ�ADC���ݣ�Ȼ�����ݼ�¼��SampleTable�����ڣ�
   while(1)
   {  
     for (i=0; i<AVG; i++)
     {
        while (AdcRegs.ADCST.bit.INT_SEQ1== 0) {} // �ȴ�SEQ1ת�������ж�
        // Software wait = (HISPCP*2) * (ADCCLKPS*2) * (CPS+1) cycles
        //               = (3*2)      * (1*2)        * (0+1)   = 12 cycles
        asm(" RPT #11 || NOP");
        AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;
        SampleTable[i] =((AdcRegs.ADCRESULT0>>4) ); 
     }
   }
}

//===========================================================================
// No more.
//===========================================================================


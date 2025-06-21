//###########################################################################
//
// FILE:    Example_281xEvTimerPeriod.c
//
// TITLE:  EVģ��ͨ�ö�ʱ�������ж�ʵ��.
// 
//
// ����:
//
//          �������EVA Timer 1, EVA Timer 2, EVB Timer 3
//          EVB Timer 4Ϊ�����жϣ�ÿ���жϽ����жϷ����ӳ��� 
//          ����Ӧ����ֵ��1��
//
//          ��ʱ��1��ʱ������̣�EVB��ʱ��4��ʱ�����
//
//          ���г����۲����±���:
//
//                EvaTimer1InterruptCount;
//                EvaTimer2InterruptCount;
//                EvbTimer3InterruptCount;
//                EvbTimer4InterruptCount;
//
//###########################################################################
// �ͷ����ڣ�150205
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File


// ʹ��ǰ���������ļ��е���غ���
interrupt void eva_timer1_isr(void);
interrupt void eva_timer2_isr(void);
interrupt void evb_timer3_isr(void);
interrupt void evb_timer4_isr(void);
void init_eva_timer1(void);
void init_eva_timer2(void);
void init_evb_timer3(void);
void init_evb_timer4(void);

// ������ʹ�õ�ȫ�ֱ���
Uint32  EvaTimer1InterruptCount;
Uint32  EvaTimer2InterruptCount;
Uint32  EvbTimer3InterruptCount;
Uint32  EvbTimer4InterruptCount;

void main(void)
{


// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();

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

// �����е��ж�����ӳ�䵽���ļ��е��жϷ����ӳ�����  
   EALLOW;  //����Ĵ�������
   PieVectTable.T1PINT = &eva_timer1_isr;
   PieVectTable.T2PINT = &eva_timer2_isr;
   PieVectTable.T3PINT = &evb_timer3_isr;
   PieVectTable.T4PINT = &evb_timer4_isr;
   EDIS;   // ��ӼĴ�������

// ���� 4.��ʼ��Ƭ������:
   init_eva_timer1();
   init_eva_timer2();
   init_evb_timer3();
   init_evb_timer4();
   

// ���� 5. �û��ض��Ĵ����������ж�

    // ��ʼ������ֵΪ0
    EvaTimer1InterruptCount = 0;
    EvaTimer2InterruptCount = 0;
    EvbTimer3InterruptCount = 0;
    EvbTimer4InterruptCount = 0;
 
    // ����T1PINTʹ��PIE ��2�ж�4
    PieCtrlRegs.PIEIER2.all = M_INT4;
    // ����T2PINTʹ��PIE ��3�ж�1
    PieCtrlRegs.PIEIER3.all = M_INT1;    
    //����T3PINTʹ��PIE ��4�ж�4
    PieCtrlRegs.PIEIER4.all = M_INT4;
    // ����T4PINTʹ��PIE ��5�ж�1
    PieCtrlRegs.PIEIER5.all = M_INT1;

    // ����T1PINTʹ��CPU IN2��
    // ����T2PINTʹ��CPU IN3������T3PINTʹ��CPU IN4������T4PINTʹ��CPU IN5
    IER |= (M_INT2 | M_INT3 | M_INT4 | M_INT5);

   //ʹ��ȫ���жϺ͸����ȼ���ʵʱ�����¼���
   EINT;   // ʹ��ȫ���ж�INTM
   ERTM;   // ʹ��ȫ��ʵʱ�ж�DBGM

    // ����6��ѭ���������ȴ������жϣ�
    for(;;);

}

void init_eva_timer1(void)
{
    // ��ʼ�� EVA��ʱ��1:
    // ����ͨ�ö�ʱ�����ƼĴ�����EV A��
    EvaRegs.GPTCONA.all = 0;
   
    // ����ͨ�ö�ʱ��1������ֵΪ 0x0200
    EvaRegs.T1PR = 0x0200;       // ��������
    EvaRegs.T1CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ�ܶ�ʱ��1��Ӧ�������ж�λ
    // ʹ��T1�����жϣ���λ�����жϱ�־λ
    EvaRegs.EVAIMRA.bit.T1PINT = 1;
    EvaRegs.EVAIFRA.bit.T1PINT = 1;

    // T1�����Ĵ�������
    EvaRegs.T1CNT = 0x0000;
    EvaRegs.T1CON.all = 0x1742;//����������ģʽ������ʱ��ΪHSPCLK/128��ʹ�ܶ�ʱ��������ʹ�ܶ�ʱ���Ƚϲ���

    // ���ö�ʱ��1�����ж�ʱ����ADCת��
    EvaRegs.GPTCONA.bit.T1TOADC = 2;

}

void init_eva_timer2(void)
{
    // ��ʼ�� EVA��ʱ��2:
    // ����ͨ�ö�ʱ�����ƼĴ�����EV A��
    EvaRegs.GPTCONA.all = 0;
   
    // ����ͨ�ö�ʱ��2������ֵΪ 0x0400
    EvaRegs.T2PR = 0x0400;       // ��������
    EvaRegs.T2CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ�ܶ�ʱ��2��Ӧ�������ж�λ
    // ʹ��T2�����жϣ���λ�����жϱ�־λ
    EvaRegs.EVAIMRB.bit.T2PINT = 1;
    EvaRegs.EVAIFRB.bit.T2PINT = 1;

    // T2�����Ĵ�������
    EvaRegs.T2CNT = 0x0000;
    EvaRegs.T2CON.all = 0x1742;

    // ���ö�ʱ��2�����ж�ʱ����ADCת��
    EvaRegs.GPTCONA.bit.T2TOADC = 2;
}

void init_evb_timer3(void)
{
    // ��ʼ�� EVB��ʱ��3:
    // ����ͨ�ö�ʱ�����ƼĴ�����EV A��
    EvbRegs.GPTCONB.all = 0;
   
    // ����ͨ�ö�ʱ��3������ֵΪ 0x0800
    EvbRegs.T3PR = 0x0800;       // ��������
    EvbRegs.T3CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ�ܶ�ʱ��3��Ӧ�������ж�λ
    // ʹ��T3�����жϣ���λ�����жϱ�־λ
    EvbRegs.EVBIMRA.bit.T3PINT = 1;
    EvbRegs.EVBIFRA.bit.T3PINT = 1;

    // T3�����Ĵ�������
    EvbRegs.T3CNT = 0x0000;
    EvbRegs.T3CON.all = 0x1742;

    // ���ö�ʱ��3�����ж�ʱ����ADCת��
    EvbRegs.GPTCONB.bit.T3TOADC = 2;
}

void init_evb_timer4(void)
{
    // ��ʼ�� EVB��ʱ��4:
    // ����ͨ�ö�ʱ�����ƼĴ�����EV A��
    EvbRegs.GPTCONB.all = 0;
   
    // ����ͨ�ö�ʱ��4������ֵΪ 0x1000
    EvbRegs.T4PR = 0x1000;       // ��������
    EvbRegs.T4CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ�ܶ�ʱ��4��Ӧ�������ж�λ
    // ʹ��T4�����жϣ���λ�����жϱ�־λ
    EvbRegs.EVBIMRB.bit.T4PINT = 1;
    EvbRegs.EVBIFRB.bit.T4PINT = 1;

    // T4�����Ĵ�������
    EvbRegs.T4CNT = 0x0000;
    EvbRegs.T4CON.all = 0x1742;

     // ���ö�ʱ��4�����ж�ʱ����ADCת��
    EvbRegs.GPTCONB.bit.T4TOADC = 2;
} 


interrupt void eva_timer1_isr(void)
{
   EvaTimer1InterruptCount++;

   // ʹ��T1�����ж�
   EvaRegs.EVAIMRA.bit.T1PINT = 1;

   // ���T1PINT��־λ
   EvaRegs.EVAIFRA.all = BIT7;

   // Ӧ��λд1������PIE��2�ٴν����ж�
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP2;
}

interrupt void eva_timer2_isr(void)
{
  EvaTimer2InterruptCount++;
 // ʹ��T2�����ж�
  EvaRegs.EVAIMRB.bit.T2PINT = 1;
 
  // ���T2PINT��־λ 
  EvaRegs.EVAIFRB.all = BIT0;

  // Ӧ��λд1������PIE��3�ٴν����ж�
  PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}

interrupt void evb_timer3_isr(void)
{
  EvbTimer3InterruptCount++;
  // ���T3PINT��־λ 
  EvbRegs.EVBIFRA.all = BIT7;

  // Ӧ��λд1������PIE��4�ٴν����ж�
  PieCtrlRegs.PIEACK.all = PIEACK_GROUP4;

}

interrupt void evb_timer4_isr(void)
{
   EvbTimer4InterruptCount++;
   // ���T4PINT��־λ 
   EvbRegs.EVBIFRB.all = BIT0;

   // Ӧ��λд1������PIE��5�ٴν����ж�
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP5;

}


//===========================================================================
// No more.
//===========================================================================

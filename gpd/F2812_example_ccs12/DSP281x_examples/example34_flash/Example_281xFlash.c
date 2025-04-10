//###########################################################################
//
// FILE:   DSP28_281xFlash.c
//
// TITLE:  Flash��дʵ��.
//
// ASSUMPTIONS:
//
//            
//          ��������Ҫ����λ����S2�Ŀ���ȫ���������ֶˣ��Ӷ�ʹDSP�ϵ�"boot to Flash"  
//
//          ������FLASH������EV���ڶ�ʱ�ж�
//          
//          �������裺
//          1) ȷ����λ����S2�Ŀ���ȫ���������ֶ�
//          2)  ����CCS��DSP��֮�������Ŀ
//          3) ��дFlash the .out�ļ���FLASH��.
//          4) ��������ӵ�watch window�� 
//
//          Steps that were taken to convert the EV example from RAM 
//          to Flash execution:
//
//          - Change the linker cmd file to reflect the flash memory map.
//            This example uses the DSP281x F2812.cmd file.
//          - Make sure any initialized sections are mapped to Flash.  
//            In SDFlash utility this can be checked by the View->Coff/Hex
//            status utility. Any section marked as "load" should be
//            allocated to Flash.
//          - Make sure there is a branch instruction from the entry to Flash
//            at 0x3F7FF6 to the beginning of code execution. This example
//            uses the DSP281x_CodeStartBranch.asm file to accomplish this.
//          - Set boot mode Jumpers to "boot to Flash"
//          - For best performance from the flash, modify the waitstates
//            and enable the flash pipeline as shown in this example.
//            Note: any code that manipulates the flash waitstate and pipeline
//            control must be run from RAM. Thus these functions are located
//            in their own memory section called ramfuncs.
// 
// DESCRIPTION:
//
//          �������� EVA Timer 1, EVA Timer 2, EVB Timer 3��EVB Timer 4
//          Ϊ��������жϣ�ÿ���ж�ʱ��ͨ���жϷ����ӳ�����ļ���������  
//          �����жϴ�����
//
//          EVA Timer 1 ӵ����̵ļ������ڣ��� EVB Timer4 ӵ����ļ�������
//
//                eva_timer1_isr  �� RAM������, ʹflash����sleepģʽ
//                eva_timer2_isr  �� RAM������, ʹflash����standbyģʽ
//                evb_timer3_isr  �� RAM������, ʹflash����sleepģʽ
//                                              ֮��ʹflash����standbyģʽ
//                evb_timer4_isr  �� FLASH������
//        
//          �۲����:
//
//                EvaTimer1InterruptCount;
//                EvaTimer2InterruptCount;
//                EvbTimer3InterruptCount;
//                EvbTimer4InterruptCount;
//
//###########################################################################
// �ͷ�����: 20150402
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

//  ��Щ��������RAM�����У�������Ҫ���岻ͬ�Ķ�
//��Щ�ν���CMD�ļ�ӳ�䵽��Ӧ�ĵ�ַ

#pragma CODE_SECTION(eva_timer1_isr, "ramfuncs");
#pragma CODE_SECTION(eva_timer2_isr, "ramfuncs");
#pragma CODE_SECTION(evb_timer3_isr, "ramfuncs");

// ʹ��ǰ���������ļ��е���غ���
interrupt void eva_timer1_isr(void);
interrupt void eva_timer2_isr(void);
interrupt void evb_timer3_isr(void);
interrupt void evb_timer4_isr(void);
void init_eva_timer1(void);
void init_eva_timer2(void);
void init_evb_timer3(void);
void init_evb_timer4(void);

//����ʹ�õ�ȫ�ֱ���
Uint32 EvaTimer1InterruptCount;
Uint32 EvaTimer2InterruptCount;
Uint32 EvbTimer3InterruptCount;
Uint32 EvbTimer4InterruptCount;
Uint32 LoopCount;

// �����ⲿ����(�����������F2812.cmd�ﶨ��)
extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;


void main(void)
{
// ���� 1. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�.
   InitSysCtrl();
   
// ���� 2. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ��������


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
   EALLOW;   //����Ĵ�������
   PieVectTable.T1PINT = &eva_timer1_isr;
   PieVectTable.T2PINT = &eva_timer2_isr;
   PieVectTable.T3PINT = &evb_timer3_isr;
   PieVectTable.T4PINT = &evb_timer4_isr;
   EDIS;   // ������Ҫ��ֹд EALLOW�������Ĵ���

// ���� 4.��ʼ��Ƭ������:
   init_eva_timer1();
   init_eva_timer2();
   init_evb_timer3();
   init_evb_timer4();
     

// ���� 5. �û�ָ�����룬�����жϣ�

// ���ƹؼ������FLASH��ʼ�����뵽RAM��
// ������������Ӻ���: EvaTimer1(), EvaTimer2()
// EvbTimer3 �� InitFlash();
// RamfuncsLoadStart, RamfuncsLoadEnd, �� RamfuncsRunStart����
// �������������������F2812.cmd��
   MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);

// ����FLASH��ʼ������������flash�ȴ�״̬
// �ú���������RAM������
   InitFlash();

   //��ʼ������ֵΪ 0
   EvaTimer1InterruptCount = 0;
   EvaTimer2InterruptCount = 0;
   EvbTimer3InterruptCount = 0;
   EvbTimer4InterruptCount = 0;
   LoopCount = 0;
 

   // ʹ�� PIE �� 2 �ж� 4 Ϊ T1PINT
   PieCtrlRegs.PIEIER2.all = M_INT4;
   // ʹ�� PIE �� 3�ж� 1 Ϊ T2PINT
   PieCtrlRegs.PIEIER3.all = M_INT1;    
   // ʹ�� PIE �� 4 �ж� 4 Ϊ T3PINT
   PieCtrlRegs.PIEIER4.all = M_INT4;
   // ʹ�� PIE �� 5 �ж� 1 ΪT4PINT
   PieCtrlRegs.PIEIER5.all = M_INT1;

   // ʹ�� CPU INT2 Ϊ T1PINT, INT3 Ϊ T2PINT, INT4 Ϊ T3PINT
   // �� INT5 Ϊ T4PINT:
   IER |= (M_INT2 | M_INT3 | M_INT4 | M_INT5);

   // ����ȫ���жϺ͸����ȼ���ʵʱ�����¼��� 


   EINT;   // ʹ��ȫ���ж�INTM
   ERTM;   // ʹ��ȫ��ʵʱ�ж� DBGM

// ���� 6. ����ѭ�����ȴ��жϣ�	
   while(1)
   {
       LoopCount++;
   }

} 
 

void init_eva_timer1(void)
{
    // ��ʼ�� EVA ��ʱ�� 1:
    // ���ö�ʱ�� 1 �Ĵ��� (EV A)
    EvaRegs.GPTCONA.all = 0;
   
    // Ϊͨ�ö�ʱ�� 1��������ֵΪ 0x0200;
    EvaRegs.T1PR = 0x0200;       // ����
    EvaRegs.T1CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ��ͨ�ö�ʱ�� 1�����ж�λ
    // ������, x128, �ڲ�ʱ��, ʹ�ܱȽ�, ʹ���Լ������ڼĴ���ֵ
    EvaRegs.EVAIMRA.bit.T1PINT = 1;
    EvaRegs.EVAIFRA.bit.T1PINT = 1;

    // ���ͨ�ö�ʱ�� 1����ֵ
    EvaRegs.T1CNT = 0x0000;
    EvaRegs.T1CON.all = 0x1742;

    //�ڶ�ʱ��1�����ж�ʱ���� EVA ADC ת��
    EvaRegs.GPTCONA.bit.T1TOADC = 2;

}

void init_eva_timer2(void)
{
	// ��ʼ�� EVA ��ʱ�� 2:
    // ���ö�ʱ�� 2 �Ĵ��� (EV A)
    EvaRegs.GPTCONA.all = 0;
   
    // Ϊͨ�ö�ʱ�� 2��������ֵΪ 0x0400;
    EvaRegs.T2PR = 0x0400;       // ����
    EvaRegs.T2CMPR = 0x0000;     // �ȽϼĴ���
   
    // ʹ��ͨ�ö�ʱ�� 2�����ж�λ
    // ������, x128, �ڲ�ʱ��, ʹ�ܱȽ�, ʹ���Լ������ڼĴ���ֵ
    EvaRegs.EVAIMRB.bit.T2PINT = 1;
    EvaRegs.EVAIFRB.bit.T2PINT = 1;

    // ���ͨ�ö�ʱ�� 2����ֵ
    EvaRegs.T2CNT = 0x0000;
    EvaRegs.T2CON.all = 0x1742;

    //�ڶ�ʱ��2�����ж�ʱ���� EVA ADC ת��
    EvaRegs.GPTCONA.bit.T2TOADC = 2;
}

void init_evb_timer3(void)
{
    // ��ʼ�� EVA ��ʱ�� 3:
    // ���ö�ʱ�� 3 �Ĵ��� (EV A)
    EvbRegs.GPTCONB.all = 0;
   
    // Ϊͨ�ö�ʱ�� 3��������ֵΪ 0x0800;
    EvbRegs.T3PR = 0x0800;       
    EvbRegs.T3CMPR = 0x0000;     // �ȽϼĴ���
   
    /// ʹ��ͨ�ö�ʱ��3�����ж�λ
    // ������, x128, �ڲ�ʱ��, ʹ�ܱȽ�, ʹ���Լ������ڼĴ���ֵ
    EvbRegs.EVBIMRA.bit.T3PINT = 1;
    EvbRegs.EVBIFRA.bit.T3PINT = 1;

    // ���ͨ�ö�ʱ�� 3����ֵ
    EvbRegs.T3CNT = 0x0000;
    EvbRegs.T3CON.all = 0x1742;

    //�ڶ�ʱ��3�����ж�ʱ���� EVA ADC ת��
    EvbRegs.GPTCONB.bit.T3TOADC = 2;
}

void init_evb_timer4(void)
{
    // ��ʼ�� EVA ��ʱ�� 4:
    // ���ö�ʱ��4 �Ĵ��� (EV A)
    EvbRegs.GPTCONB.all = 0;
   
    // Ϊͨ�ö�ʱ�� 3��������ֵΪ 0x1000;
    EvbRegs.T4PR = 0x1000;       
    EvbRegs.T4CMPR = 0x0000;     
   
    /// ʹ��ͨ�ö�ʱ��4�����ж�λ
    // ������, x128, �ڲ�ʱ��, ʹ�ܱȽ�, ʹ���Լ������ڼĴ���ֵ
    EvbRegs.EVBIMRB.bit.T4PINT = 1;
    EvbRegs.EVBIFRB.bit.T4PINT = 1;

     // ���ͨ�ö�ʱ�� 4����ֵ
    EvbRegs.T4CNT = 0x0000;
    EvbRegs.T4CON.all = 0x1742;

     //�ڶ�ʱ��4�����ж�ʱ���� EVA ADC ת��
    EvbRegs.GPTCONB.bit.T4TOADC = 2;
} 
 
// ���ӳ��������RAM��ִ�У�������ʹFLASH��������״̬
interrupt void eva_timer1_isr(void)
{
    Uint16 i;

    // ʹFLASH��������״̬
    FlashRegs.FPWR.bit.PWR = FLASH_SLEEP; 
    
    EvaTimer1InterruptCount++;
    // �ӳ�һ��ʱ����ģ��һЩ�ӳ��������
    for(i = 1; i < 0x03FF; i++) {}

    // ʹ�ܶ�ʱ�ж�
    EvaRegs.EVAIMRA.bit.T1PINT = 1;

    // �����Ӧ�жϱ�־λ
    EvaRegs.EVAIFRA.all = BIT7;

    //��� PIE�� 2��Ӧ��λ���Ա�����´��ж�
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP2;
}

// ���ӳ��������RAM��ִ�У�������ʹFLASH����standbyģʽ
interrupt void eva_timer2_isr(void)
{
    Uint16 i;

    // ʹFLASH��������״̬
    FlashRegs.FPWR.bit.PWR = FLASH_STANDBY; 

    EvaTimer2InterruptCount++;

    // �ӳ�һ��ʱ����ģ��һЩ�ӳ��������
    for(i = 1; i < 0x02FF; i++) {}

    // ʹ�ܶ�ʱ�ж�
    EvaRegs.EVAIMRB.bit.T2PINT = 1;

   // �����Ӧ�жϱ�־λ
   EvaRegs.EVAIFRB.all = BIT0;

   // ��� PIE��3��Ӧ��λ���Ա�����´��ж�
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}

// ���ӳ��������RAM��ִ�У�������ʹFLASH��������״̬
// ֮����FLASH����Standbyģʽ
interrupt void evb_timer3_isr(void)
{

    Uint16 i;

    // ʹFLASH��������״̬
    FlashRegs.FPWR.bit.PWR = FLASH_SLEEP; 

    EvbTimer3InterruptCount++;

    // �ӳ�һ��ʱ����ģ��һЩ�ӳ��������
    for(i = 1; i < 0x01FF; i++) {}

    // ��FLASH����Standbyģʽ
    FlashRegs.FPWR.bit.PWR = FLASH_STANDBY; 

    // �����Ӧ�жϱ�־λ
    EvbRegs.EVBIFRA.all = BIT7;

    //  ��� PIE��4��Ӧ��λ���Ա�����´��ж�
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP4;

}

// ���ӳ�����FLASH������
interrupt void evb_timer4_isr(void)
{

    Uint16 i;
    
    EvbTimer4InterruptCount++;

    // �ӳ�һ��ʱ����ģ��һЩ�ӳ��������
    for(i = 1; i < 0x00FF; i++) {}
 
    // �����Ӧ�жϱ�־λ
    EvbRegs.EVBIFRB.all = BIT0;	

    //  ��� PIE��5��Ӧ��λ���Ա�����´��ж�
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP5;

}


//===========================================================================
// No more.
//===========================================================================

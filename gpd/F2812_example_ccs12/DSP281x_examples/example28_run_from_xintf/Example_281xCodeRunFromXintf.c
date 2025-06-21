//###########################################################################
//
// FILE:    Example_281xCodeRunFromXintf.c
//
// TITLE:   ������RAM�����г��� (���� MPNMC = 1)
//
// 
//           �����̱�����Ϊ"boot from XINTF Zone 6"����
//           
//
//          XMP/MCn ���� = 1
//
//          �ڳ����ｫ�ⲿ����7ӳ��ΪRAM
//    
//
// ����:
//
//          
//          ��F2812_XintfBoot.cmd�ļ����ѽ������������ɵĶ��ļ����䵽�ⲿ����6
//          �ⲿ����6/7��ʱ��������xintf_zone6and7_timing(void)��������ͬ��������ִ�У�������Ҫ����
//          dspƬ��RAM�����У������������ⲿ����6�����У���������CPU��ʱ��0ÿ���ж�ʱ������Ӧ�ļ���;��
//          ͨ���۲����ֵ��������֤�˳������ⲿRAM���������У�
//
//          �۲����:
//                 CpuTimer0.InterruptCount
//                 BackgroundCount
//###########################################################################
// �ͷ�����: 20150319
//###########################################################################

// ���� 0: ��������Ҫ��ͷ�ļ�:

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

// ʹ��ǰ���������ļ��е���غ���
// �����xintf_zone6and7_timing�������ӵ�Ƭ��RAM
#pragma CODE_SECTION(xintf_zone6and7_timing,"ramfuncs");
void xintf_zone6and7_timing(void);
interrupt void ISR_CPUTimer0(void);
void error(void);

// ����ȫ�ֱ���
Uint32 BackgroundCount = 0;

// RAM Count - �����������������Ƭ�� RAM, ���봢�����ⲿRAM��ļ�������Ա�
// �Ӷ���֤�����Ƿ���������
#pragma DATA_SECTION(RamInterruptCount,"ramdata");
Uint32 RamInterruptCount = 0;

void main(void)
{
    //-----------------------------------------------------------------------
    //
    // ���� 1: ��ֹCPU�жϺ��������CPU�жϱ�־; ��ֹCPUȫ���ж�
       DINT;
       IER = 0x0000;
       IFR = 0x0000;

    // ���� 2. ��ʼ��ϵͳ����:
// ����PLL, WatchDog, ʹ������ʱ��
// ��������������Դ�DSP281x_SysCtrl.c�ļ����ҵ�
    InitSysCtrl();

    //  ���� 3. ��ʼ��ͨ�����������·������GPIO: 
// ���������DSP281x_Gpio.cԴ�ļ��б�������
// InitGpio();  // ����ֱ�������ò���

    // ���� 4.  ��ʼ��PIE���ƼĴ��������ǵ�Ĭ��״̬.
// ���Ĭ��״̬���ǽ�ֹPIE�жϼ��������PIE�жϱ�־ 
// �����������DSP281x_PieCtrl.cԴ�ļ���.
    InitPieCtrl();

     //��ʼ��PIE�ж���������ʹ��ָ���жϷ����ӳ���ISR��
// ��Щ�жϷ����ӳ��򱻷�����DSP281x_DefaultIsr.cԴ�ļ���
// �������������DSP281x_PieVect.cԴ�ļ�����.
    InitPieVectTable();

    // ʹ�� CPU �� PIE �ж�
    // �����������DSP281x_PieCtrl.cԴ�ļ���. 
    EnableInterrupts();	
	
    // ���� 5.��ʼ��Ƭ������:
    InitCpuTimers();
    
    //-----------------------------------------------------------------------
    // �û�ָ������:
    // 
    // ��ʼ���ⲿ����6��7�Ķ�ʱ
    // ���Ƚ���������Ƭ��RAM, Ȼ����ú������ı�����ʱ
    
    // RamfuncsLoadStart, RamfuncsLoadEnd, �� RamfuncsRunStart��DSP281x_GlobalPrototypes.h�ﱻ����Ϊ�ⲿ����
    // ����F2812_XintfBoot.cmd�ﶨ���˵�ַ��ͨ��MemCopy������xintf_zone6and7_timing()�ӳ��򿽵�Ƭ��RAM��
    // Ȼ����Ƭ��RAM���ʼ���ⲿ����6��7�Ķ�ʱ
    MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);	
	xintf_zone6and7_timing();
	
	EALLOW;	   									// ������Ҫд��EALLOW�������Ĵ���
	PieVectTable.TINT0 = &ISR_CPUTimer0;
	EDIS;      									// ������Ҫ��ֹдEALLOW�����Ĵ���
    
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;			// ʹ�� INT1.7 �������ӵ� CPU-Timer 0:
    IER |= M_INT1;
    	
    SetDBGIER(M_INT1); 							// ����ʵʱģʽʹ�� INT1
	EINT;   									// ʹ��ȫ���ж� INTM
	ERTM;										// ʹ��ȫ��ʵʱ����DBGM

	// ���ó�ʼ��CPU Timer 0 Ϊ:
	//     > CPU Timer 0 ���ӵ� INT1.7
	//	   > ����Ϊ1s�����ж�
	//	   > ������ʱ���жϣ�Ȼ������ "ISR_CPUTimer0" ������ִ��
	
	ConfigCpuTimer(&CpuTimer0, 150, 1000000);	// 150MHz CPU Ƶ�ʣ� 1 ������ (in uSeconds)
 	StartCpuTimer0();



	for(;;)
		BackgroundCount++;                      // ����ѭ�����ȴ��ж�

	//exit(0);									
} 	


interrupt void ISR_CPUTimer0(void)
{
	PieCtrlRegs.PIEACK.all = 0xFFFF;
	ERTM;             							// ʹ��ȫ��ʵʱ����DBGM
	
	CpuTimer0.InterruptCount++;					// ÿ������1
    RamInterruptCount++;
    if(RamInterruptCount != CpuTimer0.InterruptCount) error();

}


// ������ 6��7���ö�ʱ����.
// ע��: �ú��������ڱ����õ�����������
void xintf_zone6and7_timing()
{

    // ��������---------------------------------
    // ��������Ķ�ʱ���� XTIMCLK = SYSCLKOUT 
    XintfRegs.XINTCNF2.bit.XTIMCLK = 0;
    // ���������Ϊ3
    XintfRegs.XINTCNF2.bit.WRBUFF = 3;
    // XCLKOUT��ʹ��
    XintfRegs.XINTCNF2.bit.CLKOFF = 0;
    // XCLKOUT = XTIMCLK 
    XintfRegs.XINTCNF2.bit.CLKMODE = 0;
    
    
    // ���� 6------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING6.bit.XWRLEAD = 1;
    XintfRegs.XTIMING6.bit.XWRACTIVE = 1;
    XintfRegs.XTIMING6.bit.XWRTRAIL = 1;
    // Zone read timing
    XintfRegs.XTIMING6.bit.XRDLEAD = 1;
    XintfRegs.XTIMING6.bit.XRDACTIVE = 2;
    XintfRegs.XTIMING6.bit.XRDTRAIL = 0;
    
    // do not double all Zone read/write lead/active/trail timing 
    XintfRegs.XTIMING6.bit.X2TIMING = 0;
 
    // Zone will not sample READY 
    XintfRegs.XTIMING6.bit.USEREADY = 0;
    XintfRegs.XTIMING6.bit.READYMODE = 0;  
 
    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING6.bit.XSIZE = 3;
 

    // Zone 7------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING7.bit.XWRLEAD = 1;
    XintfRegs.XTIMING7.bit.XWRACTIVE = 1;
    XintfRegs.XTIMING7.bit.XWRTRAIL = 1;
    // Zone read timing
    XintfRegs.XTIMING7.bit.XRDLEAD = 1;
    XintfRegs.XTIMING7.bit.XRDACTIVE = 2;
    XintfRegs.XTIMING7.bit.XRDTRAIL = 0;
    
    // don't double all Zone read/write lead/active/trail timing 
    XintfRegs.XTIMING7.bit.X2TIMING = 0;
 
    // Zone will not sample XREADY signal  
    XintfRegs.XTIMING7.bit.USEREADY = 0;
    XintfRegs.XTIMING7.bit.READYMODE = 0;
 
    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING7.bit.XSIZE = 3;
    
   //Force a pipeline flush to ensure that the write to 
   //the last register configured occurs before returning.  
   asm(" RPT #7 || NOP"); 
}

void error(void)
{
    asm("      ESTOP0");   // ����ϵ�
}

//===========================================================================
// No more.
//===========================================================================

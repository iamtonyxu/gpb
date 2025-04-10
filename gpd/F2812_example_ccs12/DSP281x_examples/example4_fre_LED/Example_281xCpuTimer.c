//###########################################################################
//
// FILE:    Example_281xCpuTimer.c
//
// TITLE:   CPU��ʱ��0��1,2��Ƶ����LED��˸ʵ��
//
// ASSUMPTIONS:
//
//          This program requires the DSP281x V1.00 header files.  
//          As supplied, this project is configured for "boot to H0" operation.
//
//          Other then boot mode configuration, no other hardware configuration
//          is required.   
//
// ����:
//
//          ��������CPU��ʱ��0��1,2�����ڷֱ�Ϊ1s,2s,4s;
//          ÿ�ν����жϺ�CpuTimer0.InterruptCount��1�Լ�LED����״̬�仯һ��
//      
//          �۲����:
//                 CpuTimer0.InterruptCount,CpuTimer1.InterruptCount,CpuTimer2.InterruptCount��LED
//
//###########################################################################
// $Release Date: 20150105
//###########################################################################


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File


/***************************************************************************************************
**Description  ** ȫ�ֱ�������
***************************************************************************************************/
volatile unsigned int timer_int_cnt;

// �������µ��õĺ�������Ҫ��������ǰ��������������
interrupt void cpu_timer0_isr(void);
interrupt void cpu_timer1_isr(void);
interrupt void cpu_timer2_isr(void);
void Gpio_select(void);

void main(void)
{

// Step 1. Initialize System Control:
// PLL, WatchDog, enable Peripheral Clocks
// This example function is found in the DSP281x_SysCtrl.c file.
   InitSysCtrl();

// Step 2. Initalize GPIO: 
// This example function is found in the DSP281x_Gpio.c file and
// illustrates how to set the GPIO to it's default state.
// InitGpio();  // Skipped for this example  

// ������Ҫʹ��GPIO������������Ҫ������г�ʼ��
   Gpio_select();

// Step 3. Clear all interrupts and initialize PIE vector table:
// Disable CPU interrupts 
   DINT;

// Initialize the PIE control registers to their default state.
// The default state is all PIE interrupts disabled and flags
// are cleared.  
// This function is found in the DSP281x_PieCtrl.c file.
   InitPieCtrl();
   
// Disable CPU interrupts and clear all CPU interrupt flags:
   IER = 0x0000;
   IFR = 0x0000;

// Initialize the PIE vector table with pointers to the shell Interrupt 
// Service Routines (ISR).  
// This will populate the entire table, even if the interrupt
// is not used in this example.  This is useful for debug purposes.
// The shell ISR routines are found in DSP281x_DefaultIsr.c.
// This function is found in DSP281x_PieVect.c.
   InitPieVectTable();

// Interrupts that are used in this example are re-mapped to
// ISR functions found within this file.  
   EALLOW;  // This is needed to write to EALLOW protected registers
   PieVectTable.TINT0 = &cpu_timer0_isr;
   PieVectTable.XINT13 = &cpu_timer1_isr;
   PieVectTable.TINT2 = &cpu_timer2_isr;
   EDIS;    // This is needed to disable write to EALLOW protected registers

// Step 4. Initialize all the Device Peripherals:
// This function is found in DSP281x_InitPeripherals.c
// InitPeripherals(); // Not required for this example
   InitCpuTimers();   // For this example, only initialize the Cpu Timers

// Configure CPU-Timer 0 to interrupt every second:
// 100MHz CPU Freq, 1 second Period (in uSeconds)
   ConfigCpuTimer(&CpuTimer0, 150, 500000);
   ConfigCpuTimer(&CpuTimer1, 150, 1000000);
   ConfigCpuTimer(&CpuTimer2, 150, 2000000);
   StartCpuTimer0();
   StopCpuTimer1();
   StopCpuTimer2();

// Step 5. User specific code, enable interrupts:


// Enable CPU INT1 which is connected to CPU-Timer 0:
   IER |= M_INT1;
   IER |= M_INT13;
   IER |= M_INT14;

// Enable TINT0 in the PIE: Group 1 interrupt 7
   PieCtrlRegs.PIEIER1.bit.INTx7 = 1;

// Enable global Interrupts and higher priority real-time debug events:
   EINT;   // Enable Global interrupt INTM
   ERTM;   // Enable Global realtime interrupt DBGM

   timer_int_cnt = 0;
// Step 6. IDLE loop. Just sit and loop forever (optional):
   for(;;);

} 


interrupt void cpu_timer0_isr(void)
{
   CpuTimer0.InterruptCount++;
    EALLOW;
    if(timer_int_cnt++ >= 10)      	//LED����˸5��
    {
        timer_int_cnt = 0;
        StopCpuTimer0();                          // ���ö�ʱ��0��TSS = 1���رն�ʱ��0�ж�
        StartCpuTimer1();                        // ���ö�ʱ��1��TSS = 0��������ʱ��1�ж�
        StopCpuTimer2();                        // ���ö�ʱ��2��TSS = 1���رն�ʱ��2�ж�
    }

   GpioDataRegs.GPATOGGLE.all = 0x00FF; // ÿ��500ms��LED��Ӧ��GPIOȡ��һ�Σ�

   // Acknowledge this interrupt to receive more interrupts from group 1
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

interrupt void cpu_timer1_isr(void)
{
   CpuTimer1.InterruptCount++;

   EALLOW;

   if( timer_int_cnt++ >= 10) 
    {
        timer_int_cnt = 0;
        StopCpuTimer0();                          // ���ö�ʱ��0��TSS = 1���رն�ʱ��0�ж�
        StopCpuTimer1();                        // ���ö�ʱ��1��TSS = 1���رն�ʱ��1�ж�
        StartCpuTimer2();                        // ���ö�ʱ��2��TSS = 0��������ʱ��2�ж�
    }
   GpioDataRegs.GPATOGGLE.all = 0x00FF; // ÿ��1s��LED��Ӧ��GPIOȡ��һ�Σ�

   // The CPU acknowledges the interrupt.
   EDIS;
}

interrupt void cpu_timer2_isr(void)
{  
   CpuTimer2.InterruptCount++;
    EALLOW;
    if( timer_int_cnt++ >= 10) 
    {
        timer_int_cnt = 0;
        StartCpuTimer0();                        // ���ö�ʱ��0��TSS = 0��������ʱ��0�ж�
        StopCpuTimer1();                        // ���ö�ʱ��1��TSS = 1���رն�ʱ��1�ж�
        StopCpuTimer2();                        // ���ö�ʱ��2��TSS = 1���رն�ʱ��2�ж�
    }
    GpioDataRegs.GPATOGGLE.all = 0x00FF; // ÿ��2s��LED��Ӧ��GPIOȡ��һ�Σ�
   // The CPU acknowledges the interrupt.
   EDIS;
}

void Gpio_select(void)
{

    Uint16 var1;
    Uint16 var2;
    Uint16 var3;

    var1= 0x0000;		// ����GPIOΪI/O��
    var2= 0xFFFF;		// ����GPIOΪ�����
    var3= 0x0000;		// ���������޶���ֵ
   
    EALLOW;
	 
	GpioMuxRegs.GPAMUX.all=var1;
    GpioMuxRegs.GPBMUX.all=var1;   
    GpioMuxRegs.GPDMUX.all=var1;
    GpioMuxRegs.GPFMUX.all=var1;		 
    GpioMuxRegs.GPEMUX.all=var1; 
    GpioMuxRegs.GPGMUX.all=var1;
										
    GpioMuxRegs.GPADIR.all=var2;		
    GpioMuxRegs.GPBDIR.all=var2;   		// ѡ�����е�GPIOΪ�����
    GpioMuxRegs.GPDDIR.all=var2;
    GpioMuxRegs.GPEDIR.all=var2;		
    GpioMuxRegs.GPFDIR.all=var2; 
    GpioMuxRegs.GPGDIR.all=var2;

    GpioMuxRegs.GPAQUAL.all=var3;  		// ����GPIO�����޶�ֵ
    GpioMuxRegs.GPBQUAL.all=var3;   
    GpioMuxRegs.GPDQUAL.all=var3;
    GpioMuxRegs.GPEQUAL.all=var3;

	GpioDataRegs.GPADAT.all = 0x0000;
 
    EDIS;
     
}     
//===========================================================================
// No more.
//===========================================================================

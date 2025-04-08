/**********************************************************************
* File: Adc.c
* Devices: TMS320F2812, TMS320F2811, TMS320F2810
* Author: David M. Alter, Texas Instruments Inc.
* History:
*   09/08/03 - original (based on DSP281x header files v1.00, D. Alter)
*   03/18/04 - fixed comment field for ADCTRL1.5 bit
**********************************************************************/

#include "DSP281x_Device.h"

// EXAMPLE_BIOS or EXAMPLE_NONBIOS are defined in the CCS project build options
#ifdef EXAMPLE_BIOS
    #include "example_BIOS.h"
#endif

#ifdef EXAMPLE_NONBIOS
    #include "example_nonBIOS.h"
#endif


/**********************************************************************
* Function: InitAdc()
*
* Description: Initializes the ADC on the F281x.
**********************************************************************/
void InitAdc(void)
{

/*** Reset the ADC module ***/
	AdcRegs.ADCTRL1.bit.RESET = 1;		// Reset the ADC module
	asm(" RPT #10 || NOP");				// Must wait 12-cycles (worst-case) for ADC reset to take effect
	
/*** Must follow the proper ADC power-up sequence ***/
	AdcRegs.ADCTRL3.all = 0x00C8;		// first power-up ref and bandgap circuits
/*
 bit 15-8      0's:    reserved
 bit 7         1:      ADCRFDN, reference power, 1=power on
 bit 6         1:      ADCBGDN, bandgap power, 1=power on
 bit 5         0:      ADCPWDN, main ADC power, 1=power on
 bit 4-1       0100:   ADCCLKPS, clock prescaler, FCLK=HSPCLK/(2*ADCCLKPS)
 bit 0         0:      SMODE_SEL, 0=sequential sampling, 1=simultaneous sampling
*/

	DelayUs(10000);						// Wait 10 ms before setting ADCPWDN
	AdcRegs.ADCTRL3.bit.ADCPWDN = 1;	// Set ADCPWDN=1 to power main ADC
	DelayUs(1000);						// Wait 1 ms before using the ADC

/*** Configure the other ADC register ***/
	AdcRegs.ADCTRL3.bit.SMODE_SEL = 1;		// Set up Simultaneous sampling mode
	AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;		// Set up cascaded sequencer mode
	AdcRegs.ADCMAXCONV.all = 0x0007;		// 8 double conversions (16 total)
	AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x0;	// Set up conversion from ADCINA0 & ADCINB0
	AdcRegs.ADCCHSELSEQ1.bit.CONV01 = 0x1;	// Set up conversion from ADCINA1 & ADCINB1
	AdcRegs.ADCCHSELSEQ1.bit.CONV02 = 0x2;	// Set up conversion from ADCINA2 & ADCINB2
	AdcRegs.ADCCHSELSEQ1.bit.CONV03 = 0x3;	// Set up conversion from ADCINA3 & ADCINB3
	AdcRegs.ADCCHSELSEQ2.bit.CONV04 = 0x4;	// Set up conversion from ADCINA4 & ADCINB4
	AdcRegs.ADCCHSELSEQ2.bit.CONV05 = 0x5;	// Set up conversion from ADCINA5 & ADCINB5
	AdcRegs.ADCCHSELSEQ2.bit.CONV06 = 0x6;	// Set up conversion from ADCINA6 & ADCINB6
	AdcRegs.ADCCHSELSEQ2.bit.CONV07 = 0x7;	// Set up conversion from ADCINA7 & ADCINB7

	AdcRegs.ADCTRL1.all = 0x0710;
/*
 bit 15        0:      reserved
 bit 14        0:      RESET, 0=no action, 1=reset ADC
 bit 13-12     00:     SUSMOD, 00=ignore emulation suspend
 bit 11-8      0111:   ACQ_PS (Acquisition), 0111 = 8 x ADCCLK
 bit 7         0:      CPS (Core clock), 0: ADCCLK=FCLK/1, 1: ADCCLK=FCLK/2 (7.5MHZ)
 bit 6         0:      CONT_RUN, 0=start/stop mode, 1=continuous run
 bit 5         0:      SEQ_OVRD, 0=disabled, 1=enabled
 bit 4         1:      SEQ_CASC, 0=dual sequencer, 1=cascaded sequencer
 bit 3-0       0000:   reserved
*/

	AdcRegs.ADCTRL2.all = 0x0800;
/*
 bit 15        0:      EVB_SOC_SEQ, 0=no action
 bit 14        0:      RST_SEQ1, 0=no action
 bit 13        0:      SOC_SEQ1, 0=clear any pending SOCs
 bit 12        0:      reserved
 bit 11        1:      INT_ENA_SEQ1, 1=enable interrupt
 bit 10        0:      INT_MOD_SEQ1, 0=int on every SEQ1 conv
 bit 9         0:      reserved
 bit 8         0:      EVA_SOC_SEQ1, 1=SEQ1 cannot start from EVA
 bit 7         0:      EXT_SOC_SEQ1, 1=SEQ1 start from ADCSOC pin
 bit 6         0:      RST_SEQ2, 0=no action
 bit 5         0:      SOC_SEQ2, no effect in cascaded mode
 bit 4         0:      reserved
 bit 3         0:      INT_ENA_SEQ2, 0=int disabled
 bit 2         0:      INT_MOD_SEQ2, 0=int on every other SEQ2 conv
 bit 1         0:      reserved
 bit 0         0:      EVB_SOC_SEQ2, 1=SEQ2 started by EVB
*/

/*** Enable the ADC interrupt ***/

} // end AdcInit()

/******************************************************************************
*	Function:		GetAdcCalibrationFactors()
*	Desctiption:	This function calculates the Gain and Offset errors of the 
*					on chip ADC. The function uses ADCIN5 (REF2.5) as the known  
*					HIGH Reference and ADCIN6 (0.19084V) as the known LOW Reference.
*
*	Inputs:			none
*
*	Outputs:		float* Gain:	Returns the Gain Error factor
*					int32* Offset:	Returns the Offset Error factor
*
*	returns:		void
*
*	Author:			TI
*
*	History:		8/16/07  - Original
*					01/16/08 - Modified Gain and Offset algorithm to match the one
*							   used by VMS
*
******************************************************************************/
void GetAdcCalibrationFactors(float *Gain, int32 *OffSet)
{
	int idx;
	int32 offset;
	float V8, V11, gain;
	Uint32 Vref = 0L;
	Uint32 Vagnd = 0L;
	volatile Uint16* ResltReg = &AdcRegs.ADCRESULT0;

	for(idx = 0; idx < 1024; idx++) { // Acquire 1024 Samples
		StartConversion();
		Vref += ((ResltReg[ADCIN5] >> 4) & 0x0fff);
		Vagnd += ((ResltReg[ADCIN6] >> 4) & 0x0fff);
		DelayUs(8000); // Delay for 10mS
	}

	Vref /= 1024;	// Take average
	Vagnd /= 1024;	// Take average
	
	V8 = ((float)Vref) * 3.0/4096.0;	// Convert to float
	V11 = ((float)Vagnd) * 3.0/4096.0;	// Convert to float
		
	gain = ((2.5 - 0.19084)/(V8 - V11));							// Calculate Gain error
	offset = (int32)((0.19084 - (gain * V11)) * (4096.0/3.0)); 	// Calculate Offset error

	*Gain = gain;
	*OffSet = offset;
	
} /* GetAdcCalibrationFactors() */

/******************************************************************************
*	Function:		ConfigAndStartConversion()
*	Desctiption:	This function Starts an ADC convesion on the cascaded 
*					sequencer configured in InitAdc(). 
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
void StartConversion(void)
{
	while(AdcRegs.ADCST.bit.SEQ1_BSY){} // Wait for Seq1 to become idle
	
	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;	// Start Conversion

	while(AdcRegs.ADCTRL2.bit.SOC_SEQ1) {} // wait for sequencer to start

	while(!AdcRegs.ADCST.bit.INT_SEQ1) {} // wait for sequencer to complete
	AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;	  // Clear Sequencer interrupt

} /* StartConversion() */

/******************************************************************************
*	Function:		GetAdcConversion()
*	Desctiption:	This function retreives the ADC Conversion results after
*					the ADC has completed an acquisition on the specified
*					input channel. 
*
*	Inputs:			Uint16 AdcChnl:	ADC Channel's conversion results to retreive
*					float GainErr:	Gain Error Factor applied to ADC Conversion
*					int32 OffsErr:	Offset Error Factor applied to ADC Conversion
*
*	Outputs:		none
*
*	returns:		float: Adc Conversion Result
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
float GetAdcConversion(Uint16 AdcChnl, float GainErr, int32 OffsErr)
{
	float AnRes;
	volatile Uint16* ResltReg = &AdcRegs.ADCRESULT0;
	
	AdcChnl = (AdcChnl < 16) ? AdcChnl : 0;

	AnRes = (((float)(((ResltReg[AdcChnl] >> 4) + OffsErr) & 0x0fff)) / 4095.0) * 3.0 * GainErr;
	
	return AnRes;

} /* GetAdcConversion() */

/*** end of file *****************************************************/

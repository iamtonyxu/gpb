/******************************************************************************
*	File:			Dac.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the DAC (U39) on 
*					the UUT. It provides methods to Initialize and Configure 
*					the DAC, and methods to program the DAC output.
*
*	Author:			Tony Iadevaia
*
*	History:		08/16/07 - Original
*					12/11/07 - Modified file to Configure all six DAC outputs
*							   on the BGM-RFSPS board.
*					01/17/08 - Modified file to work with TLV5604 on the
							   DTR Power Distribution board 	 
*					
******************************************************************************/
#include "DSP281x_Device.h"
#include "Dac.h"

// EXAMPLE_BIOS or EXAMPLE_NONBIOS are defined in the CCS project build options
#ifdef EXAMPLE_BIOS
    #include "example_BIOS.h"
#endif

#ifdef EXAMPLE_NONBIOS
    #include "example_nonBIOS.h"
#endif

/******************************************************************************
*	Function:		ConfigDacInterface()
*	Desctiption:	This function Configures the SPI interface between the DAC
*					and the DSP. Configure the SPI Bus to Transmit on rising
*					Clock edge with no delay, and a word length of 16-bits.
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
void ConfigDacInterface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {} 	/* Wait for any SPI Transmissions in progress */
		/* Delay for a maximum of 8 uS; duration of a 16-bit SPI transmission at 2MHZ */
	}
	ConfigSpi(2, 16); 				/* Transmit on rising edge; 16-bit SPI words */		

} /* ConfigDacInterface() */

/******************************************************************************
*	Function:		TxDacData()
*	Desctiption:	This function programs the selected DAC to the selected 
*					voltage. This is a 4-channel DAC with 10-bits of resolution.
*
*	Inputs:			Uint16 DacChnl; Selected DAC Channel	
*					float Volts: 	Voltage to program DAC Output
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		8/16/07  - Original
*					12/11/07 - Modified function to accomodate BGM-RFSPS DACS 
*					01/17/08 - Modified function to accomodate DTR Power Distribution
*
******************************************************************************/
void TxDacData(Uint16 DacChnl, float Volts)
{
	Uint16 Data;
	Uint16 Packet;

	Volts = (Volts >= 0.0) && (Volts <= 5.0) ? Volts : 0.0;
	Data = (Uint16)(Volts/5.0 * 1023);

	DacChnl = (DacChnl <= 3) ? DacChnl : 0;
	
	Packet = (0x0000) | (DacChnl << 14) | ((Data << 2) & 0x0ffc);
	
	while(SpiTxNotReady()) {} 	// Wait for any SPI Transmissions in progress 
	
	DacChipSel(TRUE);			// Assert Chip select 
	DacFrameStart(TRUE);		// Assert FS 
	DelayUs(0);
	TxSpi(Packet);
	while(SpiRxNotReady()) {} 	// Wait for complete SPI Transmission 
	DacFrameStart(FALSE);		// De-Assert FS
	DacChipSel(FALSE);			// De-assert Chip select 
	RxSpi();					// Dummy read to clear SPI Rx Interrupt

	LoadDac();					// Pulse LDAC LOW 

} /* TxDacData() */

/******************************************************************************
*	Function:		DacChipSel()
*	Desctiption:	This function asserts or negates the DAC Chip Select signal.
*
*	Inputs:			Uint16 State; Selects logic state of CS_DA	
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		08/16/07 - Original
*					01/17/08 - Modified to work with DTR Power Distribution board
*
******************************************************************************/
void DacChipSel(Uint16 State)
{
	if(State)
		GpioDataRegs.GPDCLEAR.bit.GPIOD1 = 1; 	// CS_DA = LOW		
	else
		GpioDataRegs.GPDSET.bit.GPIOD1 = 1;		// CS_DA = HIGH	
	

} /* DacChipSel() */

/******************************************************************************
*	Function:		DacFrameStart()
*	Desctiption:	This function asserts or negates the DAC Frame Start signal.
*
*	Inputs:			Uint16 Mode; Selects logic state of SPIFS	
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		01/17/08 - Original
*
******************************************************************************/
void DacFrameStart(Uint16 Mode)
{
	if(Mode) {
		GpioDataRegs.GPDSET.bit.GPIOD6 = 1;		// SPIFS = HIGH
		DelayUs(0);
		GpioDataRegs.GPDCLEAR.bit.GPIOD6 = 1;	// SPIFS = LOW
	}
	else {
		GpioDataRegs.GPDSET.bit.GPIOD6 = 1;		// SPIFS = HIGH
	}

} /* DacFrameStart() */ 

/******************************************************************************
*	Function:		LoadDac()
*	Desctiption:	This function pulses the LDAC interface to the DAC.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		12/12/07 - Original
*					01/17/08 - Modified to work with DTR Power Distribution
*
******************************************************************************/
void LoadDac(void)
{
	GpioDataRegs.GPDCLEAR.bit.GPIOD5 = 1;	// Set LD_DA LOW
	DelayUs(5);
	GpioDataRegs.GPDSET.bit.GPIOD5  = 1;	// Set LD_DA HIGH
	
} /* LoadDac() */




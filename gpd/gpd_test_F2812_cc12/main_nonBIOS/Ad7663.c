/******************************************************************************
*	File:			Ad7663.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the Serial 16-bit 
*					ADC on the UUT. It provides methods to Initialize, Configure, 
*					start ADC conversions, and retrieve the conversion results
*					over the SPI Bus.
*
*	Author:			Tony Iadevaia
*
*	History:		12/05/07	- Original 
*					
******************************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "Ad7663.h"

/******************************************************************************
*	Function:		Ad7663ConfigInterface()
*	Desctiption:	This function initializes the SPI interface to the 16-bit
*					ADC. The SPI Bus will be configured for fixed 16-bit transfers.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		12/05/07 - Original
*
******************************************************************************/
void Ad7663ConfigInterface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {} /* Wait for any pending SPI transmissions */
	}

	ConfigSpi(2, 16); /* Configure SPI Bus for 16-Bit words; Tx on Rising CLK Edge */	

} /* Ad7663ConfigInterface() */

/******************************************************************************
*	Function:		Ad7663StartConv()
*	Desctiption:	This function Starts a conversion on the 16-bit AD7663 ADC
*					by pulsing ADC_CONV LOW for at least 5nS and waiting a
*					total of at least 30nS for the ADCBUSY signal to go HIGH.
*					Once the conversion is started it cannot be stopped and is 
*					independent of CS and RD.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		12/05/07 - Original
*
******************************************************************************/
void Ad7663StartConv(void)
{
	int idx;
	GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;	/* Assert ADC_CONV# active state */
	for(idx = 0; idx <= 2; idx++) {}		/* Loop to ensure ADC_CONV active at least 5nS */
	GpioDataRegs.GPBSET.bit.GPIOB4 = 1;		/* Assert ADC_CONV# inactive state */
		
} /* Ad7663StartConv() */

/******************************************************************************
*	Function:		Ad7663Busy()
*	Desctiption:	This function polls the BUSY status of the 16-bit AD7663 ADC.
*					The function returns immediately with the state of ADCBUSY.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint16:	State of ADCBUSY signal
*
*	Author:			TI
*
*	History:		12/05/07 - Original
*
******************************************************************************/
Uint16 Ad7663Busy(void)
{

	return GpioDataRegs.GPBDAT.bit.GPIOB10;	/* Read the state of ADCBUSY */

} /* Ad7663Busy() */

/******************************************************************************
*	Function:		Ad7663Acquire()
*	Desctiption:	This function acquires the selected channel presented to the 
*					16-bit AD7663 ADC through the multiplexers U40 and U62.
*					The function initiates a conversion, waits for the conversion 
*					to complete and returns the conversion result.
*
*	Inputs:			Uint16 Chnl:	Mux Channel
*
*	Outputs:		none
*
*	returns:		Uint16:			Conversion result of the selected channel
*
*	Author:			TI
*
*	History:		12/05/07 - Original
*
******************************************************************************/
Uint16 Ad7663Acquire(Uint16 Chnl)
{
	Uint16 Reslt = 0;
	Uint16 Dummy = 0x5555;

	if(Ad7663Busy()) {				// Check if ADC is Busy with a conversion
		while(Ad7663Busy()){;}		// Wait for ADC to become ready
	}
	while(SpiTxNotReady()) {;} 		// Wait for any SPI Transmissions in progress 
	if(Ad7663MuxSelect(Chnl)) {
		Ad7663StartConv();			// Start a new conversion
		while(Ad7663Busy()) {;}		// Wait for conversion to complete
		GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1; // Set ADC_CS LOW
		TxSpi(Dummy);				// Provide SCLK to clock out Conversion results
		while(SpiRxNotReady()) {;}	// wait for transmission to complete 
		Reslt = RxSpi();			// Read the Conversion results and return		
		GpioDataRegs.GPBSET.bit.GPIOB5  = 1; // Set ADC_CS HIGH
		return (int)Reslt;		
	}
	else {
		return 0;
	}

} /* Ad7663Acquire() */

/******************************************************************************
*	Function:		Ad7663AcquireFast()
*	Desctiption:	This function acquires the selected channel presented to the 
*					16-bit AD7663 ADC through the multiplexers U40 and U62.
*					The multiplexer channel needs to be pre-selected before calling
*					this function. The function initiates a conversion on a pre-settled
*					channel, waits for the conversion to complete and returns the 
*					conversion result.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint16:			Conversion result of the selected channel
*
*	Author:			TI
*
*	History:		12/19/07 - Original
*
******************************************************************************/
int Ad7663AcquireFast(void)
{
	Uint16 Reslt;

	if(Ad7663Busy()) {				// Check if ADC is Busy with a conversion
		while(Ad7663Busy()){;}		// Wait for ADC to become ready
	}
	while (SpiTxNotReady()) {;}	// Wait for any SPI transmissions in process
	Ad7663StartConv();			// Start a new conversion
	while(Ad7663Busy()) {;}		// Wait for conversion to complete
	GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1; // Set ADC_CS LOW
	TxSpi(0x0000);				// Provide SCLK to clock out Conversion results
	while(SpiRxNotReady()) {;}	// wait for transmission to complete 
	Reslt = RxSpi();			// Read the Conversion results		
	GpioDataRegs.GPBSET.bit.GPIOB5  = 1; // Set ADC_CS HIGH

	return (int)Reslt;

} /* Ad7663AcquireFast() */

/******************************************************************************
*	Function:		Ad7663MuxSelect()
*	Desctiption:	This function selects the multiplexer channel to close
*					for AD conversion.
*
*	Inputs:			Uint16 Chnl:	Selects the Analog Mux Channel to close
*
*	Outputs:		none
*
*	returns:		int:			True for success, False for failure
*
*	Author:			TI
*
*	History:		12/05/07 - Original
*
******************************************************************************/
int Ad7663MuxSelect(Uint16 Chnl)
{
	if(Chnl > 15) {
		return FALSE;
	}
	else {
		if(Chnl & 0x08) {
			GpioDataRegs.GPBSET.bit.GPIOB3 = 1;  // U62 defined as HIGH order MUX
		}
		else {
			GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1; // U40 defined as LOW order MUX
		}
		Chnl &= 0x07;
		switch (Chnl) {
			case 0:
				GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;	// A0 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;	// A1 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;	// A2 = 0
				break;
			case 1:
				GpioDataRegs.GPGSET.bit.GPIOG5 = 1;		// A0 = 1
				GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;	// A1 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;	// A2 = 0
				break;
			case 2:
				GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;	// A0 = 0
				GpioDataRegs.GPBSET.bit.GPIOB1 = 1;		// A1 = 1
				GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;	// A2 = 0
				break;
			case 3:
				GpioDataRegs.GPGSET.bit.GPIOG5 = 1;		// A0 = 1
				GpioDataRegs.GPBSET.bit.GPIOB1 = 1;		// A1 = 1
				GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;	// A2 = 0
				break;
			case 4:
				GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;	// A0 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;	// A1 = 0
				GpioDataRegs.GPBSET.bit.GPIOB2 = 1;		// A2 = 1
				break;
			case 5:
				GpioDataRegs.GPGSET.bit.GPIOG5 = 1;		// A0 = 1
				GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;	// A1 = 0
				GpioDataRegs.GPBSET.bit.GPIOB2 = 1;		// A2 = 1
				break;
			case 6:
				GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;	// A0 = 0
				GpioDataRegs.GPBSET.bit.GPIOB1 = 1;		// A1 = 1
				GpioDataRegs.GPBSET.bit.GPIOB2 = 1;		// A2 = 1
				break;
			case 7:
				GpioDataRegs.GPGSET.bit.GPIOG5 = 1;		// A0 = 1
				GpioDataRegs.GPBSET.bit.GPIOB1 = 1;		// A1 = 1
				GpioDataRegs.GPBSET.bit.GPIOB2 = 1;		// A2 = 1
				break;
			default:
				GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;	// A0 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;	// A1 = 0
				GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;	// A2 = 0
				break;
		}
		DSP28x_usDelay(5); // Delay for 6.25uS to allow input to ADC to settle
		return TRUE;
	}

} /* Ad7663MuxSelect() */


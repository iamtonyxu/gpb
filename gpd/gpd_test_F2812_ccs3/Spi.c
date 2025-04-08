/******************************************************************************
*	File:			Spi.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the SPI 
*					Controller. It provides methods to Initialize and Configure 
*					the SPI interface.
*
*	Author:			Tony Iadevaia
*
*	History:		8/16/07	- Original 
*					
******************************************************************************/
#include "DSP281x_Device.h"

// EXAMPLE_BIOS or EXAMPLE_NONBIOS are defined in the CCS project build options
#ifdef EXAMPLE_BIOS
    #include "example_BIOS.h"
#endif

#ifdef EXAMPLE_NONBIOS
    #include "example_nonBIOS.h"
#endif

/******************************************************************************
*	Function:		InitSpi()
*	Desctiption:	This function initializes the SPI interface.
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
void InitSpi(void)
{
	SpiaRegs.SPICCR.bit.SPISWRESET = 0;
	/* Program the SPI baud Rate: Br = LSPCLK/(SPIBRR + 1) 
	   Since the limiting factor is the speed of the slowest 
	   SPI device, and in this case that's the Serial EEPROM
	   with a maximum clock speed of 2MHZ: SPIBRR = (30MHZ/2MHZ) - 1 */
	SpiaRegs.SPIBRR = 29; // was 14; for 2MHZ	



} /* InitSpi() */

/******************************************************************************
*	Function:		ConfigSpi()
*	Desctiption:	This function initializes the SPI interface.
*
*	Inputs:			int ClkPol:	Clock Polarity and delay
*								0 = Trasndmit on Falling Edge without Delay
*								1 = Transmit on Falling Edge with Delay
*								2 = Transmit on Rising Edge without Delay
*								3 = Transmit on Rising Edge with Delay
*
*					int NoOfBits: Number of data bits per transfer (1 - 16)
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
void ConfigSpi(int ClkPol, int NoOfBits)
{
	
	SpiaRegs.SPICCR.bit.SPISWRESET = 0;
	
	ClkPol = ((ClkPol >= 0) && (ClkPol < 4)) ? ClkPol : 0;
	NoOfBits = ((NoOfBits >= 0) && (NoOfBits < 17)) ? NoOfBits : 8;

	switch(ClkPol) {
		case 0: /* Transmit on falling edge; Receive on rising edge; no Delay */
			SpiaRegs.SPICCR.bit.CLKPOLARITY = 1;
			SpiaRegs.SPICTL.bit.CLK_PHASE = 0;
			break;
		case 1: /* Transmit on falling edge; Receive on rising edge; Delay */
			SpiaRegs.SPICCR.bit.CLKPOLARITY = 1;
			SpiaRegs.SPICTL.bit.CLK_PHASE = 1;
			break;

		case 2: /* Transmit on rising edge; Receive on falling edge; no Delay */
			SpiaRegs.SPICCR.bit.CLKPOLARITY = 0;
			SpiaRegs.SPICTL.bit.CLK_PHASE = 0;
			break;

		case 3: /* Transmit on rising edge; Receive on falling edge; Delay */
			SpiaRegs.SPICCR.bit.CLKPOLARITY = 0;
			SpiaRegs.SPICTL.bit.CLK_PHASE = 1;
			break;
	}

	SpiaRegs.SPICCR.bit.SPICHAR = ((NoOfBits - 1) & 0xf);
	SpiaRegs.SPIFFTX.bit.SPIFFENA = 0;		/* Disable SPI FIFO Enhancements */

	SpiaRegs.SPICTL.bit.MASTER_SLAVE = 1;		/* Master Mode */
	SpiaRegs.SPICTL.bit.TALK = 1;
	SpiaRegs.SPICCR.bit.SPISWRESET = 1;			/* SPI Ready to Transmit and Receive */

} /* ConfigSpi() */

/******************************************************************************
*	Function:		TxSpi()
*	Desctiption:	This function Transmits an SPI data packet on the SPI Bus.
*
*	Inputs:		Uint16 Data:	Data to be transmitted to device
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
void TxSpi(Uint16 Data)
{
	SpiaRegs.SPITXBUF = Data;

} /* TxSpi() */

/******************************************************************************
*	Function:		RxSpi()
*	Desctiption:	This function Receives an SPI data packet on the SPI Bus.
*
*	Inputs:			none
*								
*	Outputs:		none
*
*	returns:		Uint16: Data received on the SPI Bus
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 RxSpi(void)
{
	return SpiaRegs.SPIRXBUF;

} /* RxSpi() */

/******************************************************************************
*	Function:		FormatSpiTxWord()
*	Desctiption:	This function formats an SPI word and applies the correct
*					justification.
*
*	Inputs:			Unit16:	Word to format
*					Uint16: Word size (1 - 16)
*								
*	Outputs:		none
*
*	returns:		Uint16: Formatted SPI Data packet
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 FormatSpiTxWord(Uint16 Data, Uint16 Length)
{
	Length = ((Length > 0) && (Length < 17)) ? Length : 8;	

	return (Data << (16 - Length));

} /* FormatSpiTxWord() */

/******************************************************************************
*	Function:		SpiRxNotReady()
*	Desctiption:	This function determines if an SPI word has been received.
*
*	Inputs:			none
*								
*	Outputs:		none
*
*	returns:		Uint16: state of SPI Receive Buffer: 
*							(1 - word is not available, 0 - word is available)	
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 SpiRxNotReady(void)
{
	if(SpiaRegs.SPISTS.bit.INT_FLAG)
		return 0;
	else
		return 1;

} /* SpiRxNotReady() */

/******************************************************************************
*	Function:		SpiTxNotReady()
*	Desctiption:	This function determines if the SPITXBUF register is ready
*					for another SPI word.
*
*	Inputs:			none
*								
*	Outputs:		none
*
*	returns:		Uint16: state of SPI Transmit Buffer: 
*							(1 - TxBuffer is free, 0 - TxBuffer is not free)	
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 SpiTxNotReady(void)
{
	if(SpiaRegs.SPISTS.bit.BUFFULL_FLAG)
		return 1;
	else
		return 0;

} /* SpiTxNotReady() */


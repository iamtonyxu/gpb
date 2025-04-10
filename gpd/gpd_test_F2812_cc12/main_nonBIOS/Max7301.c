/******************************************************************************
*	File:			Dac.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the MAX7301 on 
*					the Stand Power Distribution Board. It provides methods to 
*					Initialize and Configure the Port Expander, methods to output
*					data on the output ports, and methods to input data on the
*					input ports.
*
*	Author:			Tony Iadevaia
*
*	History:		05/21/08 - Original
*					
******************************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "Max7301.h"

/******************************************************************************
*	Function:		ConfigMax7301Interface()
*	Desctiption:	This function Configures the SPI interface between the MAX7301
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
void ConfigMax7301Interface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {} 	/* Wait for any SPI Transmissions in progress */
		/* Delay for a maximum of 8 uS; duration of a 16-bit SPI transmission at 2MHZ */
	}
	ConfigSpi(0, 16); 				/* Transmit on falling edge; 16-bit SPI words */		

} /* ConfigDacInterface() */

/******************************************************************************
*	Function:		ConfigMax7301DIO()
*	Desctiption:	This function Configures the DIO ports on the MAX7301 to the  
*					hard-wired states of the Stand Power Distribution board.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		05/21/08  - Original
*
******************************************************************************/
void ConfigMax7301DIO(void)
{
	Max7301Write(0x04, 0x01);	// Exit Shutdown Mode
	Max7301Write(0x09, 0x55);	// Configure P4, P5, P6, and P7 as Outputs
	Max7301Write(0x0a, 0x55);	// Configure P8, P9, P10, and P11 as Outputs
	Max7301Write(0x0b, 0xaa);	// Configure P12, P13, P14, and P15 as Inputs
	Max7301Write(0x0c, 0xaa);	// Configure P16, P17, P18, and P19 as Inputs
	Max7301Write(0x0d, 0x9a);	// Configure P20, P21, and P23 as Inputs; P22 as Output
	Max7301Write(0x0e, 0x55);	// Configure P24, P25, P26, and P27 as Outputs
	Max7301Write(0x0f, 0x55);	// Configure P28, P29, P30, and P31 as Outputs

} /* ConfigMax7301DIO() */

/******************************************************************************
*	Function:		Max7301Write()
*	Desctiption:	This function writes the specified data to the specified  
*					register on the MAX7301.
*
*	Inputs:			Byte Reg:		Selected Register
*					Byte Data:		Specified data
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		05/21/08  - Original
*
******************************************************************************/
void Max7301Write(Byte Reg, Byte Data)
{
	Uint16 Packet;

	Packet = (Reg << 8) | Data;

	while(SpiTxNotReady()) {} 	// Wait for any SPI Transmissions in progress 
	
	Max7301ChipSel(TRUE);		// Assert Chip select 
	
	TxSpi(Packet);
	while(SpiRxNotReady()) {} 	// Wait for complete SPI Transmission 

	Max7301ChipSel(FALSE);		// De-assert Chip select 
	RxSpi();					// Dummy read to clear SPI Rx Interrupt

	
} /* Max7301Write() */

/******************************************************************************
*	Function:		Max7301Input()
*	Desctiption:	This function Reads from the specified location of the MAX7301.
*
*	Inputs:			Uint16 Cmnd: Port or address to read from
*
*	Outputs:		none
*
*	returns:		Uint16:	
*
*	Author:			TI
*
*	History:		05/21/08  - Original
*
******************************************************************************/
Uint16 Max7301Input(Uint16 Cmnd)
{
	Uint16 Data;

	while(SpiTxNotReady()) {} 	// Wait for any SPI Transmissions in progress
	Max7301ChipSel(TRUE);		// Assert Chip select 
	TxSpi(Cmnd);				// Send Command to Read Ports 12 to 19
	while(SpiRxNotReady()) {} 	// Wait for complete SPI Transmission
	Max7301ChipSel(FALSE);		// De-assert Chip select
	RxSpi();					// Dummy Read to clear SPI RX Interrupt
	while(SpiTxNotReady()) {} 	// Wait for any SPI Transmissions in progress
	Max7301ChipSel(TRUE);		// Assert Chip select 
	TxSpi(MAX7103_NO_OP);		// Send No-Op Command to Read Data from MAX7301
	while(SpiRxNotReady()) {} 	// Wait for complete SPI Transmission
	Data = RxSpi();				// Read Data 
	Max7301ChipSel(FALSE);		// De-assert Chip select
	
	return ((Data) & 0xff);

} /* Max7301Input() */

/******************************************************************************
*	Function:		Max7301ChipSel()
*	Desctiption:	This function asserts the MAX7301 Chip select to the specified
*					state.  
*
*	Inputs:			Byte State: Specified state of CS
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		05/21/08  - Original
*
******************************************************************************/

void Max7301ChipSel(Byte State)
{
	if(State)
		GpioDataRegs.GPFCLEAR.bit.GPIOF13 = 1;
	else						
		GpioDataRegs.GPFSET.bit.GPIOF13 = 1;

} /* Max7301ChipSel() */


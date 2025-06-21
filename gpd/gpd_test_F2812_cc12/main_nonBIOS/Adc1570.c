/******************************************************************************
*	File:			Adc1570.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the TLV1570 ADC on 
*					the UUT. It provides methods to Initialize, Configure, and 
*					make ADC conversions on the selected ADC Channels.
*
*	Author:			Tony Iadevaia
*
*	History:		01/20/08 - Original
*					
******************************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "Adc1570.h"

/******************************************************************************
*	Function:		ConfigTlv1570Interface()
*	Desctiption:	This function Configures the SPI interface between the TLV1570
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
*	History:		1/20/08 - Original
*
******************************************************************************/
void ConfigTlv1570Interface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {} 	/* Wait for any SPI Transmissions in progress */
		/* Delay for a maximum of 8 uS; duration of a 16-bit SPI transmission at 2MHZ */
	}
	ConfigSpi(2, 16); 				/* Transmit on rising edge; 16-bit SPI words */	
	
	GpioDataRegs.GPDSET.bit.GPIOD6 = 1;		// SPIFS = HIGH	

} /* ConfigTlv1570Interface() */

/******************************************************************************
*	Function:		Tlv1570Convert()
*	Desctiption:	This function Configures the TLV1570 ADC for conversion.
*
*	Inputs:			Uint16 Chnl:	Channel to select and convert
*
*	Outputs:		none
*
*	returns:		int32			Conversion results from a valid conversion
*									in IQ32 format
*
*	Author:			TI
*
*	History:		1/20/08 - Original
*
******************************************************************************/
int32 Tlv1570Convert(Uint16 Chnl)
{
	Uint16 uTemp;
	float Volts;

	while(SpiTxNotReady()) {} 	// Wait for any SPI Transmissions in progress 
	Tlv1570ChipSel(TRUE);			// Assert Chip Select
	TxSpi(Chnl);
	while(SpiRxNotReady()) {} 	// Wait for complete SPI Transmission
	Tlv1570ChipSel(FALSE);
	uTemp = RxSpi();			// Clear and read SPI RX Buffer

	Volts = ((float)(uTemp & 0x3ff))/1023.0 * 2.5;

	return (int32)(Volts * 65536.0);


} /* Tlv1570Convert() */

/******************************************************************************
*	Function:		Tlv1570ChipSel()
*	Desctiption:	This function Asserts or negates the Chip Select to the 
*					TLV1570 ADC.
*
*	Inputs:			Uint16 State:	Assert or De-assert Chip Select
*
*	Outputs:		none
*
*	returns:		none
*
*	Author:			TI
*
*	History:		1/20/08 - Original
*
******************************************************************************/
void Tlv1570ChipSel(Uint16 State)
{

	if(State) {
		GpioDataRegs.GPDCLEAR.bit.GPIOD0 = 1;			// Set CS_AD LOW
	}
	else {
		GpioDataRegs.GPDSET.bit.GPIOD0  = 1;			// Set CS_AD HIGH
	}

} /* Tlv1570ChipSel() */

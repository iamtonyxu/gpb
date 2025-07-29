/******************************************************************************
*	File:			Eeprom.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the Serial  
*					EEPROM on the Aux PD board. It provides methods to Initialize, 
*					Configure, and test the EEPROM functionality over the SPI Bus.
*
*	Author:			Tony Iadevaia
*
*	History:		9/16/08	- Original 
*					
******************************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "AuxEeprom.h"

/******************************************************************************
*	Function:		ConfigAuxEepromInterface()
*	Desctiption:	This function initializes the SPI interface to the EEPROM.
*					The SPI Bus will be configured for fixed 8-bit transfers.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
void ConfigAuxEepromInterface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {}	/* Wait for any pending transmission */
		/* Delay for 8us; this is the max time to complete an SPI transaction */
	}

	ConfigSpi(0, 8); /* Configure SPI Bus for 8-bit words; Tx on Falling CLK Edge */

} /* ConfigAuxEepromInterface() */

/******************************************************************************
*	Function:		AuxDevNotReady()
*	Desctiption:	This function queries the Status Register of the EEPROM and
*					returns the state of the Write in Process State.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
Uint16 AuxDevNotReady(void)
{
	Uint16 Sts;

	Sts = AuxEepromReadStatus();

	return (Sts & 0x01);

} /* AuxDevNotReady() */

/******************************************************************************
*	Function:		AuxEepromReadStatus()
*	Desctiption:	This function Reads the status register of the serial EEPROM.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint16
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
Uint16 AuxEepromReadStatus(void)
{
	Uint16 RetVal, DataOut;
	DataOut = (RDSR << 8);
	
	GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;	/* Assert AUXEEPROM CS */
	TxSpi(DataOut);							/* Transmit RDSR Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for transmission to complete */
	RetVal = RxSpi();						/* First read is dummy read to clear Int-Flag */
	TxSpi(0x00);							/* perform dummy write to fetch Status from EEPROM */
	while(SpiRxNotReady()) {}				/* wait for transmission to complete */
	RetVal = RxSpi();						/* Read EEPROM Status byte */	
	GpioDataRegs.GPFSET.bit.GPIOF8 = 1;		/* De-Assert AUXEEPROM CS */

	return (RetVal & 0xff);

} /* AuxEepromReadStatus() */

/******************************************************************************
*	Function:		AuxEepromWriteStatus()
*	Desctiption:	This function Writes data to the status register of the 
*					serial EEPROM.
*
*	Inputs:			Uint16 Data; data written to the status register
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/

void AuxEepromWriteStatus(Uint16 Data)
{
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;	/* Assert AUXEEPROM CS */
	TxSpi(FormatSpiTxWord(WRSR, 8));		/* Transmit WRSR Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	TxSpi(FormatSpiTxWord(Data, 8));		/* Transmit Status Data to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF8 = 1;		/* De-Assert AUXEEPROM CS */

} /* EepromWriteStatus() */

/******************************************************************************
*	Function:		AuxEepromWriteEnable()
*	Desctiption:	This function Writes Enables/Disables the serial EEPROM.
*
*	Inputs:			Uint16 State; 	1 - Write Enable EEPROM
*									0 - Write Disable EEPROM
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
void AuxEepromWriteEnable(Uint16 State)
{

	GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;	/* Assert AUXEEPROM CS */	
	if(State) {
		TxSpi(FormatSpiTxWord(WREN, 8));
	}
	else {
		TxSpi(FormatSpiTxWord(WRDI, 8));
	}
	
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF8 = 1;		/* De-Assert AUXEEPROM CS */

} /* AuxEepromWriteEnable() */

/******************************************************************************
*	Function:		AuxEepromWriteByte()
*	Desctiption:	This function Writes a Byte of data to the selected address
*					of the serial EEPROM.
*
*	Inputs:			Uint16 Addr; 	EEPROM Addressed Byte
*					Uint16 Data;	Data written to the selected EEPROM address
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
void AuxEepromWriteByte(Uint16 Addr, Uint16 Data)
{
	
	while(AuxDevNotReady()) {}					/* If Write in Process; wait */

	AuxEepromWriteEnable(TRUE);
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;	/* Assert AUXEEPROM CS */
	TxSpi(FormatSpiTxWord(WRITE, 8));		/* Transmit WRSR Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */	
	TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr Byte to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */		
	TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */	
	TxSpi(FormatSpiTxWord((Data & 0xff), 8)); /* Transmit Data Byte to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF8 = 1;		/* De-Assert AUXEEPROM CS */
	
} /* AuxEepromWriteByte() */

/******************************************************************************
*	Function:		AuxEepromReadByte()
*	Desctiption:	This function Reads a Byte of data from the selected address
*					of the serial EEPROM.
*
*	Inputs:			Uint16 Addr; 	EEPROM Addressed Byte
*
*	Outputs:		none
*
*	returns:		Uint16;			Data read from the selected address
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
Uint16 AuxEepromReadByte(Uint16 Addr)
{
	Uint16 DataRet;

	while(AuxDevNotReady()) {}				/* If Write in Process; wait */
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;	/* Assert AUXEEPROM CS */
	TxSpi(FormatSpiTxWord(READ, 8));		/* Transmit READ Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	DataRet = RxSpi();						/* Clear RX interrupt flag */	
	TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr Byte to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	DataRet = RxSpi();						/* Clear RX interrupt flag */		
	TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	DataRet = RxSpi();						/* Clear RX interrupt flag */	
	TxSpi(0x00); 							/* Transmit dummy data to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	DataRet = RxSpi();						/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF8 = 1;		/* De-Assert AUXEEPROM CS */

	return (DataRet & 0xff);

} /* AuxEepromReadByte() */

/******************************************************************************
*	Function:		AuxEepromTest()
*	Desctiption:	This function Tests the serial EEPROM for address range,
*					and memory bit access. The function zeros out the EEPROM when
*					done.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint16;			0 			- Test Passed
*									1 			- Address Range Test Failed
*									2 or 3 		- Memory Pattern 0x55 Test Failed
*									4 or 6 or 7 - Memory Pattern 0xAA Test Failed
*
*	Author:			TI
*
*	History:		9/16/08 - Original
*
******************************************************************************/
Uint16 AuxEepromTest(Byte *pDoneFlag)
{
	Uint16 idx;
	int Datum = -1;
	Uint16 ErrCnt = 0;
	Uint32 Sum = 0;
	*pDoneFlag = 0;

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(!(idx % 32))
			Datum++;
		AuxEepromWriteByte(idx, Datum);		
	}
	
	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		Sum += AuxEepromReadByte(idx);
	}
	
	if(Sum != 0xff000)
		ErrCnt |= 0x0001;
	else
	    *pDoneFlag |= 0x01;

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		AuxEepromWriteByte(idx, 0x55);

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(AuxEepromReadByte(idx) != 0x55) {
			ErrCnt |= 0x0002;
			break;
		}
	}
	*pDoneFlag |= 0x02;

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		AuxEepromWriteByte(idx, 0xaa);

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(AuxEepromReadByte(idx) != 0xaa) {
			ErrCnt |= 0x0004;
			break;
		}
	}
    *pDoneFlag |= 0x04;

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		AuxEepromWriteByte(idx, 0xff);
    *pDoneFlag |= 0x08;

	return ErrCnt;

} /* AuxEepromTest() */

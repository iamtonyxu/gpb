/******************************************************************************
*	File:			Eeprom.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the Serial  
*					EEPROM on the UUT. It provides methods to Initialize, Configure, 
*					and test the EEPROM functionality over the SPI Bus.
*
*	Author:			Tony Iadevaia
*
*	History:		8/16/07	- Original 
*					
******************************************************************************/
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "Eeprom.h"

/******************************************************************************
*	Function:		ConfigEepromInterface()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
void ConfigEepromInterface(void)
{
	if(SpiTxNotReady()) {
		while(SpiTxNotReady()) {}	/* Wait for any pending transmission */
		/* Delay for 8us; this is the max time to complete an SPI transaction */
	}

	ConfigSpi(0, 8); /* Configure SPI Bus for 8-bit words; Tx on Falling CLK Edge */

} /* ConfigEepromInterface() */

/******************************************************************************
*	Function:		DevNotReady()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 DevNotReady(void)
{
	Uint16 Sts;

	Sts = EepromReadStatus();

	return (Sts & 0x01);

} /* DevNotReady() */

/******************************************************************************
*	Function:		EepromReadStatus()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 EepromReadStatus(void)
{
	Uint16 RetVal, DataOut;
	DataOut = (RDSR << 8);
	
	GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;	/* Assert EEPROM CS */
	TxSpi(DataOut);							/* Transmit RDSR Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for transmission to complete */
	RetVal = RxSpi();						/* First read is dummy read to clear Int-Flag */
	TxSpi(0x00);							/* perform dummy write to fetch Status from EEPROM */
	while(SpiRxNotReady()) {}				/* wait for transmission to complete */
	RetVal = RxSpi();						/* Read EEPROM Status byte */	
	GpioDataRegs.GPFSET.bit.GPIOF3 = 1;		/* De-Assert EEPROM CS */

	return (RetVal & 0xff);

} /* EepromReadStatus() */

/******************************************************************************
*	Function:		EepromWriteStatus()
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
*	History:		8/16/07 - Original
*
******************************************************************************/

void EepromWriteStatus(Uint16 Data)
{
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;	/* Assert EEPROM CS */
	TxSpi(FormatSpiTxWord(WRSR, 8));		/* Transmit WRSR Cmnd to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	TxSpi(FormatSpiTxWord(Data, 8));		/* Transmit Status Data to EEPROM */
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF3 = 1;		/* De-Assert EEPROM CS */

} /* EepromWriteStatus() */

/******************************************************************************
*	Function:		EepromWriteEnable()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
void EepromWriteEnable(Uint16 State)
{

	GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;	/* Assert EEPROM CS */	
	if(State) {
		TxSpi(FormatSpiTxWord(WREN, 8));
	}
	else {
		TxSpi(FormatSpiTxWord(WRDI, 8));
	}
	
	while(SpiRxNotReady()) {}				/* wait for data reception */
	RxSpi();								/* Clear RX interrupt flag */
	GpioDataRegs.GPFSET.bit.GPIOF3 = 1;		/* De-Assert EEPROM CS */

} /* EepromWriteEnable() */

/******************************************************************************
*	Function:		EepromWriteByte()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
void EepromWriteByte(Uint16 Addr, Uint16 Data)
{
	
	while(DevNotReady()) {}					/* If Write in Process; wait */

	EepromWriteEnable(TRUE);
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;	/* Assert EEPROM CS */
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
	GpioDataRegs.GPFSET.bit.GPIOF3 = 1;		/* De-Assert EEPROM CS */
	
} /* EepromWriteByte() */

/******************************************************************************
*	Function:		EepromReadByte()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 EepromReadByte(Uint16 Addr)
{
	Uint16 DataRet;

	while(DevNotReady()) {}					/* If Write in Process; wait */
		
	GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;	/* Assert EEPROM CS */
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
	GpioDataRegs.GPFSET.bit.GPIOF3 = 1;		/* De-Assert EEPROM CS */

	return (DataRet & 0xff);

} /* EepromReadByte() */

/******************************************************************************
*	Function:		EepromTest()
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
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 EepromTest(void)
{
	Uint16 idx;
	int Datum = -1;
	Uint16 ErrCnt = 0;
	Uint32 Sum = 0;

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(!(idx % 32))
			Datum++;
		EepromWriteByte(idx, Datum);		
	}
	
	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		Sum += EepromReadByte(idx);
	}
	
	if(Sum != 0xff000)
		ErrCnt |= 0x0001;

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		EepromWriteByte(idx, 0x55);

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(EepromReadByte(idx) != 0x55) {
			ErrCnt |= 0x0002;
			break;
		}
	}

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		EepromWriteByte(idx, 0xaa);

	for(idx = 0; idx < EEPROM_SIZE; idx++) {
		if(EepromReadByte(idx) != 0xaa) {
			ErrCnt |= 0x0004;
			break;
		}
	}

	for(idx = 0; idx < EEPROM_SIZE; idx++)
		EepromWriteByte(idx, 0x00);

	return ErrCnt;

} /* EepromTest() */

/******************************************************************************
*	Function:		crcCalc32()
*	Desctiption:	This function calculates a 32 bit CRC on the memory range
*					passed with the *MemBlock pointer. The model 
*					parameters for the CRC are Width 4-bytes; Polynomial 0x04C11DB7;
*					Reverse TRUE.
*
*	Inputs:			Byte* MemBlock: Pointer to start of memory block
*					Uint16 Start:	Starting position within the memory block
*					Uint16 End:		Ending position within the memory block
*
*	Outputs:		none
*
*	returns:		Uint32;			32-bit CRC of the memory block
*
*	Author:			TI
*
*	History:		12/12/07 - Original
*
******************************************************************************/
Uint32 crcCalc32(Byte *MemBlock, Uint16 Start, Uint16 End)
{
	Uint32 crc = INIT_CRC32;
	int idx;
	
	for(idx = Start; idx < End; idx += 4) {
		
		crc = crctable[(crc ^ (MemBlock[idx])) & 0xffL] ^ (crc >> 8);
		crc = crctable[(crc ^ (MemBlock[idx + 1])) & 0xffL] ^ (crc >> 8);
		crc = crctable[(crc ^ (MemBlock[idx + 2])) & 0xffL] ^ (crc >> 8);
		crc = crctable[(crc ^ (MemBlock[idx + 3])) & 0xffL] ^ (crc >> 8);
		
	}
	crc ^= CRC32_XOROT;

	return crc;

} /* crcCalc32() */


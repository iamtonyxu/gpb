/******************************************************************************
*	File:			AuxEeprom.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the EEPROM device 
*					driver on the Aux Power Distribution Board.
*
*	Author:			Tony Iadevaia
*	History:
*					9/16/08	- Original 
******************************************************************************/

#ifndef AUXEEPROM_H
#define AUXEEPROM_H

#ifdef __cplusplus
extern "C" {
#endif

#include "Eeprom.h"


void ConfigAuxEepromInterface(void);
Uint16 AuxDevNotReady(void);
Uint16 AuxEepromReadStatus(void);
void AuxEepromWriteStatus(Uint16 Data);
void AuxEepromWriteEnable(Uint16 State);
void AuxEepromWriteByte(Uint16 Addr, Uint16 Data);
Uint16 AuxEepromReadByte(Uint16 Addr);
Uint16 AuxEepromTest(Byte *pDoneFlag);

#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of AUXEEPROM_H definition

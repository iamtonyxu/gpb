/******************************************************************************
*	File:			Max7301.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the MAX7301 device 
*					driver
*
*	Author:			Tony Iadevaia
*	History:
*					5/21/08	- Original 
*	10/23/08 added  MAX7103_WRITE_PORT29 and  MAX7103_WRITE_PORT28_31
******************************************************************************/

#ifndef MAX7301_H
#define MAX7301_H

#ifdef __cplusplus
extern "C" {
#endif

/* Define MAX7103 Write and Read Ports */
#define	MAX7103_NO_OP			0x0000
#define MAX7103_READ_PORT12_19	0xcc00
#define MAX7103_READ_PORT20		0xb400
#define MAX7103_READ_PORT21		0xb500
#define MAX7103_READ_PORT23		0xb700
#define MAX7103_WRITE_PORT24	0x0038
#define MAX7103_WRITE_PORT25	0x0039
#define MAX7103_WRITE_PORT26	0x003a
#define MAX7103_WRITE_PORT27	0x003b		
#define MAX7103_WRITE_PORT29	0x003d		
#define MAX7103_WRITE_PORT28_31	0x005c		

void ConfigMax7301Interface(void);
void ConfigMax7301DIO(void);
void Max7301Write(Byte Port, Byte Data);
Uint16 Max7301Input(Uint16 Cmnd);
void Max7301ChipSel(Byte State);

#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of DAC_H definition

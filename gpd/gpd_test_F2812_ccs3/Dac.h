/******************************************************************************
*	File:			Dac.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the DAC device 
*					driver
*
*	Author:			Tony Iadevaia
*	History:
*					8/16/07	- Original 
******************************************************************************/

#ifndef DAC_H
#define DAC_H

#include "DSP281x_Adc.h"

#ifdef __cplusplus
extern "C" {
#endif



/* Define DAC Channels */
#define	DACA	0	// 0V to 5V DAC Channel
#define	DACB	1	// 0V to 5V DAC Channel
#define DACC	2	// 0V to 5V DAC Channel
#define DACD	3	// 0V to 5V DAC Channel

void ConfigDacInterface(void);
void TxDacData(Uint16 DacChnl, float Volts);
void DacChipSel(Uint16 State);
void DacFrameStart(Uint16 Mode);
void LoadDac(void);


#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of DAC_H definition

/******************************************************************************
*	File:			Ad7663.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the AD7663 ADC
*					device driver.
*
*	Author:			Tony Iadevaia
*	History:
*					12/05/07	- Original 
******************************************************************************/

#ifndef AD7663_H
#define	AD7663_H

#ifdef __cplusplus
extern "C" {
#endif

/* Method that implement the AD7663 Interface */
void Ad7663ConfigInterface(void);
void Ad7663StartConv(void);
Uint16 Ad7663Busy(void);
Uint16 Ad7663Acquire(Uint16 Chnl);
int Ad7663AcquireFast(void);
int Ad7663MuxSelect(Uint16 Chnl);


#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of AD7663_H definition

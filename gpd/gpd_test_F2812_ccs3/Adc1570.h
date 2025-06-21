/******************************************************************************
*	File:			Adc1570.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the TLV1570 device 
*					driver
*
*	Author:			Tony Iadevaia
*	History:
*					1/20/08	- Original 
******************************************************************************/

#ifndef ADC1570_H
#define ADC1570_H


#ifdef __cplusplus
extern "C" {
#endif

/* Define ADC Channels */
#define	ADC0	0x0008	// ADC Channel 0
#define	ADC1	0x0088	// ADC Channel 1
#define ADC2	0x0108	// ADC Channel 2
#define ADC3	0x0188	// ADC Channel 3
#define ADC4	0x0208	// ADC Channel 4
#define ADC5	0x0288	// ADC Channel 5
#define ADC6	0x0308	// ADC Channel 6
#define ADC7	0x0388	// ADC Channel 7


void ConfigTlv1570Interface(void);
void Tlv1570ChipSel(Uint16 State);
int32 Tlv1570Convert(Uint16 Chnl);

#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of ADC1570_H definition

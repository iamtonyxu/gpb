/******************************************************************************
*	File:			DspGpio.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the DSP GPIO 
*					structure definitions. The structures maintain the state
*					of the GPO pins and group the GPI pins together
*
*	Author:			Tony Iadevaia
*	History:
*					8/16/07	- Original 
******************************************************************************/
#ifndef DSPGPIO_H
#define DSPGPIO_H

#ifdef __cplusplus
extern "C" {
#endif

union DspGpOutput {
	Uint16 Word;
	struct {
		Uint16 MODE_A:1;		// GPIOB8
		Uint16 MODE_B:1;		// GPIOB9
		Uint16 SELFTEST_OK:1;	// GPIOF13
		Uint16 FLTREF_CTRL:1;	// GPIOB5
		Uint16 BMHV_ENA:1;		// GPIOA3
		Uint16 BMHV_ENB:1;		// GPIOA14
		Uint16 BEL_CNTL:1;		// GPIOA10
		Uint16 CANRX_LED:1;		// GPIOB6
		Uint16 CANTX_LED:1;		// GPIOB7
		Uint16 MJIL_RST:1;		// GPIOA5
		Uint16 MNIL_RST:1;		// GPIOA4
		Uint16 LOFCLK:1;		// GPIOB4
		Uint16 VAC_ENAB:1;		// GPIOD6
		Uint16 M24V_CTRL:1;		// GPIOA12
		Uint16 RCVRPD:1;		// GPIOA6
		Uint16 RESERVED:1;		// Bit 15
	} Bit;
} DSP_OUT;

union DspGpInput {
	Uint16 Word;
	struct {
		Uint16 VCODE:4;			// GPIOB[0:3]
		Uint16 KLYITRIG_MON:1;	// GPIOB10
		Uint16 ILOIL_MON:1;		// GPIOB11
		Uint16 ILMOD_MON:1;		// GPIOB12
		Uint16 ILKFIL_MON:1;	// GPIOB13
		Uint16 ILHVOC_MON:1;	// GPIOB14
		Uint16 ILHVCB_MON:1;	// GPIOB15
		Uint16 BEAMEN_MON:1;	// GPIOE0
		Uint16 CB24VPG:1;		// GPIOE2
		Uint16 MODTRIG_MON:1;	// GPIOA9
		Uint16 MOD24VPG:1;		// GPIOA11
		Uint16 MODE_FLT:1;		// GPIOA15
		Uint16 KHV_ST:1;		// GPIOD1
	} Bit;
} DSP_IN;


void InitDspGpOutputUnion(void);
void SetDspGpOutputs(Uint16 Data);

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif  // end of DSP281x_GPIO_H definition

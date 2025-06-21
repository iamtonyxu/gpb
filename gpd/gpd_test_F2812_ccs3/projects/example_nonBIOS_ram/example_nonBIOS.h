/**********************************************************************
* File: example_nonBIOS.h
* Device: TMS320F2812
* Author: David M. Alter, Texas Instruments Inc.
* Description: Include file for example non-BIOS project.  Include this
*   file in all C-source files.
* History:
*   09/08/03 - original (based on DSP28 header files v1.00, D. Alter)
**********************************************************************/
#ifndef EXAMPLE_H
#define EXAMPLE_H
//---------------------------------------------------------------------------
// Include Standard C Language Header Files
//
#include <string.h>
//---------------------------------------------------------------------------
// Include any other Header Files
//
#include "DSP281x_DefaultIsr.h"            // ISR definitions (for nonBIOS projects only)
//---------------------------------------------------------------------------
// Function Prototypes
//
extern void DelayUs(Uint16);
extern void SetDBGIER(Uint16);
extern void InitSysCtrl(void);
extern void InitXintf(void);
extern void InitPieCtrl(void);
extern void InitGpio(void);
extern void InitFlash(void);
extern void InitAdc(void);
extern void InitEv(void);
//---------------------------------------------------------------------------
// Global symbols defined in the linker command file
//
extern Uint16 secureRamFuncs_loadstart;
extern Uint16 secureRamFuncs_loadend;
extern Uint16 secureRamFuncs_runstart;
//---------------------------------------------------------------------------
// Global symbols defined in source files
//
extern const struct PIE_VECT_TABLE PieVectTableInit;
//---------------------------------------------------------------------------
#endif  // end of EXAMPLE_H definition
/*** end of file *****************************************************/

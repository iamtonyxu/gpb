/**********************************************************************
* File: Xintf.c
* Devices: TMS320F2812, TMS320F2811, TMS320F2810
* Author: David M. Alter, Texas Instruments Inc.
* Description: This function initializes the External Memory Interface.
*   Do not modify the timings of a zone while accessing that zone.
*   On F2811 and F2810 devices, there is no XINTF peripheral other than
*   the XCLKOUT pin.  This function can still be used to configure
*   XCLKOUT.
* History:
*   09/08/03 - original (based on DSP28 header files v1.00, D. Alter)
**********************************************************************/

#include "DSP281x_Device.h"

// EXAMPLE_BIOS or EXAMPLE_NONBIOS are defined in the CCS project build options
#ifdef EXAMPLE_BIOS
    #include "example_BIOS.h"
#endif

#ifdef EXAMPLE_NONBIOS
    #include "example_nonBIOS.h"
#endif

#define MAX_RAM_SIZE	0x40000
/**********************************************************************
* Function: InitXintf()
*
* Description: Initializes the external memory interface on the F2812.
**********************************************************************/
void InitXintf(void)
{

/*** XINTCNF2 Register ***/
	XintfRegs.XINTCNF2.bit.XTIMCLK = 0;			// XTIMCLK=SYSCLKOUT/1
	XintfRegs.XINTCNF2.bit.CLKOFF = 0;			// XCLKOUT is enabled
	XintfRegs.XINTCNF2.bit.CLKMODE = 1;			// XCLKOUT = XTIMCLK/2

// Make sure write buffer is empty before configuring buffering depth
	while(XintfRegs.XINTCNF2.bit.WLEVEL != 0);	// poll the WLEVEL bit
	XintfRegs.XINTCNF2.bit.WRBUFF = 0;			// No write buffering

/*** XBANK Register ***/
// Example: Assume Zone 7 is slow, so add additional BCYC cycles whenever
// switching from Zone 7 to another Zone.  This will help avoid bus contention.
	XintfRegs.XBANK.bit.BCYC = 7;				// Add 7 cycles
	XintfRegs.XBANK.bit.BANK = 7;				// select zone 7
    
/*** Zone 0 Configuration ***/
	XintfRegs.XTIMING0.bit.X2TIMING = 0;	// Timing scale factor = 1
	XintfRegs.XTIMING0.bit.XSIZE = 3;		// Always write as 11b
	XintfRegs.XTIMING0.bit.READYMODE = 1; 	// XREADY is asynchronous
	XintfRegs.XTIMING0.bit.USEREADY = 0;	// Disable XREADY
	XintfRegs.XTIMING0.bit.XRDLEAD = 1;		// Read lead time
	XintfRegs.XTIMING0.bit.XRDACTIVE = 2;	// Read active time
	XintfRegs.XTIMING0.bit.XRDTRAIL = 0;	// Read trail time
	XintfRegs.XTIMING0.bit.XWRLEAD = 1;		// Write lead time
	XintfRegs.XTIMING0.bit.XWRACTIVE = 2;	// Write active time
	XintfRegs.XTIMING0.bit.XWRTRAIL = 0;	// Write trail time

/*** Zone 1 Configuration ***/
	XintfRegs.XTIMING1.bit.X2TIMING = 0;	// Timing scale factor = 1
	XintfRegs.XTIMING1.bit.XSIZE = 3;		// Always write as 11b
	XintfRegs.XTIMING1.bit.READYMODE = 1; 	// XREADY is asynchronous
	XintfRegs.XTIMING1.bit.USEREADY = 0;	// Disable XREADY
	XintfRegs.XTIMING1.bit.XRDLEAD = 1;		// Read lead time
	XintfRegs.XTIMING1.bit.XRDACTIVE = 2;	// Read active time
	XintfRegs.XTIMING1.bit.XRDTRAIL = 0;	// Read trail time
	XintfRegs.XTIMING1.bit.XWRLEAD = 1;		// Write lead time
	XintfRegs.XTIMING1.bit.XWRACTIVE = 2;	// Write active time
	XintfRegs.XTIMING1.bit.XWRTRAIL = 0;	// Write trail time

/*** Zone 2 Configuration ***/
	XintfRegs.XTIMING2.bit.X2TIMING = 0;	// Timing scale factor = 1
	XintfRegs.XTIMING2.bit.XSIZE = 3;		// Always write as 11b
	XintfRegs.XTIMING2.bit.READYMODE = 1; 	// XREADY is asynchronous
	XintfRegs.XTIMING2.bit.USEREADY = 0;	// Disable XREADY
	XintfRegs.XTIMING2.bit.XRDLEAD = 1;		// Read lead time
	XintfRegs.XTIMING2.bit.XRDACTIVE = 2;	// Read active time
	XintfRegs.XTIMING2.bit.XRDTRAIL = 0;	// Read trail time
	XintfRegs.XTIMING2.bit.XWRLEAD = 1;		// Write lead time
	XintfRegs.XTIMING2.bit.XWRACTIVE = 2;	// Write active time
	XintfRegs.XTIMING2.bit.XWRTRAIL = 0;	// Write trail time

/*** Zone 6 Configuration ***/
	XintfRegs.XTIMING6.bit.X2TIMING = 0;	// Timing scale factor = 1
	XintfRegs.XTIMING6.bit.XSIZE = 3;		// Always write as 11b
	XintfRegs.XTIMING6.bit.READYMODE = 1; 	// XREADY is asynchronous
	XintfRegs.XTIMING6.bit.USEREADY = 0;	// Disable XREADY
	XintfRegs.XTIMING6.bit.XRDLEAD = 1;		// Read lead time
	XintfRegs.XTIMING6.bit.XRDACTIVE = 2;	// Read active time
	XintfRegs.XTIMING6.bit.XRDTRAIL = 0;	// Read trail time
	XintfRegs.XTIMING6.bit.XWRLEAD = 1;		// Write lead time
	XintfRegs.XTIMING6.bit.XWRACTIVE = 2;	// Write active time
	XintfRegs.XTIMING6.bit.XWRTRAIL = 0;	// Write trail time

/*** Zone 7 Configuration ***/
	XintfRegs.XTIMING7.bit.X2TIMING = 0;	// Timing scale factor = 1
	XintfRegs.XTIMING7.bit.XSIZE = 3;		// Always write as 11b
	XintfRegs.XTIMING7.bit.READYMODE = 1; 	// XREADY is asynchronous
	XintfRegs.XTIMING7.bit.USEREADY = 0;	// Disable XREADY
	XintfRegs.XTIMING7.bit.XRDLEAD = 1;		// Read lead time
	XintfRegs.XTIMING7.bit.XRDACTIVE = 2;	// Read active time
	XintfRegs.XTIMING7.bit.XRDTRAIL = 0;	// Read trail time
	XintfRegs.XTIMING7.bit.XWRLEAD = 1;		// Write lead time
	XintfRegs.XTIMING7.bit.XWRACTIVE = 2;	// Write active time
	XintfRegs.XTIMING7.bit.XWRTRAIL = 0;	// Write trail time

/*** Force a complete pipeline flush to ensure that the write to the last register
     configured occurs before returning.  Safest thing to do is wait 8 full cycles.
***/
	asm(" RPT #6 || NOP");


} //end of InitXintf()

/******************************************************************************
*	Function:		TestRam()
*	Desctiption:	This function performs a complete test on the external SRAM  
*					(U19). The tests performed are: Address Bus Integrity, Data 
*					Bus Integrity, and Array Write/Read.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint16:	 	Error Code
*									0	- Test passed
*									1	- Address Bus Test Failed
*									2	- Data Bus Test Failed
*									4	- Array Test Failed pattern 0xaaaa
*									8	- Array Test Failed pattern 0x5555
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint16 TestRam(void)
{
	Uint32 idx, Cnt;
	Uint16 ErrCnt = 0;
	volatile Uint16 * ExMem = &XINTF_ZONE6;

	/* Address Bus Test */
	Cnt = 0;
	for(idx = 1; idx <= MAX_RAM_SIZE; idx <<= 1)
		ExMem[idx] = Cnt++;

	Cnt = 0;
	for(idx = 1; idx <= MAX_RAM_SIZE; idx <<= 1) {
		if(ExMem[idx] != Cnt++) {
			ErrCnt |= 0x0001;
			break;
		}
	}

	/* Data Bus Test */
	Cnt = 0;
	for(idx = 1; idx < MAX_RAM_SIZE/4; idx <<= 1)
		ExMem[Cnt++] = idx;

	Cnt = 0;
	for(idx = 1; idx < MAX_RAM_SIZE/4; idx <<= 1) {
		if(ExMem[Cnt++] != idx) {
			ErrCnt|= 0x0002;
			break;
		}
	}

	/* Full Data Array Test */
	for(idx = 0; idx < MAX_RAM_SIZE; idx++) {
		ExMem[idx] = 0xaaaa;
	}

	for(idx = 0; idx < MAX_RAM_SIZE; idx++) {
		if(ExMem[idx] != 0xaaaa) {
			ErrCnt |= 0x0004;
			break;
		}
	}
	for(idx = 0; idx < MAX_RAM_SIZE; idx++) {
		ExMem[idx] = 0x5555;
	}

	for(idx = 0; idx < MAX_RAM_SIZE; idx++) {
		if(ExMem[idx] != 0x5555) {
			ErrCnt |= 0x0008;
			break;
		}
	}

	return ErrCnt;

} /* TestRam() */

/******************************************************************************
*	Function:		ZeroRam()
*	Desctiption:	This function zeroes out the external SRAM (U19). 
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		none
*
*	Author:			TI
*
*	History:		12/16/07 - Original
*
******************************************************************************/
void ZeroRam(void)
{
	Uint32 idx;
	volatile Uint16 * ExMem = &XINTF_ZONE6;

	for(idx = 0; idx < MAX_RAM_SIZE; idx++)
		ExMem[idx] = 0x0000;

} // ZeroRam()

/******************************************************************************
*	Function:		WriteCpld()
*	Desctiption:	This function Writes a Byte of data to the specified Address
*					of the CPLD. 
*
*	Inputs:			Uint16 Addr:	Selected Address
*					Byte Data:		Data to write to the selected Address
*
*	Outputs:		none
*
*	returns:		none
*
*	Author:			TI
*
*	History:		01/16/08 - Original
*
******************************************************************************/
void WriteCpld(Uint16 Addr, Byte Data)
{
	volatile Byte *Cpld = &XINTF_ZONE0;

	Cpld[Addr] = Data;


} // WriteCpld()

/******************************************************************************
*	Function:		ReadCpld()
*	Desctiption:	This function Reads a Byte of data from the specified Address
*					of the CPLD. 
*
*	Inputs:			Uint16 Addr:	Selected Address
*
*	Outputs:		none
*
*	returns:		Byte: Data read from selected address of CPLD
*
*	Author:			TI
*
*	History:		01/16/08 - Original
*
******************************************************************************/
Byte ReadCpld(Uint16 Addr)
{
	volatile Byte *Cpld = &XINTF_ZONE0;

	return Cpld[Addr];


} // ReadCpld()

/*** end of file *****************************************************/	

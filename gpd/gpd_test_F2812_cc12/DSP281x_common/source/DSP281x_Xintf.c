// TI File $Revision: /main/3 $
// Checkin $Date: April 23, 2007   09:10:16 $
//###########################################################################
//
// FILE:   DSP281x_Xintf.c
//
// TITLE:   DSP281x Device External Interface Init & Support Functions.
//
// DESCRIPTION:
//
//          Example initialization function for the external interface (XINTF).
//          This example configures the XINTF to its default state.  For an
//          example of how this function can be modified to configure the XINTF
//          for use with the F2812 eZdsp, refer to the examples/run_from_xintf
//          project.
//
//###########################################################################
// $TI Release: DSP281x C/C++ Header Files V1.20 $
// $Release Date: July 27, 2009 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define MAX_RAM_SIZE    0x40000

//---------------------------------------------------------------------------
// InitXINTF:
//---------------------------------------------------------------------------
// This function initializes the External Interface the default reset state.
//
// Do not modify the timings of the XINTF while running from the XINTF.  Doing
// so can yield unpredictable results

#if 0
void InitXintf(void)
{

#if DSP28_F2812

    // This shows how to write to the XINTF registers.  The
    // values used here are the default state after reset.
    // Different hardware will require a different configuration.

    // For an example of an XINTF configuration used with the
    // F2812 eZdsp, refer to the examples/run_from_xintf project.

    // Any changes to XINTF timing should only be made by code
    // running outside of the XINTF.

    // All Zones---------------------------------
    // Timing for all zones based on XTIMCLK = 1/2 SYSCLKOUT
    XintfRegs.XINTCNF2.bit.XTIMCLK = 1;
    // No write buffering
    XintfRegs.XINTCNF2.bit.WRBUFF = 0;
    // XCLKOUT is enabled
    XintfRegs.XINTCNF2.bit.CLKOFF = 0;
    // XCLKOUT = XTIMCLK/2
    XintfRegs.XINTCNF2.bit.CLKMODE = 1;


    // Zone 0------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING0.bit.XWRLEAD = 3;
    XintfRegs.XTIMING0.bit.XWRACTIVE = 7;
    XintfRegs.XTIMING0.bit.XWRTRAIL = 3;
    // Zone read timing
    XintfRegs.XTIMING0.bit.XRDLEAD = 3;
    XintfRegs.XTIMING0.bit.XRDACTIVE = 7;
    XintfRegs.XTIMING0.bit.XRDTRAIL = 3;

    // double all Zone read/write lead/active/trail timing
    XintfRegs.XTIMING0.bit.X2TIMING = 1;

    // Zone will sample XREADY signal
    XintfRegs.XTIMING0.bit.USEREADY = 1;
    XintfRegs.XTIMING0.bit.READYMODE = 1;  // sample asynchronous

    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING0.bit.XSIZE = 3;

    // Zone 1------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING1.bit.XWRLEAD = 3;
    XintfRegs.XTIMING1.bit.XWRACTIVE = 7;
    XintfRegs.XTIMING1.bit.XWRTRAIL = 3;
    // Zone read timing
    XintfRegs.XTIMING1.bit.XRDLEAD = 3;
    XintfRegs.XTIMING1.bit.XRDACTIVE = 7;
    XintfRegs.XTIMING1.bit.XRDTRAIL = 3;

    // double all Zone read/write lead/active/trail timing
    XintfRegs.XTIMING1.bit.X2TIMING = 1;

    // Zone will sample XREADY signal
    XintfRegs.XTIMING1.bit.USEREADY = 1;
    XintfRegs.XTIMING1.bit.READYMODE = 1;  // sample asynchronous

    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING1.bit.XSIZE = 3;

    // Zone 2------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING2.bit.XWRLEAD = 3;
    XintfRegs.XTIMING2.bit.XWRACTIVE = 7;
    XintfRegs.XTIMING2.bit.XWRTRAIL = 3;
    // Zone read timing
    XintfRegs.XTIMING2.bit.XRDLEAD = 3;
    XintfRegs.XTIMING2.bit.XRDACTIVE = 7;
    XintfRegs.XTIMING2.bit.XRDTRAIL = 3;

    // double all Zone read/write lead/active/trail timing
    XintfRegs.XTIMING2.bit.X2TIMING = 1;

    // Zone will sample XREADY signal
    XintfRegs.XTIMING2.bit.USEREADY = 1;
    XintfRegs.XTIMING2.bit.READYMODE = 1;  // sample asynchronous

    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING2.bit.XSIZE = 3;


    // Zone 6------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING6.bit.XWRLEAD = 3;
    XintfRegs.XTIMING6.bit.XWRACTIVE = 7;
    XintfRegs.XTIMING6.bit.XWRTRAIL = 3;
    // Zone read timing
    XintfRegs.XTIMING6.bit.XRDLEAD = 3;
    XintfRegs.XTIMING6.bit.XRDACTIVE = 7;
    XintfRegs.XTIMING6.bit.XRDTRAIL = 3;

    // double all Zone read/write lead/active/trail timing
    XintfRegs.XTIMING6.bit.X2TIMING = 1;

    // Zone will sample XREADY signal
    XintfRegs.XTIMING6.bit.USEREADY = 1;
    XintfRegs.XTIMING6.bit.READYMODE = 1;  // sample asynchronous

    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING6.bit.XSIZE = 3;


    // Zone 7------------------------------------
    // When using ready, ACTIVE must be 1 or greater
    // Lead must always be 1 or greater
    // Zone write timing
    XintfRegs.XTIMING7.bit.XWRLEAD = 3;
    XintfRegs.XTIMING7.bit.XWRACTIVE = 7;
    XintfRegs.XTIMING7.bit.XWRTRAIL = 3;
    // Zone read timing
    XintfRegs.XTIMING7.bit.XRDLEAD = 3;
    XintfRegs.XTIMING7.bit.XRDACTIVE = 7;
    XintfRegs.XTIMING7.bit.XRDTRAIL = 3;

    // double all Zone read/write lead/active/trail timing
    XintfRegs.XTIMING7.bit.X2TIMING = 1;

    // Zone will sample XREADY signal
    XintfRegs.XTIMING7.bit.USEREADY = 1;
    XintfRegs.XTIMING7.bit.READYMODE = 1;  // sample asynchronous

    // Size must be 1,1 - other values are reserved
    XintfRegs.XTIMING7.bit.XSIZE = 3;

    // Bank switching
    // Assume Zone 7 is slow, so add additional BCYC cycles
    // when ever switching from Zone 7 to another Zone.
    // This will help avoid bus contention.
    XintfRegs.XBANK.bit.BANK = 7;
    XintfRegs.XBANK.bit.BCYC = 7;

   //Force a pipeline flush to ensure that the write to
   //the last register configured occurs before returning.

   asm(" RPT #7 || NOP");

    #endif
}
#else
/**********************************************************************
* Function: InitXintf()
*
* Description: Initializes the external memory interface on the F2812.
**********************************************************************/
void InitXintf(void)
{

/*** XINTCNF2 Register ***/
    XintfRegs.XINTCNF2.bit.XTIMCLK = 0;         // XTIMCLK=SYSCLKOUT/1
    XintfRegs.XINTCNF2.bit.CLKOFF = 0;          // XCLKOUT is enabled
    XintfRegs.XINTCNF2.bit.CLKMODE = 1;         // XCLKOUT = XTIMCLK/2

// Make sure write buffer is empty before configuring buffering depth
    while(XintfRegs.XINTCNF2.bit.WLEVEL != 0);  // poll the WLEVEL bit
    XintfRegs.XINTCNF2.bit.WRBUFF = 0;          // No write buffering

/*** XBANK Register ***/
// Example: Assume Zone 7 is slow, so add additional BCYC cycles whenever
// switching from Zone 7 to another Zone.  This will help avoid bus contention.
    XintfRegs.XBANK.bit.BCYC = 7;               // Add 7 cycles
    XintfRegs.XBANK.bit.BANK = 7;               // select zone 7

/*** Zone 0 Configuration ***/
    XintfRegs.XTIMING0.bit.X2TIMING = 0;    // Timing scale factor = 1
    XintfRegs.XTIMING0.bit.XSIZE = 3;       // Always write as 11b
    XintfRegs.XTIMING0.bit.READYMODE = 1;   // XREADY is asynchronous
    XintfRegs.XTIMING0.bit.USEREADY = 0;    // Disable XREADY
    XintfRegs.XTIMING0.bit.XRDLEAD = 1;     // Read lead time
    XintfRegs.XTIMING0.bit.XRDACTIVE = 2;   // Read active time
    XintfRegs.XTIMING0.bit.XRDTRAIL = 0;    // Read trail time
    XintfRegs.XTIMING0.bit.XWRLEAD = 1;     // Write lead time
    XintfRegs.XTIMING0.bit.XWRACTIVE = 2;   // Write active time
    XintfRegs.XTIMING0.bit.XWRTRAIL = 0;    // Write trail time

/*** Zone 1 Configuration ***/
    XintfRegs.XTIMING1.bit.X2TIMING = 0;    // Timing scale factor = 1
    XintfRegs.XTIMING1.bit.XSIZE = 3;       // Always write as 11b
    XintfRegs.XTIMING1.bit.READYMODE = 1;   // XREADY is asynchronous
    XintfRegs.XTIMING1.bit.USEREADY = 0;    // Disable XREADY
    XintfRegs.XTIMING1.bit.XRDLEAD = 1;     // Read lead time
    XintfRegs.XTIMING1.bit.XRDACTIVE = 2;   // Read active time
    XintfRegs.XTIMING1.bit.XRDTRAIL = 0;    // Read trail time
    XintfRegs.XTIMING1.bit.XWRLEAD = 1;     // Write lead time
    XintfRegs.XTIMING1.bit.XWRACTIVE = 2;   // Write active time
    XintfRegs.XTIMING1.bit.XWRTRAIL = 0;    // Write trail time

/*** Zone 2 Configuration ***/
    XintfRegs.XTIMING2.bit.X2TIMING = 0;    // Timing scale factor = 1
    XintfRegs.XTIMING2.bit.XSIZE = 3;       // Always write as 11b
    XintfRegs.XTIMING2.bit.READYMODE = 1;   // XREADY is asynchronous
    XintfRegs.XTIMING2.bit.USEREADY = 0;    // Disable XREADY
    XintfRegs.XTIMING2.bit.XRDLEAD = 1;     // Read lead time
    XintfRegs.XTIMING2.bit.XRDACTIVE = 2;   // Read active time
    XintfRegs.XTIMING2.bit.XRDTRAIL = 0;    // Read trail time
    XintfRegs.XTIMING2.bit.XWRLEAD = 1;     // Write lead time
    XintfRegs.XTIMING2.bit.XWRACTIVE = 2;   // Write active time
    XintfRegs.XTIMING2.bit.XWRTRAIL = 0;    // Write trail time

/*** Zone 6 Configuration ***/
    XintfRegs.XTIMING6.bit.X2TIMING = 0;    // Timing scale factor = 1
    XintfRegs.XTIMING6.bit.XSIZE = 3;       // Always write as 11b
    XintfRegs.XTIMING6.bit.READYMODE = 1;   // XREADY is asynchronous
    XintfRegs.XTIMING6.bit.USEREADY = 0;    // Disable XREADY
    XintfRegs.XTIMING6.bit.XRDLEAD = 1;     // Read lead time
    XintfRegs.XTIMING6.bit.XRDACTIVE = 2;   // Read active time
    XintfRegs.XTIMING6.bit.XRDTRAIL = 0;    // Read trail time
    XintfRegs.XTIMING6.bit.XWRLEAD = 1;     // Write lead time
    XintfRegs.XTIMING6.bit.XWRACTIVE = 2;   // Write active time
    XintfRegs.XTIMING6.bit.XWRTRAIL = 0;    // Write trail time

/*** Zone 7 Configuration ***/
    XintfRegs.XTIMING7.bit.X2TIMING = 0;    // Timing scale factor = 1
    XintfRegs.XTIMING7.bit.XSIZE = 3;       // Always write as 11b
    XintfRegs.XTIMING7.bit.READYMODE = 1;   // XREADY is asynchronous
    XintfRegs.XTIMING7.bit.USEREADY = 0;    // Disable XREADY
    XintfRegs.XTIMING7.bit.XRDLEAD = 1;     // Read lead time
    XintfRegs.XTIMING7.bit.XRDACTIVE = 2;   // Read active time
    XintfRegs.XTIMING7.bit.XRDTRAIL = 0;    // Read trail time
    XintfRegs.XTIMING7.bit.XWRLEAD = 1;     // Write lead time
    XintfRegs.XTIMING7.bit.XWRACTIVE = 2;   // Write active time
    XintfRegs.XTIMING7.bit.XWRTRAIL = 0;    // Write trail time

/*** Force a complete pipeline flush to ensure that the write to the last register
     configured occurs before returning.  Safest thing to do is wait 8 full cycles.
***/
    asm(" RPT #6 || NOP");


} //end of InitXintf()
#endif

/******************************************************************************
*   Function:       TestRam()
*   Desctiption:    This function performs a complete test on the external SRAM
*                   (U19). The tests performed are: Address Bus Integrity, Data
*                   Bus Integrity, and Array Write/Read.
*
*   Inputs:         none
*
*   Outputs:        none
*
*   returns:        Uint16:     Error Code
*                                   0   - Test passed
*                                   1   - Address Bus Test Failed
*                                   2   - Data Bus Test Failed
*                                   4   - Array Test Failed pattern 0xaaaa
*                                   8   - Array Test Failed pattern 0x5555
*
*   Author:         TI
*
*   History:        8/16/07 - Original
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
*   Function:       ZeroRam()
*   Desctiption:    This function zeroes out the external SRAM (U19).
*
*   Inputs:         none
*
*   Outputs:        none
*
*   returns:        none
*
*   Author:         TI
*
*   History:        12/16/07 - Original
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
*   Function:       WriteCpld()
*   Desctiption:    This function Writes a Byte of data to the specified Address
*                   of the CPLD.
*
*   Inputs:         Uint16 Addr:    Selected Address
*                   Byte Data:      Data to write to the selected Address
*
*   Outputs:        none
*
*   returns:        none
*
*   Author:         TI
*
*   History:        01/16/08 - Original
*
******************************************************************************/
void WriteCpld(Uint16 Addr, Byte Data)
{
    volatile Byte *Cpld = &XINTF_ZONE0;

    Cpld[Addr] = Data;


} // WriteCpld()

/******************************************************************************
*   Function:       ReadCpld()
*   Desctiption:    This function Reads a Byte of data from the specified Address
*                   of the CPLD.
*
*   Inputs:         Uint16 Addr:    Selected Address
*
*   Outputs:        none
*
*   returns:        Byte: Data read from selected address of CPLD
*
*   Author:         TI
*
*   History:        01/16/08 - Original
*
******************************************************************************/
Byte ReadCpld(Uint16 Addr)
{
    volatile Byte *Cpld = &XINTF_ZONE0;

    return Cpld[Addr];


} // ReadCpld()

//===========================================================================
// No more.
//===========================================================================

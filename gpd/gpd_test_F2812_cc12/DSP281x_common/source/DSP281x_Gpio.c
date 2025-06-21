// TI File $Revision: /main/2 $
// Checkin $Date: April 29, 2005   11:10:14 $
//###########################################################################
//
// FILE:	DSP281x_Gpio.c
//
// TITLE:	DSP281x General Purpose I/O Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP281x C/C++ Header Files V1.20 $
// $Release Date: July 27, 2009 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

//---------------------------------------------------------------------------
// InitGpio: 
//---------------------------------------------------------------------------
// This function Initializes the shared GPIO pins on the F281x.
//
void InitGpio(void)
{
    //Enable EALLOW protected register access
    EALLOW;
    /*** Group A pins ***/
    GpioMuxRegs.GPAQUAL.all=0x0000;                 // Input qualifier disabled
    GpioMuxRegs.GPADIR.all = 0xfeff;                // All group A GPIO are Outputs except A8

    GpioMuxRegs.GPAMUX.bit.C3TRIP_GPIOA15  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.C2TRIP_GPIOA14  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.C1TRIP_GPIOA13  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.TCLKINA_GPIOA12 = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.TDIRA_GPIOA11   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.CAP3QI1_GPIOA10 = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.CAP2Q2_GPIOA9   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.CAP1Q1_GPIOA8   = 0;     // 1: select GPIO function
    GpioMuxRegs.GPAMUX.bit.T2PWM_GPIOA7    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.T1PWM_GPIOA6    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM6_GPIOA5     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM5_GPIOA4     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM4_GPIOA3     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM3_GPIOA2     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM2_GPIOA1     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPAMUX.bit.PWM1_GPIOA0     = 0;     // 1: select GPIO function

    GpioDataRegs.GPASET.bit.GPIOA0 = 1;             // Set CPU_STS1 HIGH
    GpioDataRegs.GPASET.bit.GPIOA1 = 1;             // Set CPU_STS2 HIGH
    GpioDataRegs.GPASET.bit.GPIOA2 = 1;             // Set CPU_STS3 HIGH
    GpioDataRegs.GPACLEAR.bit.GPIOA4  = 1;          // Set RESET#_CPLD LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA3  = 1;          // Set CPLD_PWR LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA5 = 1;           // Set DO_A16 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA6 = 1;           // Set DO_A30 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA7 = 1;           // Set DO_A31 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;           // Set DO_A17 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA10 = 1;          // Set DO_A18 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA11 = 1;          // Set DO_A19 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA12 = 1;          // Set DO_A20 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA13 = 1;          // Set DO_A21 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA14 = 1;          // Set DO_A22 LOW
    GpioDataRegs.GPACLEAR.bit.GPIOA15 = 1;          // Set DO_A23 LOW

    /*** Group B pins ***/
    GpioMuxRegs.GPBQUAL.all = 0x0000;               // Input qualifier disabled
    GpioMuxRegs.GPBDIR.all = 0x00ff;                // Config group B GPIO inputs and outputs

    GpioMuxRegs.GPBMUX.bit.C6TRIP_GPIOB15  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.C5TRIP_GPIOB14  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.C4TRIP_GPIOB13  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.TCLKINB_GPIOB12 = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.TDIRB_GPIOB11   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.CAP6QI2_GPIOB10 = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.CAP5Q2_GPIOB9   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.CAP4Q1_GPIOB8   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.T4PWM_GPIOB7    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.T3PWM_GPIOB6    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM11_GPIOB4    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM10_GPIOB3    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM9_GPIOB2     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM8_GPIOB1     = 0;     // 0: select GPIO function
    GpioMuxRegs.GPBMUX.bit.PWM7_GPIOB0     = 0;     // 0: select GPIO function

    GpioDataRegs.GPBCLEAR.bit.GPIOB0  = 1;          // Set DO_A24 LOW
    GpioDataRegs.GPBCLEAR.bit.GPIOB1  = 1;          // Set DO_A25 LOW
    GpioDataRegs.GPBCLEAR.bit.GPIOB2  = 1;          // Set DO_A26 LOW
    GpioDataRegs.GPBCLEAR.bit.GPIOB3  = 1;          // Set DO_A27 LOW
    GpioDataRegs.GPBCLEAR.bit.GPIOB4  = 1;          // Set DO_A28 LOW
    GpioDataRegs.GPBCLEAR.bit.GPIOB5  = 1;          // Set DO_A29 LOW

    /*** Group D pins ***/
    GpioMuxRegs.GPDQUAL.all=0x0000;                 // Input qualifier disabled
    GpioMuxRegs.GPDDIR.all = 0x0063;                // Group D GPIO inputs and outputs


    GpioMuxRegs.GPDMUX.bit.T4CTRIP_SOCB_GPIOD6 = 0; // 0: select GPIO function
    GpioMuxRegs.GPDMUX.bit.T3CTRIP_PDPB_GPIOD5 = 0; // 0: select GPIO function
    GpioMuxRegs.GPDMUX.bit.T2CTRIP_SOCA_GPIOD1 = 0; // 0: select GPIO function
    GpioMuxRegs.GPDMUX.bit.T1CTRIP_PDPA_GPIOD0 = 0; // 0: select GPIO function

    GpioDataRegs.GPDSET.bit.GPIOD0  = 1;            // Set CS_AD HIGH
    GpioDataRegs.GPDSET.bit.GPIOD1  = 1;            // Set CS_DA HIGH
    GpioDataRegs.GPDSET.bit.GPIOD5  = 1;            // Set LD_DA HIGH
    GpioDataRegs.GPDCLEAR.bit.GPIOD6  = 1;          // Set SPIFS LOW

    /*** Group E pins ***/
    GpioMuxRegs.GPEQUAL.all=0x0000;                 // Input qualifier disabled
    GpioMuxRegs.GPEDIR.all = 0x0004;                // All group E GPIO are inputs except E2

    GpioMuxRegs.GPEMUX.bit.XNMI_XINT13_GPIOE2  = 0; // 0: select GPIO function
    GpioMuxRegs.GPEMUX.bit.XINT2_ADCSOC_GPIOE1 = 0; // 0: select GPIO function
    GpioMuxRegs.GPEMUX.bit.XINT1_XBIO_GPIOE0   = 0; // 0: select GPIO function

    GpioDataRegs.GPECLEAR.bit.GPIOE2  = 1;          // Set DSPTEST LOW

    /*** Group F pins ***/
    GpioMuxRegs.GPFDIR.all = 0x3f8D;                // Config group F GPIO inputs and outputs

    GpioMuxRegs.GPFMUX.bit.XF_GPIOF14      = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MDRA_GPIOF13    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MDXA_GPIOF12    = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MFSRA_GPIOF11   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MFSXA_GPIOF10   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MCLKRA_GPIOF9   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.MCLKXA_GPIOF8   = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.CANRXA_GPIOF7   = 1;     // 1: select Peripheral function
    GpioMuxRegs.GPFMUX.bit.CANTXA_GPIOF6   = 1;     // 1: select Peripheral function
    GpioMuxRegs.GPFMUX.bit.SCIRXDA_GPIOF5  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.SCITXDA_GPIOF4  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.SPISTEA_GPIOF3  = 0;     // 0: select GPIO function
    GpioMuxRegs.GPFMUX.bit.SPICLKA_GPIOF2  = 1;     // 1: select Periperal function
    GpioMuxRegs.GPFMUX.bit.SPISOMIA_GPIOF1 = 1;     // 1: select Periperal function
    GpioMuxRegs.GPFMUX.bit.SPISIMOA_GPIOF0 = 1;     // 1: select Periperal function

    GpioMuxRegs.GPFDIR.bit.GPIOF3 = 1;              // 1; GPIOF3 is Output (Connected to CS on SEEPROM)
    GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             // 1; set GPIOF3 (CS not active)
    GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             // 1; set GPIOF8 (CS0 not active)
    GpioMuxRegs.GPFDIR.bit.GPIOF13 = 1;             // 1; GPIOF13 is Output
    GpioDataRegs.GPFCLEAR.bit.GPIOF13 = 1;


    /*** Group G pins ***/
    GpioMuxRegs.GPGDIR.all = 0x0010;                // Config group G GPIO Inputs and Outputs

    GpioMuxRegs.GPGMUX.bit.SCIRXDB_GPIOG5  = 0;     // 1: select GPIO function
    GpioMuxRegs.GPGMUX.bit.SCITXDB_GPIOG4  = 0;     // 1: select GPIO function

    // Finish up
    EDIS;

}	
	
/******************************************************************************
*   Function:       WriteDspDO_A()
*   Desctiption:    This function configures the DSP DO_A[31..16] digital output
*                   bus.
*
*   Inputs:         Uint16 Data; Bit weighed field where the LSB corresponds to
*                                DO_A[16] and the MSB to DO_A[31]
*
*   Outputs:        none
*
*   returns:        void
*
*   Author:         TI
*
*   History:        1/21/08 - Original
*
******************************************************************************/
void WriteDspDO_A(unsigned int Data)
{
    if(Data & 0x0001)
        GpioDataRegs.GPASET.bit.GPIOA5 = 1;     // Set DO_A[16]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA5 = 1;   // Clear DO_A[16]
    if(Data & 0x0002)
        GpioDataRegs.GPASET.bit.GPIOA9 = 1;     // Set DO_A[17]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;   // Clear DO_A[17]

    if(Data & 0x0004)
        GpioDataRegs.GPASET.bit.GPIOA10 = 1;    // Set DO_A[18]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA10 = 1;  // Clear DO_A[18]

    if(Data & 0x0008)
        GpioDataRegs.GPASET.bit.GPIOA11 = 1;    // Set DO_A[19]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA11 = 1;  // Clear DO_A[19]

    if(Data & 0x0010)
        GpioDataRegs.GPASET.bit.GPIOA12 = 1;    // Set DO_A[20]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA12 = 1;  // Clear DO_A[20]

    if(Data & 0x0020)
        GpioDataRegs.GPASET.bit.GPIOA13 = 1;    // Set DO_A[21]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA13 = 1;  // Clear DO_A[21]

    if(Data & 0x0040)
        GpioDataRegs.GPASET.bit.GPIOA14 = 1;    // Set DO_A[22]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA14 = 1;  // Clear DO_A[22]

    if(Data & 0x0080)
        GpioDataRegs.GPASET.bit.GPIOA15 = 1;    // Set DO_A[23]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA15 = 1;  // Clear DO_A[23]

    if(Data & 0x0100)
        GpioDataRegs.GPBSET.bit.GPIOB0 = 1;     // Set DO_A[24]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB0 = 1;   // Clear DO_A[24]

    if(Data & 0x0200)
        GpioDataRegs.GPBSET.bit.GPIOB1 = 1;     // Set DO_A[25]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // Clear DO_A[25]

    if(Data & 0x0400)
        GpioDataRegs.GPBSET.bit.GPIOB2 = 1;     // Set DO_A[26]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // Clear DO_A[26]

    if(Data & 0x0800)
        GpioDataRegs.GPBSET.bit.GPIOB3 = 1;     // Set DO_A[27]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1;   // Clear DO_A[27]

    if(Data & 0x1000)
        GpioDataRegs.GPBSET.bit.GPIOB4 = 1;     // Set DO_A[28]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // Clear DO_A[28]

    if(Data & 0x2000)
        GpioDataRegs.GPBSET.bit.GPIOB5 = 1;     // Set DO_A[29]
    else
        GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // Clear DO_A[29]

    if(Data & 0x4000)
        GpioDataRegs.GPASET.bit.GPIOA6 = 1;     // Set DO_A[30]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA6 = 1;   // Clear DO_A[30]

    if(Data & 0x8000)
        GpioDataRegs.GPASET.bit.GPIOA7 = 1;     // Set DO_A[31]
    else
        GpioDataRegs.GPACLEAR.bit.GPIOA7 = 1;   // Clear DO_A[31]

} // WriteDspDO_A()

/******************************************************************************
*   Function:       WriteDspDO_EN()
*   Desctiption:    This function configures the DSP DO_EN[3..0] digital output
*                   bus.
*
*   Inputs:         Uint16 Data; Bit weighed field where the LSB corresponds to
*                                DO_EN[2] and the LSB + 1 to DO_EN[3]
*
*   Outputs:        none
*
*   returns:        void
*
*   Author:         TI
*
*   History:        1/21/08 - Original
*
******************************************************************************/
void WriteDspDO_EN(unsigned int Data)
{
    if(Data & 0x0001)
        GpioDataRegs.GPFSET.bit.GPIOF11 = 1;    // Set DO_EN[2]
    else
        GpioDataRegs.GPFCLEAR.bit.GPIOF11 = 1;  // Clear DO_EN[2]

    if(Data & 0x0002)
        GpioDataRegs.GPFSET.bit.GPIOF12 = 1;    // Set DO_EN[3]
    else
        GpioDataRegs.GPFCLEAR.bit.GPIOF12 = 1;  // Clear DO_EN[3]

} // WriteDspDO_EN()

/******************************************************************************
*   Function:       ReadDspID_A()
*   Desctiption:    This function reads the status of the DSP ID_A[3..0] digital
*                   input bus.
*
*   Inputs:         none
*
*   Outputs:        none
*
*   returns:        Uint16: Bit weighed field that contains the state of ID_A[3..0]
*
*   Author:         TI
*
*   History:        1/21/08 - Original
*
******************************************************************************/
unsigned int ReadDspID_A(void)
{
    unsigned int uTemp = 0;

    if(GpioDataRegs.GPBDAT.bit.GPIOB12) // ID_A[0]
        uTemp |= 0x0001;

    if(GpioDataRegs.GPBDAT.bit.GPIOB13) // ID_A[1]
        uTemp |= 0x0002;

    if(GpioDataRegs.GPBDAT.bit.GPIOB14) // ID_A[2]
        uTemp |= 0x0004;

    if(GpioDataRegs.GPBDAT.bit.GPIOB15) // ID_A[3]
        uTemp |= 0x0008;

    return uTemp;

} // ReadDspID_A()

/******************************************************************************
*   Function:       ReadDspDI_B()
*   Desctiption:    This function reads the status of the DSP DI_B[3..0] digital
*                   input bus.
*
*   Inputs:         none
*
*   Outputs:        none
*
*   returns:        Uint16: Bit weighed field that contains the state of DI_B[3..0]
*
*   Author:         TI
*
*   History:        1/21/08 - Original
*
******************************************************************************/
unsigned int ReadDspDI_B(void)
{
    unsigned int uTemp = 0;

    if(GpioDataRegs.GPBDAT.bit.GPIOB8) // DI_B[0]
        uTemp |= 0x0001;

    if(GpioDataRegs.GPBDAT.bit.GPIOB9) // DI_B[1]
        uTemp |= 0x0002;

    if(GpioDataRegs.GPBDAT.bit.GPIOB10) // DI_B[2]
        uTemp |= 0x0004;

    if(GpioDataRegs.GPBDAT.bit.GPIOB11) // DI_B[3]
        uTemp |= 0x0008;

    return uTemp;

} // ReadDspDI_B()

/*** end of file *****************************************************/

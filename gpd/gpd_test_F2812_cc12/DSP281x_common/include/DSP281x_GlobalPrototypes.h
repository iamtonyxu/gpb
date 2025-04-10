// TI File $Revision: /main/7 $
// Checkin $Date: July 9, 2009   13:14:00 $
//###########################################################################
//
// FILE:   DSP281x_GlobalPrototypes.h
//
// TITLE:  Global prototypes for DSP28 Examples
//###########################################################################
// $TI Release: DSP281x C/C++ Header Files V1.20 $
// $Release Date: July 27, 2009 $
//###########################################################################

#ifndef DSP281x_GLOBALPROTOTYPES_H
#define DSP281x_GLOBALPROTOTYPES_H

#define XINTF_ZONE0 (*(volatile Byte*)0x00002000)
#define XINTF_ZONE6 (*(volatile Uint16*)0x00100000)

#ifdef __cplusplus
extern "C" {
#endif

typedef union CANMSG {
    unsigned char bData[8];
    struct sCAN_MSG {
        unsigned char Cmd;
        unsigned char Length;
        unsigned char Parm1;
        unsigned char Parm2;
        unsigned char Parm3;
        unsigned char Parm4;
        unsigned char Parm5;
        unsigned char Parm6;
    } sMsgStruct;
} SMessage;

/*---- shared global function prototypes -----------------------------------*/
extern void InitAdc(void);
extern void GetAdcCalibrationFactors(float *Gain, int32 *OffSet);
extern void StartConversion(void);
extern float GetAdcConversion(Uint16 AdcChnl, float GainErr, int32 OffsErr);

extern void InitPeripherals(void);

extern void InitECan(void);
extern void ConfigECan(void);
extern int TxECanMsg(int MboxNo, SMessage* pTxMsg);
extern Uint32 CheckRxMailBoxes(void);
extern int RxECanMsg(int MboxNo, SMessage* pRxMsg);

extern void InitEv(void);

extern void InitGpio(void);
extern void WriteDspDO_A(unsigned int Data);
extern void WriteDspDO_EN(unsigned int Data);
extern unsigned int ReadDspID_A(void);
extern unsigned int ReadDspDI_B(void);

extern void InitMcbsp(void);
extern void InitPieCtrl(void);
extern void InitPieVectTable(void);
extern void EnableInterrupts(void);
extern void InitSci(void);
extern void InitSpi(void);
extern void ConfigSpi(int ClkPol, int NoOfBits);
extern void TxSpi(Uint16 Data);
extern Uint16 RxSpi(void);
extern Uint16 FormatSpiTxWord(Uint16 Data, Uint16 Length);
extern Uint16 SpiRxNotReady(void);
extern Uint16 SpiTxNotReady(void);
extern void InitSysCtrl(void);
extern void InitXintf(void);
extern void InitXIntrupt(void);
extern void InitPll(Uint16 val);
extern void InitPeripheralClocks(void);

// McBSP functions
// DSP281x_Mcbsp.c
extern void InitMcbspGpio(void);
extern void delay_loop(void);
extern void InitMcbspa8bit(void);
extern void InitMcbspa12bit(void);
extern void InitMcbspa16bit(void);
extern void InitMcbspa20bit(void);
extern void InitMcbspa24bit(void);
extern void InitMcbspa32bit(void);

// Watchdog functions
// DSP28_SysCtrl.c
extern void KickDog(void);
extern void DisableDog(void);
extern Uint16 CsmUnlock(void);

// DSP28_DBGIER.asm
extern void SetDBGIER(Uint16 dbgier);

// DSP281x_usDelay.asm
extern void DSP28x_usDelay(Uint32 Count);


//                 CAUTION
// This function MUST be executed out of RAM. Executing it
// out of OTP/Flash will yield unpredictable results
extern void InitFlash(void);


void MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr);


//---------------------------------------------------------------------------
// External symbols created by the linker cmd file
// DSP28 examples will use these to relocate code from one LOAD location
// in either Flash or XINTF to a different RUN location in internal
// RAM
extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif   // - end of DSP281x_GLOBALPROTOTYPES_H


//###########################################################################
//
// FILE:   main_nonBIOS.c
//
// TITLE:  gpd test fw
//
// DESCRIPTION:
//
//
//###########################################################################
// Release Data: 20250410
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#include "Ad7663.h"
#include "Adc1570.h"
#include "AuxEeprom.h"
#include "Dac.h"
#include "Eeprom.h"
#include "Max7301.h"

// �����ⲿ����(�����������F2812.cmd�ﶨ��)
extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;

/**
 * main.c
 */
int main(void)
{
    SMessage TxMessage, RxMessage;
    float GainCalErr, DacOut, AdcChnlResult;
    int32 OffsCalErr;
    int32 Iq32;
    static Uint32 ParamsCRC;
    Uint16 idx, Cnt, HighWord, LowWord, MsgCnt;
    Byte EepromArray[44];
    Byte CpldRd;
    static int SpiMode = 0;
    static const Uint32 PcbModel = 100025092;   // Assembly Number of UUT

    /*** CPU Initialization ***/
    InitSysCtrl();                      // Initialize the CPU (FILE: SysCtrl.c)
    InitXintf();                        // Initialize the external memory interface (FILE: Xintf.c)
    InitGpio();                         // Initialize the shared GPIO pins (FILE: Gpio.c)
    GpioDataRegs.GPASET.bit.GPIOA4 = 1; // Set RESET#_CPLD = HIGH
    GpioDataRegs.GPASET.bit.GPIOA3 = 1; // Set CPLD_PWR = HIGH
    //  WriteCpld(0xb, ReadCpld(0xb) | 0x10); // ?

    DINT;                               // Disable global interrupts
    InitPieCtrl();                      // Initialize and enable the PIE (FILE: PieCtrl.c)

    IER = 0x0000;                       // Disable CPU interrupts
    IFR = 0x0000;                       // Clear interrupt flags

    //��ʼ��PIE�ж�����������ʹ��ָ���жϷ����ӳ���ISR��
    InitPieVectTable();

    /*** Enable interrupts ***/
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  // Enable CPU Timer0 Interrupt in PIE group 1
    IER |= M_INT1;                      // Enable INT1 in IER to enable PIE group

    /*** Copy all FLASH sections that need to run from RAM (use memcpy() from RTS library) ***/

    // Section secureRamFuncs contains user defined code that runs from CSM secured RAM
    MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);

    /*** Initialize the FLASH ***/
    InitFlash();                        // Initialize the FLASH (FILE: SysCtrl.c)

    /*** Peripheral Initialization ***/
    InitAdc();                          // Initialize the ADC (FILE: Adc.c)
    InitEv();                           // Initialize the Event Manager (FILE: Ev.c)
    InitECan();                         // Initialize the CAN Module (FILE: eCanCtrl.c)
    InitSpi();                          // Initialize the SPI Module (FILE: Spi.c)

    SetDBGIER(IER);                     // Configure the DBGIER for realtime debug
    asm(" CLRC INTM, DBGM");            // Enable global interrupts and realtime debug

    /* Toggle D20, D21, and D27 to indicate successful boot */
    for(Cnt = 0; Cnt < 3*2; Cnt++) {
        GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;
        for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */
            DELAY_US(40000); /* Delay 50mS */
    }

    /* Calculate the Gain and Offset Calibration factors for the DSP-ADC.
    Note: it will take approximately 10 seconds for the calibration factors to be
    calculated. The two reference channels are over sampled 1024 times at
    a 10mS sample rate. */
    GetAdcCalibrationFactors(&GainCalErr, &OffsCalErr);

    TxMessage.sMsgStruct.Cmd = 'P';
    TxMessage.sMsgStruct.Length = 6;
    TxMessage.sMsgStruct.Parm1 = 0xaa;
    TxMessage.sMsgStruct.Parm2 = 0x55;
    TxMessage.sMsgStruct.Parm3 = 0xcc;
    TxMessage.sMsgStruct.Parm4 = 0x33;
    TxMessage.sMsgStruct.Parm5 = 0xdd;
    TxMessage.sMsgStruct.Parm6 = 0x22;
    TxECanMsg(15, &TxMessage);

    /*** Main Loop ***/
    while(1)
    {
        while(!CheckRxMailBoxes()){}    // Wait for CAN Message
        RxECanMsg(16, &RxMessage);      // Receive CAN Message
        TxMessage.sMsgStruct.Cmd = RxMessage.sMsgStruct.Cmd;
        TxMessage.sMsgStruct.Parm1 = 0x00;
        TxMessage.sMsgStruct.Parm2 = 0x00;
        TxMessage.sMsgStruct.Parm3 = 0x00;
        TxMessage.sMsgStruct.Parm4 = 0x00;
        TxMessage.sMsgStruct.Parm5 = 0x00;
        TxMessage.sMsgStruct.Parm6 = 0x00;
        GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;
        switch(RxMessage.sMsgStruct.Cmd) {
            case 'A':   /* Acquire and Convert the selected DSP-ADC Channel */
                StartConversion();
                TxMessage.sMsgStruct.Parm1 = RxMessage.sMsgStruct.Parm1;
                switch(RxMessage.sMsgStruct.Parm1) {
                    case 0: /* ADCIN0 : 1.8V */
                        AdcChnlResult = GetAdcConversion(ADCIN0, GainCalErr, OffsCalErr);
                        break;
                    case 1: /* ADCIN1 : MTR3 */
                        AdcChnlResult = GetAdcConversion(ADCIN1, GainCalErr, OffsCalErr);
                        break;
                    case 2: /* ADCIN2 : MTR5 */
                        AdcChnlResult = GetAdcConversion(ADCIN2, GainCalErr, OffsCalErr);
                        break;
                    case 3: /* ADCIN3 : MTR24 */
                        AdcChnlResult = GetAdcConversion(ADCIN3, GainCalErr, OffsCalErr);
                        break;
                    case 4: /* ADCIN4 : REF0.9 */
                        AdcChnlResult = GetAdcConversion(ADCIN4, GainCalErr, OffsCalErr);
                        break;
                    case 5: /* ADCIN5 : REF2.5 */
                        AdcChnlResult = GetAdcConversion(ADCIN5, GainCalErr, OffsCalErr);
                        break;
                    case 6: /* ADCIN6 : 0.1908V */
                        AdcChnlResult = GetAdcConversion(ADCIN6, GainCalErr, OffsCalErr);
                        break;
                    case 7: /* ADCIN7 : AO_MF_TST0 */
                        AdcChnlResult = GetAdcConversion(ADCIN7, GainCalErr, OffsCalErr);
                        break;
                    case 8: /* ADCIN8 : AO_MF_TST1 */
                        AdcChnlResult = GetAdcConversion(ADCIN8, GainCalErr, OffsCalErr);
                        break;
                    case 9: /* ADCIN9 : AO_MF_TST2 */
                        AdcChnlResult = GetAdcConversion(ADCIN9, GainCalErr, OffsCalErr);
                        break;
                    case 10: /* ADCIN10 : AO_MF_TST3 */
                        AdcChnlResult = GetAdcConversion(ADCIN10, GainCalErr, OffsCalErr);
                        break;
                    case 11: /* ADCIN11 : AGND */
                        AdcChnlResult = GetAdcConversion(ADCIN11, GainCalErr, OffsCalErr);
                        break;
                    case 12: /* ADCIN12 : PEL_MON */
                        AdcChnlResult = GetAdcConversion(ADCIN12, GainCalErr, OffsCalErr);
                        break;
                    case 13: /* ADCIN13 : MEL_MON */
                        AdcChnlResult = GetAdcConversion(ADCIN13, GainCalErr, OffsCalErr);
                        break;
                    case 14: /* ADCIN14 : BEL_MON */
                        AdcChnlResult = GetAdcConversion(ADCIN14, GainCalErr, OffsCalErr);
                        break;
                    case 15: /* ADCIN15 : TEMP_MON */
                        AdcChnlResult = GetAdcConversion(ADCIN15, GainCalErr, OffsCalErr);
                        break;
                    default:
                        AdcChnlResult = 0.0;
                        break;
                }
                /* Convert ADC Result to IQ32 format */
                if((AdcChnlResult >= -32768.0) && (AdcChnlResult <= 32767.999847)) {
                    Iq32 = (long int)(AdcChnlResult * 65536.0);
                    TxMessage.sMsgStruct.Parm6 = (Iq32 & 0xff);
                    TxMessage.sMsgStruct.Parm5 = ((Iq32 >> 8) & 0xff);
                    TxMessage.sMsgStruct.Parm4 = ((Iq32 >> 16) & 0xff);
                    TxMessage.sMsgStruct.Parm3 = ((Iq32 >> 24) & 0xff);
                    TxMessage.sMsgStruct.Parm2 = 0x00;
                    TxMessage.sMsgStruct.Length = 6;
                }
                else { /* Number out of IQ32 range */
                    TxMessage.sMsgStruct.Parm2 = 0xff;
                    TxMessage.sMsgStruct.Length = 2;
                }
                break;
            case 'B':   /* Construct EEPROM Structure and write structure to EEPROM */
                switch(RxMessage.sMsgStruct.Parm1) {
                    case 0: /* Get PCB Hardware Version and Model Number */
                        /* Construct Assembly Number Field (pcbModel) */
                        EepromArray[0x08] = (PcbModel >> 24) & 0xff;
                        EepromArray[0x09] = (PcbModel >> 16) & 0xff;
                        EepromArray[0x0a] = (PcbModel >> 8) & 0xff;
                        EepromArray[0x0b] = (PcbModel & 0xff);
                        /* Construct Hardware Version Field (pcbHwVersion) */
                        EepromArray[0x0c] = RxMessage.sMsgStruct.Parm3;
                        EepromArray[0x0d] = RxMessage.sMsgStruct.Parm4;
                        EepromArray[0x0e] = RxMessage.sMsgStruct.Parm5;
                        EepromArray[0x0f] = RxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 1: /* Get PCB Serial Number */
                        /* Construct PCB Serial Number Field (pcbSerialNum) */
                        EepromArray[0x10] = RxMessage.sMsgStruct.Parm3;
                        EepromArray[0x11] = RxMessage.sMsgStruct.Parm4;
                        EepromArray[0x12] = RxMessage.sMsgStruct.Parm5;
                        EepromArray[0x13] = RxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 2: /* Construct Offset and Calibration fields */
                        /* Construct dspAdcOffsetCal */
                        EepromArray[0x14] = (OffsCalErr >> 24) & 0xff;
                        EepromArray[0x15] = (OffsCalErr >> 16) & 0xff;
                        EepromArray[0x16] = (OffsCalErr >> 8) & 0xff;
                        EepromArray[0x17] = (OffsCalErr & 0xff);
                        /* Construct dspAdcGainCal */
                        Iq32 = (int32)(GainCalErr * 65536.0);
                        EepromArray[0x18] = (Iq32 >> 24) & 0xff;
                        EepromArray[0x19] = (Iq32 >> 16) & 0xff;
                        EepromArray[0x1a] = (Iq32 >> 8) & 0xff;
                        EepromArray[0x1b] = (Iq32 & 0xff);
                        /* Construct extAdcOffset */
                        EepromArray[0x1c] = 0x00;
                        EepromArray[0x1d] = 0x00;
                        EepromArray[0x1e] = 0x00;
                        EepromArray[0x1f] = 0x00;
                        /* Construct extAdcGain */
                        EepromArray[0x20] = 0x00;
                        EepromArray[0x21] = 0x00;
                        EepromArray[0x22] = 0x00;
                        EepromArray[0x23] = 0x00;

                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 3: /* Calculate the EEPROM Parameters CRC */
                        /* Construct Code CRC Field (codeCRC) */
                        EepromArray[0x04] = 0x00;
                        EepromArray[0x05] = 0x00;
                        EepromArray[0x06] = 0x00;
                        EepromArray[0x07] = 0x00;
                        /* Calculate Parameters CRC */
                        ParamsCRC = crcCalc32(EepromArray, 4, 28);
                        TxMessage.sMsgStruct.Parm6 = (ParamsCRC & 0xff);
                        TxMessage.sMsgStruct.Parm5 = ((ParamsCRC >> 8) & 0xff);
                        TxMessage.sMsgStruct.Parm4 = ((ParamsCRC >> 16) & 0xff);
                        TxMessage.sMsgStruct.Parm3 = ((ParamsCRC >> 24) & 0xff);
                        TxMessage.sMsgStruct.Parm2 = 0x00;
                        /* Construct Parameters CRC (paramsCRC) */
                        EepromArray[0x00] = TxMessage.sMsgStruct.Parm3;
                        EepromArray[0x01] = TxMessage.sMsgStruct.Parm4;
                        EepromArray[0x02] = TxMessage.sMsgStruct.Parm5;
                        EepromArray[0x03] = TxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 6;
                        break;
                    case 4: /* Write and verify Structure to Serial EEPROM */
                        if(SpiMode != 2) {
                            ConfigEepromInterface();
                            SpiMode = 2;
                        }
                        for(idx = 0x00; idx < 0x1c; idx++) {
                            EepromWriteByte(idx, EepromArray[idx]);
                            EepromWriteByte((idx + 0x200), EepromArray[idx]);
                            EepromWriteByte((idx + 0x400), EepromArray[idx]);
                        }
                        EepromWriteByte(0x1ff4, 0xa5);  // CAN ID Password
                        EepromWriteByte(0x1ff5, 0x77);  // CAN ID Password
                        EepromWriteByte(0x1ff6, 0x88);  // CAN ID Password
                        //EepromWriteByte(0x1ff7, 0x94);    // CAN_ID
                        TxMessage.sMsgStruct.Parm2 = 0x00;
                        TxMessage.sMsgStruct.Parm3 = 0x00;
                        TxMessage.sMsgStruct.Parm4 = 0x00;
                        for(idx = 0x00; idx < 0x2c; idx++) {
                            if(EepromArray[idx] != EepromReadByte(idx))
                                TxMessage.sMsgStruct.Parm2++;
                            if(EepromArray[idx] != EepromReadByte(idx + 0x200))
                                TxMessage.sMsgStruct.Parm3++;
                            if(EepromArray[idx] != EepromReadByte(idx + 0x400))
                                TxMessage.sMsgStruct.Parm4++;
                        }
                        TxMessage.sMsgStruct.Length = 4;
                        break;
                    case 6: // Perform a memory dump of the serial EEPROM
                        if(SpiMode != 2) {
                            ConfigEepromInterface();
                            SpiMode = 2;
                        }
                        Cnt = RxMessage.sMsgStruct.Parm3 - RxMessage.sMsgStruct.Parm2;
                        if(Cnt <= 6) {
                            MsgCnt = 2;
                            for(idx = RxMessage.sMsgStruct.Parm2; idx < RxMessage.sMsgStruct.Parm3; idx++) {
                                TxMessage.bData[MsgCnt++] = EepromReadByte(idx);
                            }
                            TxMessage.sMsgStruct.Length = Cnt;
                        }
                        else {
                            TxMessage.sMsgStruct.Length = 0;
                        }
                        break;
                    case 7: // Read CAN ID Validation Password and CAN_ID
                        TxMessage.sMsgStruct.Parm1 = 0x00;
                        TxMessage.sMsgStruct.Parm2 = 0x00;
                        TxMessage.sMsgStruct.Parm3 = EepromReadByte(0x1ff4);
                        TxMessage.sMsgStruct.Parm4 = EepromReadByte(0x1ff5);
                        TxMessage.sMsgStruct.Parm5 = EepromReadByte(0x1ff6);
                        TxMessage.sMsgStruct.Parm6 = EepromReadByte(0x1ff7);
                        TxMessage.sMsgStruct.Length = 6;
                        break;
                }
                break;
            case 'C':   /* Read the Version Code of the CPLD (U41) */
                TxMessage.sMsgStruct.Parm1 = ReadCpld(6);       // Read CPLD_VERSION1
                TxMessage.sMsgStruct.Parm2 = ReadCpld(5);       // Read CPLD_VERSION0
                TxMessage.sMsgStruct.Length = 2;
                break;
            case 'D':   /* Program DAC (A through D) Output. Note: Expected data is in IQ32 format */
                if(SpiMode != 1) {
                    ConfigDacInterface();
                    SpiMode = 1;
                }
                HighWord = ((RxMessage.sMsgStruct.Parm3 << 8) | (RxMessage.sMsgStruct.Parm4)) & 0xffff;
                LowWord = ((RxMessage.sMsgStruct.Parm5 << 8) | (RxMessage.sMsgStruct.Parm6)) & 0xffff;
                DacOut = ((float)(HighWord & 0x7fff)) + ((float)(LowWord))/65536.0;
                if(HighWord & 0x8000)
                    DacOut *= -1.0;
                TxDacData(RxMessage.sMsgStruct.Parm1, DacOut);
                TxDacData(RxMessage.sMsgStruct.Parm1, DacOut);
                TxMessage.sMsgStruct.Length = 0;
                break;
            case 'E':   /* Test Serial EEPROM */
                if(SpiMode != 2) {
                    ConfigEepromInterface();
                    SpiMode = 2;
                }
                TxMessage.sMsgStruct.Parm1 = EepromTest(); /* This test can take up to 3 minutes to complete */
                TxMessage.sMsgStruct.Length = 1;
                break;
            case 'F':   /* Test external Power Distribution Board Serial EEPROM */
                ConfigEepromInterface();
                SpiMode = 2;
                switch (RxMessage.sMsgStruct.Parm1) {
                    case 0: // Test external EEPROM ' F 1 0'
                        TxMessage.sMsgStruct.Parm1 = AuxEepromTest(); // This test can take up to 3 minutes to complete
                        TxMessage.sMsgStruct.Length = 1;
                        break;
                    case 1: // Read external EEPROM Status Register 'F 1 1'
                        TxMessage.sMsgStruct.Parm1 = AuxEepromReadStatus();
                        TxMessage.sMsgStruct.Length = 1;
                        break;
                    case 2: // Read Byte from selected address 'F 3 2 HiAddr LoAddr'
                        LowWord = ((RxMessage.sMsgStruct.Parm2 << 8) | (RxMessage.sMsgStruct.Parm3)) & 0xffff;
                        TxMessage.sMsgStruct.Parm1 = AuxEepromReadByte(LowWord);
                        TxMessage.sMsgStruct.Length = 1;
                        break;
                    case 3: // Write to Status Register 'F 2 3 StsData'
                        AuxEepromWriteStatus(RxMessage.sMsgStruct.Parm2);
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 4: // Write Selected Byte to selected address 'F 4 4 HiAddr LoAddr Data'
                        AuxEepromWriteEnable(TRUE);
                        GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */
                        TxSpi(FormatSpiTxWord(WRITE, 8));       /* Transmit WRSR Cmnd to EEPROM */
                        while(SpiRxNotReady()) {}               /* wait for data reception */
                        RxSpi();                                /* Clear RX interrupt flag */
                        TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm2 & 0xff), 8)); /* Transmit High Addr Byte to EEPROM */
                        while(SpiRxNotReady()) {}               /* wait for data reception */
                        RxSpi();                                /* Clear RX interrupt flag */
                        TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm3 & 0xff), 8)); /* Transmit Low Addr Byte to EEPROM */
                        while(SpiRxNotReady()) {}               /* wait for data reception */
                        RxSpi();                                /* Clear RX interrupt flag */
                        TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm4 & 0xff), 8)); /* Transmit Data Byte to EEPROM */
                        while(SpiRxNotReady()) {}               /* wait for data reception */
                        RxSpi();                                /* Clear RX interrupt flag */
                        GpioDataRegs.GPFSET.bit.GPIOF8 = 1;     /* De-Assert AUXEEPROM CS */
                        break;
                    case 5: /* Get PCB Model Number */
                        /* Construct Assembly Number Field (pcbModel) */
                        EepromArray[0x04] = RxMessage.sMsgStruct.Parm3;
                        EepromArray[0x05] = RxMessage.sMsgStruct.Parm4;
                        EepromArray[0x06] = RxMessage.sMsgStruct.Parm5;
                        EepromArray[0x07] = RxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 6: /* Get PCB Hardware Version */
                        /* Construct Hardware Version Field (pcbHwVersion) */
                        EepromArray[0x08] = RxMessage.sMsgStruct.Parm3;
                        EepromArray[0x09] = RxMessage.sMsgStruct.Parm4;
                        EepromArray[0x0a] = RxMessage.sMsgStruct.Parm5;
                        EepromArray[0x0b] = RxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 7: /* Get PCB Serial Number */
                        /* Construct PCB Serial Number Field (pcbSerialNum) */
                        EepromArray[0x0c] = RxMessage.sMsgStruct.Parm3;
                        EepromArray[0x0d] = RxMessage.sMsgStruct.Parm4;
                        EepromArray[0x0e] = RxMessage.sMsgStruct.Parm5;
                        EepromArray[0x0f] = RxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                    case 8: /* Calculate the EEPROM Parameters CRC */
                        /* Calculate Parameters CRC */
                        ParamsCRC = crcCalc32(EepromArray, 4, 16);
                        TxMessage.sMsgStruct.Parm6 = (ParamsCRC & 0xff);
                        TxMessage.sMsgStruct.Parm5 = ((ParamsCRC >> 8) & 0xff);
                        TxMessage.sMsgStruct.Parm4 = ((ParamsCRC >> 16) & 0xff);
                        TxMessage.sMsgStruct.Parm3 = ((ParamsCRC >> 24) & 0xff);
                        TxMessage.sMsgStruct.Parm2 = 0x00;
                        /* Construct Parameters CRC (paramsCRC) */
                        EepromArray[0x00] = TxMessage.sMsgStruct.Parm3;
                        EepromArray[0x01] = TxMessage.sMsgStruct.Parm4;
                        EepromArray[0x02] = TxMessage.sMsgStruct.Parm5;
                        EepromArray[0x03] = TxMessage.sMsgStruct.Parm6;
                        TxMessage.sMsgStruct.Length = 6;
                        break;
                    case 9: /* Write and verify Structure to Serial EEPROM */
                        if(SpiMode != 2) {
                            ConfigEepromInterface();
                            SpiMode = 2;
                        }
                        for(idx = 0x00; idx < 0x10; idx++) {
                            AuxEepromWriteByte(idx, EepromArray[idx]);
                            AuxEepromWriteByte((idx + 0x200), EepromArray[idx]);
                            AuxEepromWriteByte((idx + 0x400), EepromArray[idx]);
                        }
                        TxMessage.sMsgStruct.Parm2 = 0x00;
                        TxMessage.sMsgStruct.Parm3 = 0x00;
                        TxMessage.sMsgStruct.Parm4 = 0x00;
                        for(idx = 0x00; idx < 0x10; idx++) {
                            if(EepromArray[idx] != AuxEepromReadByte(idx))
                                TxMessage.sMsgStruct.Parm2++;
                            if(EepromArray[idx] != AuxEepromReadByte(idx + 0x200))
                                TxMessage.sMsgStruct.Parm3++;
                            if(EepromArray[idx] != AuxEepromReadByte(idx + 0x400))
                                TxMessage.sMsgStruct.Parm4++;
                        }
                        TxMessage.sMsgStruct.Length = 4;
                        break;
                    case 10:    // Perform a memory dump of the serial EEPROM
                        if(SpiMode != 2) {
                            ConfigEepromInterface();
                            SpiMode = 2;
                        }
                        Cnt = RxMessage.sMsgStruct.Parm3 - RxMessage.sMsgStruct.Parm2;
                        if(Cnt <= 6) {
                            MsgCnt = 2;
                            for(idx = RxMessage.sMsgStruct.Parm2; idx < RxMessage.sMsgStruct.Parm3; idx++) {
                                TxMessage.bData[MsgCnt++] = AuxEepromReadByte(idx);
                            }
                            TxMessage.sMsgStruct.Length = Cnt;
                        }
                        else {
                            TxMessage.sMsgStruct.Length = 0;
                        }
                        break;
                    case 11:    //add 2/19/2009
                        Cnt = RxMessage.sMsgStruct.Parm2;
                        TxMessage.sMsgStruct.Parm1 = AuxEepromReadByte(Cnt);
                        TxMessage.sMsgStruct.Parm2 = AuxEepromReadByte(Cnt + 0x1);
                        TxMessage.sMsgStruct.Parm3 = AuxEepromReadByte(Cnt + 0x2);
                        TxMessage.sMsgStruct.Parm4 = AuxEepromReadByte(Cnt + 0x3);
                        TxMessage.sMsgStruct.Length = 4;
                        break;
                    default:
                        TxMessage.sMsgStruct.Length = 0;
                        break;
                }
                break;
            case 'G':   /* Toggle D7 and D8 ON and OFF */
                    GpioDataRegs.GPBSET.bit.GPIOB6 = 1;
                    GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;
                    for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */
                        DELAY_US(40000); /* Delay 50mS */
                    GpioDataRegs.GPBSET.bit.GPIOB7 = 1;
                    GpioDataRegs.GPBCLEAR.bit.GPIOB6 = 1;
                    for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */
                        DELAY_US(40000); /* Delay 50mS */
                    GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;
                    for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */
                        DELAY_US(40000); /* Delay 50mS */
                    GpioDataRegs.GPBSET.bit.GPIOB6 = 1;
                    GpioDataRegs.GPBSET.bit.GPIOB7 = 1;
                break;
            case 'I':   /* Read Digital Inputs DI_A[27..0], ID_A[3..0], and SYNC_I */
                TxMessage.sMsgStruct.Parm1 = ReadDspDI_B(); // Read DI_A[27..24]
                TxMessage.sMsgStruct.Parm2 = ReadCpld(0x2); // Read DI_A[23..16]
                TxMessage.sMsgStruct.Parm3 = ReadCpld(0x1); // Read DI_A[15..8]
                TxMessage.sMsgStruct.Parm4 = ReadCpld(0x0); // Read DI_A[7..0]
                TxMessage.sMsgStruct.Parm5 = ReadDspID_A(); // Read ID_A[3..0]
                TxMessage.sMsgStruct.Parm6 = GpioDataRegs.GPEDAT.bit.GPIOE0 & 0x01; // SYNC_I
                TxMessage.sMsgStruct.Parm6 <<= 1;
                TxMessage.sMsgStruct.Parm6 |= GpioDataRegs.GPGDAT.bit.GPIOG5;       // SERIAL_IN
                TxMessage.sMsgStruct.Length = 6;
                break;
            case 'J':   /* Write/Read from external SPI BUS */
                if(SpiMode != 3) {
                    ConfigMax7301Interface();
                    SpiMode = 3;
                }
                switch(RxMessage.sMsgStruct.Parm1) {
                    case 0: /* Configure MAX7301 0n STAND Power Distribution */
                        ConfigMax7301DIO();
                        break;
                    case 1: /* Write to external SPI Device */
                        switch(RxMessage.sMsgStruct.Parm2) {
                            case 0: // Write to P24
                                Max7301Write(MAX7103_WRITE_PORT24, RxMessage.sMsgStruct.Parm3);
                                break;
                            case 1: // Write to P25
                                Max7301Write(MAX7103_WRITE_PORT25, RxMessage.sMsgStruct.Parm3);
                                break;
                            case 2: // Write to P26
                                Max7301Write(MAX7103_WRITE_PORT26, RxMessage.sMsgStruct.Parm3);
                                break;
                            case 3: // Write to P27
                                Max7301Write(MAX7103_WRITE_PORT27, RxMessage.sMsgStruct.Parm3);
                                break;
                            case 4: // Write to P28_P31
                                Max7301Write(MAX7103_WRITE_PORT28_31, RxMessage.sMsgStruct.Parm3);
                                break;
                            case 5: //write to P29
                                Max7301Write(MAX7103_WRITE_PORT29, RxMessage.sMsgStruct.Parm3);
                                break;
                            default:
                                break;
                        }
                        break;
                    case 2: /* Read from external SPI Device */
                        Cnt = Max7301Input(MAX7103_READ_PORT23);
                        Cnt <<= 1;
                        Cnt |= Max7301Input(MAX7103_READ_PORT21);
                        Cnt <<= 1;
                        Cnt |= Max7301Input(MAX7103_READ_PORT20);
                        Cnt <<= 8;
                        Cnt |= Max7301Input(MAX7103_READ_PORT12_19);
                        Cnt &= 0x0fff;
                        TxMessage.sMsgStruct.Parm1 = Cnt & 0xff;
                        TxMessage.sMsgStruct.Parm2 = (Cnt >> 8) & 0xff;
                        TxMessage.sMsgStruct.Length = 2;
                        break;
                    default:
                        break;
                }
                break;
            case 'N':   /* Acquire and convert the selected On-Board ADC channel */
                if(SpiMode != 4) {
                    ConfigTlv1570Interface();
                    SpiMode = 4;
                }
                switch(RxMessage.sMsgStruct.Parm1) {
                    case 0: // Select and convert Channel 0 (AI_MF_A0)
                        Tlv1570Convert(ADC0);
                        Iq32 = Tlv1570Convert(ADC0);
                        break;
                    case 1: // Select and convert Channel 1 (AI_MF_A1)
                        Tlv1570Convert(ADC1);
                        Iq32 = Tlv1570Convert(ADC1);
                        break;
                    case 2: // Select and convert Channel 2 (AI_MF_A2)
                        Tlv1570Convert(ADC2);
                        Iq32 = Tlv1570Convert(ADC2);
                        break;
                    case 3: // Select and convert Channel 3 (AI_MF_A3)
                        Tlv1570Convert(ADC3);
                        Iq32 = Tlv1570Convert(ADC3);
                        break;
                    case 4: // Select and convert Channel 4 (AI_MF_A4)
                        Tlv1570Convert(ADC4);
                        Iq32 = Tlv1570Convert(ADC4);
                        break;
                    case 5: // Select and convert Channel 5 (AI_MF_A5)
                        Tlv1570Convert(ADC5);
                        Iq32 = Tlv1570Convert(ADC5);
                        break;
                    case 6: // Select and convert Channel 6 (AI_MF_A6)
                        Tlv1570Convert(ADC6);
                        Iq32 = Tlv1570Convert(ADC6);
                        break;
                    case 7: // Select and convert Channel 7 (AI_MF_A7)
                        Tlv1570Convert(ADC7);
                        Iq32 = Tlv1570Convert(ADC7);
                        break;
                }
                TxMessage.sMsgStruct.Parm6 = (Iq32 & 0xff);
                TxMessage.sMsgStruct.Parm5 = ((Iq32 >> 8) & 0xff);
                TxMessage.sMsgStruct.Parm4 = ((Iq32 >> 16) & 0xff);
                TxMessage.sMsgStruct.Parm3 = ((Iq32 >> 24) & 0xff);
                TxMessage.sMsgStruct.Parm2 = 0x00;
                TxMessage.sMsgStruct.Length = 6;
                break;
            case 'O':   /* Write to Digital Outputs DO[23..0] and DMO[31..24] */
                HighWord = (RxMessage.sMsgStruct.Parm1 << 8) | RxMessage.sMsgStruct.Parm2;
                WriteCpld(0x8, RxMessage.sMsgStruct.Parm4); // Set DO_A[7..0]
                WriteCpld(0x9, RxMessage.sMsgStruct.Parm3); // Set DO_A[15..8]
                WriteDspDO_A(HighWord);                     // Set DO_A[31..16]
                if(RxMessage.sMsgStruct.Parm5 & 0x01) {
                    GpioDataRegs.GPGSET.bit.GPIOG4 = 1;     // Set SERIAL_OUT = HIGH
                }
                else {
                    GpioDataRegs.GPGCLEAR.bit.GPIOG4 = 1;   // Set SERIAL_OUT = LOW
                }
                if(RxMessage.sMsgStruct.Parm6) {            // Enable DO_A[31..0]
                    WriteCpld(0xa, 0x3);                    // Set DO_EN[1..0]
                    WriteDspDO_EN(0x3);                     // Set DO_EN[3..2]
                }
                else {
                    WriteCpld(0xa, 0x0);                    // Clear DO_EN[1..0]
                    WriteDspDO_EN(0x0);                     // Clear DO_EN[3..2]
                }
                TxMessage.sMsgStruct.Length = 0;
                break;
            case 'P':   /* Query BEL_SNS, MEL_SNS, and PEL_SNS */
                TxMessage.sMsgStruct.Parm1 = ReadCpld(0x4); // Read CPLD Loop Enable Sense inputs
                TxMessage.sMsgStruct.Length = 1;
                break;
            case 'Q':   /* Query CPLD Fault sub-system */
                TxMessage.sMsgStruct.Parm1 = ReadCpld(0x3); // Read CPLD Faults
                TxMessage.sMsgStruct.Length = 1;
                break;
            case 'R':   /* Test The External SRAM (U43) */
                TxMessage.sMsgStruct.Parm1 = TestRam();
                TxMessage.sMsgStruct.Length = 1;
                break;
            case 'S':   /* Set or Clear V5_ON, AD_TEST, and DSPTEST */
                if(RxMessage.sMsgStruct.Parm1 & 0x01) { // Set V5_ON
                    CpldRd = ReadCpld(0xb);
                    WriteCpld(0xb, (CpldRd | 0x01));    // Bit field 1 at addr(0xb) is defined as V5_ON
                }
                else {                                  // Clear V5_ON
                    CpldRd = ReadCpld(0xb);
                    WriteCpld(0xb, (CpldRd & 0xfe));    // Bit field 1 at addr(0xb) is defined as V5_ON
                }
                if(RxMessage.sMsgStruct.Parm1 & 0x02) { // Set AD_TEST
                    CpldRd = ReadCpld(0xb);
                    WriteCpld(0xb, (CpldRd | 0x02));    // Bit field 2 at addr(0xb) is defined as AD_TEST
                }
                else {                                  // Clear AD_TEST
                    CpldRd = ReadCpld(0xb);
                    WriteCpld(0xb, (CpldRd & 0xfd));    // Bit field 2 at addr(0xb) is defined as AD_TEST
                }
                if(RxMessage.sMsgStruct.Parm1 & 0x04) { // Set DSPTEST
                    GpioDataRegs.GPESET.bit.GPIOE2 = 1;
                }
                else {                                  // Clear DSPTEST
                    GpioDataRegs.GPECLEAR.bit.GPIOE2 = 1;
                }
                break;
            case 'T':   /* Change Watchdog timer period to 325mS: Force Watchdog timer to time out */
                while(CpuTimer0Regs.TIM.all < (11400000 - 100)) {;} // Change close to the last dog kik
                CpuTimer0Regs.PRD.all = 39000000;                   // Change period betweed edges to 325mS
                TxMessage.sMsgStruct.Length = 0;
                break;
            case 'v':   /* Get DSP Firmware Version */
                    TxMessage.sMsgStruct.Parm3 = 0x01;
                    TxMessage.sMsgStruct.Parm2 = 0x05;
                    TxMessage.sMsgStruct.Length = 2;
                break;
            default:    /* Unrecognized Command */
                TxMessage.sMsgStruct.Cmd = '~';
                TxMessage.sMsgStruct.Length = 0;
        }
        DELAY_US(65535); /* Delay approximately 82mS */
        TxECanMsg(15, &TxMessage);
        GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;
        GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;
    }

} //end of main()



/*** end of file *****************************************************/

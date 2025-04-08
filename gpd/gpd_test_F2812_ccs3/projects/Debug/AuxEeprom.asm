;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Tue Sep 16 13:10:56 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("AuxEeprom.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("TxSpi"), DW_AT_symbol_name("_TxSpi")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigSpi"), DW_AT_symbol_name("_ConfigSpi")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$3


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("FormatSpiTxWord"), DW_AT_symbol_name("_FormatSpiTxWord")
	.dwattr DW$6, DW_AT_type(*DW$T$19)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$6


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("RxSpi"), DW_AT_symbol_name("_RxSpi")
	.dwattr DW$9, DW_AT_type(*DW$T$19)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiRxNotReady"), DW_AT_symbol_name("_SpiRxNotReady")
	.dwattr DW$10, DW_AT_type(*DW$T$19)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiTxNotReady"), DW_AT_symbol_name("_SpiTxNotReady")
	.dwattr DW$11, DW_AT_type(*DW$T$19)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$12, DW_AT_type(*DW$T$89)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI1962 
	.sect	".text"
	.global	_ConfigAuxEepromInterface

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigAuxEepromInterface"), DW_AT_symbol_name("_ConfigAuxEepromInterface")
	.dwattr DW$13, DW_AT_low_pc(_ConfigAuxEepromInterface)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$13, DW_AT_begin_line(0x29)
	.dwattr DW$13, DW_AT_begin_column(0x06)
	.dwpsn	"AuxEeprom.c",42,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  41 | void ConfigAuxEepromInterface(void)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigAuxEepromInterface     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigAuxEepromInterface:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"AuxEeprom.c",43,2
;----------------------------------------------------------------------
;  43 | if(SpiTxNotReady()) {                                                  
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |43| 
        ; call occurs [#_SpiTxNotReady] ; |43| 
        CMPB      AL,#0                 ; |43| 
        BF        L2,EQ                 ; |43| 
        ; branchcc occurs ; |43| 
	.dwpsn	"AuxEeprom.c",44,3
;----------------------------------------------------------------------
;  44 | while(SpiTxNotReady()) {}       /* Wait for any pending transmission */
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |44| 
        ; call occurs [#_SpiTxNotReady] ; |44| 
        CMPB      AL,#0                 ; |44| 
        BF        L2,EQ                 ; |44| 
        ; branchcc occurs ; |44| 
L1:    
DW$L$_ConfigAuxEepromInterface$3$B:
	.dwpsn	"AuxEeprom.c",44,27
        LCR       #_SpiTxNotReady       ; |44| 
        ; call occurs [#_SpiTxNotReady] ; |44| 
        CMPB      AL,#0                 ; |44| 
        BF        L1,NEQ                ; |44| 
        ; branchcc occurs ; |44| 
DW$L$_ConfigAuxEepromInterface$3$E:
L2:    
	.dwpsn	"AuxEeprom.c",48,2
;----------------------------------------------------------------------
;  48 | ConfigSpi(0, 8); /* Configure SPI Bus for 8-bit words; Tx on Falling CL
;     | K Edge */                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0
        MOVB      AH,#8                 ; |48| 
        LCR       #_ConfigSpi           ; |48| 
        ; call occurs [#_ConfigSpi] ; |48| 
	.dwpsn	"AuxEeprom.c",50,1
        LRETR
        ; return occurs

DW$14	.dwtag  DW_TAG_loop
	.dwattr DW$14, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L1:1:1221595856")
	.dwattr DW$14, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$14, DW_AT_begin_line(0x2c)
	.dwattr DW$14, DW_AT_end_line(0x2c)
DW$15	.dwtag  DW_TAG_loop_range
	.dwattr DW$15, DW_AT_low_pc(DW$L$_ConfigAuxEepromInterface$3$B)
	.dwattr DW$15, DW_AT_high_pc(DW$L$_ConfigAuxEepromInterface$3$E)
	.dwendtag DW$14

	.dwattr DW$13, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$13, DW_AT_end_line(0x32)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$13

	.sect	".text"
	.global	_AuxDevNotReady

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxDevNotReady"), DW_AT_symbol_name("_AuxDevNotReady")
	.dwattr DW$16, DW_AT_low_pc(_AuxDevNotReady)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$16, DW_AT_begin_line(0x44)
	.dwattr DW$16, DW_AT_begin_column(0x08)
	.dwpsn	"AuxEeprom.c",69,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  68 | Uint16 AuxDevNotReady(void)                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxDevNotReady               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_AuxDevNotReady:
;----------------------------------------------------------------------
;  70 | Uint16 Sts;                                                            
;----------------------------------------------------------------------
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("Sts"), DW_AT_symbol_name("_Sts")
	.dwattr DW$17, DW_AT_type(*DW$T$19)
	.dwattr DW$17, DW_AT_location[DW_OP_breg20 -1]
	.dwpsn	"AuxEeprom.c",72,2
;----------------------------------------------------------------------
;  72 | Sts = AuxEepromReadStatus();                                           
;----------------------------------------------------------------------
        LCR       #_AuxEepromReadStatus ; |72| 
        ; call occurs [#_AuxEepromReadStatus] ; |72| 
        MOV       *-SP[1],AL            ; |72| 
	.dwpsn	"AuxEeprom.c",74,2
;----------------------------------------------------------------------
;  74 | return (Sts & 0x01);                                                   
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x0001    ; |74| 
	.dwpsn	"AuxEeprom.c",76,1
        SUBB      SP,#2                 ; |74| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$16, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$16, DW_AT_end_line(0x4c)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$16

	.sect	".text"
	.global	_AuxEepromReadStatus

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromReadStatus"), DW_AT_symbol_name("_AuxEepromReadStatus")
	.dwattr DW$18, DW_AT_low_pc(_AuxEepromReadStatus)
	.dwattr DW$18, DW_AT_high_pc(0x00)
	.dwattr DW$18, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$18, DW_AT_begin_line(0x5d)
	.dwattr DW$18, DW_AT_begin_column(0x08)
	.dwpsn	"AuxEeprom.c",94,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  93 | Uint16 AuxEepromReadStatus(void)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromReadStatus          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_AuxEepromReadStatus:
;----------------------------------------------------------------------
;  95 | Uint16 RetVal, DataOut;                                                
;----------------------------------------------------------------------
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("RetVal"), DW_AT_symbol_name("_RetVal")
	.dwattr DW$19, DW_AT_type(*DW$T$19)
	.dwattr DW$19, DW_AT_location[DW_OP_breg20 -1]
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("DataOut"), DW_AT_symbol_name("_DataOut")
	.dwattr DW$20, DW_AT_type(*DW$T$19)
	.dwattr DW$20, DW_AT_location[DW_OP_breg20 -2]
	.dwpsn	"AuxEeprom.c",96,2
;----------------------------------------------------------------------
;  96 | DataOut = (RDSR << 8);                                                 
;----------------------------------------------------------------------
        MOV       *-SP[2],#1280         ; |96| 
	.dwpsn	"AuxEeprom.c",98,2
;----------------------------------------------------------------------
;  98 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */      
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22
        OR        @_GpioDataRegs+22,#0x0100 ; |98| 
	.dwpsn	"AuxEeprom.c",99,2
;----------------------------------------------------------------------
;  99 | TxSpi(DataOut);                                                 /* Tran
;     | smit RDSR Cmnd to EEPROM */                                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; |99| 
        LCR       #_TxSpi               ; |99| 
        ; call occurs [#_TxSpi] ; |99| 
	.dwpsn	"AuxEeprom.c",100,2
;----------------------------------------------------------------------
; 100 | while(SpiRxNotReady()) {}                               /* wait for tra
;     | nsmission to complete */                                               
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |100| 
        ; call occurs [#_SpiRxNotReady] ; |100| 
        CMPB      AL,#0                 ; |100| 
        BF        L4,EQ                 ; |100| 
        ; branchcc occurs ; |100| 
L3:    
DW$L$_AuxEepromReadStatus$2$B:
	.dwpsn	"AuxEeprom.c",100,26
        LCR       #_SpiRxNotReady       ; |100| 
        ; call occurs [#_SpiRxNotReady] ; |100| 
        CMPB      AL,#0                 ; |100| 
        BF        L3,NEQ                ; |100| 
        ; branchcc occurs ; |100| 
DW$L$_AuxEepromReadStatus$2$E:
L4:    
	.dwpsn	"AuxEeprom.c",101,2
;----------------------------------------------------------------------
; 101 | RetVal = RxSpi();                                               /* Firs
;     | t read is dummy read to clear Int-Flag */                              
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |101| 
        ; call occurs [#_RxSpi] ; |101| 
        MOV       *-SP[1],AL            ; |101| 
	.dwpsn	"AuxEeprom.c",102,2
;----------------------------------------------------------------------
; 102 | TxSpi(0x00);                                                    /* perf
;     | orm dummy write to fetch Status from EEPROM */                         
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_TxSpi               ; |102| 
        ; call occurs [#_TxSpi] ; |102| 
	.dwpsn	"AuxEeprom.c",103,2
;----------------------------------------------------------------------
; 103 | while(SpiRxNotReady()) {}                               /* wait for tra
;     | nsmission to complete */                                               
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |103| 
        ; call occurs [#_SpiRxNotReady] ; |103| 
        CMPB      AL,#0                 ; |103| 
        BF        L6,EQ                 ; |103| 
        ; branchcc occurs ; |103| 
L5:    
DW$L$_AuxEepromReadStatus$4$B:
	.dwpsn	"AuxEeprom.c",103,26
        LCR       #_SpiRxNotReady       ; |103| 
        ; call occurs [#_SpiRxNotReady] ; |103| 
        CMPB      AL,#0                 ; |103| 
        BF        L5,NEQ                ; |103| 
        ; branchcc occurs ; |103| 
DW$L$_AuxEepromReadStatus$4$E:
L6:    
	.dwpsn	"AuxEeprom.c",104,2
;----------------------------------------------------------------------
; 104 | RetVal = RxSpi();                                               /* Read
;     |  EEPROM Status byte */                                                 
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |104| 
        ; call occurs [#_RxSpi] ; |104| 
        MOV       *-SP[1],AL            ; |104| 
	.dwpsn	"AuxEeprom.c",105,2
;----------------------------------------------------------------------
; 105 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x0100 ; |105| 
	.dwpsn	"AuxEeprom.c",107,2
;----------------------------------------------------------------------
; 107 | return (RetVal & 0xff);                                                
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x00ff    ; |107| 
	.dwpsn	"AuxEeprom.c",109,1
        SUBB      SP,#2                 ; |107| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$21	.dwtag  DW_TAG_loop
	.dwattr DW$21, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L5:1:1221595856")
	.dwattr DW$21, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$21, DW_AT_begin_line(0x67)
	.dwattr DW$21, DW_AT_end_line(0x67)
DW$22	.dwtag  DW_TAG_loop_range
	.dwattr DW$22, DW_AT_low_pc(DW$L$_AuxEepromReadStatus$4$B)
	.dwattr DW$22, DW_AT_high_pc(DW$L$_AuxEepromReadStatus$4$E)
	.dwendtag DW$21


DW$23	.dwtag  DW_TAG_loop
	.dwattr DW$23, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L3:1:1221595856")
	.dwattr DW$23, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$23, DW_AT_begin_line(0x64)
	.dwattr DW$23, DW_AT_end_line(0x64)
DW$24	.dwtag  DW_TAG_loop_range
	.dwattr DW$24, DW_AT_low_pc(DW$L$_AuxEepromReadStatus$2$B)
	.dwattr DW$24, DW_AT_high_pc(DW$L$_AuxEepromReadStatus$2$E)
	.dwendtag DW$23

	.dwattr DW$18, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$18, DW_AT_end_line(0x6d)
	.dwattr DW$18, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$18

	.sect	".text"
	.global	_AuxEepromWriteStatus

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromWriteStatus"), DW_AT_symbol_name("_AuxEepromWriteStatus")
	.dwattr DW$25, DW_AT_low_pc(_AuxEepromWriteStatus)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$25, DW_AT_begin_line(0x80)
	.dwattr DW$25, DW_AT_begin_column(0x06)
	.dwpsn	"AuxEeprom.c",129,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 128 | void AuxEepromWriteStatus(Uint16 Data)                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromWriteStatus         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_AuxEepromWriteStatus:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _Data
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$26, DW_AT_type(*DW$T$19)
	.dwattr DW$26, DW_AT_location[DW_OP_reg0]
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$27, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_location[DW_OP_breg20 -1]
        MOV       *-SP[1],AL            ; |129| 
	.dwpsn	"AuxEeprom.c",131,2
;----------------------------------------------------------------------
; 131 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */      
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22
        OR        @_GpioDataRegs+22,#0x0100 ; |131| 
	.dwpsn	"AuxEeprom.c",132,2
;----------------------------------------------------------------------
; 132 | TxSpi(FormatSpiTxWord(WRSR, 8));                /* Transmit WRSR Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |132| 
        MOVB      AH,#8                 ; |132| 
        LCR       #_FormatSpiTxWord     ; |132| 
        ; call occurs [#_FormatSpiTxWord] ; |132| 
        LCR       #_TxSpi               ; |132| 
        ; call occurs [#_TxSpi] ; |132| 
	.dwpsn	"AuxEeprom.c",133,2
;----------------------------------------------------------------------
; 133 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |133| 
        ; call occurs [#_SpiRxNotReady] ; |133| 
        CMPB      AL,#0                 ; |133| 
        BF        L8,EQ                 ; |133| 
        ; branchcc occurs ; |133| 
L7:    
DW$L$_AuxEepromWriteStatus$2$B:
	.dwpsn	"AuxEeprom.c",133,26
        LCR       #_SpiRxNotReady       ; |133| 
        ; call occurs [#_SpiRxNotReady] ; |133| 
        CMPB      AL,#0                 ; |133| 
        BF        L7,NEQ                ; |133| 
        ; branchcc occurs ; |133| 
DW$L$_AuxEepromWriteStatus$2$E:
L8:    
	.dwpsn	"AuxEeprom.c",134,2
;----------------------------------------------------------------------
; 134 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |134| 
        ; call occurs [#_RxSpi] ; |134| 
	.dwpsn	"AuxEeprom.c",135,2
;----------------------------------------------------------------------
; 135 | TxSpi(FormatSpiTxWord(Data, 8));                /* Transmit Status Data
;     |  to EEPROM */                                                          
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; |135| 
        MOVB      AH,#8                 ; |135| 
        LCR       #_FormatSpiTxWord     ; |135| 
        ; call occurs [#_FormatSpiTxWord] ; |135| 
        LCR       #_TxSpi               ; |135| 
        ; call occurs [#_TxSpi] ; |135| 
	.dwpsn	"AuxEeprom.c",136,2
;----------------------------------------------------------------------
; 136 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |136| 
        ; call occurs [#_SpiRxNotReady] ; |136| 
        CMPB      AL,#0                 ; |136| 
        BF        L10,EQ                ; |136| 
        ; branchcc occurs ; |136| 
L9:    
DW$L$_AuxEepromWriteStatus$4$B:
	.dwpsn	"AuxEeprom.c",136,26
        LCR       #_SpiRxNotReady       ; |136| 
        ; call occurs [#_SpiRxNotReady] ; |136| 
        CMPB      AL,#0                 ; |136| 
        BF        L9,NEQ                ; |136| 
        ; branchcc occurs ; |136| 
DW$L$_AuxEepromWriteStatus$4$E:
L10:    
	.dwpsn	"AuxEeprom.c",137,2
;----------------------------------------------------------------------
; 137 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |137| 
        ; call occurs [#_RxSpi] ; |137| 
	.dwpsn	"AuxEeprom.c",138,2
;----------------------------------------------------------------------
; 138 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x0100 ; |138| 
	.dwpsn	"AuxEeprom.c",140,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$28	.dwtag  DW_TAG_loop
	.dwattr DW$28, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L9:1:1221595856")
	.dwattr DW$28, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$28, DW_AT_begin_line(0x88)
	.dwattr DW$28, DW_AT_end_line(0x88)
DW$29	.dwtag  DW_TAG_loop_range
	.dwattr DW$29, DW_AT_low_pc(DW$L$_AuxEepromWriteStatus$4$B)
	.dwattr DW$29, DW_AT_high_pc(DW$L$_AuxEepromWriteStatus$4$E)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_loop
	.dwattr DW$30, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L7:1:1221595856")
	.dwattr DW$30, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$30, DW_AT_begin_line(0x85)
	.dwattr DW$30, DW_AT_end_line(0x85)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_AuxEepromWriteStatus$2$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_AuxEepromWriteStatus$2$E)
	.dwendtag DW$30

	.dwattr DW$25, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$25, DW_AT_end_line(0x8c)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$25

	.sect	".text"
	.global	_AuxEepromWriteEnable

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromWriteEnable"), DW_AT_symbol_name("_AuxEepromWriteEnable")
	.dwattr DW$32, DW_AT_low_pc(_AuxEepromWriteEnable)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$32, DW_AT_begin_line(0x9e)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwpsn	"AuxEeprom.c",159,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 158 | void AuxEepromWriteEnable(Uint16 State)                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromWriteEnable         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_AuxEepromWriteEnable:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _State
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("State"), DW_AT_symbol_name("_State")
	.dwattr DW$33, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_location[DW_OP_reg0]
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("State"), DW_AT_symbol_name("_State")
	.dwattr DW$34, DW_AT_type(*DW$T$19)
	.dwattr DW$34, DW_AT_location[DW_OP_breg20 -1]
        MOV       *-SP[1],AL            ; |159| 
	.dwpsn	"AuxEeprom.c",161,2
;----------------------------------------------------------------------
; 161 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */
;     |                                                                        
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22
        OR        @_GpioDataRegs+22,#0x0100 ; |161| 
	.dwpsn	"AuxEeprom.c",162,2
;----------------------------------------------------------------------
; 162 | if(State) {                                                            
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; |162| 
        BF        L11,EQ                ; |162| 
        ; branchcc occurs ; |162| 
	.dwpsn	"AuxEeprom.c",163,3
;----------------------------------------------------------------------
; 163 | TxSpi(FormatSpiTxWord(WREN, 8));                                       
;----------------------------------------------------------------------
        MOVB      AL,#6                 ; |163| 
        MOVB      AH,#8                 ; |163| 
        LCR       #_FormatSpiTxWord     ; |163| 
        ; call occurs [#_FormatSpiTxWord] ; |163| 
        LCR       #_TxSpi               ; |163| 
        ; call occurs [#_TxSpi] ; |163| 
	.dwpsn	"AuxEeprom.c",164,2
;----------------------------------------------------------------------
; 165 | else {                                                                 
;----------------------------------------------------------------------
        B         L12,UNC               ; |164| 
        ; branch occurs ; |164| 
L11:    
	.dwpsn	"AuxEeprom.c",166,3
;----------------------------------------------------------------------
; 166 | TxSpi(FormatSpiTxWord(WRDI, 8));                                       
;----------------------------------------------------------------------
        MOVB      AL,#4                 ; |166| 
        MOVB      AH,#8                 ; |166| 
        LCR       #_FormatSpiTxWord     ; |166| 
        ; call occurs [#_FormatSpiTxWord] ; |166| 
        LCR       #_TxSpi               ; |166| 
        ; call occurs [#_TxSpi] ; |166| 
L12:    
	.dwpsn	"AuxEeprom.c",169,2
;----------------------------------------------------------------------
; 169 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |169| 
        ; call occurs [#_SpiRxNotReady] ; |169| 
        CMPB      AL,#0                 ; |169| 
        BF        L14,EQ                ; |169| 
        ; branchcc occurs ; |169| 
L13:    
DW$L$_AuxEepromWriteEnable$5$B:
	.dwpsn	"AuxEeprom.c",169,26
        LCR       #_SpiRxNotReady       ; |169| 
        ; call occurs [#_SpiRxNotReady] ; |169| 
        CMPB      AL,#0                 ; |169| 
        BF        L13,NEQ               ; |169| 
        ; branchcc occurs ; |169| 
DW$L$_AuxEepromWriteEnable$5$E:
L14:    
	.dwpsn	"AuxEeprom.c",170,2
;----------------------------------------------------------------------
; 170 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |170| 
        ; call occurs [#_RxSpi] ; |170| 
	.dwpsn	"AuxEeprom.c",171,2
;----------------------------------------------------------------------
; 171 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x0100 ; |171| 
	.dwpsn	"AuxEeprom.c",173,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$35	.dwtag  DW_TAG_loop
	.dwattr DW$35, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L13:1:1221595856")
	.dwattr DW$35, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$35, DW_AT_begin_line(0xa9)
	.dwattr DW$35, DW_AT_end_line(0xa9)
DW$36	.dwtag  DW_TAG_loop_range
	.dwattr DW$36, DW_AT_low_pc(DW$L$_AuxEepromWriteEnable$5$B)
	.dwattr DW$36, DW_AT_high_pc(DW$L$_AuxEepromWriteEnable$5$E)
	.dwendtag DW$35

	.dwattr DW$32, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$32, DW_AT_end_line(0xad)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$32

	.sect	".text"
	.global	_AuxEepromWriteByte

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromWriteByte"), DW_AT_symbol_name("_AuxEepromWriteByte")
	.dwattr DW$37, DW_AT_low_pc(_AuxEepromWriteByte)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$37, DW_AT_begin_line(0xc0)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwpsn	"AuxEeprom.c",193,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 192 | void AuxEepromWriteByte(Uint16 Addr, Uint16 Data)                      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromWriteByte           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_AuxEepromWriteByte:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _Addr
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Addr"), DW_AT_symbol_name("_Addr")
	.dwattr DW$38, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _Data
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$39, DW_AT_type(*DW$T$19)
	.dwattr DW$39, DW_AT_location[DW_OP_reg1]
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("Addr"), DW_AT_symbol_name("_Addr")
	.dwattr DW$40, DW_AT_type(*DW$T$19)
	.dwattr DW$40, DW_AT_location[DW_OP_breg20 -1]
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$41, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_location[DW_OP_breg20 -2]
        MOV       *-SP[2],AH            ; |193| 
        MOV       *-SP[1],AL            ; |193| 
	.dwpsn	"AuxEeprom.c",195,2
;----------------------------------------------------------------------
; 195 | while(AuxDevNotReady()) {}                                      /* If W
;     | rite in Process; wait */                                               
;----------------------------------------------------------------------
        LCR       #_AuxDevNotReady      ; |195| 
        ; call occurs [#_AuxDevNotReady] ; |195| 
        CMPB      AL,#0                 ; |195| 
        BF        L16,EQ                ; |195| 
        ; branchcc occurs ; |195| 
L15:    
DW$L$_AuxEepromWriteByte$2$B:
	.dwpsn	"AuxEeprom.c",195,27
        LCR       #_AuxDevNotReady      ; |195| 
        ; call occurs [#_AuxDevNotReady] ; |195| 
        CMPB      AL,#0                 ; |195| 
        BF        L15,NEQ               ; |195| 
        ; branchcc occurs ; |195| 
DW$L$_AuxEepromWriteByte$2$E:
L16:    
	.dwpsn	"AuxEeprom.c",197,2
;----------------------------------------------------------------------
; 197 | AuxEepromWriteEnable(TRUE);                                            
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |197| 
        LCR       #_AuxEepromWriteEnable ; |197| 
        ; call occurs [#_AuxEepromWriteEnable] ; |197| 
	.dwpsn	"AuxEeprom.c",199,2
;----------------------------------------------------------------------
; 199 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+22,#0x0100 ; |199| 
	.dwpsn	"AuxEeprom.c",200,2
;----------------------------------------------------------------------
; 200 | TxSpi(FormatSpiTxWord(WRITE, 8));               /* Transmit WRSR Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; |200| 
        MOVB      AH,#8                 ; |200| 
        LCR       #_FormatSpiTxWord     ; |200| 
        ; call occurs [#_FormatSpiTxWord] ; |200| 
        LCR       #_TxSpi               ; |200| 
        ; call occurs [#_TxSpi] ; |200| 
	.dwpsn	"AuxEeprom.c",201,2
;----------------------------------------------------------------------
; 201 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |201| 
        ; call occurs [#_SpiRxNotReady] ; |201| 
        CMPB      AL,#0                 ; |201| 
        BF        L18,EQ                ; |201| 
        ; branchcc occurs ; |201| 
L17:    
DW$L$_AuxEepromWriteByte$4$B:
	.dwpsn	"AuxEeprom.c",201,26
        LCR       #_SpiRxNotReady       ; |201| 
        ; call occurs [#_SpiRxNotReady] ; |201| 
        CMPB      AL,#0                 ; |201| 
        BF        L17,NEQ               ; |201| 
        ; branchcc occurs ; |201| 
DW$L$_AuxEepromWriteByte$4$E:
L18:    
	.dwpsn	"AuxEeprom.c",202,2
;----------------------------------------------------------------------
; 202 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |202| 
        ; call occurs [#_RxSpi] ; |202| 
	.dwpsn	"AuxEeprom.c",203,2
;----------------------------------------------------------------------
; 203 | TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr
;     | Byte to EEPROM */                                                      
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0xff00    ; |203| 
        LSR       AL,8                  ; |203| 
        MOVB      AH,#8                 ; |203| 
        LCR       #_FormatSpiTxWord     ; |203| 
        ; call occurs [#_FormatSpiTxWord] ; |203| 
        LCR       #_TxSpi               ; |203| 
        ; call occurs [#_TxSpi] ; |203| 
	.dwpsn	"AuxEeprom.c",204,2
;----------------------------------------------------------------------
; 204 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |204| 
        ; call occurs [#_SpiRxNotReady] ; |204| 
        CMPB      AL,#0                 ; |204| 
        BF        L20,EQ                ; |204| 
        ; branchcc occurs ; |204| 
L19:    
DW$L$_AuxEepromWriteByte$6$B:
	.dwpsn	"AuxEeprom.c",204,26
        LCR       #_SpiRxNotReady       ; |204| 
        ; call occurs [#_SpiRxNotReady] ; |204| 
        CMPB      AL,#0                 ; |204| 
        BF        L19,NEQ               ; |204| 
        ; branchcc occurs ; |204| 
DW$L$_AuxEepromWriteByte$6$E:
L20:    
	.dwpsn	"AuxEeprom.c",205,2
;----------------------------------------------------------------------
; 205 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |205| 
        ; call occurs [#_RxSpi] ; |205| 
	.dwpsn	"AuxEeprom.c",206,2
;----------------------------------------------------------------------
; 206 | TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to
;     | EEPROM */                                                              
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x00ff    ; |206| 
        MOVB      AH,#8                 ; |206| 
        LCR       #_FormatSpiTxWord     ; |206| 
        ; call occurs [#_FormatSpiTxWord] ; |206| 
        LCR       #_TxSpi               ; |206| 
        ; call occurs [#_TxSpi] ; |206| 
	.dwpsn	"AuxEeprom.c",207,2
;----------------------------------------------------------------------
; 207 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |207| 
        ; call occurs [#_SpiRxNotReady] ; |207| 
        CMPB      AL,#0                 ; |207| 
        BF        L22,EQ                ; |207| 
        ; branchcc occurs ; |207| 
L21:    
DW$L$_AuxEepromWriteByte$8$B:
	.dwpsn	"AuxEeprom.c",207,26
        LCR       #_SpiRxNotReady       ; |207| 
        ; call occurs [#_SpiRxNotReady] ; |207| 
        CMPB      AL,#0                 ; |207| 
        BF        L21,NEQ               ; |207| 
        ; branchcc occurs ; |207| 
DW$L$_AuxEepromWriteByte$8$E:
L22:    
	.dwpsn	"AuxEeprom.c",208,2
;----------------------------------------------------------------------
; 208 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |208| 
        ; call occurs [#_RxSpi] ; |208| 
	.dwpsn	"AuxEeprom.c",209,2
;----------------------------------------------------------------------
; 209 | TxSpi(FormatSpiTxWord((Data & 0xff), 8)); /* Transmit Data Byte to EEPR
;     | OM */                                                                  
;----------------------------------------------------------------------
        AND       AL,*-SP[2],#0x00ff    ; |209| 
        MOVB      AH,#8                 ; |209| 
        LCR       #_FormatSpiTxWord     ; |209| 
        ; call occurs [#_FormatSpiTxWord] ; |209| 
        LCR       #_TxSpi               ; |209| 
        ; call occurs [#_TxSpi] ; |209| 
	.dwpsn	"AuxEeprom.c",210,2
;----------------------------------------------------------------------
; 210 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |210| 
        ; call occurs [#_SpiRxNotReady] ; |210| 
        CMPB      AL,#0                 ; |210| 
        BF        L24,EQ                ; |210| 
        ; branchcc occurs ; |210| 
L23:    
DW$L$_AuxEepromWriteByte$10$B:
	.dwpsn	"AuxEeprom.c",210,26
        LCR       #_SpiRxNotReady       ; |210| 
        ; call occurs [#_SpiRxNotReady] ; |210| 
        CMPB      AL,#0                 ; |210| 
        BF        L23,NEQ               ; |210| 
        ; branchcc occurs ; |210| 
DW$L$_AuxEepromWriteByte$10$E:
L24:    
	.dwpsn	"AuxEeprom.c",211,2
;----------------------------------------------------------------------
; 211 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |211| 
        ; call occurs [#_RxSpi] ; |211| 
	.dwpsn	"AuxEeprom.c",212,2
;----------------------------------------------------------------------
; 212 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x0100 ; |212| 
	.dwpsn	"AuxEeprom.c",214,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$42	.dwtag  DW_TAG_loop
	.dwattr DW$42, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L23:1:1221595856")
	.dwattr DW$42, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$42, DW_AT_begin_line(0xd2)
	.dwattr DW$42, DW_AT_end_line(0xd2)
DW$43	.dwtag  DW_TAG_loop_range
	.dwattr DW$43, DW_AT_low_pc(DW$L$_AuxEepromWriteByte$10$B)
	.dwattr DW$43, DW_AT_high_pc(DW$L$_AuxEepromWriteByte$10$E)
	.dwendtag DW$42


DW$44	.dwtag  DW_TAG_loop
	.dwattr DW$44, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L21:1:1221595856")
	.dwattr DW$44, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$44, DW_AT_begin_line(0xcf)
	.dwattr DW$44, DW_AT_end_line(0xcf)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_AuxEepromWriteByte$8$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_AuxEepromWriteByte$8$E)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L19:1:1221595856")
	.dwattr DW$46, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$46, DW_AT_begin_line(0xcc)
	.dwattr DW$46, DW_AT_end_line(0xcc)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_AuxEepromWriteByte$6$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_AuxEepromWriteByte$6$E)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L17:1:1221595856")
	.dwattr DW$48, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$48, DW_AT_begin_line(0xc9)
	.dwattr DW$48, DW_AT_end_line(0xc9)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_AuxEepromWriteByte$4$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_AuxEepromWriteByte$4$E)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L15:1:1221595856")
	.dwattr DW$50, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$50, DW_AT_begin_line(0xc3)
	.dwattr DW$50, DW_AT_end_line(0xc3)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_AuxEepromWriteByte$2$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_AuxEepromWriteByte$2$E)
	.dwendtag DW$50

	.dwattr DW$37, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$37, DW_AT_end_line(0xd6)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$37

	.sect	".text"
	.global	_AuxEepromReadByte

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromReadByte"), DW_AT_symbol_name("_AuxEepromReadByte")
	.dwattr DW$52, DW_AT_low_pc(_AuxEepromReadByte)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$52, DW_AT_begin_line(0xe8)
	.dwattr DW$52, DW_AT_begin_column(0x08)
	.dwpsn	"AuxEeprom.c",233,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 232 | Uint16 AuxEepromReadByte(Uint16 Addr)                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromReadByte            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_AuxEepromReadByte:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _Addr
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Addr"), DW_AT_symbol_name("_Addr")
	.dwattr DW$53, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_location[DW_OP_reg0]
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("Addr"), DW_AT_symbol_name("_Addr")
	.dwattr DW$54, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_location[DW_OP_breg20 -1]
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("DataRet"), DW_AT_symbol_name("_DataRet")
	.dwattr DW$55, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_location[DW_OP_breg20 -2]
;----------------------------------------------------------------------
; 234 | Uint16 DataRet;                                                        
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; |233| 
	.dwpsn	"AuxEeprom.c",236,2
;----------------------------------------------------------------------
; 236 | while(AuxDevNotReady()) {}                              /* If Write in
;     | Process; wait */                                                       
;----------------------------------------------------------------------
        LCR       #_AuxDevNotReady      ; |236| 
        ; call occurs [#_AuxDevNotReady] ; |236| 
        CMPB      AL,#0                 ; |236| 
        BF        L26,EQ                ; |236| 
        ; branchcc occurs ; |236| 
L25:    
DW$L$_AuxEepromReadByte$2$B:
	.dwpsn	"AuxEeprom.c",236,27
        LCR       #_AuxDevNotReady      ; |236| 
        ; call occurs [#_AuxDevNotReady] ; |236| 
        CMPB      AL,#0                 ; |236| 
        BF        L25,NEQ               ; |236| 
        ; branchcc occurs ; |236| 
DW$L$_AuxEepromReadByte$2$E:
L26:    
	.dwpsn	"AuxEeprom.c",238,2
;----------------------------------------------------------------------
; 238 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */      
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22
        OR        @_GpioDataRegs+22,#0x0100 ; |238| 
	.dwpsn	"AuxEeprom.c",239,2
;----------------------------------------------------------------------
; 239 | TxSpi(FormatSpiTxWord(READ, 8));                /* Transmit READ Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; |239| 
        MOVB      AH,#8                 ; |239| 
        LCR       #_FormatSpiTxWord     ; |239| 
        ; call occurs [#_FormatSpiTxWord] ; |239| 
        LCR       #_TxSpi               ; |239| 
        ; call occurs [#_TxSpi] ; |239| 
	.dwpsn	"AuxEeprom.c",240,2
;----------------------------------------------------------------------
; 240 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |240| 
        ; call occurs [#_SpiRxNotReady] ; |240| 
        CMPB      AL,#0                 ; |240| 
        BF        L28,EQ                ; |240| 
        ; branchcc occurs ; |240| 
L27:    
DW$L$_AuxEepromReadByte$4$B:
	.dwpsn	"AuxEeprom.c",240,26
        LCR       #_SpiRxNotReady       ; |240| 
        ; call occurs [#_SpiRxNotReady] ; |240| 
        CMPB      AL,#0                 ; |240| 
        BF        L27,NEQ               ; |240| 
        ; branchcc occurs ; |240| 
DW$L$_AuxEepromReadByte$4$E:
L28:    
	.dwpsn	"AuxEeprom.c",241,2
;----------------------------------------------------------------------
; 241 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |241| 
        ; call occurs [#_RxSpi] ; |241| 
        MOV       *-SP[2],AL            ; |241| 
	.dwpsn	"AuxEeprom.c",242,2
;----------------------------------------------------------------------
; 242 | TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr
;     | Byte to EEPROM */                                                      
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0xff00    ; |242| 
        LSR       AL,8                  ; |242| 
        MOVB      AH,#8                 ; |242| 
        LCR       #_FormatSpiTxWord     ; |242| 
        ; call occurs [#_FormatSpiTxWord] ; |242| 
        LCR       #_TxSpi               ; |242| 
        ; call occurs [#_TxSpi] ; |242| 
	.dwpsn	"AuxEeprom.c",243,2
;----------------------------------------------------------------------
; 243 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |243| 
        ; call occurs [#_SpiRxNotReady] ; |243| 
        CMPB      AL,#0                 ; |243| 
        BF        L30,EQ                ; |243| 
        ; branchcc occurs ; |243| 
L29:    
DW$L$_AuxEepromReadByte$6$B:
	.dwpsn	"AuxEeprom.c",243,26
        LCR       #_SpiRxNotReady       ; |243| 
        ; call occurs [#_SpiRxNotReady] ; |243| 
        CMPB      AL,#0                 ; |243| 
        BF        L29,NEQ               ; |243| 
        ; branchcc occurs ; |243| 
DW$L$_AuxEepromReadByte$6$E:
L30:    
	.dwpsn	"AuxEeprom.c",244,2
;----------------------------------------------------------------------
; 244 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |244| 
        ; call occurs [#_RxSpi] ; |244| 
        MOV       *-SP[2],AL            ; |244| 
	.dwpsn	"AuxEeprom.c",245,2
;----------------------------------------------------------------------
; 245 | TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to
;     | EEPROM */                                                              
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x00ff    ; |245| 
        MOVB      AH,#8                 ; |245| 
        LCR       #_FormatSpiTxWord     ; |245| 
        ; call occurs [#_FormatSpiTxWord] ; |245| 
        LCR       #_TxSpi               ; |245| 
        ; call occurs [#_TxSpi] ; |245| 
	.dwpsn	"AuxEeprom.c",246,2
;----------------------------------------------------------------------
; 246 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |246| 
        ; call occurs [#_SpiRxNotReady] ; |246| 
        CMPB      AL,#0                 ; |246| 
        BF        L32,EQ                ; |246| 
        ; branchcc occurs ; |246| 
L31:    
DW$L$_AuxEepromReadByte$8$B:
	.dwpsn	"AuxEeprom.c",246,26
        LCR       #_SpiRxNotReady       ; |246| 
        ; call occurs [#_SpiRxNotReady] ; |246| 
        CMPB      AL,#0                 ; |246| 
        BF        L31,NEQ               ; |246| 
        ; branchcc occurs ; |246| 
DW$L$_AuxEepromReadByte$8$E:
L32:    
	.dwpsn	"AuxEeprom.c",247,2
;----------------------------------------------------------------------
; 247 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |247| 
        ; call occurs [#_RxSpi] ; |247| 
        MOV       *-SP[2],AL            ; |247| 
	.dwpsn	"AuxEeprom.c",248,2
;----------------------------------------------------------------------
; 248 | TxSpi(0x00);                                                    /* Tran
;     | smit dummy data to EEPROM */                                           
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_TxSpi               ; |248| 
        ; call occurs [#_TxSpi] ; |248| 
	.dwpsn	"AuxEeprom.c",249,2
;----------------------------------------------------------------------
; 249 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |249| 
        ; call occurs [#_SpiRxNotReady] ; |249| 
        CMPB      AL,#0                 ; |249| 
        BF        L34,EQ                ; |249| 
        ; branchcc occurs ; |249| 
L33:    
DW$L$_AuxEepromReadByte$10$B:
	.dwpsn	"AuxEeprom.c",249,26
        LCR       #_SpiRxNotReady       ; |249| 
        ; call occurs [#_SpiRxNotReady] ; |249| 
        CMPB      AL,#0                 ; |249| 
        BF        L33,NEQ               ; |249| 
        ; branchcc occurs ; |249| 
DW$L$_AuxEepromReadByte$10$E:
L34:    
	.dwpsn	"AuxEeprom.c",250,2
;----------------------------------------------------------------------
; 250 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |250| 
        ; call occurs [#_RxSpi] ; |250| 
        MOV       *-SP[2],AL            ; |250| 
	.dwpsn	"AuxEeprom.c",251,2
;----------------------------------------------------------------------
; 251 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x0100 ; |251| 
	.dwpsn	"AuxEeprom.c",253,2
;----------------------------------------------------------------------
; 253 | return (DataRet & 0xff);                                               
;----------------------------------------------------------------------
        AND       AL,*-SP[2],#0x00ff    ; |253| 
	.dwpsn	"AuxEeprom.c",255,1
        SUBB      SP,#2                 ; |253| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L33:1:1221595856")
	.dwattr DW$56, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$56, DW_AT_begin_line(0xf9)
	.dwattr DW$56, DW_AT_end_line(0xf9)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_AuxEepromReadByte$10$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_AuxEepromReadByte$10$E)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L31:1:1221595856")
	.dwattr DW$58, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$58, DW_AT_begin_line(0xf6)
	.dwattr DW$58, DW_AT_end_line(0xf6)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_AuxEepromReadByte$8$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_AuxEepromReadByte$8$E)
	.dwendtag DW$58


DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L29:1:1221595856")
	.dwattr DW$60, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$60, DW_AT_begin_line(0xf3)
	.dwattr DW$60, DW_AT_end_line(0xf3)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_AuxEepromReadByte$6$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_AuxEepromReadByte$6$E)
	.dwendtag DW$60


DW$62	.dwtag  DW_TAG_loop
	.dwattr DW$62, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L27:1:1221595856")
	.dwattr DW$62, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$62, DW_AT_begin_line(0xf0)
	.dwattr DW$62, DW_AT_end_line(0xf0)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_AuxEepromReadByte$4$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_AuxEepromReadByte$4$E)
	.dwendtag DW$62


DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L25:1:1221595856")
	.dwattr DW$64, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$64, DW_AT_begin_line(0xec)
	.dwattr DW$64, DW_AT_end_line(0xec)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_AuxEepromReadByte$2$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_AuxEepromReadByte$2$E)
	.dwendtag DW$64

	.dwattr DW$52, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$52, DW_AT_end_line(0xff)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$52

	.sect	".text"
	.global	_AuxEepromTest

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("AuxEepromTest"), DW_AT_symbol_name("_AuxEepromTest")
	.dwattr DW$66, DW_AT_low_pc(_AuxEepromTest)
	.dwattr DW$66, DW_AT_high_pc(0x00)
	.dwattr DW$66, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$66, DW_AT_begin_line(0x115)
	.dwattr DW$66, DW_AT_begin_column(0x08)
	.dwpsn	"AuxEeprom.c",278,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 277 | Uint16 AuxEepromTest(void)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxEepromTest                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_AuxEepromTest:
;----------------------------------------------------------------------
; 279 | Uint16 idx;                                                            
;----------------------------------------------------------------------
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#6
	.dwcfa	0x1d, -8
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$67, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_location[DW_OP_breg20 -1]
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("Datum"), DW_AT_symbol_name("_Datum")
	.dwattr DW$68, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_location[DW_OP_breg20 -2]
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("ErrCnt"), DW_AT_symbol_name("_ErrCnt")
	.dwattr DW$69, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_location[DW_OP_breg20 -3]
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("Sum"), DW_AT_symbol_name("_Sum")
	.dwattr DW$70, DW_AT_type(*DW$T$84)
	.dwattr DW$70, DW_AT_location[DW_OP_breg20 -6]
	.dwpsn	"AuxEeprom.c",280,6
;----------------------------------------------------------------------
; 280 | int Datum = -1;                                                        
;----------------------------------------------------------------------
        MOV       *-SP[2],#-1           ; |280| 
	.dwpsn	"AuxEeprom.c",281,9
;----------------------------------------------------------------------
; 281 | Uint16 ErrCnt = 0;                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; |281| 
	.dwpsn	"AuxEeprom.c",282,9
;----------------------------------------------------------------------
; 282 | Uint32 Sum = 0;                                                        
;----------------------------------------------------------------------
        MOVB      ACC,#0
        MOVL      *-SP[6],ACC           ; |282| 
	.dwpsn	"AuxEeprom.c",284,6
;----------------------------------------------------------------------
; 284 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |284| 
	.dwpsn	"AuxEeprom.c",284,15
        MOV       AL,*-SP[1]            ; |284| 
        CMP       AL,#8192              ; |284| 
        B         L37,HIS               ; |284| 
        ; branchcc occurs ; |284| 
L35:    
DW$L$_AuxEepromTest$2$B:
	.dwpsn	"AuxEeprom.c",285,3
;----------------------------------------------------------------------
; 285 | if(!(idx % 32))                                                        
;----------------------------------------------------------------------
        ANDB      AL,#0x1f              ; |285| 
        BF        L36,NEQ               ; |285| 
        ; branchcc occurs ; |285| 
DW$L$_AuxEepromTest$2$E:
DW$L$_AuxEepromTest$3$B:
	.dwpsn	"AuxEeprom.c",286,4
;----------------------------------------------------------------------
; 286 | Datum++;                                                               
;----------------------------------------------------------------------
        INC       *-SP[2]               ; |286| 
DW$L$_AuxEepromTest$3$E:
L36:    
DW$L$_AuxEepromTest$4$B:
	.dwpsn	"AuxEeprom.c",287,3
;----------------------------------------------------------------------
; 287 | AuxEepromWriteByte(idx, Datum);                                        
;----------------------------------------------------------------------
        MOV       AH,*-SP[2]            ; |287| 
        MOV       AL,*-SP[1]            ; |287| 
        LCR       #_AuxEepromWriteByte  ; |287| 
        ; call occurs [#_AuxEepromWriteByte] ; |287| 
	.dwpsn	"AuxEeprom.c",284,34
        INC       *-SP[1]               ; |284| 
	.dwpsn	"AuxEeprom.c",284,15
        MOV       AL,*-SP[1]            ; |284| 
        CMP       AL,#8192              ; |284| 
        B         L35,LO                ; |284| 
        ; branchcc occurs ; |284| 
DW$L$_AuxEepromTest$4$E:
L37:    
	.dwpsn	"AuxEeprom.c",290,6
;----------------------------------------------------------------------
; 290 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |290| 
	.dwpsn	"AuxEeprom.c",290,15
        MOV       AL,*-SP[1]            ; |290| 
        CMP       AL,#8192              ; |290| 
        B         L39,HIS               ; |290| 
        ; branchcc occurs ; |290| 
L38:    
DW$L$_AuxEepromTest$6$B:
	.dwpsn	"AuxEeprom.c",291,3
;----------------------------------------------------------------------
; 291 | Sum += AuxEepromReadByte(idx);                                         
;----------------------------------------------------------------------
        LCR       #_AuxEepromReadByte   ; |291| 
        ; call occurs [#_AuxEepromReadByte] ; |291| 
        MOVZ      AR6,AL                ; |291| 
        MOVL      ACC,*-SP[6]           ; |291| 
        ADDU      ACC,AR6               ; |291| 
        MOVL      *-SP[6],ACC           ; |291| 
	.dwpsn	"AuxEeprom.c",290,34
        INC       *-SP[1]               ; |290| 
	.dwpsn	"AuxEeprom.c",290,15
        MOV       AL,*-SP[1]            ; |290| 
        CMP       AL,#8192              ; |290| 
        B         L38,LO                ; |290| 
        ; branchcc occurs ; |290| 
DW$L$_AuxEepromTest$6$E:
L39:    
	.dwpsn	"AuxEeprom.c",294,2
;----------------------------------------------------------------------
; 294 | if(Sum != 0xff000)                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#1044480         ; |294| 
        MOVL      ACC,XAR4              ; |294| 
        CMPL      ACC,*-SP[6]           ; |294| 
        BF        L40,EQ                ; |294| 
        ; branchcc occurs ; |294| 
	.dwpsn	"AuxEeprom.c",295,3
;----------------------------------------------------------------------
; 295 | ErrCnt |= 0x0001;                                                      
;----------------------------------------------------------------------
        OR        *-SP[3],#0x0001       ; |295| 
L40:    
	.dwpsn	"AuxEeprom.c",297,6
;----------------------------------------------------------------------
; 297 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |297| 
	.dwpsn	"AuxEeprom.c",297,15
        MOV       AL,*-SP[1]            ; |297| 
        CMP       AL,#8192              ; |297| 
        B         L42,HIS               ; |297| 
        ; branchcc occurs ; |297| 
L41:    
DW$L$_AuxEepromTest$10$B:
	.dwpsn	"AuxEeprom.c",298,3
;----------------------------------------------------------------------
; 298 | AuxEepromWriteByte(idx, 0x55);                                         
;----------------------------------------------------------------------
        MOVB      AH,#85                ; |298| 
        LCR       #_AuxEepromWriteByte  ; |298| 
        ; call occurs [#_AuxEepromWriteByte] ; |298| 
	.dwpsn	"AuxEeprom.c",297,34
        INC       *-SP[1]               ; |297| 
	.dwpsn	"AuxEeprom.c",297,15
        MOV       AL,*-SP[1]            ; |297| 
        CMP       AL,#8192              ; |297| 
        B         L41,LO                ; |297| 
        ; branchcc occurs ; |297| 
DW$L$_AuxEepromTest$10$E:
L42:    
	.dwpsn	"AuxEeprom.c",300,6
;----------------------------------------------------------------------
; 300 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |300| 
	.dwpsn	"AuxEeprom.c",300,15
        MOV       AL,*-SP[1]            ; |300| 
        CMP       AL,#8192              ; |300| 
        B         L45,HIS               ; |300| 
        ; branchcc occurs ; |300| 
L43:    
DW$L$_AuxEepromTest$12$B:
	.dwpsn	"AuxEeprom.c",301,3
;----------------------------------------------------------------------
; 301 | if(AuxEepromReadByte(idx) != 0x55) {                                   
;----------------------------------------------------------------------
        LCR       #_AuxEepromReadByte   ; |301| 
        ; call occurs [#_AuxEepromReadByte] ; |301| 
        CMPB      AL,#85                ; |301| 
        BF        L44,EQ                ; |301| 
        ; branchcc occurs ; |301| 
DW$L$_AuxEepromTest$12$E:
	.dwpsn	"AuxEeprom.c",302,4
;----------------------------------------------------------------------
; 302 | ErrCnt |= 0x0002;                                                      
;----------------------------------------------------------------------
        OR        *-SP[3],#0x0002       ; |302| 
	.dwpsn	"AuxEeprom.c",303,4
;----------------------------------------------------------------------
; 303 | break;                                                                 
;----------------------------------------------------------------------
        B         L45,UNC               ; |303| 
        ; branch occurs ; |303| 
L44:    
DW$L$_AuxEepromTest$14$B:
	.dwpsn	"AuxEeprom.c",300,34
        INC       *-SP[1]               ; |300| 
	.dwpsn	"AuxEeprom.c",300,15
        MOV       AL,*-SP[1]            ; |300| 
        CMP       AL,#8192              ; |300| 
        B         L43,LO                ; |300| 
        ; branchcc occurs ; |300| 
DW$L$_AuxEepromTest$14$E:
L45:    
	.dwpsn	"AuxEeprom.c",307,6
;----------------------------------------------------------------------
; 307 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |307| 
	.dwpsn	"AuxEeprom.c",307,15
        MOV       AL,*-SP[1]            ; |307| 
        CMP       AL,#8192              ; |307| 
        B         L47,HIS               ; |307| 
        ; branchcc occurs ; |307| 
L46:    
DW$L$_AuxEepromTest$16$B:
	.dwpsn	"AuxEeprom.c",308,3
;----------------------------------------------------------------------
; 308 | AuxEepromWriteByte(idx, 0xaa);                                         
;----------------------------------------------------------------------
        MOVB      AH,#170               ; |308| 
        LCR       #_AuxEepromWriteByte  ; |308| 
        ; call occurs [#_AuxEepromWriteByte] ; |308| 
	.dwpsn	"AuxEeprom.c",307,34
        INC       *-SP[1]               ; |307| 
	.dwpsn	"AuxEeprom.c",307,15
        MOV       AL,*-SP[1]            ; |307| 
        CMP       AL,#8192              ; |307| 
        B         L46,LO                ; |307| 
        ; branchcc occurs ; |307| 
DW$L$_AuxEepromTest$16$E:
L47:    
	.dwpsn	"AuxEeprom.c",310,6
;----------------------------------------------------------------------
; 310 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |310| 
	.dwpsn	"AuxEeprom.c",310,15
        MOV       AL,*-SP[1]            ; |310| 
        CMP       AL,#8192              ; |310| 
        B         L50,HIS               ; |310| 
        ; branchcc occurs ; |310| 
L48:    
DW$L$_AuxEepromTest$18$B:
	.dwpsn	"AuxEeprom.c",311,3
;----------------------------------------------------------------------
; 311 | if(AuxEepromReadByte(idx) != 0xaa) {                                   
;----------------------------------------------------------------------
        LCR       #_AuxEepromReadByte   ; |311| 
        ; call occurs [#_AuxEepromReadByte] ; |311| 
        CMPB      AL,#170               ; |311| 
        BF        L49,EQ                ; |311| 
        ; branchcc occurs ; |311| 
DW$L$_AuxEepromTest$18$E:
	.dwpsn	"AuxEeprom.c",312,4
;----------------------------------------------------------------------
; 312 | ErrCnt |= 0x0004;                                                      
;----------------------------------------------------------------------
        OR        *-SP[3],#0x0004       ; |312| 
	.dwpsn	"AuxEeprom.c",313,4
;----------------------------------------------------------------------
; 313 | break;                                                                 
;----------------------------------------------------------------------
        B         L50,UNC               ; |313| 
        ; branch occurs ; |313| 
L49:    
DW$L$_AuxEepromTest$20$B:
	.dwpsn	"AuxEeprom.c",310,34
        INC       *-SP[1]               ; |310| 
	.dwpsn	"AuxEeprom.c",310,15
        MOV       AL,*-SP[1]            ; |310| 
        CMP       AL,#8192              ; |310| 
        B         L48,LO                ; |310| 
        ; branchcc occurs ; |310| 
DW$L$_AuxEepromTest$20$E:
L50:    
	.dwpsn	"AuxEeprom.c",317,6
;----------------------------------------------------------------------
; 317 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |317| 
	.dwpsn	"AuxEeprom.c",317,15
        MOV       AL,*-SP[1]            ; |317| 
        CMP       AL,#8192              ; |317| 
        B         L52,HIS               ; |317| 
        ; branchcc occurs ; |317| 
L51:    
DW$L$_AuxEepromTest$22$B:
	.dwpsn	"AuxEeprom.c",318,3
;----------------------------------------------------------------------
; 318 | AuxEepromWriteByte(idx, 0xff);                                         
;----------------------------------------------------------------------
        MOVB      AH,#255               ; |318| 
        LCR       #_AuxEepromWriteByte  ; |318| 
        ; call occurs [#_AuxEepromWriteByte] ; |318| 
	.dwpsn	"AuxEeprom.c",317,34
        INC       *-SP[1]               ; |317| 
	.dwpsn	"AuxEeprom.c",317,15
        MOV       AL,*-SP[1]            ; |317| 
        CMP       AL,#8192              ; |317| 
        B         L51,LO                ; |317| 
        ; branchcc occurs ; |317| 
DW$L$_AuxEepromTest$22$E:
L52:    
	.dwpsn	"AuxEeprom.c",320,2
;----------------------------------------------------------------------
; 320 | return ErrCnt;                                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; |320| 
	.dwpsn	"AuxEeprom.c",322,1
        SUBB      SP,#6                 ; |320| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$71	.dwtag  DW_TAG_loop
	.dwattr DW$71, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L51:1:1221595856")
	.dwattr DW$71, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$71, DW_AT_begin_line(0x13d)
	.dwattr DW$71, DW_AT_end_line(0x13e)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_AuxEepromTest$22$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_AuxEepromTest$22$E)
	.dwendtag DW$71


DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L48:1:1221595856")
	.dwattr DW$73, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$73, DW_AT_begin_line(0x136)
	.dwattr DW$73, DW_AT_end_line(0x13b)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_AuxEepromTest$18$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_AuxEepromTest$18$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_AuxEepromTest$20$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_AuxEepromTest$20$E)
	.dwendtag DW$73


DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L46:1:1221595856")
	.dwattr DW$76, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$76, DW_AT_begin_line(0x133)
	.dwattr DW$76, DW_AT_end_line(0x134)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_AuxEepromTest$16$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_AuxEepromTest$16$E)
	.dwendtag DW$76


DW$78	.dwtag  DW_TAG_loop
	.dwattr DW$78, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L43:1:1221595856")
	.dwattr DW$78, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$78, DW_AT_begin_line(0x12c)
	.dwattr DW$78, DW_AT_end_line(0x131)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_AuxEepromTest$12$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_AuxEepromTest$12$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_AuxEepromTest$14$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_AuxEepromTest$14$E)
	.dwendtag DW$78


DW$81	.dwtag  DW_TAG_loop
	.dwattr DW$81, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L41:1:1221595856")
	.dwattr DW$81, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$81, DW_AT_begin_line(0x129)
	.dwattr DW$81, DW_AT_end_line(0x12a)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_AuxEepromTest$10$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_AuxEepromTest$10$E)
	.dwendtag DW$81


DW$83	.dwtag  DW_TAG_loop
	.dwattr DW$83, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L38:1:1221595856")
	.dwattr DW$83, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$83, DW_AT_begin_line(0x122)
	.dwattr DW$83, DW_AT_end_line(0x124)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_AuxEepromTest$6$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_AuxEepromTest$6$E)
	.dwendtag DW$83


DW$85	.dwtag  DW_TAG_loop
	.dwattr DW$85, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/AuxEeprom.asm:L35:1:1221595856")
	.dwattr DW$85, DW_AT_begin_file("AuxEeprom.c")
	.dwattr DW$85, DW_AT_begin_line(0x11c)
	.dwattr DW$85, DW_AT_end_line(0x120)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_AuxEepromTest$2$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_AuxEepromTest$2$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_AuxEepromTest$3$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_AuxEepromTest$3$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$_AuxEepromTest$4$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$_AuxEepromTest$4$E)
	.dwendtag DW$85

	.dwattr DW$66, DW_AT_end_file("AuxEeprom.c")
	.dwattr DW$66, DW_AT_end_line(0x142)
	.dwattr DW$66, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$66

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_TxSpi
	.global	_ConfigSpi
	.global	_FormatSpiTxWord
	.global	_RxSpi
	.global	_SpiRxNotReady
	.global	_SpiTxNotReady
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)

DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$75

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$81

DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$97	.dwtag  DW_TAG_far_type
	.dwattr DW$97, DW_AT_type(*DW$T$69)
DW$T$89	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$89, DW_AT_type(*DW$97)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$69, DW_AT_byte_size(0x20)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$98, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$99, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$100, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$101, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$102, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$103, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$104, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$105, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$106, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$107, DW_AT_name("GPDDAT"), DW_AT_symbol_name("_GPDDAT")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$108, DW_AT_name("GPDSET"), DW_AT_symbol_name("_GPDSET")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$109, DW_AT_name("GPDCLEAR"), DW_AT_symbol_name("_GPDCLEAR")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$110, DW_AT_name("GPDTOGGLE"), DW_AT_symbol_name("_GPDTOGGLE")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$111, DW_AT_name("GPEDAT"), DW_AT_symbol_name("_GPEDAT")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$112, DW_AT_name("GPESET"), DW_AT_symbol_name("_GPESET")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$113, DW_AT_name("GPECLEAR"), DW_AT_symbol_name("_GPECLEAR")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$114, DW_AT_name("GPETOGGLE"), DW_AT_symbol_name("_GPETOGGLE")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$115, DW_AT_name("GPFDAT"), DW_AT_symbol_name("_GPFDAT")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$116, DW_AT_name("GPFSET"), DW_AT_symbol_name("_GPFSET")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$117, DW_AT_name("GPFCLEAR"), DW_AT_symbol_name("_GPFCLEAR")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$118, DW_AT_name("GPFTOGGLE"), DW_AT_symbol_name("_GPFTOGGLE")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$119, DW_AT_name("GPGDAT"), DW_AT_symbol_name("_GPGDAT")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$120, DW_AT_name("GPGSET"), DW_AT_symbol_name("_GPGSET")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$121, DW_AT_name("GPGCLEAR"), DW_AT_symbol_name("_GPGCLEAR")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$122, DW_AT_name("GPGTOGGLE"), DW_AT_symbol_name("_GPGTOGGLE")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$123, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x04)
DW$124	.dwtag  DW_TAG_subrange_type
	.dwattr DW$124, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$68


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$126, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("GPASET_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$128, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("GPACLEAR_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$130, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$132, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$134, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("GPBSET_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$136, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("GPBCLEAR_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$138, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$140, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("GPDDAT_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$142, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("GPDSET_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$144, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("GPDCLEAR_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$146, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$148, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("GPEDAT_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$150, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("GPESET_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$152, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("GPECLEAR_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$154, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$156, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("GPFDAT_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$158, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("GPFSET_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$160, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("GPFCLEAR_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$162, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$164, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("GPGDAT_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$166, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr DW$T$63, DW_AT_name("GPGSET_REG")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$168, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr DW$T$65, DW_AT_name("GPGCLEAR_REG")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$170, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$172, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$173, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$174, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$175, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$176, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$177, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$178, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$179, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$180, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$181, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$182, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$183, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$184, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$185, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$186, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$187, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$188, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("GPASET_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$189, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$190, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$191, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$192, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$193, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$194, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$195, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$196, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$197, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$198, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$199, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$200, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$201, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$202, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$203, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$204, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("GPACLEAR_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$205, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$206, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$207, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$208, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$209, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$210, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$211, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$212, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$213, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$214, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$215, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$216, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$217, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$218, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$219, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$220, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$221, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$222, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$222, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$223, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$224, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$225, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$226, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$227, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$228, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$229, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$230, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$231, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$232, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$233, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$234, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$235, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$236, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$237, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$238, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$239, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$240, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$241, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$242, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$243, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$244, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$245, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$246, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$247, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$248, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$249, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$250, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$251, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$252, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("GPBSET_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$253, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$254, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$255, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$256, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$257, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$258, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$259, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$260, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$261, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$262, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$263, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$264, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$265, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$266, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$267, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$268, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("GPBCLEAR_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$269, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$270, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$271, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$272, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$273, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$274, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$275, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$276, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$277, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$278, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$279, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$279, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$280, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$280, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$281, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$281, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$282, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$282, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$283, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$283, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$284, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$284, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$285, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$285, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$286, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$286, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$287, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$287, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$288, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$288, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$289, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$290, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$291, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$292, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$293, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$294, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$295, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$296, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$297, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$297, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$298, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$298, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$299, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$299, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$300, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$300, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("GPDDAT_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$301, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$301, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$302, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$303, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$303, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$304, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$304, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$305, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$306, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("GPDSET_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$307, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$308, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$309, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$310, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$310, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$311, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$311, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$312, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$312, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("GPDCLEAR_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$313, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$313, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$314, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$314, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$315, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$315, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$316, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$316, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$317, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$317, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$318, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$318, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$319, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$320, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$320, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$321, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$321, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$322, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$322, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$323, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$323, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$324, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$324, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("GPEDAT_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$325, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$325, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$326, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$326, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$327, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$327, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$328, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("GPESET_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$329, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$330, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$330, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$331, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$331, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$332, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$332, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("GPECLEAR_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$333, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$333, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$334, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$334, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$335, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$335, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$336, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$336, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$337, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$337, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$338, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$338, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$339, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$339, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$340, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$340, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("GPFDAT_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$341, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$341, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$342, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$342, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$343, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$343, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$344, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$344, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$345, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$345, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$346, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$346, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$347, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$347, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$348, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$348, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$349, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$349, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$350, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$350, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$351, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$351, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$352, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$352, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$353, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$353, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$354, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$354, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$355, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$355, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$356, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$356, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("GPFSET_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$357, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$357, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$358, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$358, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$359, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$359, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$360, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$360, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$361, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$361, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$362, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$362, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$363, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$363, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$364, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$364, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$365, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$365, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$366, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$366, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$367, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$367, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$368, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$368, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$369, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$369, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$370, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$370, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$371, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$371, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$372, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$372, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("GPFCLEAR_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$373, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$373, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$374, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$374, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$375, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$375, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$376, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$376, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$377, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$377, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$378, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$378, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$379, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$379, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$380, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$380, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$381, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$381, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$382, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$382, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$383, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$383, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$384, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$384, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$385, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$385, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$386, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$386, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$387, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$387, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$388, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$388, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$389, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$389, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$390, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$390, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$391, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$391, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$392, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$392, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$393, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$393, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$394, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$394, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$395, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$395, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$396, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$396, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$397, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$397, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$398, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$398, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$399, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$399, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$400, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$400, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$401, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$401, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$402, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$402, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$403, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$403, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$404, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$404, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("GPGDAT_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$405, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$405, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$406, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$406, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$407, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$407, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$408, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$408, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("GPGSET_BITS")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$409, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$409, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$410, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$410, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$411, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$411, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$412, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$412, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("GPGCLEAR_BITS")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$413, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$413, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$414, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$414, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$415, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$415, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$416, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$416, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$417, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$417, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$418, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$418, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$419, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$419, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$420, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$420, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_type(*DW$T$19)
	.dwattr DW$18, DW_AT_external(0x01)
	.dwattr DW$18, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_external(0x01)
	.dwattr DW$66, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 40
	.dwcfa	0x0c, 20, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x08, 6
	.dwcfa	0x08, 7
	.dwcfa	0x08, 8
	.dwcfa	0x08, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x07, 12
	.dwcfa	0x07, 13
	.dwcfa	0x07, 14
	.dwcfa	0x07, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x07, 26
	.dwcfa	0x08, 27
	.dwcfa	0x07, 28
	.dwcfa	0x07, 29
	.dwcfa	0x07, 30
	.dwcfa	0x07, 31
	.dwcfa	0x07, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$421, DW_AT_location[DW_OP_reg0]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$422, DW_AT_location[DW_OP_reg1]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$423, DW_AT_location[DW_OP_reg2]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$424, DW_AT_location[DW_OP_reg3]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$425, DW_AT_location[DW_OP_reg4]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$426, DW_AT_location[DW_OP_reg5]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$427, DW_AT_location[DW_OP_reg6]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$428, DW_AT_location[DW_OP_reg7]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$429, DW_AT_location[DW_OP_reg8]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$430, DW_AT_location[DW_OP_reg9]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$431, DW_AT_location[DW_OP_reg10]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$432, DW_AT_location[DW_OP_reg11]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$433, DW_AT_location[DW_OP_reg12]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$434, DW_AT_location[DW_OP_reg13]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$435, DW_AT_location[DW_OP_reg14]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$436, DW_AT_location[DW_OP_reg15]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$437, DW_AT_location[DW_OP_reg16]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$438, DW_AT_location[DW_OP_reg17]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$439, DW_AT_location[DW_OP_reg18]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$440, DW_AT_location[DW_OP_reg19]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$441, DW_AT_location[DW_OP_reg20]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$442, DW_AT_location[DW_OP_reg21]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$443, DW_AT_location[DW_OP_reg22]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$444, DW_AT_location[DW_OP_reg23]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$445, DW_AT_location[DW_OP_reg24]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$446, DW_AT_location[DW_OP_reg25]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$447, DW_AT_location[DW_OP_reg26]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$448, DW_AT_location[DW_OP_reg27]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$449, DW_AT_location[DW_OP_reg28]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$450, DW_AT_location[DW_OP_reg29]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$451, DW_AT_location[DW_OP_reg30]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$452, DW_AT_location[DW_OP_reg31]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x20]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x21]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x22]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x23]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x24]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x25]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$459, DW_AT_location[DW_OP_regx 0x26]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$460, DW_AT_location[DW_OP_regx 0x27]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$461, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


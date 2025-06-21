;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Tue Sep 16 13:11:44 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("Max7301.c")
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


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiTxNotReady"), DW_AT_symbol_name("_SpiTxNotReady")
	.dwattr DW$6, DW_AT_type(*DW$T$19)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("RxSpi"), DW_AT_symbol_name("_RxSpi")
	.dwattr DW$7, DW_AT_type(*DW$T$19)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiRxNotReady"), DW_AT_symbol_name("_SpiRxNotReady")
	.dwattr DW$8, DW_AT_type(*DW$T$19)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$9, DW_AT_type(*DW$T$88)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI3882 
	.sect	".text"
	.global	_ConfigMax7301Interface

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigMax7301Interface"), DW_AT_symbol_name("_ConfigMax7301Interface")
	.dwattr DW$10, DW_AT_low_pc(_ConfigMax7301Interface)
	.dwattr DW$10, DW_AT_high_pc(0x00)
	.dwattr DW$10, DW_AT_begin_file("Max7301.c")
	.dwattr DW$10, DW_AT_begin_line(0x2c)
	.dwattr DW$10, DW_AT_begin_column(0x06)
	.dwpsn	"Max7301.c",45,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  44 | void ConfigMax7301Interface(void)                                      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigMax7301Interface       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigMax7301Interface:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Max7301.c",46,2
;----------------------------------------------------------------------
;  46 | if(SpiTxNotReady()) {                                                  
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |46| 
        ; call occurs [#_SpiTxNotReady] ; |46| 
        CMPB      AL,#0                 ; |46| 
        BF        L2,EQ                 ; |46| 
        ; branchcc occurs ; |46| 
	.dwpsn	"Max7301.c",47,3
;----------------------------------------------------------------------
;  47 | while(SpiTxNotReady()) {}       /* Wait for any SPI Transmissions in pr
;     | ogress */                                                              
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |47| 
        ; call occurs [#_SpiTxNotReady] ; |47| 
        CMPB      AL,#0                 ; |47| 
        BF        L2,EQ                 ; |47| 
        ; branchcc occurs ; |47| 
L1:    
DW$L$_ConfigMax7301Interface$3$B:
	.dwpsn	"Max7301.c",47,27
        LCR       #_SpiTxNotReady       ; |47| 
        ; call occurs [#_SpiTxNotReady] ; |47| 
        CMPB      AL,#0                 ; |47| 
        BF        L1,NEQ                ; |47| 
        ; branchcc occurs ; |47| 
DW$L$_ConfigMax7301Interface$3$E:
L2:    
	.dwpsn	"Max7301.c",50,2
;----------------------------------------------------------------------
;  50 | ConfigSpi(0, 16);                               /* Transmit on falling
;     | edge; 16-bit SPI words */                                              
;----------------------------------------------------------------------
        MOVB      AL,#0
        MOVB      AH,#16                ; |50| 
        LCR       #_ConfigSpi           ; |50| 
        ; call occurs [#_ConfigSpi] ; |50| 
	.dwpsn	"Max7301.c",52,1
        LRETR
        ; return occurs

DW$11	.dwtag  DW_TAG_loop
	.dwattr DW$11, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L1:1:1221595904")
	.dwattr DW$11, DW_AT_begin_file("Max7301.c")
	.dwattr DW$11, DW_AT_begin_line(0x2f)
	.dwattr DW$11, DW_AT_end_line(0x2f)
DW$12	.dwtag  DW_TAG_loop_range
	.dwattr DW$12, DW_AT_low_pc(DW$L$_ConfigMax7301Interface$3$B)
	.dwattr DW$12, DW_AT_high_pc(DW$L$_ConfigMax7301Interface$3$E)
	.dwendtag DW$11

	.dwattr DW$10, DW_AT_end_file("Max7301.c")
	.dwattr DW$10, DW_AT_end_line(0x34)
	.dwattr DW$10, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$10

	.sect	".text"
	.global	_ConfigMax7301DIO

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigMax7301DIO"), DW_AT_symbol_name("_ConfigMax7301DIO")
	.dwattr DW$13, DW_AT_low_pc(_ConfigMax7301DIO)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("Max7301.c")
	.dwattr DW$13, DW_AT_begin_line(0x46)
	.dwattr DW$13, DW_AT_begin_column(0x06)
	.dwpsn	"Max7301.c",71,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  70 | void ConfigMax7301DIO(void)                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigMax7301DIO             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigMax7301DIO:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Max7301.c",72,2
;----------------------------------------------------------------------
;  72 | Max7301Write(0x04, 0x01);       // Exit Shutdown Mode                  
;----------------------------------------------------------------------
        MOVB      AL,#4                 ; |72| 
        MOVB      AH,#1                 ; |72| 
        LCR       #_Max7301Write        ; |72| 
        ; call occurs [#_Max7301Write] ; |72| 
	.dwpsn	"Max7301.c",73,2
;----------------------------------------------------------------------
;  73 | Max7301Write(0x09, 0x55);       // Configure P4, P5, P6, and P7 as Outp
;     | uts                                                                    
;----------------------------------------------------------------------
        MOVB      AL,#9                 ; |73| 
        MOVB      AH,#85                ; |73| 
        LCR       #_Max7301Write        ; |73| 
        ; call occurs [#_Max7301Write] ; |73| 
	.dwpsn	"Max7301.c",74,2
;----------------------------------------------------------------------
;  74 | Max7301Write(0x0a, 0x55);       // Configure P8, P9, P10, and P11 as Ou
;     | tputs                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#10                ; |74| 
        MOVB      AH,#85                ; |74| 
        LCR       #_Max7301Write        ; |74| 
        ; call occurs [#_Max7301Write] ; |74| 
	.dwpsn	"Max7301.c",75,2
;----------------------------------------------------------------------
;  75 | Max7301Write(0x0b, 0xaa);       // Configure P12, P13, P14, and P15 as
;     | Inputs                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#11                ; |75| 
        MOVB      AH,#170               ; |75| 
        LCR       #_Max7301Write        ; |75| 
        ; call occurs [#_Max7301Write] ; |75| 
	.dwpsn	"Max7301.c",76,2
;----------------------------------------------------------------------
;  76 | Max7301Write(0x0c, 0xaa);       // Configure P16, P17, P18, and P19 as
;     | Inputs                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#12                ; |76| 
        MOVB      AH,#170               ; |76| 
        LCR       #_Max7301Write        ; |76| 
        ; call occurs [#_Max7301Write] ; |76| 
	.dwpsn	"Max7301.c",77,2
;----------------------------------------------------------------------
;  77 | Max7301Write(0x0d, 0x9a);       // Configure P20, P21, and P23 as Input
;     | s; P22 as Output                                                       
;----------------------------------------------------------------------
        MOVB      AL,#13                ; |77| 
        MOVB      AH,#154               ; |77| 
        LCR       #_Max7301Write        ; |77| 
        ; call occurs [#_Max7301Write] ; |77| 
	.dwpsn	"Max7301.c",78,2
;----------------------------------------------------------------------
;  78 | Max7301Write(0x0e, 0x55);       // Configure P24, P25, P26, and P27 as
;     | Outputs                                                                
;----------------------------------------------------------------------
        MOVB      AL,#14                ; |78| 
        MOVB      AH,#85                ; |78| 
        LCR       #_Max7301Write        ; |78| 
        ; call occurs [#_Max7301Write] ; |78| 
	.dwpsn	"Max7301.c",79,2
;----------------------------------------------------------------------
;  79 | Max7301Write(0x0f, 0x55);       // Configure P28, P29, P30, and P31 as
;     | Outputs                                                                
;----------------------------------------------------------------------
        MOVB      AL,#15                ; |79| 
        MOVB      AH,#85                ; |79| 
        LCR       #_Max7301Write        ; |79| 
        ; call occurs [#_Max7301Write] ; |79| 
	.dwpsn	"Max7301.c",81,1
        LRETR
        ; return occurs
	.dwattr DW$13, DW_AT_end_file("Max7301.c")
	.dwattr DW$13, DW_AT_end_line(0x51)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$13

	.sect	".text"
	.global	_Max7301Write

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("Max7301Write"), DW_AT_symbol_name("_Max7301Write")
	.dwattr DW$14, DW_AT_low_pc(_Max7301Write)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("Max7301.c")
	.dwattr DW$14, DW_AT_begin_line(0x64)
	.dwattr DW$14, DW_AT_begin_column(0x06)
	.dwpsn	"Max7301.c",101,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 100 | void Max7301Write(Byte Reg, Byte Data)                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Max7301Write                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_Max7301Write:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
;* AL    assigned to _Reg
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Reg"), DW_AT_symbol_name("_Reg")
	.dwattr DW$15, DW_AT_type(*DW$T$75)
	.dwattr DW$15, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _Data
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$16, DW_AT_type(*DW$T$75)
	.dwattr DW$16, DW_AT_location[DW_OP_reg1]
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("Reg"), DW_AT_symbol_name("_Reg")
	.dwattr DW$17, DW_AT_type(*DW$T$75)
	.dwattr DW$17, DW_AT_location[DW_OP_breg20 -1]
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$18, DW_AT_type(*DW$T$75)
	.dwattr DW$18, DW_AT_location[DW_OP_breg20 -2]
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("Packet"), DW_AT_symbol_name("_Packet")
	.dwattr DW$19, DW_AT_type(*DW$T$19)
	.dwattr DW$19, DW_AT_location[DW_OP_breg20 -3]
;----------------------------------------------------------------------
; 102 | Uint16 Packet;                                                         
;----------------------------------------------------------------------
        MOV       *-SP[2],AH            ; |101| 
        MOV       *-SP[1],AL            ; |101| 
	.dwpsn	"Max7301.c",104,2
;----------------------------------------------------------------------
; 104 | Packet = (Reg << 8) | Data;                                            
;----------------------------------------------------------------------
        MOV       ACC,*-SP[1] << #8     ; |104| 
        OR        AL,*-SP[2]            ; |104| 
        MOV       *-SP[3],AL            ; |104| 
	.dwpsn	"Max7301.c",106,2
;----------------------------------------------------------------------
; 106 | while(SpiTxNotReady()) {}       // Wait for any SPI Transmissions in pr
;     | ogress                                                                 
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |106| 
        ; call occurs [#_SpiTxNotReady] ; |106| 
        CMPB      AL,#0                 ; |106| 
        BF        L4,EQ                 ; |106| 
        ; branchcc occurs ; |106| 
L3:    
DW$L$_Max7301Write$2$B:
	.dwpsn	"Max7301.c",106,26
        LCR       #_SpiTxNotReady       ; |106| 
        ; call occurs [#_SpiTxNotReady] ; |106| 
        CMPB      AL,#0                 ; |106| 
        BF        L3,NEQ                ; |106| 
        ; branchcc occurs ; |106| 
DW$L$_Max7301Write$2$E:
L4:    
	.dwpsn	"Max7301.c",108,2
;----------------------------------------------------------------------
; 108 | Max7301ChipSel(TRUE);           // Assert Chip select                  
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |108| 
        LCR       #_Max7301ChipSel      ; |108| 
        ; call occurs [#_Max7301ChipSel] ; |108| 
	.dwpsn	"Max7301.c",110,2
;----------------------------------------------------------------------
; 110 | TxSpi(Packet);                                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; |110| 
        LCR       #_TxSpi               ; |110| 
        ; call occurs [#_TxSpi] ; |110| 
	.dwpsn	"Max7301.c",111,2
;----------------------------------------------------------------------
; 111 | while(SpiRxNotReady()) {}       // Wait for complete SPI Transmission  
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |111| 
        ; call occurs [#_SpiRxNotReady] ; |111| 
        CMPB      AL,#0                 ; |111| 
        BF        L6,EQ                 ; |111| 
        ; branchcc occurs ; |111| 
L5:    
DW$L$_Max7301Write$4$B:
	.dwpsn	"Max7301.c",111,26
        LCR       #_SpiRxNotReady       ; |111| 
        ; call occurs [#_SpiRxNotReady] ; |111| 
        CMPB      AL,#0                 ; |111| 
        BF        L5,NEQ                ; |111| 
        ; branchcc occurs ; |111| 
DW$L$_Max7301Write$4$E:
L6:    
	.dwpsn	"Max7301.c",113,2
;----------------------------------------------------------------------
; 113 | Max7301ChipSel(FALSE);          // De-assert Chip select               
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_Max7301ChipSel      ; |113| 
        ; call occurs [#_Max7301ChipSel] ; |113| 
	.dwpsn	"Max7301.c",114,2
;----------------------------------------------------------------------
; 114 | RxSpi();                                        // Dummy read to clear
;     | SPI Rx Interrupt                                                       
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |114| 
        ; call occurs [#_RxSpi] ; |114| 
	.dwpsn	"Max7301.c",117,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$20	.dwtag  DW_TAG_loop
	.dwattr DW$20, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L5:1:1221595904")
	.dwattr DW$20, DW_AT_begin_file("Max7301.c")
	.dwattr DW$20, DW_AT_begin_line(0x6f)
	.dwattr DW$20, DW_AT_end_line(0x6f)
DW$21	.dwtag  DW_TAG_loop_range
	.dwattr DW$21, DW_AT_low_pc(DW$L$_Max7301Write$4$B)
	.dwattr DW$21, DW_AT_high_pc(DW$L$_Max7301Write$4$E)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_loop
	.dwattr DW$22, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L3:1:1221595904")
	.dwattr DW$22, DW_AT_begin_file("Max7301.c")
	.dwattr DW$22, DW_AT_begin_line(0x6a)
	.dwattr DW$22, DW_AT_end_line(0x6a)
DW$23	.dwtag  DW_TAG_loop_range
	.dwattr DW$23, DW_AT_low_pc(DW$L$_Max7301Write$2$B)
	.dwattr DW$23, DW_AT_high_pc(DW$L$_Max7301Write$2$E)
	.dwendtag DW$22

	.dwattr DW$14, DW_AT_end_file("Max7301.c")
	.dwattr DW$14, DW_AT_end_line(0x75)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$14

	.sect	".text"
	.global	_Max7301Input

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("Max7301Input"), DW_AT_symbol_name("_Max7301Input")
	.dwattr DW$24, DW_AT_low_pc(_Max7301Input)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("Max7301.c")
	.dwattr DW$24, DW_AT_begin_line(0x86)
	.dwattr DW$24, DW_AT_begin_column(0x08)
	.dwpsn	"Max7301.c",135,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 134 | Uint16 Max7301Input(Uint16 Cmnd)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Max7301Input                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_Max7301Input:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _Cmnd
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Cmnd"), DW_AT_symbol_name("_Cmnd")
	.dwattr DW$25, DW_AT_type(*DW$T$19)
	.dwattr DW$25, DW_AT_location[DW_OP_reg0]
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("Cmnd"), DW_AT_symbol_name("_Cmnd")
	.dwattr DW$26, DW_AT_type(*DW$T$19)
	.dwattr DW$26, DW_AT_location[DW_OP_breg20 -1]
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$27, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_location[DW_OP_breg20 -2]
;----------------------------------------------------------------------
; 136 | Uint16 Data;                                                           
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; |135| 
	.dwpsn	"Max7301.c",138,2
;----------------------------------------------------------------------
; 138 | while(SpiTxNotReady()) {}       // Wait for any SPI Transmissions in pr
;     | ogress                                                                 
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |138| 
        ; call occurs [#_SpiTxNotReady] ; |138| 
        CMPB      AL,#0                 ; |138| 
        BF        L8,EQ                 ; |138| 
        ; branchcc occurs ; |138| 
L7:    
DW$L$_Max7301Input$2$B:
	.dwpsn	"Max7301.c",138,26
        LCR       #_SpiTxNotReady       ; |138| 
        ; call occurs [#_SpiTxNotReady] ; |138| 
        CMPB      AL,#0                 ; |138| 
        BF        L7,NEQ                ; |138| 
        ; branchcc occurs ; |138| 
DW$L$_Max7301Input$2$E:
L8:    
	.dwpsn	"Max7301.c",139,2
;----------------------------------------------------------------------
; 139 | Max7301ChipSel(TRUE);           // Assert Chip select                  
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |139| 
        LCR       #_Max7301ChipSel      ; |139| 
        ; call occurs [#_Max7301ChipSel] ; |139| 
	.dwpsn	"Max7301.c",140,2
;----------------------------------------------------------------------
; 140 | TxSpi(Cmnd);                            // Send Command to Read Ports 1
;     | 2 to 19                                                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; |140| 
        LCR       #_TxSpi               ; |140| 
        ; call occurs [#_TxSpi] ; |140| 
	.dwpsn	"Max7301.c",141,2
;----------------------------------------------------------------------
; 141 | while(SpiRxNotReady()) {}       // Wait for complete SPI Transmission  
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |141| 
        ; call occurs [#_SpiRxNotReady] ; |141| 
        CMPB      AL,#0                 ; |141| 
        BF        L10,EQ                ; |141| 
        ; branchcc occurs ; |141| 
L9:    
DW$L$_Max7301Input$4$B:
	.dwpsn	"Max7301.c",141,26
        LCR       #_SpiRxNotReady       ; |141| 
        ; call occurs [#_SpiRxNotReady] ; |141| 
        CMPB      AL,#0                 ; |141| 
        BF        L9,NEQ                ; |141| 
        ; branchcc occurs ; |141| 
DW$L$_Max7301Input$4$E:
L10:    
	.dwpsn	"Max7301.c",142,2
;----------------------------------------------------------------------
; 142 | Max7301ChipSel(FALSE);          // De-assert Chip select               
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_Max7301ChipSel      ; |142| 
        ; call occurs [#_Max7301ChipSel] ; |142| 
	.dwpsn	"Max7301.c",143,2
;----------------------------------------------------------------------
; 143 | RxSpi();                                        // Dummy Read to clear
;     | SPI RX Interrupt                                                       
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |143| 
        ; call occurs [#_RxSpi] ; |143| 
	.dwpsn	"Max7301.c",144,2
;----------------------------------------------------------------------
; 144 | while(SpiTxNotReady()) {}       // Wait for any SPI Transmissions in pr
;     | ogress                                                                 
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |144| 
        ; call occurs [#_SpiTxNotReady] ; |144| 
        CMPB      AL,#0                 ; |144| 
        BF        L12,EQ                ; |144| 
        ; branchcc occurs ; |144| 
L11:    
DW$L$_Max7301Input$6$B:
	.dwpsn	"Max7301.c",144,26
        LCR       #_SpiTxNotReady       ; |144| 
        ; call occurs [#_SpiTxNotReady] ; |144| 
        CMPB      AL,#0                 ; |144| 
        BF        L11,NEQ               ; |144| 
        ; branchcc occurs ; |144| 
DW$L$_Max7301Input$6$E:
L12:    
	.dwpsn	"Max7301.c",145,2
;----------------------------------------------------------------------
; 145 | Max7301ChipSel(TRUE);           // Assert Chip select                  
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |145| 
        LCR       #_Max7301ChipSel      ; |145| 
        ; call occurs [#_Max7301ChipSel] ; |145| 
	.dwpsn	"Max7301.c",146,2
;----------------------------------------------------------------------
; 146 | TxSpi(MAX7103_NO_OP);           // Send No-Op Command to Read Data from
;     |  MAX7301                                                               
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_TxSpi               ; |146| 
        ; call occurs [#_TxSpi] ; |146| 
	.dwpsn	"Max7301.c",147,2
;----------------------------------------------------------------------
; 147 | while(SpiRxNotReady()) {}       // Wait for complete SPI Transmission  
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |147| 
        ; call occurs [#_SpiRxNotReady] ; |147| 
        CMPB      AL,#0                 ; |147| 
        BF        L14,EQ                ; |147| 
        ; branchcc occurs ; |147| 
L13:    
DW$L$_Max7301Input$8$B:
	.dwpsn	"Max7301.c",147,26
        LCR       #_SpiRxNotReady       ; |147| 
        ; call occurs [#_SpiRxNotReady] ; |147| 
        CMPB      AL,#0                 ; |147| 
        BF        L13,NEQ               ; |147| 
        ; branchcc occurs ; |147| 
DW$L$_Max7301Input$8$E:
L14:    
	.dwpsn	"Max7301.c",148,2
;----------------------------------------------------------------------
; 148 | Data = RxSpi();                         // Read Data                   
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |148| 
        ; call occurs [#_RxSpi] ; |148| 
        MOV       *-SP[2],AL            ; |148| 
	.dwpsn	"Max7301.c",149,2
;----------------------------------------------------------------------
; 149 | Max7301ChipSel(FALSE);          // De-assert Chip select               
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_Max7301ChipSel      ; |149| 
        ; call occurs [#_Max7301ChipSel] ; |149| 
	.dwpsn	"Max7301.c",151,2
;----------------------------------------------------------------------
; 151 | return ((Data) & 0xff);                                                
;----------------------------------------------------------------------
        AND       AL,*-SP[2],#0x00ff    ; |151| 
	.dwpsn	"Max7301.c",153,1
        SUBB      SP,#2                 ; |151| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$28	.dwtag  DW_TAG_loop
	.dwattr DW$28, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L13:1:1221595904")
	.dwattr DW$28, DW_AT_begin_file("Max7301.c")
	.dwattr DW$28, DW_AT_begin_line(0x93)
	.dwattr DW$28, DW_AT_end_line(0x93)
DW$29	.dwtag  DW_TAG_loop_range
	.dwattr DW$29, DW_AT_low_pc(DW$L$_Max7301Input$8$B)
	.dwattr DW$29, DW_AT_high_pc(DW$L$_Max7301Input$8$E)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_loop
	.dwattr DW$30, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L11:1:1221595904")
	.dwattr DW$30, DW_AT_begin_file("Max7301.c")
	.dwattr DW$30, DW_AT_begin_line(0x90)
	.dwattr DW$30, DW_AT_end_line(0x90)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_Max7301Input$6$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_Max7301Input$6$E)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_loop
	.dwattr DW$32, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L9:1:1221595904")
	.dwattr DW$32, DW_AT_begin_file("Max7301.c")
	.dwattr DW$32, DW_AT_begin_line(0x8d)
	.dwattr DW$32, DW_AT_end_line(0x8d)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_Max7301Input$4$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_Max7301Input$4$E)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_loop
	.dwattr DW$34, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Max7301.asm:L7:1:1221595904")
	.dwattr DW$34, DW_AT_begin_file("Max7301.c")
	.dwattr DW$34, DW_AT_begin_line(0x8a)
	.dwattr DW$34, DW_AT_end_line(0x8a)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_Max7301Input$2$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_Max7301Input$2$E)
	.dwendtag DW$34

	.dwattr DW$24, DW_AT_end_file("Max7301.c")
	.dwattr DW$24, DW_AT_end_line(0x99)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$24

	.sect	".text"
	.global	_Max7301ChipSel

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("Max7301ChipSel"), DW_AT_symbol_name("_Max7301ChipSel")
	.dwattr DW$36, DW_AT_low_pc(_Max7301ChipSel)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("Max7301.c")
	.dwattr DW$36, DW_AT_begin_line(0xac)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwpsn	"Max7301.c",173,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 172 | void Max7301ChipSel(Byte State)                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Max7301ChipSel               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Max7301ChipSel:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _State
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("State"), DW_AT_symbol_name("_State")
	.dwattr DW$37, DW_AT_type(*DW$T$75)
	.dwattr DW$37, DW_AT_location[DW_OP_reg0]
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("State"), DW_AT_symbol_name("_State")
	.dwattr DW$38, DW_AT_type(*DW$T$75)
	.dwattr DW$38, DW_AT_location[DW_OP_breg20 -1]
        MOV       *-SP[1],AL            ; |173| 
	.dwpsn	"Max7301.c",174,2
;----------------------------------------------------------------------
; 174 | if(State)                                                              
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; |174| 
        BF        L15,EQ                ; |174| 
        ; branchcc occurs ; |174| 
	.dwpsn	"Max7301.c",175,3
;----------------------------------------------------------------------
; 175 | GpioDataRegs.GPFCLEAR.bit.GPIOF13 = 1;                                 
; 176 | else                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22
        OR        @_GpioDataRegs+22,#0x2000 ; |175| 
        B         L16,UNC               ; |175| 
        ; branch occurs ; |175| 
L15:    
	.dwpsn	"Max7301.c",177,3
;----------------------------------------------------------------------
; 177 | GpioDataRegs.GPFSET.bit.GPIOF13 = 1;                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21
        OR        @_GpioDataRegs+21,#0x2000 ; |177| 
L16:    
	.dwpsn	"Max7301.c",179,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$36, DW_AT_end_file("Max7301.c")
	.dwattr DW$36, DW_AT_end_line(0xb3)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$36

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_TxSpi
	.global	_ConfigSpi
	.global	_SpiTxNotReady
	.global	_RxSpi
	.global	_SpiRxNotReady
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)

DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
	.dwendtag DW$T$76


DW$T$78	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
	.dwendtag DW$T$78

DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("Byte"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)

DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$82

DW$46	.dwtag  DW_TAG_far_type
	.dwattr DW$46, DW_AT_type(*DW$T$69)
DW$T$88	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$88, DW_AT_type(*DW$46)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$69, DW_AT_byte_size(0x20)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$47, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$48, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$49, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$50, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$51, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$52, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$53, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$54, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$55, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$56, DW_AT_name("GPDDAT"), DW_AT_symbol_name("_GPDDAT")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$57, DW_AT_name("GPDSET"), DW_AT_symbol_name("_GPDSET")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$58, DW_AT_name("GPDCLEAR"), DW_AT_symbol_name("_GPDCLEAR")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$59, DW_AT_name("GPDTOGGLE"), DW_AT_symbol_name("_GPDTOGGLE")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$60, DW_AT_name("GPEDAT"), DW_AT_symbol_name("_GPEDAT")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$61, DW_AT_name("GPESET"), DW_AT_symbol_name("_GPESET")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$62, DW_AT_name("GPECLEAR"), DW_AT_symbol_name("_GPECLEAR")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$63, DW_AT_name("GPETOGGLE"), DW_AT_symbol_name("_GPETOGGLE")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$64, DW_AT_name("GPFDAT"), DW_AT_symbol_name("_GPFDAT")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$65, DW_AT_name("GPFSET"), DW_AT_symbol_name("_GPFSET")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$66, DW_AT_name("GPFCLEAR"), DW_AT_symbol_name("_GPFCLEAR")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$67, DW_AT_name("GPFTOGGLE"), DW_AT_symbol_name("_GPFTOGGLE")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$68, DW_AT_name("GPGDAT"), DW_AT_symbol_name("_GPGDAT")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$69, DW_AT_name("GPGSET"), DW_AT_symbol_name("_GPGSET")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$70, DW_AT_name("GPGCLEAR"), DW_AT_symbol_name("_GPGCLEAR")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$71, DW_AT_name("GPGTOGGLE"), DW_AT_symbol_name("_GPGTOGGLE")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$72, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x04)
DW$73	.dwtag  DW_TAG_subrange_type
	.dwattr DW$73, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$68


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$75, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("GPASET_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$77, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("GPACLEAR_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$79, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$81, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$83, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("GPBSET_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$85, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("GPBCLEAR_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$87, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$89, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("GPDDAT_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$91, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("GPDSET_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$93, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("GPDCLEAR_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$95, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$97, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("GPEDAT_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$99, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("GPESET_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$101, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("GPECLEAR_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$103, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$105, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("GPFDAT_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$107, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("GPFSET_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$109, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("GPFCLEAR_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$111, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$113, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("GPGDAT_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$115, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr DW$T$63, DW_AT_name("GPGSET_REG")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$117, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr DW$T$65, DW_AT_name("GPGCLEAR_REG")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$119, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$121, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$122, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$123, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$124, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$125, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$126, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$127, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$128, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$129, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$130, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$131, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$132, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$133, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$134, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$135, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$136, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$137, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("GPASET_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$138, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$139, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$140, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$141, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$142, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$143, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$144, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$145, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$146, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$146, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$147, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$148, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$149, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$150, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$151, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$152, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$153, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("GPACLEAR_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$154, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$155, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$156, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$157, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$158, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$159, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$160, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$161, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$162, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$163, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$164, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$165, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$166, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$167, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$168, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$169, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$170, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$171, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$172, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$173, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$174, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$175, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$176, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$177, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$178, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$179, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$180, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$181, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$182, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$183, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$184, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$185, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$186, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$187, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$188, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$189, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$190, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$191, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$192, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$193, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$194, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$195, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$196, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$197, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$198, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$199, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$200, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$201, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("GPBSET_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$202, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$203, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$204, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$205, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$206, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$207, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$208, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$209, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$210, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$211, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$212, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$213, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$214, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$215, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$216, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$217, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("GPBCLEAR_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$218, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$219, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$220, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$221, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$222, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$222, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$223, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$224, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$225, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$226, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$227, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$228, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$229, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$230, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$231, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$232, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$233, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$234, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$235, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$236, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$237, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$238, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$239, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$240, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$241, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$242, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$243, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$244, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$245, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$246, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$247, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$248, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$249, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("GPDDAT_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$250, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$251, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$252, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$253, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$254, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$255, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("GPDSET_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$256, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$257, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$258, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$259, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$260, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$261, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("GPDCLEAR_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$262, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$263, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$264, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$265, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$266, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$267, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$268, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$269, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$270, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$271, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$272, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$273, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("GPEDAT_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$274, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$275, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$276, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$277, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("GPESET_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$278, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$279, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$279, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$280, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$280, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$281, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$281, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("GPECLEAR_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$282, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$282, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$283, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$283, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$284, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$284, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$285, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$285, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$286, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$286, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$287, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$287, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$288, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$288, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$289, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("GPFDAT_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$290, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$291, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$292, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$293, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$294, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$295, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$296, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$297, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$297, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$298, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$298, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$299, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$299, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$300, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$300, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$301, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$301, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$302, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$303, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$303, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$304, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$304, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$305, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("GPFSET_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$306, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$307, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$308, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$309, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$310, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$310, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$311, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$311, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$312, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$312, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$313, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$313, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$314, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$314, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$315, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$315, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$316, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$316, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$317, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$317, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$318, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$318, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$319, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$320, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$320, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$321, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$321, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("GPFCLEAR_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$322, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$322, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$323, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$323, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$324, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$324, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$325, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$325, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$326, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$326, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$327, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$327, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$328, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$329, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$330, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$330, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$331, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$331, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$332, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$332, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$333, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$333, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$334, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$334, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$335, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$335, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$336, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$336, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$337, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$337, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$338, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$338, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$339, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$339, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$340, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$340, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$341, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$341, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$342, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$342, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$343, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$343, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$344, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$344, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$345, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$345, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$346, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$346, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$347, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$347, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$348, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$348, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$349, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$349, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$350, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$350, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$351, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$351, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$352, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$352, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$353, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$353, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("GPGDAT_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$354, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$354, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$355, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$355, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$356, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$356, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$357, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$357, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("GPGSET_BITS")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$358, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$358, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$359, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$359, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$360, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$360, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$361, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$361, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("GPGCLEAR_BITS")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$362, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$362, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$363, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$363, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$364, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$364, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$365, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$365, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$366, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$366, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$367, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$367, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$368, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$368, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$369, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$369, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_type(*DW$T$19)
	.dwattr DW$14, DW_AT_external(0x01)
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

DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$370, DW_AT_location[DW_OP_reg0]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$371, DW_AT_location[DW_OP_reg1]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$372, DW_AT_location[DW_OP_reg2]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$373, DW_AT_location[DW_OP_reg3]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$374, DW_AT_location[DW_OP_reg4]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$375, DW_AT_location[DW_OP_reg5]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$376, DW_AT_location[DW_OP_reg6]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$377, DW_AT_location[DW_OP_reg7]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$378, DW_AT_location[DW_OP_reg8]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$379, DW_AT_location[DW_OP_reg9]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$380, DW_AT_location[DW_OP_reg10]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$381, DW_AT_location[DW_OP_reg11]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$382, DW_AT_location[DW_OP_reg12]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$383, DW_AT_location[DW_OP_reg13]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$384, DW_AT_location[DW_OP_reg14]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$385, DW_AT_location[DW_OP_reg15]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$386, DW_AT_location[DW_OP_reg16]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$387, DW_AT_location[DW_OP_reg17]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$388, DW_AT_location[DW_OP_reg18]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$389, DW_AT_location[DW_OP_reg19]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$390, DW_AT_location[DW_OP_reg20]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$391, DW_AT_location[DW_OP_reg21]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$392, DW_AT_location[DW_OP_reg22]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$393, DW_AT_location[DW_OP_reg23]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$394, DW_AT_location[DW_OP_reg24]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$395, DW_AT_location[DW_OP_reg25]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$396, DW_AT_location[DW_OP_reg26]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$397, DW_AT_location[DW_OP_reg27]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$398, DW_AT_location[DW_OP_reg28]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$399, DW_AT_location[DW_OP_reg29]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$400, DW_AT_location[DW_OP_reg30]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$401, DW_AT_location[DW_OP_reg31]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x20]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$403, DW_AT_location[DW_OP_regx 0x21]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$404, DW_AT_location[DW_OP_regx 0x22]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$405, DW_AT_location[DW_OP_regx 0x23]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$406, DW_AT_location[DW_OP_regx 0x24]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x25]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x26]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$409, DW_AT_location[DW_OP_regx 0x27]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$410, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Thu Feb 07 18:26:13 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("Ad7663.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DelayUs"), DW_AT_symbol_name("_DelayUs")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("TxSpi"), DW_AT_symbol_name("_TxSpi")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigSpi"), DW_AT_symbol_name("_ConfigSpi")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$5


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiTxNotReady"), DW_AT_symbol_name("_SpiTxNotReady")
	.dwattr DW$8, DW_AT_type(*DW$T$19)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("RxSpi"), DW_AT_symbol_name("_RxSpi")
	.dwattr DW$9, DW_AT_type(*DW$T$19)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiRxNotReady"), DW_AT_symbol_name("_SpiRxNotReady")
	.dwattr DW$10, DW_AT_type(*DW$T$19)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$11, DW_AT_type(*DW$T$93)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI4242 
	.sect	".text"
	.global	_Ad7663ConfigInterface

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663ConfigInterface"), DW_AT_symbol_name("_Ad7663ConfigInterface")
	.dwattr DW$12, DW_AT_low_pc(_Ad7663ConfigInterface)
	.dwattr DW$12, DW_AT_high_pc(0x00)
	.dwattr DW$12, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$12, DW_AT_begin_line(0x2a)
	.dwattr DW$12, DW_AT_begin_column(0x06)
	.dwpsn	"Ad7663.c",43,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  42 | void Ad7663ConfigInterface(void)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663ConfigInterface        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Ad7663ConfigInterface:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Ad7663.c",44,2
;----------------------------------------------------------------------
;  44 | if(SpiTxNotReady()) {                                                  
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |44| 
        ; call occurs [#_SpiTxNotReady] ; |44| 
        CMPB      AL,#0                 ; |44| 
        BF        L2,EQ                 ; |44| 
        ; branchcc occurs ; |44| 
	.dwpsn	"Ad7663.c",45,3
;----------------------------------------------------------------------
;  45 | while(SpiTxNotReady()) {} /* Wait for any pending SPI transmissions */ 
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |45| 
        ; call occurs [#_SpiTxNotReady] ; |45| 
        CMPB      AL,#0                 ; |45| 
        BF        L2,EQ                 ; |45| 
        ; branchcc occurs ; |45| 
L1:    
DW$L$_Ad7663ConfigInterface$3$B:
	.dwpsn	"Ad7663.c",45,27
        LCR       #_SpiTxNotReady       ; |45| 
        ; call occurs [#_SpiTxNotReady] ; |45| 
        CMPB      AL,#0                 ; |45| 
        BF        L1,NEQ                ; |45| 
        ; branchcc occurs ; |45| 
DW$L$_Ad7663ConfigInterface$3$E:
L2:    
	.dwpsn	"Ad7663.c",48,2
;----------------------------------------------------------------------
;  48 | ConfigSpi(2, 16); /* Configure SPI Bus for 16-Bit words; Tx on Rising C
;     | LK Edge */                                                             
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; |48| 
        MOVB      AH,#16                ; |48| 
        LCR       #_ConfigSpi           ; |48| 
        ; call occurs [#_ConfigSpi] ; |48| 
	.dwpsn	"Ad7663.c",50,1
        LRETR
        ; return occurs

DW$13	.dwtag  DW_TAG_loop
	.dwattr DW$13, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L1:1:1202433973")
	.dwattr DW$13, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$13, DW_AT_begin_line(0x2d)
	.dwattr DW$13, DW_AT_end_line(0x2d)
DW$14	.dwtag  DW_TAG_loop_range
	.dwattr DW$14, DW_AT_low_pc(DW$L$_Ad7663ConfigInterface$3$B)
	.dwattr DW$14, DW_AT_high_pc(DW$L$_Ad7663ConfigInterface$3$E)
	.dwendtag DW$13

	.dwattr DW$12, DW_AT_end_file("Ad7663.c")
	.dwattr DW$12, DW_AT_end_line(0x32)
	.dwattr DW$12, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$12

	.sect	".text"
	.global	_Ad7663StartConv

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663StartConv"), DW_AT_symbol_name("_Ad7663StartConv")
	.dwattr DW$15, DW_AT_low_pc(_Ad7663StartConv)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$15, DW_AT_begin_line(0x47)
	.dwattr DW$15, DW_AT_begin_column(0x06)
	.dwpsn	"Ad7663.c",72,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  71 | void Ad7663StartConv(void)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663StartConv              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Ad7663StartConv:
;----------------------------------------------------------------------
;  73 | int idx;                                                               
;----------------------------------------------------------------------
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_location[DW_OP_breg20 -1]
	.dwpsn	"Ad7663.c",74,2
;----------------------------------------------------------------------
;  74 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   /* Assert ADC_CONV# active stat
;     | e */                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+6
        OR        @_GpioDataRegs+6,#0x0010 ; |74| 
	.dwpsn	"Ad7663.c",75,6
;----------------------------------------------------------------------
;  75 | for(idx = 0; idx <= 2; idx++) {}                /* Loop to ensure ADC_C
;     | ONV active at least 5nS */                                             
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; |75| 
	.dwpsn	"Ad7663.c",75,15
        MOV       AL,*-SP[1]            ; |75| 
        CMPB      AL,#2                 ; |75| 
        B         L4,GT                 ; |75| 
        ; branchcc occurs ; |75| 
L3:    
DW$L$_Ad7663StartConv$2$B:
	.dwpsn	"Ad7663.c",75,25
        INC       *-SP[1]               ; |75| 
	.dwpsn	"Ad7663.c",75,15
        MOV       AL,*-SP[1]            ; |75| 
        CMPB      AL,#2                 ; |75| 
        B         L3,LEQ                ; |75| 
        ; branchcc occurs ; |75| 
DW$L$_Ad7663StartConv$2$E:
L4:    
	.dwpsn	"Ad7663.c",76,2
;----------------------------------------------------------------------
;  76 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;             /* Assert ADC_CONV# ina
;     | ctive state */                                                         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0010 ; |76| 
	.dwpsn	"Ad7663.c",78,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$17	.dwtag  DW_TAG_loop
	.dwattr DW$17, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L3:1:1202433973")
	.dwattr DW$17, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$17, DW_AT_begin_line(0x4b)
	.dwattr DW$17, DW_AT_end_line(0x4b)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_Ad7663StartConv$2$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_Ad7663StartConv$2$E)
	.dwendtag DW$17

	.dwattr DW$15, DW_AT_end_file("Ad7663.c")
	.dwattr DW$15, DW_AT_end_line(0x4e)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$15

	.sect	".text"
	.global	_Ad7663Busy

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663Busy"), DW_AT_symbol_name("_Ad7663Busy")
	.dwattr DW$19, DW_AT_low_pc(_Ad7663Busy)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$19, DW_AT_begin_line(0x60)
	.dwattr DW$19, DW_AT_begin_column(0x08)
	.dwpsn	"Ad7663.c",97,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  96 | Uint16 Ad7663Busy(void)                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663Busy                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Ad7663Busy:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Ad7663.c",99,2
;----------------------------------------------------------------------
;  99 | return GpioDataRegs.GPBDAT.bit.GPIOB10; /* Read the state of ADCBUSY */
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+4
        AND       AL,@_GpioDataRegs+4,#0x0400 ; |99| 
        LSR       AL,10                 ; |99| 
	.dwpsn	"Ad7663.c",101,1
        LRETR
        ; return occurs
	.dwattr DW$19, DW_AT_end_file("Ad7663.c")
	.dwattr DW$19, DW_AT_end_line(0x65)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$19

	.sect	".text"
	.global	_Ad7663Acquire

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663Acquire"), DW_AT_symbol_name("_Ad7663Acquire")
	.dwattr DW$20, DW_AT_low_pc(_Ad7663Acquire)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$20, DW_AT_begin_line(0x79)
	.dwattr DW$20, DW_AT_begin_column(0x08)
	.dwpsn	"Ad7663.c",122,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 121 | Uint16 Ad7663Acquire(Uint16 Chnl)                                      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663Acquire                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_Ad7663Acquire:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
;* AL    assigned to _Chnl
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Chnl"), DW_AT_symbol_name("_Chnl")
	.dwattr DW$21, DW_AT_type(*DW$T$19)
	.dwattr DW$21, DW_AT_location[DW_OP_reg0]
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("Chnl"), DW_AT_symbol_name("_Chnl")
	.dwattr DW$22, DW_AT_type(*DW$T$19)
	.dwattr DW$22, DW_AT_location[DW_OP_breg20 -1]
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("Reslt"), DW_AT_symbol_name("_Reslt")
	.dwattr DW$23, DW_AT_type(*DW$T$19)
	.dwattr DW$23, DW_AT_location[DW_OP_breg20 -2]
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("Dummy"), DW_AT_symbol_name("_Dummy")
	.dwattr DW$24, DW_AT_type(*DW$T$19)
	.dwattr DW$24, DW_AT_location[DW_OP_breg20 -3]
        MOV       *-SP[1],AL            ; |122| 
	.dwpsn	"Ad7663.c",123,9
;----------------------------------------------------------------------
; 123 | Uint16 Reslt = 0;                                                      
;----------------------------------------------------------------------
        MOV       *-SP[2],#0            ; |123| 
	.dwpsn	"Ad7663.c",124,9
;----------------------------------------------------------------------
; 124 | Uint16 Dummy = 0x5555;                                                 
;----------------------------------------------------------------------
        MOV       *-SP[3],#21845        ; |124| 
	.dwpsn	"Ad7663.c",126,2
;----------------------------------------------------------------------
; 126 | if(Ad7663Busy()) {                              // Check if ADC is Busy
;     |  with a conversion                                                     
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |126| 
        ; call occurs [#_Ad7663Busy] ; |126| 
        CMPB      AL,#0                 ; |126| 
        BF        L6,EQ                 ; |126| 
        ; branchcc occurs ; |126| 
	.dwpsn	"Ad7663.c",127,3
;----------------------------------------------------------------------
; 127 | while(Ad7663Busy()){;}          // Wait for ADC to become ready        
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |127| 
        ; call occurs [#_Ad7663Busy] ; |127| 
        CMPB      AL,#0                 ; |127| 
        BF        L6,EQ                 ; |127| 
        ; branchcc occurs ; |127| 
L5:    
DW$L$_Ad7663Acquire$3$B:
	.dwpsn	"Ad7663.c",127,24
        LCR       #_Ad7663Busy          ; |127| 
        ; call occurs [#_Ad7663Busy] ; |127| 
        CMPB      AL,#0                 ; |127| 
        BF        L5,NEQ                ; |127| 
        ; branchcc occurs ; |127| 
DW$L$_Ad7663Acquire$3$E:
L6:    
	.dwpsn	"Ad7663.c",129,2
;----------------------------------------------------------------------
; 129 | while(SpiTxNotReady()) {;}              // Wait for any SPI Transmissio
;     | ns in progress                                                         
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |129| 
        ; call occurs [#_SpiTxNotReady] ; |129| 
        CMPB      AL,#0                 ; |129| 
        BF        L8,EQ                 ; |129| 
        ; branchcc occurs ; |129| 
L7:    
DW$L$_Ad7663Acquire$5$B:
	.dwpsn	"Ad7663.c",129,27
        LCR       #_SpiTxNotReady       ; |129| 
        ; call occurs [#_SpiTxNotReady] ; |129| 
        CMPB      AL,#0                 ; |129| 
        BF        L7,NEQ                ; |129| 
        ; branchcc occurs ; |129| 
DW$L$_Ad7663Acquire$5$E:
L8:    
	.dwpsn	"Ad7663.c",130,2
;----------------------------------------------------------------------
; 130 | if(Ad7663MuxSelect(Chnl)) {                                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; |130| 
        LCR       #_Ad7663MuxSelect     ; |130| 
        ; call occurs [#_Ad7663MuxSelect] ; |130| 
        CMPB      AL,#0                 ; |130| 
        BF        L13,EQ                ; |130| 
        ; branchcc occurs ; |130| 
	.dwpsn	"Ad7663.c",131,3
;----------------------------------------------------------------------
; 131 | Ad7663StartConv();                      // Start a new conversion      
;----------------------------------------------------------------------
        LCR       #_Ad7663StartConv     ; |131| 
        ; call occurs [#_Ad7663StartConv] ; |131| 
	.dwpsn	"Ad7663.c",132,3
;----------------------------------------------------------------------
; 132 | while(Ad7663Busy()) {;}         // Wait for conversion to complete     
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |132| 
        ; call occurs [#_Ad7663Busy] ; |132| 
        CMPB      AL,#0                 ; |132| 
        BF        L10,EQ                ; |132| 
        ; branchcc occurs ; |132| 
L9:    
DW$L$_Ad7663Acquire$8$B:
	.dwpsn	"Ad7663.c",132,25
        LCR       #_Ad7663Busy          ; |132| 
        ; call occurs [#_Ad7663Busy] ; |132| 
        CMPB      AL,#0                 ; |132| 
        BF        L9,NEQ                ; |132| 
        ; branchcc occurs ; |132| 
DW$L$_Ad7663Acquire$8$E:
L10:    
	.dwpsn	"Ad7663.c",133,3
;----------------------------------------------------------------------
; 133 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1; // Set ADC_CS LOW                
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0020 ; |133| 
	.dwpsn	"Ad7663.c",134,3
;----------------------------------------------------------------------
; 134 | TxSpi(Dummy);                           // Provide SCLK to clock out Co
;     | nversion results                                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; |134| 
        LCR       #_TxSpi               ; |134| 
        ; call occurs [#_TxSpi] ; |134| 
	.dwpsn	"Ad7663.c",135,3
;----------------------------------------------------------------------
; 135 | while(SpiRxNotReady()) {;}      // wait for transmission to complete   
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |135| 
        ; call occurs [#_SpiRxNotReady] ; |135| 
        CMPB      AL,#0                 ; |135| 
        BF        L12,EQ                ; |135| 
        ; branchcc occurs ; |135| 
L11:    
DW$L$_Ad7663Acquire$10$B:
	.dwpsn	"Ad7663.c",135,28
        LCR       #_SpiRxNotReady       ; |135| 
        ; call occurs [#_SpiRxNotReady] ; |135| 
        CMPB      AL,#0                 ; |135| 
        BF        L11,NEQ               ; |135| 
        ; branchcc occurs ; |135| 
DW$L$_Ad7663Acquire$10$E:
L12:    
	.dwpsn	"Ad7663.c",136,3
;----------------------------------------------------------------------
; 136 | Reslt = RxSpi();                        // Read the Conversion results
;     | and return                                                             
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |136| 
        ; call occurs [#_RxSpi] ; |136| 
        MOV       *-SP[2],AL            ; |136| 
	.dwpsn	"Ad7663.c",137,3
;----------------------------------------------------------------------
; 137 | GpioDataRegs.GPBSET.bit.GPIOB5  = 1; // Set ADC_CS HIGH                
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0020 ; |137| 
	.dwpsn	"Ad7663.c",138,3
;----------------------------------------------------------------------
; 138 | return (int)Reslt;                                                     
; 140 | else {                                                                 
;----------------------------------------------------------------------
        B         L14,UNC               ; |138| 
        ; branch occurs ; |138| 
L13:    
	.dwpsn	"Ad7663.c",141,3
;----------------------------------------------------------------------
; 141 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0
L14:    
	.dwpsn	"Ad7663.c",144,1
        SUBB      SP,#4                 ; |141| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$25	.dwtag  DW_TAG_loop
	.dwattr DW$25, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L11:1:1202433973")
	.dwattr DW$25, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$25, DW_AT_begin_line(0x87)
	.dwattr DW$25, DW_AT_end_line(0x87)
DW$26	.dwtag  DW_TAG_loop_range
	.dwattr DW$26, DW_AT_low_pc(DW$L$_Ad7663Acquire$10$B)
	.dwattr DW$26, DW_AT_high_pc(DW$L$_Ad7663Acquire$10$E)
	.dwendtag DW$25


DW$27	.dwtag  DW_TAG_loop
	.dwattr DW$27, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L9:1:1202433973")
	.dwattr DW$27, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$27, DW_AT_begin_line(0x84)
	.dwattr DW$27, DW_AT_end_line(0x84)
DW$28	.dwtag  DW_TAG_loop_range
	.dwattr DW$28, DW_AT_low_pc(DW$L$_Ad7663Acquire$8$B)
	.dwattr DW$28, DW_AT_high_pc(DW$L$_Ad7663Acquire$8$E)
	.dwendtag DW$27


DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L7:1:1202433973")
	.dwattr DW$29, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$29, DW_AT_begin_line(0x81)
	.dwattr DW$29, DW_AT_end_line(0x81)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_Ad7663Acquire$5$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_Ad7663Acquire$5$E)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_loop
	.dwattr DW$31, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L5:1:1202433973")
	.dwattr DW$31, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$31, DW_AT_begin_line(0x7f)
	.dwattr DW$31, DW_AT_end_line(0x7f)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_Ad7663Acquire$3$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_Ad7663Acquire$3$E)
	.dwendtag DW$31

	.dwattr DW$20, DW_AT_end_file("Ad7663.c")
	.dwattr DW$20, DW_AT_end_line(0x90)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$20

	.sect	".text"
	.global	_Ad7663AcquireFast

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663AcquireFast"), DW_AT_symbol_name("_Ad7663AcquireFast")
	.dwattr DW$33, DW_AT_low_pc(_Ad7663AcquireFast)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$33, DW_AT_begin_line(0xa6)
	.dwattr DW$33, DW_AT_begin_column(0x05)
	.dwpsn	"Ad7663.c",167,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 166 | int Ad7663AcquireFast(void)                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663AcquireFast            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Ad7663AcquireFast:
;----------------------------------------------------------------------
; 168 | Uint16 Reslt;                                                          
;----------------------------------------------------------------------
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("Reslt"), DW_AT_symbol_name("_Reslt")
	.dwattr DW$34, DW_AT_type(*DW$T$19)
	.dwattr DW$34, DW_AT_location[DW_OP_breg20 -1]
	.dwpsn	"Ad7663.c",170,2
;----------------------------------------------------------------------
; 170 | if(Ad7663Busy()) {                              // Check if ADC is Busy
;     |  with a conversion                                                     
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |170| 
        ; call occurs [#_Ad7663Busy] ; |170| 
        CMPB      AL,#0                 ; |170| 
        BF        L16,EQ                ; |170| 
        ; branchcc occurs ; |170| 
	.dwpsn	"Ad7663.c",171,3
;----------------------------------------------------------------------
; 171 | while(Ad7663Busy()){;}          // Wait for ADC to become ready        
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |171| 
        ; call occurs [#_Ad7663Busy] ; |171| 
        CMPB      AL,#0                 ; |171| 
        BF        L16,EQ                ; |171| 
        ; branchcc occurs ; |171| 
L15:    
DW$L$_Ad7663AcquireFast$3$B:
	.dwpsn	"Ad7663.c",171,24
        LCR       #_Ad7663Busy          ; |171| 
        ; call occurs [#_Ad7663Busy] ; |171| 
        CMPB      AL,#0                 ; |171| 
        BF        L15,NEQ               ; |171| 
        ; branchcc occurs ; |171| 
DW$L$_Ad7663AcquireFast$3$E:
L16:    
	.dwpsn	"Ad7663.c",173,2
;----------------------------------------------------------------------
; 173 | while (SpiTxNotReady()) {;}     // Wait for any SPI transmissions in pr
;     | ocess                                                                  
;----------------------------------------------------------------------
        LCR       #_SpiTxNotReady       ; |173| 
        ; call occurs [#_SpiTxNotReady] ; |173| 
        CMPB      AL,#0                 ; |173| 
        BF        L18,EQ                ; |173| 
        ; branchcc occurs ; |173| 
L17:    
DW$L$_Ad7663AcquireFast$5$B:
	.dwpsn	"Ad7663.c",173,28
        LCR       #_SpiTxNotReady       ; |173| 
        ; call occurs [#_SpiTxNotReady] ; |173| 
        CMPB      AL,#0                 ; |173| 
        BF        L17,NEQ               ; |173| 
        ; branchcc occurs ; |173| 
DW$L$_Ad7663AcquireFast$5$E:
L18:    
	.dwpsn	"Ad7663.c",174,2
;----------------------------------------------------------------------
; 174 | Ad7663StartConv();                      // Start a new conversion      
;----------------------------------------------------------------------
        LCR       #_Ad7663StartConv     ; |174| 
        ; call occurs [#_Ad7663StartConv] ; |174| 
	.dwpsn	"Ad7663.c",175,2
;----------------------------------------------------------------------
; 175 | while(Ad7663Busy()) {;}         // Wait for conversion to complete     
;----------------------------------------------------------------------
        LCR       #_Ad7663Busy          ; |175| 
        ; call occurs [#_Ad7663Busy] ; |175| 
        CMPB      AL,#0                 ; |175| 
        BF        L20,EQ                ; |175| 
        ; branchcc occurs ; |175| 
L19:    
DW$L$_Ad7663AcquireFast$7$B:
	.dwpsn	"Ad7663.c",175,24
        LCR       #_Ad7663Busy          ; |175| 
        ; call occurs [#_Ad7663Busy] ; |175| 
        CMPB      AL,#0                 ; |175| 
        BF        L19,NEQ               ; |175| 
        ; branchcc occurs ; |175| 
DW$L$_Ad7663AcquireFast$7$E:
L20:    
	.dwpsn	"Ad7663.c",176,2
;----------------------------------------------------------------------
; 176 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1; // Set ADC_CS LOW                
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0020 ; |176| 
	.dwpsn	"Ad7663.c",177,2
;----------------------------------------------------------------------
; 177 | TxSpi(0x0000);                          // Provide SCLK to clock out Co
;     | nversion results                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0
        LCR       #_TxSpi               ; |177| 
        ; call occurs [#_TxSpi] ; |177| 
	.dwpsn	"Ad7663.c",178,2
;----------------------------------------------------------------------
; 178 | while(SpiRxNotReady()) {;}      // wait for transmission to complete   
;----------------------------------------------------------------------
        LCR       #_SpiRxNotReady       ; |178| 
        ; call occurs [#_SpiRxNotReady] ; |178| 
        CMPB      AL,#0                 ; |178| 
        BF        L22,EQ                ; |178| 
        ; branchcc occurs ; |178| 
L21:    
DW$L$_Ad7663AcquireFast$9$B:
	.dwpsn	"Ad7663.c",178,27
        LCR       #_SpiRxNotReady       ; |178| 
        ; call occurs [#_SpiRxNotReady] ; |178| 
        CMPB      AL,#0                 ; |178| 
        BF        L21,NEQ               ; |178| 
        ; branchcc occurs ; |178| 
DW$L$_Ad7663AcquireFast$9$E:
L22:    
	.dwpsn	"Ad7663.c",179,2
;----------------------------------------------------------------------
; 179 | Reslt = RxSpi();                        // Read the Conversion results
;     |                                                                        
;----------------------------------------------------------------------
        LCR       #_RxSpi               ; |179| 
        ; call occurs [#_RxSpi] ; |179| 
        MOV       *-SP[1],AL            ; |179| 
	.dwpsn	"Ad7663.c",180,2
;----------------------------------------------------------------------
; 180 | GpioDataRegs.GPBSET.bit.GPIOB5  = 1; // Set ADC_CS HIGH                
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0020 ; |180| 
	.dwpsn	"Ad7663.c",182,2
;----------------------------------------------------------------------
; 182 | return (int)Reslt;                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; |182| 
	.dwpsn	"Ad7663.c",184,1
        SUBB      SP,#2                 ; |182| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$35	.dwtag  DW_TAG_loop
	.dwattr DW$35, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L21:1:1202433973")
	.dwattr DW$35, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$35, DW_AT_begin_line(0xb2)
	.dwattr DW$35, DW_AT_end_line(0xb2)
DW$36	.dwtag  DW_TAG_loop_range
	.dwattr DW$36, DW_AT_low_pc(DW$L$_Ad7663AcquireFast$9$B)
	.dwattr DW$36, DW_AT_high_pc(DW$L$_Ad7663AcquireFast$9$E)
	.dwendtag DW$35


DW$37	.dwtag  DW_TAG_loop
	.dwattr DW$37, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L19:1:1202433973")
	.dwattr DW$37, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$37, DW_AT_begin_line(0xaf)
	.dwattr DW$37, DW_AT_end_line(0xaf)
DW$38	.dwtag  DW_TAG_loop_range
	.dwattr DW$38, DW_AT_low_pc(DW$L$_Ad7663AcquireFast$7$B)
	.dwattr DW$38, DW_AT_high_pc(DW$L$_Ad7663AcquireFast$7$E)
	.dwendtag DW$37


DW$39	.dwtag  DW_TAG_loop
	.dwattr DW$39, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L17:1:1202433973")
	.dwattr DW$39, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$39, DW_AT_begin_line(0xad)
	.dwattr DW$39, DW_AT_end_line(0xad)
DW$40	.dwtag  DW_TAG_loop_range
	.dwattr DW$40, DW_AT_low_pc(DW$L$_Ad7663AcquireFast$5$B)
	.dwattr DW$40, DW_AT_high_pc(DW$L$_Ad7663AcquireFast$5$E)
	.dwendtag DW$39


DW$41	.dwtag  DW_TAG_loop
	.dwattr DW$41, DW_AT_name("F:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/Ad7663.asm:L15:1:1202433973")
	.dwattr DW$41, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$41, DW_AT_begin_line(0xab)
	.dwattr DW$41, DW_AT_end_line(0xab)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_Ad7663AcquireFast$3$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_Ad7663AcquireFast$3$E)
	.dwendtag DW$41

	.dwattr DW$33, DW_AT_end_file("Ad7663.c")
	.dwattr DW$33, DW_AT_end_line(0xb8)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$33

	.sect	".text"
	.global	_Ad7663MuxSelect

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("Ad7663MuxSelect"), DW_AT_symbol_name("_Ad7663MuxSelect")
	.dwattr DW$43, DW_AT_low_pc(_Ad7663MuxSelect)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("Ad7663.c")
	.dwattr DW$43, DW_AT_begin_line(0xca)
	.dwattr DW$43, DW_AT_begin_column(0x05)
	.dwpsn	"Ad7663.c",203,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 202 | int Ad7663MuxSelect(Uint16 Chnl)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _Ad7663MuxSelect              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Ad7663MuxSelect:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AL    assigned to _Chnl
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Chnl"), DW_AT_symbol_name("_Chnl")
	.dwattr DW$44, DW_AT_type(*DW$T$19)
	.dwattr DW$44, DW_AT_location[DW_OP_reg0]
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("Chnl"), DW_AT_symbol_name("_Chnl")
	.dwattr DW$45, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_location[DW_OP_breg20 -1]
        MOV       *-SP[1],AL            ; |203| 
	.dwpsn	"Ad7663.c",204,2
;----------------------------------------------------------------------
; 204 | if(Chnl > 15) {                                                        
;----------------------------------------------------------------------
        CMPB      AL,#15                ; |204| 
        B         L23,LOS               ; |204| 
        ; branchcc occurs ; |204| 
	.dwpsn	"Ad7663.c",205,3
;----------------------------------------------------------------------
; 205 | return FALSE;                                                          
; 207 | else {                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#0
        B         L38,UNC               ; |205| 
        ; branch occurs ; |205| 
L23:    
	.dwpsn	"Ad7663.c",208,3
;----------------------------------------------------------------------
; 208 | if(Chnl & 0x08) {                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#3            ; |208| 
        BF        L24,NTC               ; |208| 
        ; branchcc occurs ; |208| 
	.dwpsn	"Ad7663.c",209,4
;----------------------------------------------------------------------
; 209 | GpioDataRegs.GPBSET.bit.GPIOB3 = 1;  // U62 defined as HIGH order MUX  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0008 ; |209| 
	.dwpsn	"Ad7663.c",210,3
;----------------------------------------------------------------------
; 211 | else {                                                                 
;----------------------------------------------------------------------
        B         L25,UNC               ; |210| 
        ; branch occurs ; |210| 
L24:    
	.dwpsn	"Ad7663.c",212,4
;----------------------------------------------------------------------
; 212 | GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1; // U40 defined as LOW order MUX  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+6
        OR        @_GpioDataRegs+6,#0x0008 ; |212| 
L25:    
	.dwpsn	"Ad7663.c",214,3
;----------------------------------------------------------------------
; 214 | Chnl &= 0x07;                                                          
;----------------------------------------------------------------------
        AND       *-SP[1],#0x0007       ; |214| 
	.dwpsn	"Ad7663.c",215,3
;----------------------------------------------------------------------
; 215 | switch (Chnl) {                                                        
; 216 |         case 0:                                                        
;----------------------------------------------------------------------
        B         L35,UNC               ; |215| 
        ; branch occurs ; |215| 
L26:    
	.dwpsn	"Ad7663.c",217,5
;----------------------------------------------------------------------
; 217 | GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;   // A0 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+26,#0x0020 ; |217| 
	.dwpsn	"Ad7663.c",218,5
;----------------------------------------------------------------------
; 218 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // A1 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0002 ; |218| 
	.dwpsn	"Ad7663.c",219,5
;----------------------------------------------------------------------
; 219 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // A2 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0004 ; |219| 
	.dwpsn	"Ad7663.c",220,10
;----------------------------------------------------------------------
; 220 | break;                                                                 
; 221 | case 1:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |220| 
        ; branch occurs ; |220| 
L27:    
	.dwpsn	"Ad7663.c",222,5
;----------------------------------------------------------------------
; 222 | GpioDataRegs.GPGSET.bit.GPIOG5 = 1;             // A0 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+25,#0x0020 ; |222| 
	.dwpsn	"Ad7663.c",223,5
;----------------------------------------------------------------------
; 223 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // A1 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0002 ; |223| 
	.dwpsn	"Ad7663.c",224,5
;----------------------------------------------------------------------
; 224 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // A2 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0004 ; |224| 
	.dwpsn	"Ad7663.c",225,10
;----------------------------------------------------------------------
; 225 | break;                                                                 
; 226 | case 2:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |225| 
        ; branch occurs ; |225| 
L28:    
	.dwpsn	"Ad7663.c",227,5
;----------------------------------------------------------------------
; 227 | GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;   // A0 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+26,#0x0020 ; |227| 
	.dwpsn	"Ad7663.c",228,5
;----------------------------------------------------------------------
; 228 | GpioDataRegs.GPBSET.bit.GPIOB1 = 1;             // A1 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0002 ; |228| 
	.dwpsn	"Ad7663.c",229,5
;----------------------------------------------------------------------
; 229 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // A2 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0004 ; |229| 
	.dwpsn	"Ad7663.c",230,10
;----------------------------------------------------------------------
; 230 | break;                                                                 
; 231 | case 3:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |230| 
        ; branch occurs ; |230| 
L29:    
	.dwpsn	"Ad7663.c",232,5
;----------------------------------------------------------------------
; 232 | GpioDataRegs.GPGSET.bit.GPIOG5 = 1;             // A0 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+25,#0x0020 ; |232| 
	.dwpsn	"Ad7663.c",233,5
;----------------------------------------------------------------------
; 233 | GpioDataRegs.GPBSET.bit.GPIOB1 = 1;             // A1 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0002 ; |233| 
	.dwpsn	"Ad7663.c",234,5
;----------------------------------------------------------------------
; 234 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // A2 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0004 ; |234| 
	.dwpsn	"Ad7663.c",235,10
;----------------------------------------------------------------------
; 235 | break;                                                                 
; 236 | case 4:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |235| 
        ; branch occurs ; |235| 
L30:    
	.dwpsn	"Ad7663.c",237,5
;----------------------------------------------------------------------
; 237 | GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;   // A0 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+26,#0x0020 ; |237| 
	.dwpsn	"Ad7663.c",238,5
;----------------------------------------------------------------------
; 238 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // A1 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0002 ; |238| 
	.dwpsn	"Ad7663.c",239,5
;----------------------------------------------------------------------
; 239 | GpioDataRegs.GPBSET.bit.GPIOB2 = 1;             // A2 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0004 ; |239| 
	.dwpsn	"Ad7663.c",240,10
;----------------------------------------------------------------------
; 240 | break;                                                                 
; 241 | case 5:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |240| 
        ; branch occurs ; |240| 
L31:    
	.dwpsn	"Ad7663.c",242,5
;----------------------------------------------------------------------
; 242 | GpioDataRegs.GPGSET.bit.GPIOG5 = 1;             // A0 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+25,#0x0020 ; |242| 
	.dwpsn	"Ad7663.c",243,5
;----------------------------------------------------------------------
; 243 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // A1 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0002 ; |243| 
	.dwpsn	"Ad7663.c",244,5
;----------------------------------------------------------------------
; 244 | GpioDataRegs.GPBSET.bit.GPIOB2 = 1;             // A2 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0004 ; |244| 
	.dwpsn	"Ad7663.c",245,10
;----------------------------------------------------------------------
; 245 | break;                                                                 
; 246 | case 6:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |245| 
        ; branch occurs ; |245| 
L32:    
	.dwpsn	"Ad7663.c",247,5
;----------------------------------------------------------------------
; 247 | GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;   // A0 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+26,#0x0020 ; |247| 
	.dwpsn	"Ad7663.c",248,5
;----------------------------------------------------------------------
; 248 | GpioDataRegs.GPBSET.bit.GPIOB1 = 1;             // A1 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0002 ; |248| 
	.dwpsn	"Ad7663.c",249,5
;----------------------------------------------------------------------
; 249 | GpioDataRegs.GPBSET.bit.GPIOB2 = 1;             // A2 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0004 ; |249| 
	.dwpsn	"Ad7663.c",250,10
;----------------------------------------------------------------------
; 250 | break;                                                                 
; 251 | case 7:                                                                
;----------------------------------------------------------------------
        B         L37,UNC               ; |250| 
        ; branch occurs ; |250| 
L33:    
	.dwpsn	"Ad7663.c",252,5
;----------------------------------------------------------------------
; 252 | GpioDataRegs.GPGSET.bit.GPIOG5 = 1;             // A0 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+25,#0x0020 ; |252| 
	.dwpsn	"Ad7663.c",253,5
;----------------------------------------------------------------------
; 253 | GpioDataRegs.GPBSET.bit.GPIOB1 = 1;             // A1 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0002 ; |253| 
	.dwpsn	"Ad7663.c",254,5
;----------------------------------------------------------------------
; 254 | GpioDataRegs.GPBSET.bit.GPIOB2 = 1;             // A2 = 1              
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0004 ; |254| 
	.dwpsn	"Ad7663.c",255,10
;----------------------------------------------------------------------
; 255 | break;                                                                 
; 256 | default:                                                               
;----------------------------------------------------------------------
        B         L37,UNC               ; |255| 
        ; branch occurs ; |255| 
L34:    
	.dwpsn	"Ad7663.c",257,5
;----------------------------------------------------------------------
; 257 | GpioDataRegs.GPGCLEAR.bit.GPIOG5 = 1;   // A0 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+26,#0x0020 ; |257| 
	.dwpsn	"Ad7663.c",258,5
;----------------------------------------------------------------------
; 258 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // A1 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0002 ; |258| 
	.dwpsn	"Ad7663.c",259,5
;----------------------------------------------------------------------
; 259 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // A2 = 0                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0004 ; |259| 
	.dwpsn	"Ad7663.c",260,10
;----------------------------------------------------------------------
; 260 | break;                                                                 
;----------------------------------------------------------------------
        B         L37,UNC               ; |260| 
        ; branch occurs ; |260| 
L35:    
	.dwpsn	"Ad7663.c",215,3
        MOV       AL,*-SP[1]            ; |215| 
        CMPB      AL,#4                 ; |215| 
        B         L36,GT                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#4                 ; |215| 
        BF        L30,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#0                 ; |215| 
        BF        L26,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#1                 ; |215| 
        BF        L27,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#2                 ; |215| 
        BF        L28,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#3                 ; |215| 
        BF        L29,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        B         L34,UNC               ; |215| 
        ; branch occurs ; |215| 
L36:    
        CMPB      AL,#5                 ; |215| 
        BF        L31,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#6                 ; |215| 
        BF        L32,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        CMPB      AL,#7                 ; |215| 
        BF        L33,EQ                ; |215| 
        ; branchcc occurs ; |215| 
        B         L34,UNC               ; |215| 
        ; branch occurs ; |215| 
L37:    
	.dwpsn	"Ad7663.c",262,3
;----------------------------------------------------------------------
; 262 | DelayUs(5); // Delay for 6.25uS to allow input to ADC to settle        
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; |262| 
        LCR       #_DelayUs             ; |262| 
        ; call occurs [#_DelayUs] ; |262| 
	.dwpsn	"Ad7663.c",263,3
;----------------------------------------------------------------------
; 263 | return TRUE;                                                           
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; |263| 
L38:    
	.dwpsn	"Ad7663.c",266,1
        SUBB      SP,#2                 ; |263| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$43, DW_AT_end_file("Ad7663.c")
	.dwattr DW$43, DW_AT_end_line(0x10a)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$43

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_DelayUs
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
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$76	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$77

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$81

DW$51	.dwtag  DW_TAG_far_type
	.dwattr DW$51, DW_AT_type(*DW$T$69)
DW$T$93	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$93, DW_AT_type(*DW$51)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$69, DW_AT_byte_size(0x20)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$52, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$53, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$54, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$55, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$56, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$57, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$58, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$59, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$60, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$61, DW_AT_name("GPDDAT"), DW_AT_symbol_name("_GPDDAT")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$62, DW_AT_name("GPDSET"), DW_AT_symbol_name("_GPDSET")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$63, DW_AT_name("GPDCLEAR"), DW_AT_symbol_name("_GPDCLEAR")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$64, DW_AT_name("GPDTOGGLE"), DW_AT_symbol_name("_GPDTOGGLE")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$65, DW_AT_name("GPEDAT"), DW_AT_symbol_name("_GPEDAT")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$66, DW_AT_name("GPESET"), DW_AT_symbol_name("_GPESET")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$67, DW_AT_name("GPECLEAR"), DW_AT_symbol_name("_GPECLEAR")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$68, DW_AT_name("GPETOGGLE"), DW_AT_symbol_name("_GPETOGGLE")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$69, DW_AT_name("GPFDAT"), DW_AT_symbol_name("_GPFDAT")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$70, DW_AT_name("GPFSET"), DW_AT_symbol_name("_GPFSET")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$71, DW_AT_name("GPFCLEAR"), DW_AT_symbol_name("_GPFCLEAR")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$72, DW_AT_name("GPFTOGGLE"), DW_AT_symbol_name("_GPFTOGGLE")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$73, DW_AT_name("GPGDAT"), DW_AT_symbol_name("_GPGDAT")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$74, DW_AT_name("GPGSET"), DW_AT_symbol_name("_GPGSET")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$75, DW_AT_name("GPGCLEAR"), DW_AT_symbol_name("_GPGCLEAR")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$76, DW_AT_name("GPGTOGGLE"), DW_AT_symbol_name("_GPGTOGGLE")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$77, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x04)
DW$78	.dwtag  DW_TAG_subrange_type
	.dwattr DW$78, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$68


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$80, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("GPASET_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$82, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("GPACLEAR_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$84, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$86, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$88, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("GPBSET_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$90, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("GPBCLEAR_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$92, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$94, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("GPDDAT_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$96, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("GPDSET_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$98, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("GPDCLEAR_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$100, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$102, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("GPEDAT_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$104, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("GPESET_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$106, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("GPECLEAR_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$108, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$110, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("GPFDAT_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$112, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("GPFSET_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$113, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$114, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("GPFCLEAR_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$116, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$117, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$118, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("GPGDAT_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$120, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr DW$T$63, DW_AT_name("GPGSET_REG")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$122, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr DW$T$65, DW_AT_name("GPGCLEAR_REG")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$124, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$126, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$127, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$128, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$129, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$130, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$131, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$132, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$133, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$134, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$135, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$136, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$137, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$138, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$139, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$140, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$141, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$142, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("GPASET_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$143, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$144, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$145, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$146, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$146, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$147, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$148, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$149, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$150, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$151, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$152, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$153, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$154, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$155, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$156, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$157, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$158, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("GPACLEAR_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$159, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$160, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$161, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$162, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$163, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$164, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$165, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$166, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$167, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$168, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$169, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$170, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$171, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$172, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$173, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$174, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("GPIOA0"), DW_AT_symbol_name("_GPIOA0")
	.dwattr DW$175, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("GPIOA1"), DW_AT_symbol_name("_GPIOA1")
	.dwattr DW$176, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("GPIOA2"), DW_AT_symbol_name("_GPIOA2")
	.dwattr DW$177, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("GPIOA3"), DW_AT_symbol_name("_GPIOA3")
	.dwattr DW$178, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("GPIOA4"), DW_AT_symbol_name("_GPIOA4")
	.dwattr DW$179, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("GPIOA5"), DW_AT_symbol_name("_GPIOA5")
	.dwattr DW$180, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("GPIOA6"), DW_AT_symbol_name("_GPIOA6")
	.dwattr DW$181, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("GPIOA7"), DW_AT_symbol_name("_GPIOA7")
	.dwattr DW$182, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("GPIOA8"), DW_AT_symbol_name("_GPIOA8")
	.dwattr DW$183, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("GPIOA9"), DW_AT_symbol_name("_GPIOA9")
	.dwattr DW$184, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("GPIOA10"), DW_AT_symbol_name("_GPIOA10")
	.dwattr DW$185, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("GPIOA11"), DW_AT_symbol_name("_GPIOA11")
	.dwattr DW$186, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("GPIOA12"), DW_AT_symbol_name("_GPIOA12")
	.dwattr DW$187, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("GPIOA13"), DW_AT_symbol_name("_GPIOA13")
	.dwattr DW$188, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("GPIOA14"), DW_AT_symbol_name("_GPIOA14")
	.dwattr DW$189, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("GPIOA15"), DW_AT_symbol_name("_GPIOA15")
	.dwattr DW$190, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$191, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$192, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$193, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$194, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$195, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$196, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$197, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$198, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$199, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$200, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$201, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$202, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$203, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$204, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$205, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$206, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("GPBSET_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$207, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$208, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$209, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$210, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$211, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$212, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$213, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$214, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$215, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$216, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$217, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$218, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$219, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$220, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$221, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$222, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$222, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("GPBCLEAR_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$223, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$224, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$225, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$226, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$227, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$228, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$229, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$230, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$231, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$232, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$233, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$234, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$235, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$236, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$237, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$238, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("GPIOB0"), DW_AT_symbol_name("_GPIOB0")
	.dwattr DW$239, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("GPIOB1"), DW_AT_symbol_name("_GPIOB1")
	.dwattr DW$240, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("GPIOB2"), DW_AT_symbol_name("_GPIOB2")
	.dwattr DW$241, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("GPIOB3"), DW_AT_symbol_name("_GPIOB3")
	.dwattr DW$242, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("GPIOB4"), DW_AT_symbol_name("_GPIOB4")
	.dwattr DW$243, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("GPIOB5"), DW_AT_symbol_name("_GPIOB5")
	.dwattr DW$244, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("GPIOB6"), DW_AT_symbol_name("_GPIOB6")
	.dwattr DW$245, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("GPIOB7"), DW_AT_symbol_name("_GPIOB7")
	.dwattr DW$246, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("GPIOB8"), DW_AT_symbol_name("_GPIOB8")
	.dwattr DW$247, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("GPIOB9"), DW_AT_symbol_name("_GPIOB9")
	.dwattr DW$248, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("GPIOB10"), DW_AT_symbol_name("_GPIOB10")
	.dwattr DW$249, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("GPIOB11"), DW_AT_symbol_name("_GPIOB11")
	.dwattr DW$250, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("GPIOB12"), DW_AT_symbol_name("_GPIOB12")
	.dwattr DW$251, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("GPIOB13"), DW_AT_symbol_name("_GPIOB13")
	.dwattr DW$252, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("GPIOB14"), DW_AT_symbol_name("_GPIOB14")
	.dwattr DW$253, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("GPIOB15"), DW_AT_symbol_name("_GPIOB15")
	.dwattr DW$254, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("GPDDAT_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$255, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$256, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$257, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$258, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$259, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$260, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("GPDSET_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$261, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$262, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$263, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$264, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$265, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$266, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("GPDCLEAR_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$267, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$268, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$269, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$270, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$271, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$272, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("GPIOD0"), DW_AT_symbol_name("_GPIOD0")
	.dwattr DW$273, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("GPIOD1"), DW_AT_symbol_name("_GPIOD1")
	.dwattr DW$274, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$275, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x03)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("GPIOD5"), DW_AT_symbol_name("_GPIOD5")
	.dwattr DW$276, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("GPIOD6"), DW_AT_symbol_name("_GPIOD6")
	.dwattr DW$277, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$278, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("GPEDAT_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$279, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$279, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$280, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$280, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$281, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$281, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$282, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$282, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("GPESET_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$283, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$283, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$284, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$284, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$285, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$285, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$286, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$286, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("GPECLEAR_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$287, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$287, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$288, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$288, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$289, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$290, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("GPIOE0"), DW_AT_symbol_name("_GPIOE0")
	.dwattr DW$291, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("GPIOE1"), DW_AT_symbol_name("_GPIOE1")
	.dwattr DW$292, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("GPIOE2"), DW_AT_symbol_name("_GPIOE2")
	.dwattr DW$293, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$294, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0c)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("GPFDAT_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$295, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$296, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$297, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$297, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$298, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$298, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$299, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$299, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$300, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$300, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$301, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$301, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$302, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$303, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$303, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$304, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$304, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$305, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$306, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$307, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$308, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$309, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$310, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$310, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("GPFSET_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$311, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$311, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$312, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$312, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$313, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$313, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$314, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$314, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$315, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$315, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$316, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$316, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$317, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$317, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$318, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$318, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$319, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$320, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$320, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$321, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$321, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$322, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$322, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$323, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$323, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$324, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$324, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$325, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$325, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$326, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$326, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("GPFCLEAR_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$327, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$327, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$328, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$329, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$330, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$330, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$331, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$331, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$332, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$332, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$333, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$333, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$334, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$334, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$335, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$335, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$336, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$336, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$337, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$337, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$338, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$338, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$339, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$339, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$340, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$340, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$341, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$341, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$342, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$342, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$343, DW_AT_name("GPIOF0"), DW_AT_symbol_name("_GPIOF0")
	.dwattr DW$343, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$344, DW_AT_name("GPIOF1"), DW_AT_symbol_name("_GPIOF1")
	.dwattr DW$344, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$345, DW_AT_name("GPIOF2"), DW_AT_symbol_name("_GPIOF2")
	.dwattr DW$345, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$346, DW_AT_name("GPIOF3"), DW_AT_symbol_name("_GPIOF3")
	.dwattr DW$346, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$347, DW_AT_name("GPIOF4"), DW_AT_symbol_name("_GPIOF4")
	.dwattr DW$347, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$348, DW_AT_name("GPIOF5"), DW_AT_symbol_name("_GPIOF5")
	.dwattr DW$348, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$349, DW_AT_name("GPIOF6"), DW_AT_symbol_name("_GPIOF6")
	.dwattr DW$349, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$350, DW_AT_name("GPIOF7"), DW_AT_symbol_name("_GPIOF7")
	.dwattr DW$350, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$351, DW_AT_name("GPIOF8"), DW_AT_symbol_name("_GPIOF8")
	.dwattr DW$351, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$352, DW_AT_name("GPIOF9"), DW_AT_symbol_name("_GPIOF9")
	.dwattr DW$352, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$353, DW_AT_name("GPIOF10"), DW_AT_symbol_name("_GPIOF10")
	.dwattr DW$353, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$354, DW_AT_name("GPIOF11"), DW_AT_symbol_name("_GPIOF11")
	.dwattr DW$354, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$355, DW_AT_name("GPIOF12"), DW_AT_symbol_name("_GPIOF12")
	.dwattr DW$355, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$356, DW_AT_name("GPIOF13"), DW_AT_symbol_name("_GPIOF13")
	.dwattr DW$356, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$357, DW_AT_name("GPIOF14"), DW_AT_symbol_name("_GPIOF14")
	.dwattr DW$357, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$358, DW_AT_name("GPIOF15"), DW_AT_symbol_name("_GPIOF15")
	.dwattr DW$358, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("GPGDAT_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$359, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$359, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$360, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$360, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$361, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$361, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$362, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$362, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("GPGSET_BITS")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$363, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$363, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$364, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$364, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$365, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$365, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$366, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$366, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("GPGCLEAR_BITS")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$367, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$367, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$368, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$368, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$369, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$369, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$370, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$370, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$371, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$371, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$372, DW_AT_name("GPIOG4"), DW_AT_symbol_name("_GPIOG4")
	.dwattr DW$372, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$373, DW_AT_name("GPIOG5"), DW_AT_symbol_name("_GPIOG5")
	.dwattr DW$373, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$374, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$374, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$20, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_type(*DW$T$19)
	.dwattr DW$12, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_external(0x01)
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

DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$375, DW_AT_location[DW_OP_reg0]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$376, DW_AT_location[DW_OP_reg1]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$377, DW_AT_location[DW_OP_reg2]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$378, DW_AT_location[DW_OP_reg3]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$379, DW_AT_location[DW_OP_reg4]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$380, DW_AT_location[DW_OP_reg5]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$381, DW_AT_location[DW_OP_reg6]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$382, DW_AT_location[DW_OP_reg7]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$383, DW_AT_location[DW_OP_reg8]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$384, DW_AT_location[DW_OP_reg9]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$385, DW_AT_location[DW_OP_reg10]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$386, DW_AT_location[DW_OP_reg11]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$387, DW_AT_location[DW_OP_reg12]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$388, DW_AT_location[DW_OP_reg13]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$389, DW_AT_location[DW_OP_reg14]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$390, DW_AT_location[DW_OP_reg15]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$391, DW_AT_location[DW_OP_reg16]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$392, DW_AT_location[DW_OP_reg17]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$393, DW_AT_location[DW_OP_reg18]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$394, DW_AT_location[DW_OP_reg19]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$395, DW_AT_location[DW_OP_reg20]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$396, DW_AT_location[DW_OP_reg21]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$397, DW_AT_location[DW_OP_reg22]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$398, DW_AT_location[DW_OP_reg23]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$399, DW_AT_location[DW_OP_reg24]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$400, DW_AT_location[DW_OP_reg25]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$401, DW_AT_location[DW_OP_reg26]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$402, DW_AT_location[DW_OP_reg27]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$403, DW_AT_location[DW_OP_reg28]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$404, DW_AT_location[DW_OP_reg29]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$405, DW_AT_location[DW_OP_reg30]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$406, DW_AT_location[DW_OP_reg31]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x20]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x21]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$409, DW_AT_location[DW_OP_regx 0x22]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$410, DW_AT_location[DW_OP_regx 0x23]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$411, DW_AT_location[DW_OP_regx 0x24]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$412, DW_AT_location[DW_OP_regx 0x25]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$413, DW_AT_location[DW_OP_regx 0x26]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$414, DW_AT_location[DW_OP_regx 0x27]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$415, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


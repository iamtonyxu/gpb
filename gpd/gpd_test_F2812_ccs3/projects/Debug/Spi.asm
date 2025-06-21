;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:53 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("SpiaRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SpiaRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{F246800A-A7E3-44F8-8D38-BE7E583A2315} 
	.sect	".text"
	.clink
	.global	_InitSpi

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("InitSpi")
	.dwattr $C$DW$2, DW_AT_low_pc(_InitSpi)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_InitSpi")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 40,column 1,is_stmt,address _InitSpi,isa 0

	.dwfde $C$DW$CIE, _InitSpi
;----------------------------------------------------------------------
;  39 | void InitSpi(void)                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitSpi                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitSpi:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 41,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | SpiaRegs.SPICCR.bit.SPISWRESET = 0;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs         ; [CPU_ARAU] 
        AND       @$BLOCKED(_SpiaRegs),#0xff7f ; [CPU_ALU] |41| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 46,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | SpiaRegs.SPIBRR = 29; // was 14; for 2MHZ                              
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SpiaRegs)+4,#29,UNC ; [CPU_ALU] |46| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 50,column 1,is_stmt,isa 0
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"
	.clink
	.global	_ConfigSpi

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("ConfigSpi")
	.dwattr $C$DW$4, DW_AT_low_pc(_ConfigSpi)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_ConfigSpi")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 74,column 1,is_stmt,address _ConfigSpi,isa 0

	.dwfde $C$DW$CIE, _ConfigSpi
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("ClkPol")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_ClkPol")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg0]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("NoOfBits")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_NoOfBits")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  73 | void ConfigSpi(int ClkPol, int NoOfBits)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigSpi                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_ConfigSpi:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("ClkPol")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_ClkPol")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -1]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("NoOfBits")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_NoOfBits")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[2],AH            ; [CPU_ALU] |74| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |74| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 76,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | SpiaRegs.SPICCR.bit.SPISWRESET = 0;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs         ; [CPU_ARAU] 
        AND       @$BLOCKED(_SpiaRegs),#0xff7f ; [CPU_ALU] |76| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 78,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | ClkPol = ((ClkPol >= 0) && (ClkPol < 4)) ? ClkPol : 0;                 
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_ALU] |78| 
        B         $C$L1,LT              ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
        CMPB      AL,#4                 ; [CPU_ALU] |78| 
        B         $C$L2,LT              ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
$C$L1:    
        MOVB      AL,#0                 ; [CPU_ALU] |78| 
$C$L2:    
        MOV       *-SP[1],AL            ; [CPU_ALU] |78| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 79,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  79 | NoOfBits = ((NoOfBits >= 0) && (NoOfBits < 17)) ? NoOfBits : 8;        
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |79| 
        B         $C$L3,LT              ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        CMPB      AL,#17                ; [CPU_ALU] |79| 
        B         $C$L4,LT              ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
$C$L3:    
        MOVB      AL,#8                 ; [CPU_ALU] |79| 
$C$L4:    
        MOV       *-SP[2],AL            ; [CPU_ALU] |79| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 81,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | switch(ClkPol) {                                                       
;  82 |         case 0: /* Transmit on falling edge; Receive on rising edge; no
;     |  Delay */                                                              
;----------------------------------------------------------------------
        B         $C$L9,UNC             ; [CPU_ALU] |81| 
        ; branch occurs ; [] |81| 
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 83,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | SpiaRegs.SPICCR.bit.CLKPOLARITY = 1;                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs),#0x0040 ; [CPU_ALU] |83| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 84,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | SpiaRegs.SPICTL.bit.CLK_PHASE = 0;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SpiaRegs)+1,#0xfff7 ; [CPU_ALU] |84| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 85,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | break;                                                                 
;  86 | case 1: /* Transmit on falling edge; Receive on rising edge; Delay */  
;----------------------------------------------------------------------
        B         $C$L10,UNC            ; [CPU_ALU] |85| 
        ; branch occurs ; [] |85| 
$C$L6:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 87,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | SpiaRegs.SPICCR.bit.CLKPOLARITY = 1;                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs),#0x0040 ; [CPU_ALU] |87| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 88,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | SpiaRegs.SPICTL.bit.CLK_PHASE = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs)+1,#0x0008 ; [CPU_ALU] |88| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 89,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | break;                                                                 
;  91 | case 2: /* Transmit on rising edge; Receive on falling edge; no Delay *
;     | /                                                                      
;----------------------------------------------------------------------
        B         $C$L10,UNC            ; [CPU_ALU] |89| 
        ; branch occurs ; [] |89| 
$C$L7:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 92,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | SpiaRegs.SPICCR.bit.CLKPOLARITY = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SpiaRegs),#0xffbf ; [CPU_ALU] |92| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 93,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | SpiaRegs.SPICTL.bit.CLK_PHASE = 0;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SpiaRegs)+1,#0xfff7 ; [CPU_ALU] |93| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 94,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | break;                                                                 
;  96 | case 3: /* Transmit on rising edge; Receive on falling edge; Delay */  
;----------------------------------------------------------------------
        B         $C$L10,UNC            ; [CPU_ALU] |94| 
        ; branch occurs ; [] |94| 
$C$L8:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 97,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | SpiaRegs.SPICCR.bit.CLKPOLARITY = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SpiaRegs),#0xffbf ; [CPU_ALU] |97| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 98,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | SpiaRegs.SPICTL.bit.CLK_PHASE = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs)+1,#0x0008 ; [CPU_ALU] |98| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 99,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L10,UNC            ; [CPU_ALU] |99| 
        ; branch occurs ; [] |99| 
$C$L9:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 81,column 2,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |81| 
        B         $C$L5,EQ              ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#1                 ; [CPU_ALU] |81| 
        B         $C$L6,EQ              ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#2                 ; [CPU_ALU] |81| 
        B         $C$L7,EQ              ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#3                 ; [CPU_ALU] |81| 
        B         $C$L8,EQ              ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
$C$L10:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | SpiaRegs.SPICCR.bit.SPICHAR = ((NoOfBits - 1) & 0xf);                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |102| 
        AND       AH,@$BLOCKED(_SpiaRegs),#0xfff0 ; [CPU_ALU] |102| 
        ADDB      AL,#-1                ; [CPU_ALU] |102| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |102| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |102| 
        OR        AL,AH                 ; [CPU_ALU] |102| 
        MOV       @$BLOCKED(_SpiaRegs),AL ; [CPU_ALU] |102| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | SpiaRegs.SPIFFTX.bit.SPIFFENA = 0;              /* Disable SPI FIFO Enh
;     | ancements */                                                           
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SpiaRegs)+10,#0xbfff ; [CPU_ALU] |103| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | SpiaRegs.SPICTL.bit.MASTER_SLAVE = 1;           /* Master Mode */      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs)+1,#0x0004 ; [CPU_ALU] |105| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | SpiaRegs.SPICTL.bit.TALK = 1;                                          
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs)+1,#0x0002 ; [CPU_ALU] |106| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | SpiaRegs.SPICCR.bit.SPISWRESET = 1;                     /* SPI Ready to
;     |  Transmit and Receive */                                               
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SpiaRegs),#0x0080 ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 109,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.global	_TxSpi

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("TxSpi")
	.dwattr $C$DW$10, DW_AT_low_pc(_TxSpi)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_TxSpi")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 127,column 1,is_stmt,address _TxSpi,isa 0

	.dwfde $C$DW$CIE, _TxSpi
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("Data")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 126 | void TxSpi(Uint16 Data)                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _TxSpi                        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_TxSpi:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("Data")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |127| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 128,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | SpiaRegs.SPITXBUF = Data;                                              
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs+8       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_SpiaRegs)+8,AL ; [CPU_ALU] |128| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 130,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x82)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.global	_RxSpi

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("RxSpi")
	.dwattr $C$DW$14, DW_AT_low_pc(_RxSpi)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_RxSpi")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x93)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 148,column 1,is_stmt,address _RxSpi,isa 0

	.dwfde $C$DW$CIE, _RxSpi
;----------------------------------------------------------------------
; 147 | Uint16 RxSpi(void)                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _RxSpi                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RxSpi:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | return SpiaRegs.SPIRXBUF;                                              
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs+7       ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_SpiaRegs)+7 ; [CPU_ALU] |149| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 151,column 1,is_stmt,isa 0
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x97)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.global	_FormatSpiTxWord

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("FormatSpiTxWord")
	.dwattr $C$DW$16, DW_AT_low_pc(_FormatSpiTxWord)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_FormatSpiTxWord")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 171,column 1,is_stmt,address _FormatSpiTxWord,isa 0

	.dwfde $C$DW$CIE, _FormatSpiTxWord
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("Data")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("Length")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Length")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 170 | Uint16 FormatSpiTxWord(Uint16 Data, Uint16 Length)                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _FormatSpiTxWord              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_FormatSpiTxWord:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("Data")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -1]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("Length")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_Length")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[2],AH            ; [CPU_ALU] |171| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |171| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 172,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | Length = ((Length > 0) && (Length < 17)) ? Length : 8;                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |172| 
        B         $C$L11,EQ             ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
        CMPB      AL,#17                ; [CPU_ALU] |172| 
        B         $C$L12,LO             ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
$C$L11:    
        MOVB      AL,#8                 ; [CPU_ALU] |172| 
$C$L12:    
        MOV       *-SP[2],AL            ; [CPU_ALU] |172| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 174,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | return (Data << (16 - Length));                                        
;----------------------------------------------------------------------
        MOV       T,#16                 ; [CPU_ALU] |174| 
        MOV       AL,T                  ; [CPU_ALU] |174| 
        SUB       AL,*-SP[2]            ; [CPU_ALU] |174| 
        MOV       T,AL                  ; [CPU_ALU] |174| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |174| 
        LSL       AL,T                  ; [CPU_ALU] |174| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 176,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.global	_SpiRxNotReady

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("SpiRxNotReady")
	.dwattr $C$DW$22, DW_AT_low_pc(_SpiRxNotReady)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_SpiRxNotReady")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0xc2)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 195,column 1,is_stmt,address _SpiRxNotReady,isa 0

	.dwfde $C$DW$CIE, _SpiRxNotReady
;----------------------------------------------------------------------
; 194 | Uint16 SpiRxNotReady(void)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SpiRxNotReady                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SpiRxNotReady:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 196,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 196 | if(SpiaRegs.SPISTS.bit.INT_FLAG)                                       
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs+2       ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_SpiaRegs)+2,#6 ; [CPU_ALU] |196| 
        B         $C$L13,NTC            ; [CPU_ALU] |196| 
        ; branchcc occurs ; [] |196| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 197,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | return 0;                                                              
; 198 | else                                                                   
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |197| 
        B         $C$L14,UNC            ; [CPU_ALU] |197| 
        ; branch occurs ; [] |197| 
$C$L13:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 199,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |199| 
$C$L14:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 201,column 1,is_stmt,isa 0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xc9)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	_SpiTxNotReady

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("SpiTxNotReady")
	.dwattr $C$DW$24, DW_AT_low_pc(_SpiTxNotReady)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_SpiTxNotReady")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 221,column 1,is_stmt,address _SpiTxNotReady,isa 0

	.dwfde $C$DW$CIE, _SpiTxNotReady
;----------------------------------------------------------------------
; 220 | Uint16 SpiTxNotReady(void)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SpiTxNotReady                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SpiTxNotReady:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 222,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 222 | if(SpiaRegs.SPISTS.bit.BUFFULL_FLAG)                                   
;----------------------------------------------------------------------
        MOVW      DP,#_SpiaRegs+2       ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_SpiaRegs)+2,#5 ; [CPU_ALU] |222| 
        B         $C$L15,NTC            ; [CPU_ALU] |222| 
        ; branchcc occurs ; [] |222| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 223,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | return 1;                                                              
; 224 | else                                                                   
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |223| 
        B         $C$L16,UNC            ; [CPU_ALU] |223| 
        ; branch occurs ; [] |223| 
$C$L15:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 225,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |225| 
$C$L16:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c",line 227,column 1,is_stmt,isa 0
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Spi.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SpiaRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("SPICCR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("SPICHAR")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_SPICHAR")
	.dwattr $C$DW$26, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$26, DW_AT_bit_size(0x04)
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("SPILBK")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_SPILBK")
	.dwattr $C$DW$27, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$27, DW_AT_bit_size(0x01)
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("rsvd1")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$28, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$28, DW_AT_bit_size(0x01)
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("CLKPOLARITY")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_CLKPOLARITY")
	.dwattr $C$DW$29, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$29, DW_AT_bit_size(0x01)
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("SPISWRESET")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_SPISWRESET")
	.dwattr $C$DW$30, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$30, DW_AT_bit_size(0x01)
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("rsvd2")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$31, DW_AT_bit_size(0x08)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("SPICCR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("all")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$33, DW_AT_name("bit")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("SPICTL_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("SPIINTENA")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_SPIINTENA")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$34, DW_AT_bit_size(0x01)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("TALK")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_TALK")
	.dwattr $C$DW$35, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$35, DW_AT_bit_size(0x01)
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("MASTER_SLAVE")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_MASTER_SLAVE")
	.dwattr $C$DW$36, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$36, DW_AT_bit_size(0x01)
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("CLK_PHASE")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_CLK_PHASE")
	.dwattr $C$DW$37, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$37, DW_AT_bit_size(0x01)
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("OVERRUNINTENA")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_OVERRUNINTENA")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$38, DW_AT_bit_size(0x01)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("rsvd")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$39, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$39, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("SPICTL_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_name("all")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$41, DW_AT_name("bit")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("SPIFFCT_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("TXDLY")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_TXDLY")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$42, DW_AT_bit_size(0x08)
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("rsvd")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$43, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$43, DW_AT_bit_size(0x08)
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("SPIFFCT_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("all")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$45, DW_AT_name("bit")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("SPIFFRX_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("RXFFIL")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_RXFFIL")
	.dwattr $C$DW$46, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$46, DW_AT_bit_size(0x05)
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_RXFFIENA")
	.dwattr $C$DW$47, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$47, DW_AT_bit_size(0x01)
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_RXFFINTCLR")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$48, DW_AT_bit_size(0x01)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("RXFFINT")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_RXFFINT")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$49, DW_AT_bit_size(0x01)
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("RXFFST")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_RXFFST")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$50, DW_AT_bit_size(0x05)
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_RXFIFORESET")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$51, DW_AT_bit_size(0x01)
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("RXFFOVFCLR")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_RXFFOVFCLR")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$52, DW_AT_bit_size(0x01)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_RXFFOVF")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("SPIFFRX_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("all")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$55, DW_AT_name("bit")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("SPIFFTX_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("TXFFIL")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_TXFFIL")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$56, DW_AT_bit_size(0x05)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_TXFFIENA")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_TXFFINTCLR")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("TXFFINT")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_TXFFINT")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("TXFFST")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_TXFFST")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$60, DW_AT_bit_size(0x05)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("TXFIFO")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_TXFIFO")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("SPIFFENA")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_SPIFFENA")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("SPIRST")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_SPIRST")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("SPIFFTX_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("all")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$65, DW_AT_name("bit")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("SPIPRI_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("rsvd1")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$66, DW_AT_bit_size(0x04)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("FREE")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("SOFT")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("PRIORITY")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("rsvd2")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$70, DW_AT_bit_size(0x09)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("SPIPRI_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("all")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$72, DW_AT_name("bit")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("SPISTS_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("rsvd1")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$73, DW_AT_bit_size(0x05)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("BUFFULL_FLAG")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_BUFFULL_FLAG")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("INT_FLAG")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_INT_FLAG")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("OVERRUN_FLAG")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_OVERRUN_FLAG")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("rsvd2")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$77, DW_AT_bit_size(0x08)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("SPISTS_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("all")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$79, DW_AT_name("bit")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("SPI_REGS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x10)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_name("SPICCR")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_SPICCR")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$81, DW_AT_name("SPICTL")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_SPICTL")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$82, DW_AT_name("SPISTS")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_SPISTS")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("rsvd1")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("SPIBRR")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_SPIBRR")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("rsvd2")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("SPIRXEMU")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_SPIRXEMU")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("SPIRXBUF")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_SPIRXBUF")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("SPITXBUF")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_SPITXBUF")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("SPIDAT")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_SPIDAT")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$90, DW_AT_name("SPIFFTX")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_SPIFFTX")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$91, DW_AT_name("SPIFFRX")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_SPIFFRX")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$92, DW_AT_name("SPIFFCT")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_SPIFFCT")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$93, DW_AT_name("rsvd3")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$94, DW_AT_name("SPIPRI")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_SPIPRI")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35

$C$DW$95	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$35)

$C$DW$T$44	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$95)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$96	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$96, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$34

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("AL")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg0]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("AH")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg1]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("PL")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg2]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("PH")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg3]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("SP")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg20]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("XT")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg21]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("T")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg22]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("ST0")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg23]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("ST1")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg24]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("PC")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg25]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("RPC")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg26]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("FP")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg28]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("DP")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg29]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("SXM")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg30]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("PM")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg31]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("OVM")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x20]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("PAGE0")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x21]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("AMODE")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x22]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("EALLOW")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$116	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$116, DW_AT_name("INTM")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x23]

$C$DW$117	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$117, DW_AT_name("IFR")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x24]

$C$DW$118	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$118, DW_AT_name("IER")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x25]

$C$DW$119	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$119, DW_AT_name("V")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x26]

$C$DW$120	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$120, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$121	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$121, DW_AT_name("VOL")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$122	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$122, DW_AT_name("AR0")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg4]

$C$DW$123	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$123, DW_AT_name("XAR0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg5]

$C$DW$124	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$124, DW_AT_name("AR1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg6]

$C$DW$125	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$125, DW_AT_name("XAR1")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg7]

$C$DW$126	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$126, DW_AT_name("AR2")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg8]

$C$DW$127	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$127, DW_AT_name("XAR2")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg9]

$C$DW$128	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$128, DW_AT_name("AR3")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg10]

$C$DW$129	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$129, DW_AT_name("XAR3")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg11]

$C$DW$130	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$130, DW_AT_name("AR4")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg12]

$C$DW$131	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$131, DW_AT_name("XAR4")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg13]

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("AR5")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg14]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("XAR5")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg15]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("AR6")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg16]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("XAR6")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg17]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("AR7")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg18]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("XAR7")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


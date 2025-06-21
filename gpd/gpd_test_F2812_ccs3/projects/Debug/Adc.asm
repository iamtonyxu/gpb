;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:52 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DelayUs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DelayUs")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("StartConversion")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_StartConversion")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("AdcRegs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_AdcRegs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{0077EDF1-C817-4A36-9E25-A1AD685C4B0C} 
	.sect	".text"
	.clink
	.global	_InitAdc

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("InitAdc")
	.dwattr $C$DW$5, DW_AT_low_pc(_InitAdc)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_InitAdc")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 28,column 1,is_stmt,address _InitAdc,isa 0

	.dwfde $C$DW$CIE, _InitAdc
;----------------------------------------------------------------------
;  27 | void InitAdc(void)                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitAdc                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitAdc:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 31,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  31 | AdcRegs.ADCTRL1.bit.RESET = 1;          // Reset the ADC module        
;----------------------------------------------------------------------
        MOVW      DP,#_AdcRegs          ; [CPU_ARAU] 
        OR        @$BLOCKED(_AdcRegs),#0x4000 ; [CPU_ALU] |31| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 32,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  32 | asm(" RPT #10 || NOP");                         // Must wait 12-cycles
;     | (worst-case) for ADC reset to take effect                              
;----------------------------------------------------------------------
 RPT #10 || NOP
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 35,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | AdcRegs.ADCTRL3.all = 0x00C8;           // first power-up ref and bandg
;     | ap circuits                                                            
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_AdcRegs)+24,#200,UNC ; [CPU_ALU] |35| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 45,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  45 | DelayUs(10000);                                         // Wait 10 ms b
;     | efore setting ADCPWDN                                                  
;----------------------------------------------------------------------
        MOV       AL,#10000             ; [CPU_ALU] |45| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("_DelayUs")
	.dwattr $C$DW$6, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |45| 
        ; call occurs [#_DelayUs] ; [] |45| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 46,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | AdcRegs.ADCTRL3.bit.ADCPWDN = 1;        // Set ADCPWDN=1 to power main
;     | ADC                                                                    
;----------------------------------------------------------------------
        MOVW      DP,#_AdcRegs+24       ; [CPU_ARAU] 
        OR        @$BLOCKED(_AdcRegs)+24,#0x0020 ; [CPU_ALU] |46| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | DelayUs(1000);                                          // Wait 1 ms be
;     | fore using the ADC                                                     
;----------------------------------------------------------------------
        MOV       AL,#1000              ; [CPU_ALU] |47| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("_DelayUs")
	.dwattr $C$DW$7, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |47| 
        ; call occurs [#_DelayUs] ; [] |47| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 50,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | AdcRegs.ADCTRL3.bit.SMODE_SEL = 1;              // Set up Simultaneous
;     | sampling mode                                                          
;----------------------------------------------------------------------
        MOVW      DP,#_AdcRegs+24       ; [CPU_ARAU] 
        OR        @$BLOCKED(_AdcRegs)+24,#0x0001 ; [CPU_ALU] |50| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 51,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | AdcRegs.ADCTRL1.bit.SEQ_CASC = 1;               // Set up cascaded sequ
;     | encer mode                                                             
;----------------------------------------------------------------------
        OR        @$BLOCKED(_AdcRegs),#0x0010 ; [CPU_ALU] |51| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 52,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | AdcRegs.ADCMAXCONV.all = 0x0007;                // 8 double conversions
;     |  (16 total)                                                            
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_AdcRegs)+2,#7,UNC ; [CPU_ALU] |52| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 53,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | AdcRegs.ADCCHSELSEQ1.bit.CONV00 = 0x0;  // Set up conversion from ADCIN
;     | A0 & ADCINB0                                                           
;----------------------------------------------------------------------
        AND       @$BLOCKED(_AdcRegs)+3,#0xfff0 ; [CPU_ALU] |53| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | AdcRegs.ADCCHSELSEQ1.bit.CONV01 = 0x1;  // Set up conversion from ADCIN
;     | A1 & ADCINB1                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+3,#0xff0f ; [CPU_ALU] |54| 
        ORB       AL,#0x10              ; [CPU_ALU] |54| 
        MOV       @$BLOCKED(_AdcRegs)+3,AL ; [CPU_ALU] |54| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | AdcRegs.ADCCHSELSEQ1.bit.CONV02 = 0x2;  // Set up conversion from ADCIN
;     | A2 & ADCINB2                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+3,#0xf0ff ; [CPU_ALU] |55| 
        OR        AL,#0x0200            ; [CPU_ALU] |55| 
        MOV       @$BLOCKED(_AdcRegs)+3,AL ; [CPU_ALU] |55| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | AdcRegs.ADCCHSELSEQ1.bit.CONV03 = 0x3;  // Set up conversion from ADCIN
;     | A3 & ADCINB3                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+3,#0x0fff ; [CPU_ALU] |56| 
        OR        AL,#0x3000            ; [CPU_ALU] |56| 
        MOV       @$BLOCKED(_AdcRegs)+3,AL ; [CPU_ALU] |56| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | AdcRegs.ADCCHSELSEQ2.bit.CONV04 = 0x4;  // Set up conversion from ADCIN
;     | A4 & ADCINB4                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+4,#0xfff0 ; [CPU_ALU] |57| 
        ORB       AL,#0x04              ; [CPU_ALU] |57| 
        MOV       @$BLOCKED(_AdcRegs)+4,AL ; [CPU_ALU] |57| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | AdcRegs.ADCCHSELSEQ2.bit.CONV05 = 0x5;  // Set up conversion from ADCIN
;     | A5 & ADCINB5                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+4,#0xff0f ; [CPU_ALU] |58| 
        ORB       AL,#0x50              ; [CPU_ALU] |58| 
        MOV       @$BLOCKED(_AdcRegs)+4,AL ; [CPU_ALU] |58| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | AdcRegs.ADCCHSELSEQ2.bit.CONV06 = 0x6;  // Set up conversion from ADCIN
;     | A6 & ADCINB6                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+4,#0xf0ff ; [CPU_ALU] |59| 
        OR        AL,#0x0600            ; [CPU_ALU] |59| 
        MOV       @$BLOCKED(_AdcRegs)+4,AL ; [CPU_ALU] |59| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | AdcRegs.ADCCHSELSEQ2.bit.CONV07 = 0x7;  // Set up conversion from ADCIN
;     | A7 & ADCINB7                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_AdcRegs)+4,#0x0fff ; [CPU_ALU] |60| 
        OR        AL,#0x7000            ; [CPU_ALU] |60| 
        MOV       @$BLOCKED(_AdcRegs)+4,AL ; [CPU_ALU] |60| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 62,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | AdcRegs.ADCTRL1.all = 0x0710;                                          
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_AdcRegs),#1808 ; [CPU_ALU] |62| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 75,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | AdcRegs.ADCTRL2.all = 0x0800;                                          
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_AdcRegs)+1,#2048 ; [CPU_ALU] |75| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 97,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | } // end AdcInit()                                                     
;----------------------------------------------------------------------
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x61)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_GetAdcCalibrationFactors

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("GetAdcCalibrationFactors")
	.dwattr $C$DW$9, DW_AT_low_pc(_GetAdcCalibrationFactors)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_GetAdcCalibrationFactors")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x77)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-24)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 120,column 1,is_stmt,address _GetAdcCalibrationFactors,isa 0

	.dwfde $C$DW$CIE, _GetAdcCalibrationFactors
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("Gain")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_Gain")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("OffSet")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_OffSet")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 119 | void GetAdcCalibrationFactors(float *Gain, int32 *OffSet)              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _GetAdcCalibrationFactors     FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 19 Auto,  0 SOE     *
;***************************************************************

_GetAdcCalibrationFactors:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#22                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -24
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("Gain")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_Gain")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -4]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("OffSet")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_OffSet")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -6]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("offset")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -8]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("V8")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_V8")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -10]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("V11")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_V11")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -12]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("gain")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_gain")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -14]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("Vref")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Vref")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -16]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("Vagnd")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Vagnd")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -18]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("ResltReg")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_ResltReg")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -20]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("idx")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -21]

;----------------------------------------------------------------------
; 121 | int idx;                                                               
; 122 | int32 offset;                                                          
; 123 | float V8, V11, gain;                                                   
;----------------------------------------------------------------------
        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |120| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |120| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 124,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | Uint32 Vref = 0L;                                                      
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |124| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |124| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 125,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | Uint32 Vagnd = 0L;                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |125| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 126,column 28,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | volatile Uint16* ResltReg = &AdcRegs.ADCRESULT0;                       
;----------------------------------------------------------------------
        MOVL      XAR4,#_AdcRegs+8      ; [CPU_ARAU] |126| 
        MOVL      *-SP[20],XAR4         ; [CPU_ALU] |126| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 128,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | for(idx = 0; idx < 1024; idx++) { // Acquire 1024 Samples              
;----------------------------------------------------------------------
        MOV       *-SP[21],#0           ; [CPU_ALU] |128| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 128,column 15,is_stmt,isa 0
        CMP       *-SP[21],#1024        ; [CPU_ALU] |128| 
        B         $C$L2,GEQ             ; [CPU_ALU] |128| 
        ; branchcc occurs ; [] |128| 
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 129,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | StartConversion();                                                     
;----------------------------------------------------------------------
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_StartConversion")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_StartConversion     ; [CPU_ALU] |129| 
        ; call occurs [#_StartConversion] ; [] |129| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 130,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | Vref += ((ResltReg[ADCIN5] >> 4) & 0x0fff);                            
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[20]         ; [CPU_ALU] |130| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |130| 
        LSR       AL,4                  ; [CPU_ALU] |130| 
        AND       AL,#0x0fff            ; [CPU_ALU] |130| 
        MOVU      ACC,AL                ; [CPU_ALU] |130| 
        ADDL      ACC,*-SP[16]          ; [CPU_ALU] |130| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |130| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 131,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | Vagnd += ((ResltReg[ADCIN6] >> 4) & 0x0fff);                           
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[6]          ; [CPU_ALU] |131| 
        LSR       AL,4                  ; [CPU_ALU] |131| 
        AND       AL,#0x0fff            ; [CPU_ALU] |131| 
        MOVU      ACC,AL                ; [CPU_ALU] |131| 
        ADDL      ACC,*-SP[18]          ; [CPU_ALU] |131| 
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |131| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 132,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | DelayUs(8000); // Delay for 10mS                                       
;----------------------------------------------------------------------
        MOV       AL,#8000              ; [CPU_ALU] |132| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_DelayUs")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |132| 
        ; call occurs [#_DelayUs] ; [] |132| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 128,column 27,is_stmt,isa 0
        INC       *-SP[21]              ; [CPU_ALU] |128| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 128,column 15,is_stmt,isa 0
        CMP       *-SP[21],#1024        ; [CPU_ALU] |128| 
        B         $C$L1,LT              ; [CPU_ALU] |128| 
        ; branchcc occurs ; [] |128| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | Vref /= 1024;   // Take average                                        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |135| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,10                ; [CPU_ALU] |135| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |135| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 136,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 136 | Vagnd /= 1024;  // Take average                                        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |136| 
        SFR       ACC,10                ; [CPU_ALU] |136| 
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |136| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 138,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | V8 = ((float)Vref) * 3.0/4096.0;        // Convert to float            
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |138| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("UL$$TOFS")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #UL$$TOFS             ; [CPU_ALU] |138| 
        ; call occurs [#UL$$TOFS] ; [] |138| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |138| 
        MOVB      AL,#0                 ; [CPU_ALU] |138| 
        MOV       AH,#16448             ; [CPU_ALU] |138| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |138| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |138| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |138| 
        ; call occurs [#FS$$MPY] ; [] |138| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |138| 
        MOVB      AL,#0                 ; [CPU_ALU] |138| 
        MOV       AH,#17792             ; [CPU_ALU] |138| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |138| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |138| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_ALU] |138| 
        ; call occurs [#FS$$DIV] ; [] |138| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |138| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 139,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | V11 = ((float)Vagnd) * 3.0/4096.0;      // Convert to float            
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |139| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("UL$$TOFS")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #UL$$TOFS             ; [CPU_ALU] |139| 
        ; call occurs [#UL$$TOFS] ; [] |139| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |139| 
        MOVB      AL,#0                 ; [CPU_ALU] |139| 
        MOV       AH,#16448             ; [CPU_ALU] |139| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |139| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |139| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |139| 
        ; call occurs [#FS$$MPY] ; [] |139| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |139| 
        MOVB      AL,#0                 ; [CPU_ALU] |139| 
        MOV       AH,#17792             ; [CPU_ALU] |139| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |139| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |139| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_ALU] |139| 
        ; call occurs [#FS$$DIV] ; [] |139| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |139| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 141,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | gain = ((2.5 - 0.19084)/(V8 - V11));
;     |                  // Calculate Gain error                               
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |141| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |141| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_ALU] |141| 
        ; call occurs [#FS$$SUB] ; [] |141| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |141| 
        MOV       AL,#51527             ; [CPU_ALU] |141| 
        MOV       AH,#16403             ; [CPU_ALU] |141| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_ALU] |141| 
        ; call occurs [#FS$$DIV] ; [] |141| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |141| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 142,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | offset = (int32)((0.19084 - (gain * V11)) * (4096.0/3.0));      // Calc
;     | ulate Offset error                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |142| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |142| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |142| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |142| 
        ; call occurs [#FS$$MPY] ; [] |142| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |142| 
        MOV       AL,#27536             ; [CPU_ALU] |142| 
        MOV       AH,#15939             ; [CPU_ALU] |142| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_ALU] |142| 
        ; call occurs [#FS$$SUB] ; [] |142| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |142| 
        MOV       AL,#43691             ; [CPU_ALU] |142| 
        MOV       AH,#17578             ; [CPU_ALU] |142| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |142| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |142| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |142| 
        ; call occurs [#FS$$MPY] ; [] |142| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_ALU] |142| 
        ; call occurs [#FS$$TOL] ; [] |142| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |142| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 144,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 144 | *Gain = gain;                                                          
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |144| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |144| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |144| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 145,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 145 | *OffSet = offset;                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |145| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |145| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |145| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 147,column 1,is_stmt,isa 0
        SUBB      SP,#22                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.global	_StartConversion

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("StartConversion")
	.dwattr $C$DW$37, DW_AT_low_pc(_StartConversion)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_StartConversion")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0xa5)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 166,column 1,is_stmt,address _StartConversion,isa 0

	.dwfde $C$DW$CIE, _StartConversion
;----------------------------------------------------------------------
; 165 | void StartConversion(void)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartConversion              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartConversion:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 167,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | while(AdcRegs.ADCST.bit.SEQ1_BSY){} // Wait for Seq1 to become idle    
;----------------------------------------------------------------------
$C$L3:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 167,column 36,is_stmt,isa 0
        MOVW      DP,#_AdcRegs+25       ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_AdcRegs)+25,#2 ; [CPU_ALU] |167| 
        B         $C$L3,TC              ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 169,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;       // Start Conversion            
;----------------------------------------------------------------------
        OR        @$BLOCKED(_AdcRegs)+1,#0x2000 ; [CPU_ALU] |169| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 171,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | while(AdcRegs.ADCTRL2.bit.SOC_SEQ1) {} // wait for sequencer to start  
;----------------------------------------------------------------------
$C$L4:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 171,column 39,is_stmt,isa 0
        TBIT      @$BLOCKED(_AdcRegs)+1,#13 ; [CPU_ALU] |171| 
        B         $C$L4,TC              ; [CPU_ALU] |171| 
        ; branchcc occurs ; [] |171| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 173,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | while(!AdcRegs.ADCST.bit.INT_SEQ1) {} // wait for sequencer to complete
;----------------------------------------------------------------------
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 173,column 8,is_stmt,isa 0
        TBIT      @$BLOCKED(_AdcRegs)+25,#0 ; [CPU_ALU] |173| 
        B         $C$L5,NTC             ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 174,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;       // Clear Sequencer interrupt 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_AdcRegs)+25,#0x0010 ; [CPU_ALU] |174| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 176,column 1,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text"
	.clink
	.global	_GetAdcConversion

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("GetAdcConversion")
	.dwattr $C$DW$39, DW_AT_low_pc(_GetAdcConversion)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_GetAdcConversion")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0xc5)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 198,column 1,is_stmt,address _GetAdcConversion,isa 0

	.dwfde $C$DW$CIE, _GetAdcConversion
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("AdcChnl")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_AdcChnl")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("GainErr")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_GainErr")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("OffsErr")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_OffsErr")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -14]

;----------------------------------------------------------------------
; 197 | float GetAdcConversion(Uint16 AdcChnl, float GainErr, int32 OffsErr)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _GetAdcConversion             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

_GetAdcConversion:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("GainErr")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_GainErr")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -4]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("AnRes")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_AnRes")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -6]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("ResltReg")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_ResltReg")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -8]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("AdcChnl")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_AdcChnl")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -9]

;----------------------------------------------------------------------
; 199 | float AnRes;                                                           
;----------------------------------------------------------------------
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |198| 
        MOV       *-SP[9],AR4           ; [CPU_ALU] |198| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 200,column 28,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | volatile Uint16* ResltReg = &AdcRegs.ADCRESULT0;                       
;----------------------------------------------------------------------
        MOVL      XAR4,#_AdcRegs+8      ; [CPU_ARAU] |200| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |200| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | AdcChnl = (AdcChnl < 16) ? AdcChnl : 0;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |202| 
        CMPB      AL,#16                ; [CPU_ALU] |202| 
        B         $C$L6,LO              ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
        MOVB      AL,#0                 ; [CPU_ALU] |202| 
$C$L6:    
        MOV       *-SP[9],AL            ; [CPU_ALU] |202| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | AnRes = (((float)(((ResltReg[AdcChnl] >> 4) + OffsErr) & 0x0fff)) / 409
;     | 5.0) * 3.0 * GainErr;                                                  
;----------------------------------------------------------------------
        MOVZ      AR0,*-SP[9]           ; [CPU_ALU] |204| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |204| 
        LSR       AL,4                  ; [CPU_ALU] |204| 
        MOVU      ACC,AL                ; [CPU_ALU] |204| 
        ADDL      ACC,*-SP[14]          ; [CPU_ALU] |204| 
        AND       AL,#4095              ; [CPU_ALU] |204| 
        ANDB      AH,#0                 ; [CPU_ALU] |204| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_ALU] |204| 
        ; call occurs [#L$$TOFS] ; [] |204| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |204| 
        MOV       AL,#61440             ; [CPU_ALU] |204| 
        MOV       AH,#17791             ; [CPU_ALU] |204| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |204| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |204| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_ALU] |204| 
        ; call occurs [#FS$$DIV] ; [] |204| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |204| 
        MOVB      AL,#0                 ; [CPU_ALU] |204| 
        MOV       AH,#16448             ; [CPU_ALU] |204| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |204| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |204| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |204| 
        ; call occurs [#FS$$MPY] ; [] |204| 
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |204| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |204| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |204| 
        ; call occurs [#FS$$MPY] ; [] |204| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |204| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 206,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 206 | return AnRes;                                                          
;----------------------------------------------------------------------
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c",line 208,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Adc.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0xd0)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_DelayUs
	.global	_AdcRegs
	.global	UL$$TOFS
	.global	FS$$MPY
	.global	FS$$DIV
	.global	FS$$SUB
	.global	FS$$TOL
	.global	L$$TOFS

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("ADCASEQSR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("SEQ1_STATE")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_SEQ1_STATE")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$52, DW_AT_bit_size(0x04)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("SEQ2_STATE")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_SEQ2_STATE")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$53, DW_AT_bit_size(0x03)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("rsvd1")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$54, DW_AT_bit_size(0x01)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("SEQ_CNTR")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_SEQ_CNTR")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$55, DW_AT_bit_size(0x04)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("rsvd2")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$56, DW_AT_bit_size(0x04)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("ADCASEQSR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("all")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_name("bit")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("CONV00")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_CONV00")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$59, DW_AT_bit_size(0x04)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("CONV01")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_CONV01")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$60, DW_AT_bit_size(0x04)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("CONV02")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_CONV02")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$61, DW_AT_bit_size(0x04)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("CONV03")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_CONV03")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$62, DW_AT_bit_size(0x04)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("all")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_name("bit")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("CONV04")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_CONV04")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$65, DW_AT_bit_size(0x04)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("CONV05")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_CONV05")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$66, DW_AT_bit_size(0x04)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("CONV06")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_CONV06")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$67, DW_AT_bit_size(0x04)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("CONV07")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_CONV07")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$68, DW_AT_bit_size(0x04)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("all")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$70, DW_AT_name("bit")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("CONV08")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_CONV08")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$71, DW_AT_bit_size(0x04)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("CONV09")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_CONV09")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$72, DW_AT_bit_size(0x04)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("CONV10")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_CONV10")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$73, DW_AT_bit_size(0x04)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("CONV11")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_CONV11")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$74, DW_AT_bit_size(0x04)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("all")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$76, DW_AT_name("bit")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("CONV12")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_CONV12")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$77, DW_AT_bit_size(0x04)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("CONV13")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_CONV13")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$78, DW_AT_bit_size(0x04)
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("CONV14")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_CONV14")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$79, DW_AT_bit_size(0x04)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("CONV15")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_CONV15")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$80, DW_AT_bit_size(0x04)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("all")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$82, DW_AT_name("bit")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("MAX_CONV1")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_MAX_CONV1")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$83, DW_AT_bit_size(0x04)
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("MAX_CONV2")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_MAX_CONV2")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$84, DW_AT_bit_size(0x03)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("rsvd1")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$85, DW_AT_bit_size(0x09)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("ADCMAXCONV_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("all")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$87, DW_AT_name("bit")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("ADCST_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("INT_SEQ1")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_INT_SEQ1")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("INT_SEQ2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_INT_SEQ2")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("SEQ1_BSY")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_SEQ1_BSY")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("SEQ2_BSY")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_SEQ2_BSY")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("INT_SEQ1_CLR")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_INT_SEQ1_CLR")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("INT_SEQ2_CLR")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_INT_SEQ2_CLR")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("EOS_BUF1")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_EOS_BUF1")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("EOS_BUF2")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_EOS_BUF2")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("rsvd1")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x08)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("ADCST_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("all")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$98, DW_AT_name("bit")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("ADCTRL1_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("rsvd1")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$99, DW_AT_bit_size(0x04)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("SEQ_CASC")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_SEQ_CASC")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("SEQ_OVRD")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_SEQ_OVRD")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("CONT_RUN")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_CONT_RUN")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("CPS")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_CPS")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("ACQ_PS")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_ACQ_PS")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$104, DW_AT_bit_size(0x04)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("SUSMOD")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_SUSMOD")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$105, DW_AT_bit_size(0x02)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("RESET")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_RESET")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("rsvd2")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("ADCTRL1_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("all")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$109, DW_AT_name("bit")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("ADCTRL2_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("EVB_SOC_SEQ2")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_EVB_SOC_SEQ2")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("rsvd1")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("INT_MOD_SEQ2")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_INT_MOD_SEQ2")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("INT_ENA_SEQ2")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_INT_ENA_SEQ2")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("rsvd2")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("SOC_SEQ2")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_SOC_SEQ2")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("RST_SEQ2")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_RST_SEQ2")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("EXT_SOC_SEQ1")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_EXT_SOC_SEQ1")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("EVA_SOC_SEQ1")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_EVA_SOC_SEQ1")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("rsvd3")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("INT_MOD_SEQ1")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_INT_MOD_SEQ1")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("INT_ENA_SEQ1")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_INT_ENA_SEQ1")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("rsvd4")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("SOC_SEQ1")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_SOC_SEQ1")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("RST_SEQ1")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_RST_SEQ1")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("EVB_SOC_SEQ")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_EVB_SOC_SEQ")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("ADCTRL2_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("all")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$127, DW_AT_name("bit")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("ADCTRL3_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("SMODE_SEL")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_SMODE_SEL")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("ADCCLKPS")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_ADCCLKPS")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$129, DW_AT_bit_size(0x04)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("ADCPWDN")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_ADCPWDN")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("ADCBGRFDN")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ADCBGRFDN")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$131, DW_AT_bit_size(0x02)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("ADCEXTREF")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_ADCEXTREF")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("rsvd1")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$133, DW_AT_bit_size(0x07)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("ADCTRL3_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("all")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$135, DW_AT_name("bit")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("ADC_REGS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x1a)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$136, DW_AT_name("ADCTRL1")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_ADCTRL1")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$137, DW_AT_name("ADCTRL2")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_ADCTRL2")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$138, DW_AT_name("ADCMAXCONV")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_ADCMAXCONV")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$139, DW_AT_name("ADCCHSELSEQ1")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ADCCHSELSEQ1")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$140, DW_AT_name("ADCCHSELSEQ2")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_ADCCHSELSEQ2")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$141, DW_AT_name("ADCCHSELSEQ3")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_ADCCHSELSEQ3")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$142, DW_AT_name("ADCCHSELSEQ4")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_ADCCHSELSEQ4")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$143, DW_AT_name("ADCASEQSR")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_ADCASEQSR")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("ADCRESULT0")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_ADCRESULT0")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("ADCRESULT1")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_ADCRESULT1")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("ADCRESULT2")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_ADCRESULT2")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("ADCRESULT3")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_ADCRESULT3")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("ADCRESULT4")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_ADCRESULT4")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("ADCRESULT5")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_ADCRESULT5")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("ADCRESULT6")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_ADCRESULT6")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("ADCRESULT7")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_ADCRESULT7")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("ADCRESULT8")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_ADCRESULT8")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("ADCRESULT9")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_ADCRESULT9")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("ADCRESULT10")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_ADCRESULT10")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("ADCRESULT11")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_ADCRESULT11")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("ADCRESULT12")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_ADCRESULT12")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("ADCRESULT13")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_ADCRESULT13")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("ADCRESULT14")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_ADCRESULT14")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("ADCRESULT15")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_ADCRESULT15")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$160, DW_AT_name("ADCTRL3")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_ADCTRL3")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$161, DW_AT_name("ADCST")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_ADCST")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40

$C$DW$162	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$40)

$C$DW$T$54	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$162)

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

$C$DW$163	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)

$C$DW$T$64	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$163)

$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x20)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("int32")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("Uint32")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)

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

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

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

$C$DW$164	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$164, DW_AT_name("AL")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg0]

$C$DW$165	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$165, DW_AT_name("AH")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg1]

$C$DW$166	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$166, DW_AT_name("PL")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg2]

$C$DW$167	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$167, DW_AT_name("PH")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg3]

$C$DW$168	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$168, DW_AT_name("SP")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg20]

$C$DW$169	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$169, DW_AT_name("XT")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg21]

$C$DW$170	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$170, DW_AT_name("T")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg22]

$C$DW$171	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$171, DW_AT_name("ST0")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg23]

$C$DW$172	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$172, DW_AT_name("ST1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg24]

$C$DW$173	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$173, DW_AT_name("PC")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg25]

$C$DW$174	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$174, DW_AT_name("RPC")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg26]

$C$DW$175	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$175, DW_AT_name("FP")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg28]

$C$DW$176	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$176, DW_AT_name("DP")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg29]

$C$DW$177	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$177, DW_AT_name("SXM")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg30]

$C$DW$178	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$178, DW_AT_name("PM")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg31]

$C$DW$179	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$179, DW_AT_name("OVM")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x20]

$C$DW$180	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$180, DW_AT_name("PAGE0")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x21]

$C$DW$181	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$181, DW_AT_name("AMODE")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x22]

$C$DW$182	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$182, DW_AT_name("EALLOW")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$183	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$183, DW_AT_name("INTM")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x23]

$C$DW$184	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$184, DW_AT_name("IFR")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x24]

$C$DW$185	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$185, DW_AT_name("IER")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x25]

$C$DW$186	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$186, DW_AT_name("V")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x26]

$C$DW$187	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$187, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$188	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$188, DW_AT_name("VOL")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$189	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$189, DW_AT_name("AR0")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg4]

$C$DW$190	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$190, DW_AT_name("XAR0")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg5]

$C$DW$191	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$191, DW_AT_name("AR1")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg6]

$C$DW$192	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$192, DW_AT_name("XAR1")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg7]

$C$DW$193	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$193, DW_AT_name("AR2")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg8]

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("XAR2")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg9]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("AR3")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg10]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("XAR3")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg11]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("AR4")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("XAR4")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg13]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("AR5")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg14]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("XAR5")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg15]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("AR6")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg16]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("XAR6")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg17]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("AR7")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg18]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("XAR7")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


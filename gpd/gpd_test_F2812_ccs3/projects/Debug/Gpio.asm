;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:52 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("GpioMuxRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_GpioMuxRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{BBA42DD1-BB2D-4A27-AAC8-2932ED592F40} 
	.sect	".text"
	.clink
	.global	_InitGpio

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("InitGpio")
	.dwattr $C$DW$3, DW_AT_low_pc(_InitGpio)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_InitGpio")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 27,column 1,is_stmt,address _InitGpio,isa 0

	.dwfde $C$DW$CIE, _InitGpio
;----------------------------------------------------------------------
;  26 | void InitGpio(void)                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitGpio                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitGpio:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 28,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  28 | asm(" EALLOW");                                         // Enable EALLO
;     | W protected register access                                            
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 31,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  31 | GpioMuxRegs.GPAQUAL.all=0x0000;                                 // Inpu
;     | t qualifier disabled                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+2    ; [CPU_ARAU] 
        MOV       @$BLOCKED(_GpioMuxRegs)+2,#0 ; [CPU_ALU] |31| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 32,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  32 | GpioMuxRegs.GPADIR.all = 0xfeff;                                // All
;     | group A GPIO are Outputs except A8                                     
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_GpioMuxRegs)+1,#65279 ; [CPU_ALU] |32| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 34,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  34 | GpioMuxRegs.GPAMUX.bit.C3TRIP_GPIOA15  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0x7fff ; [CPU_ALU] |34| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 35,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | GpioMuxRegs.GPAMUX.bit.C2TRIP_GPIOA14  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xbfff ; [CPU_ALU] |35| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 36,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  36 | GpioMuxRegs.GPAMUX.bit.C1TRIP_GPIOA13  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xdfff ; [CPU_ALU] |36| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 37,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | GpioMuxRegs.GPAMUX.bit.TCLKINA_GPIOA12 = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xefff ; [CPU_ALU] |37| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 38,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  38 | GpioMuxRegs.GPAMUX.bit.TDIRA_GPIOA11   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xf7ff ; [CPU_ALU] |38| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 39,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  39 | GpioMuxRegs.GPAMUX.bit.CAP3QI1_GPIOA10 = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfbff ; [CPU_ALU] |39| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 40,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | GpioMuxRegs.GPAMUX.bit.CAP2Q2_GPIOA9   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfdff ; [CPU_ALU] |40| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 41,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | GpioMuxRegs.GPAMUX.bit.CAP1Q1_GPIOA8   = 0;             // 1: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfeff ; [CPU_ALU] |41| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 42,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  42 | GpioMuxRegs.GPAMUX.bit.T2PWM_GPIOA7    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xff7f ; [CPU_ALU] |42| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 43,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  43 | GpioMuxRegs.GPAMUX.bit.T1PWM_GPIOA6    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xffbf ; [CPU_ALU] |43| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 44,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | GpioMuxRegs.GPAMUX.bit.PWM6_GPIOA5     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xffdf ; [CPU_ALU] |44| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 45,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  45 | GpioMuxRegs.GPAMUX.bit.PWM5_GPIOA4     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xffef ; [CPU_ALU] |45| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 46,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | GpioMuxRegs.GPAMUX.bit.PWM4_GPIOA3     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfff7 ; [CPU_ALU] |46| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | GpioMuxRegs.GPAMUX.bit.PWM3_GPIOA2     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfffb ; [CPU_ALU] |47| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 48,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | GpioMuxRegs.GPAMUX.bit.PWM2_GPIOA1     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfffd ; [CPU_ALU] |48| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 49,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | GpioMuxRegs.GPAMUX.bit.PWM1_GPIOA0     = 0;             // 1: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs),#0xfffe ; [CPU_ALU] |49| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 51,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | GpioDataRegs.GPASET.bit.GPIOA0 = 1;                             // Set
;     | CPU_STS1 HIGH                                                          
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+1   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0001 ; [CPU_ALU] |51| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 52,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | GpioDataRegs.GPASET.bit.GPIOA1 = 1;                             // Set
;     | CPU_STS2 HIGH                                                          
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0002 ; [CPU_ALU] |52| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 53,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | GpioDataRegs.GPASET.bit.GPIOA2 = 1;                             // Set
;     | CPU_STS3 HIGH                                                          
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0004 ; [CPU_ALU] |53| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | GpioDataRegs.GPACLEAR.bit.GPIOA4  = 1;                  // Set RESET#_C
;     | PLD LOW                                                                
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0010 ; [CPU_ALU] |54| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | GpioDataRegs.GPACLEAR.bit.GPIOA3  = 1;                  // Set CPLD_PWR
;     |  LOW                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0008 ; [CPU_ALU] |55| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | GpioDataRegs.GPACLEAR.bit.GPIOA5 = 1;                   // Set DO_A16 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0020 ; [CPU_ALU] |56| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | GpioDataRegs.GPACLEAR.bit.GPIOA6 = 1;                   // Set DO_A30 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0040 ; [CPU_ALU] |57| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | GpioDataRegs.GPACLEAR.bit.GPIOA7 = 1;                   // Set DO_A31 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0080 ; [CPU_ALU] |58| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;                   // Set DO_A17 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0200 ; [CPU_ALU] |59| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | GpioDataRegs.GPACLEAR.bit.GPIOA10 = 1;                  // Set DO_A18 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0400 ; [CPU_ALU] |60| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 61,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  61 | GpioDataRegs.GPACLEAR.bit.GPIOA11 = 1;                  // Set DO_A19 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0800 ; [CPU_ALU] |61| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 62,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | GpioDataRegs.GPACLEAR.bit.GPIOA12 = 1;                  // Set DO_A20 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x1000 ; [CPU_ALU] |62| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 63,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  63 | GpioDataRegs.GPACLEAR.bit.GPIOA13 = 1;                  // Set DO_A21 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x2000 ; [CPU_ALU] |63| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 64,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  64 | GpioDataRegs.GPACLEAR.bit.GPIOA14 = 1;                  // Set DO_A22 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x4000 ; [CPU_ALU] |64| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 65,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | GpioDataRegs.GPACLEAR.bit.GPIOA15 = 1;                  // Set DO_A23 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x8000 ; [CPU_ALU] |65| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 68,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | GpioMuxRegs.GPBQUAL.all = 0x0000;                               // Inpu
;     | t qualifier disabled                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+6    ; [CPU_ARAU] 
        MOV       @$BLOCKED(_GpioMuxRegs)+6,#0 ; [CPU_ALU] |68| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 69,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | GpioMuxRegs.GPBDIR.all = 0x00ff;                                // Conf
;     | ig group B GPIO inputs and outputs                                     
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_GpioMuxRegs)+5,#255,UNC ; [CPU_ALU] |69| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 71,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | GpioMuxRegs.GPBMUX.bit.C6TRIP_GPIOB15  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0x7fff ; [CPU_ALU] |71| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | GpioMuxRegs.GPBMUX.bit.C5TRIP_GPIOB14  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xbfff ; [CPU_ALU] |72| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 73,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | GpioMuxRegs.GPBMUX.bit.C4TRIP_GPIOB13  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xdfff ; [CPU_ALU] |73| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 74,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | GpioMuxRegs.GPBMUX.bit.TCLKINB_GPIOB12 = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xefff ; [CPU_ALU] |74| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 75,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | GpioMuxRegs.GPBMUX.bit.TDIRB_GPIOB11   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xf7ff ; [CPU_ALU] |75| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 76,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | GpioMuxRegs.GPBMUX.bit.CAP6QI2_GPIOB10 = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfbff ; [CPU_ALU] |76| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 77,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  77 | GpioMuxRegs.GPBMUX.bit.CAP5Q2_GPIOB9   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfdff ; [CPU_ALU] |77| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 78,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | GpioMuxRegs.GPBMUX.bit.CAP4Q1_GPIOB8   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfeff ; [CPU_ALU] |78| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 79,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  79 | GpioMuxRegs.GPBMUX.bit.T4PWM_GPIOB7    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xff7f ; [CPU_ALU] |79| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 80,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | GpioMuxRegs.GPBMUX.bit.T3PWM_GPIOB6    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xffbf ; [CPU_ALU] |80| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 81,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xffdf ; [CPU_ALU] |81| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 82,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | GpioMuxRegs.GPBMUX.bit.PWM11_GPIOB4    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xffef ; [CPU_ALU] |82| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | GpioMuxRegs.GPBMUX.bit.PWM10_GPIOB3    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfff7 ; [CPU_ALU] |83| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | GpioMuxRegs.GPBMUX.bit.PWM9_GPIOB2     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfffb ; [CPU_ALU] |84| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | GpioMuxRegs.GPBMUX.bit.PWM8_GPIOB1     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfffd ; [CPU_ALU] |85| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioMuxRegs.GPBMUX.bit.PWM7_GPIOB0     = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+4,#0xfffe ; [CPU_ALU] |86| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 88,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | GpioDataRegs.GPBCLEAR.bit.GPIOB0  = 1;                  // Set DO_A24 L
;     | OW                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0001 ; [CPU_ALU] |88| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 89,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | GpioDataRegs.GPBCLEAR.bit.GPIOB1  = 1;                  // Set DO_A25 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0002 ; [CPU_ALU] |89| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 90,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | GpioDataRegs.GPBCLEAR.bit.GPIOB2  = 1;                  // Set DO_A26 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0004 ; [CPU_ALU] |90| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 91,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | GpioDataRegs.GPBCLEAR.bit.GPIOB3  = 1;                  // Set DO_A27 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0008 ; [CPU_ALU] |91| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 92,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | GpioDataRegs.GPBCLEAR.bit.GPIOB4  = 1;                  // Set DO_A28 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0010 ; [CPU_ALU] |92| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | GpioDataRegs.GPBCLEAR.bit.GPIOB5  = 1;                  // Set DO_A29 L
;     | OW                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0020 ; [CPU_ALU] |93| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | GpioMuxRegs.GPDQUAL.all=0x0000;                                 // Inpu
;     | t qualifier disabled                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+14   ; [CPU_ARAU] 
        MOV       @$BLOCKED(_GpioMuxRegs)+14,#0 ; [CPU_ALU] |96| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | GpioMuxRegs.GPDDIR.all = 0x0063;                                // Grou
;     | p D GPIO inputs and outputs                                            
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_GpioMuxRegs)+13,#99,UNC ; [CPU_ALU] |97| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 100,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | GpioMuxRegs.GPDMUX.bit.T4CTRIP_SOCB_GPIOD6 = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+12,#0xffbf ; [CPU_ALU] |100| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 101,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | GpioMuxRegs.GPDMUX.bit.T3CTRIP_PDPB_GPIOD5 = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+12,#0xffdf ; [CPU_ALU] |101| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | GpioMuxRegs.GPDMUX.bit.T2CTRIP_SOCA_GPIOD1 = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+12,#0xfffd ; [CPU_ALU] |102| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | GpioMuxRegs.GPDMUX.bit.T1CTRIP_PDPA_GPIOD0 = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+12,#0xfffe ; [CPU_ALU] |103| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | GpioDataRegs.GPDSET.bit.GPIOD0  = 1;                    // Set CS_AD HI
;     | GH                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+13  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+13,#0x0001 ; [CPU_ALU] |105| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | GpioDataRegs.GPDSET.bit.GPIOD1  = 1;                    // Set CS_DA HI
;     | GH                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+13,#0x0002 ; [CPU_ALU] |106| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | GpioDataRegs.GPDSET.bit.GPIOD5  = 1;                    // Set LD_DA HI
;     | GH                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+13,#0x0020 ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | GpioDataRegs.GPDCLEAR.bit.GPIOD6  = 1;                  // Set SPIFS LO
;     | W                                                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+14,#0x0040 ; [CPU_ALU] |108| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 111,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | GpioMuxRegs.GPEQUAL.all=0x0000;                                 // Inpu
;     | t qualifier disabled                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+18   ; [CPU_ARAU] 
        MOV       @$BLOCKED(_GpioMuxRegs)+18,#0 ; [CPU_ALU] |111| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 112,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | GpioMuxRegs.GPEDIR.all = 0x0004;                                // All
;     | group E GPIO are inputs except E2                                      
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_GpioMuxRegs)+17,#4,UNC ; [CPU_ALU] |112| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 114,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 114 | GpioMuxRegs.GPEMUX.bit.XNMI_XINT13_GPIOE2  = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+16,#0xfffb ; [CPU_ALU] |114| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 115,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | GpioMuxRegs.GPEMUX.bit.XINT2_ADCSOC_GPIOE1 = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+16,#0xfffd ; [CPU_ALU] |115| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 116,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | GpioMuxRegs.GPEMUX.bit.XINT1_XBIO_GPIOE0   = 0; // 0: select GPIO funct
;     | ion                                                                    
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+16,#0xfffe ; [CPU_ALU] |116| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | GpioDataRegs.GPECLEAR.bit.GPIOE2  = 1;                  // Set DSPTEST
;     | LOW                                                                    
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+18  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+18,#0x0004 ; [CPU_ALU] |118| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | GpioMuxRegs.GPFDIR.all = 0x3f8D;                                // Conf
;     | ig group F GPIO inputs and outputs                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+21   ; [CPU_ARAU] 
        MOV       @$BLOCKED(_GpioMuxRegs)+21,#16269 ; [CPU_ALU] |121| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 123,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | GpioMuxRegs.GPFMUX.bit.XF_GPIOF14      = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xbfff ; [CPU_ALU] |123| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 124,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | GpioMuxRegs.GPFMUX.bit.MDRA_GPIOF13    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xdfff ; [CPU_ALU] |124| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 125,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | GpioMuxRegs.GPFMUX.bit.MDXA_GPIOF12    = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xefff ; [CPU_ALU] |125| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 126,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | GpioMuxRegs.GPFMUX.bit.MFSRA_GPIOF11   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xf7ff ; [CPU_ALU] |126| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 127,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | GpioMuxRegs.GPFMUX.bit.MFSXA_GPIOF10   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xfbff ; [CPU_ALU] |127| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 128,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | GpioMuxRegs.GPFMUX.bit.MCLKRA_GPIOF9   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xfdff ; [CPU_ALU] |128| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 129,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | GpioMuxRegs.GPFMUX.bit.MCLKXA_GPIOF8   = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xfeff ; [CPU_ALU] |129| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 130,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | GpioMuxRegs.GPFMUX.bit.CANRXA_GPIOF7   = 1;             // 1: select Pe
;     | ripheral function                                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+20,#0x0080 ; [CPU_ALU] |130| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 131,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | GpioMuxRegs.GPFMUX.bit.CANTXA_GPIOF6   = 1;             // 1: select Pe
;     | ripheral function                                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+20,#0x0040 ; [CPU_ALU] |131| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 132,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | GpioMuxRegs.GPFMUX.bit.SCIRXDA_GPIOF5  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xffdf ; [CPU_ALU] |132| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 133,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 133 | GpioMuxRegs.GPFMUX.bit.SCITXDA_GPIOF4  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xffef ; [CPU_ALU] |133| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 134,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | GpioMuxRegs.GPFMUX.bit.SPISTEA_GPIOF3  = 0;             // 0: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+20,#0xfff7 ; [CPU_ALU] |134| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | GpioMuxRegs.GPFMUX.bit.SPICLKA_GPIOF2  = 1;             // 1: select Pe
;     | riperal function                                                       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+20,#0x0004 ; [CPU_ALU] |135| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 136,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 136 | GpioMuxRegs.GPFMUX.bit.SPISOMIA_GPIOF1 = 1;             // 1: select Pe
;     | riperal function                                                       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+20,#0x0002 ; [CPU_ALU] |136| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 137,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | GpioMuxRegs.GPFMUX.bit.SPISIMOA_GPIOF0 = 1;             // 1: select Pe
;     | riperal function                                                       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+20,#0x0001 ; [CPU_ALU] |137| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 139,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | GpioMuxRegs.GPFDIR.bit.GPIOF3 = 1;                              // 1; G
;     | PIOF3 is Output (Connected to CS on SEEPROM)                           
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioMuxRegs)+21,#0x0008 ; [CPU_ALU] |139| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 140,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;                             // 1; s
;     | et GPIOF3 (CS not active)                                              
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |140| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 141,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;                             // 1; s
;     | et GPIOF8 (CS0 not active)                                             
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0100 ; [CPU_ALU] |141| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 142,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | GpioMuxRegs.GPFDIR.bit.GPIOF13 = 1;                             // 1; G
;     | PIOF13 is Output                                                       
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+21   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioMuxRegs)+21,#0x2000 ; [CPU_ALU] |142| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 143,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | GpioDataRegs.GPFCLEAR.bit.GPIOF13 = 1;                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x2000 ; [CPU_ALU] |143| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 147,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | GpioMuxRegs.GPGDIR.all = 0x0010;                                // Conf
;     | ig group G GPIO Inputs and Outputs                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioMuxRegs+25   ; [CPU_ARAU] 
        MOVB      @$BLOCKED(_GpioMuxRegs)+25,#16,UNC ; [CPU_ALU] |147| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | GpioMuxRegs.GPGMUX.bit.SCIRXDB_GPIOG5  = 0;             // 1: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+24,#0xffdf ; [CPU_ALU] |149| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | GpioMuxRegs.GPGMUX.bit.SCITXDB_GPIOG4  = 0;             // 1: select GP
;     | IO function                                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_GpioMuxRegs)+24,#0xffef ; [CPU_ALU] |150| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 153,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | asm(" EDIS");                                           // Disable EALL
;     | OW protected register access                                           
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 155,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | } //end InitGpio()                                                     
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x9b)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink
	.global	_WriteDspDO_A

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("WriteDspDO_A")
	.dwattr $C$DW$5, DW_AT_low_pc(_WriteDspDO_A)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_WriteDspDO_A")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 175,column 1,is_stmt,address _WriteDspDO_A,isa 0

	.dwfde $C$DW$CIE, _WriteDspDO_A
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("Data")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 174 | void WriteDspDO_A(unsigned int Data)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _WriteDspDO_A                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_WriteDspDO_A:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("Data")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |175| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 176,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | if(Data & 0x0001)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#0            ; [CPU_ALU] |176| 
        B         $C$L1,NTC             ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 177,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | GpioDataRegs.GPASET.bit.GPIOA5 = 1;             // Set DO_A[16]        
; 178 | else                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+1   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0020 ; [CPU_ALU] |177| 
        B         $C$L2,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 179,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | GpioDataRegs.GPACLEAR.bit.GPIOA5 = 1;   // Clear DO_A[16]              
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+2   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0020 ; [CPU_ALU] |179| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 180,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | if(Data & 0x0002)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#1            ; [CPU_ALU] |180| 
        B         $C$L3,NTC             ; [CPU_ALU] |180| 
        ; branchcc occurs ; [] |180| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 181,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | GpioDataRegs.GPASET.bit.GPIOA9 = 1;             // Set DO_A[17]        
; 182 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0200 ; [CPU_ALU] |181| 
        B         $C$L4,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L3:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 183,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | GpioDataRegs.GPACLEAR.bit.GPIOA9 = 1;   // Clear DO_A[17]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0200 ; [CPU_ALU] |183| 
$C$L4:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 185,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | if(Data & 0x0004)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#2            ; [CPU_ALU] |185| 
        B         $C$L5,NTC             ; [CPU_ALU] |185| 
        ; branchcc occurs ; [] |185| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 186,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | GpioDataRegs.GPASET.bit.GPIOA10 = 1;    // Set DO_A[18]                
; 187 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0400 ; [CPU_ALU] |186| 
        B         $C$L6,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 188,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | GpioDataRegs.GPACLEAR.bit.GPIOA10 = 1;  // Clear DO_A[18]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0400 ; [CPU_ALU] |188| 
$C$L6:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | if(Data & 0x0008)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#3            ; [CPU_ALU] |190| 
        B         $C$L7,NTC             ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 191,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | GpioDataRegs.GPASET.bit.GPIOA11 = 1;    // Set DO_A[19]                
; 192 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0800 ; [CPU_ALU] |191| 
        B         $C$L8,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L7:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 193,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | GpioDataRegs.GPACLEAR.bit.GPIOA11 = 1;  // Clear DO_A[19]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0800 ; [CPU_ALU] |193| 
$C$L8:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 195,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | if(Data & 0x0010)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#4            ; [CPU_ALU] |195| 
        B         $C$L9,NTC             ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 196,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 196 | GpioDataRegs.GPASET.bit.GPIOA12 = 1;    // Set DO_A[20]                
; 197 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x1000 ; [CPU_ALU] |196| 
        B         $C$L10,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L9:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 198,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | GpioDataRegs.GPACLEAR.bit.GPIOA12 = 1;  // Clear DO_A[20]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x1000 ; [CPU_ALU] |198| 
$C$L10:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 200,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | if(Data & 0x0020)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#5            ; [CPU_ALU] |200| 
        B         $C$L11,NTC            ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 201,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | GpioDataRegs.GPASET.bit.GPIOA13 = 1;    // Set DO_A[21]                
; 202 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x2000 ; [CPU_ALU] |201| 
        B         $C$L12,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L11:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 203,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | GpioDataRegs.GPACLEAR.bit.GPIOA13 = 1;  // Clear DO_A[21]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x2000 ; [CPU_ALU] |203| 
$C$L12:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | if(Data & 0x0040)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#6            ; [CPU_ALU] |205| 
        B         $C$L13,NTC            ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 206,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 206 | GpioDataRegs.GPASET.bit.GPIOA14 = 1;    // Set DO_A[22]                
; 207 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x4000 ; [CPU_ALU] |206| 
        B         $C$L14,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L13:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 208,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | GpioDataRegs.GPACLEAR.bit.GPIOA14 = 1;  // Clear DO_A[22]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x4000 ; [CPU_ALU] |208| 
$C$L14:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 210,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | if(Data & 0x0080)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#7            ; [CPU_ALU] |210| 
        B         $C$L15,NTC            ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 211,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | GpioDataRegs.GPASET.bit.GPIOA15 = 1;    // Set DO_A[23]                
; 212 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x8000 ; [CPU_ALU] |211| 
        B         $C$L16,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L15:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 213,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 213 | GpioDataRegs.GPACLEAR.bit.GPIOA15 = 1;  // Clear DO_A[23]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x8000 ; [CPU_ALU] |213| 
$C$L16:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 215,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | if(Data & 0x0100)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#8            ; [CPU_ALU] |215| 
        B         $C$L17,NTC            ; [CPU_ALU] |215| 
        ; branchcc occurs ; [] |215| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 216,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | GpioDataRegs.GPBSET.bit.GPIOB0 = 1;             // Set DO_A[24]        
; 217 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0001 ; [CPU_ALU] |216| 
        B         $C$L18,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L17:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 218,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | GpioDataRegs.GPBCLEAR.bit.GPIOB0 = 1;   // Clear DO_A[24]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0001 ; [CPU_ALU] |218| 
$C$L18:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 220,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | if(Data & 0x0200)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#9            ; [CPU_ALU] |220| 
        B         $C$L19,NTC            ; [CPU_ALU] |220| 
        ; branchcc occurs ; [] |220| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 221,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | GpioDataRegs.GPBSET.bit.GPIOB1 = 1;             // Set DO_A[25]        
; 222 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0002 ; [CPU_ALU] |221| 
        B         $C$L20,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L19:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 223,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | GpioDataRegs.GPBCLEAR.bit.GPIOB1 = 1;   // Clear DO_A[25]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0002 ; [CPU_ALU] |223| 
$C$L20:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 225,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | if(Data & 0x0400)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#10           ; [CPU_ALU] |225| 
        B         $C$L21,NTC            ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 226,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 226 | GpioDataRegs.GPBSET.bit.GPIOB2 = 1;             // Set DO_A[26]        
; 227 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0004 ; [CPU_ALU] |226| 
        B         $C$L22,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L21:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 228,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | GpioDataRegs.GPBCLEAR.bit.GPIOB2 = 1;   // Clear DO_A[26]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0004 ; [CPU_ALU] |228| 
$C$L22:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 230,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | if(Data & 0x0800)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#11           ; [CPU_ALU] |230| 
        B         $C$L23,NTC            ; [CPU_ALU] |230| 
        ; branchcc occurs ; [] |230| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 231,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | GpioDataRegs.GPBSET.bit.GPIOB3 = 1;             // Set DO_A[27]        
; 232 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0008 ; [CPU_ALU] |231| 
        B         $C$L24,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L23:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 233,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1;   // Clear DO_A[27]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0008 ; [CPU_ALU] |233| 
$C$L24:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 235,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | if(Data & 0x1000)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#12           ; [CPU_ALU] |235| 
        B         $C$L25,NTC            ; [CPU_ALU] |235| 
        ; branchcc occurs ; [] |235| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 236,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;             // Set DO_A[28]        
; 237 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0010 ; [CPU_ALU] |236| 
        B         $C$L26,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L25:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 238,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // Clear DO_A[28]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0010 ; [CPU_ALU] |238| 
$C$L26:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 240,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | if(Data & 0x2000)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#13           ; [CPU_ALU] |240| 
        B         $C$L27,NTC            ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 241,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;             // Set DO_A[29]        
; 242 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0020 ; [CPU_ALU] |241| 
        B         $C$L28,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L27:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 243,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // Clear DO_A[29]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0020 ; [CPU_ALU] |243| 
$C$L28:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 245,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | if(Data & 0x4000)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#14           ; [CPU_ALU] |245| 
        B         $C$L29,NTC            ; [CPU_ALU] |245| 
        ; branchcc occurs ; [] |245| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 246,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | GpioDataRegs.GPASET.bit.GPIOA6 = 1;             // Set DO_A[30]        
; 247 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0040 ; [CPU_ALU] |246| 
        B         $C$L30,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L29:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 248,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | GpioDataRegs.GPACLEAR.bit.GPIOA6 = 1;   // Clear DO_A[30]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0040 ; [CPU_ALU] |248| 
$C$L30:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 250,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | if(Data & 0x8000)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#15           ; [CPU_ALU] |250| 
        B         $C$L31,NTC            ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 251,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | GpioDataRegs.GPASET.bit.GPIOA7 = 1;             // Set DO_A[31]        
; 252 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0080 ; [CPU_ALU] |251| 
        B         $C$L32,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L31:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 253,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | GpioDataRegs.GPACLEAR.bit.GPIOA7 = 1;   // Clear DO_A[31]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+2,#0x0080 ; [CPU_ALU] |253| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 255,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | } // WriteDspDO_A()                                                    
;----------------------------------------------------------------------
$C$L32:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_WriteDspDO_EN

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("WriteDspDO_EN")
	.dwattr $C$DW$9, DW_AT_low_pc(_WriteDspDO_EN)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_WriteDspDO_EN")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 275,column 1,is_stmt,address _WriteDspDO_EN,isa 0

	.dwfde $C$DW$CIE, _WriteDspDO_EN
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("Data")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 274 | void WriteDspDO_EN(unsigned int Data)                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _WriteDspDO_EN                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_WriteDspDO_EN:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("Data")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |275| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 276,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | if(Data & 0x0001)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#0            ; [CPU_ALU] |276| 
        B         $C$L33,NTC            ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 277,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 277 | GpioDataRegs.GPFSET.bit.GPIOF11 = 1;    // Set DO_EN[2]                
; 278 | else                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0800 ; [CPU_ALU] |277| 
        B         $C$L34,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L33:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 279,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | GpioDataRegs.GPFCLEAR.bit.GPIOF11 = 1;  // Clear DO_EN[2]              
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0800 ; [CPU_ALU] |279| 
$C$L34:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 281,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | if(Data & 0x0002)                                                      
;----------------------------------------------------------------------
        TBIT      *-SP[1],#1            ; [CPU_ALU] |281| 
        B         $C$L35,NTC            ; [CPU_ALU] |281| 
        ; branchcc occurs ; [] |281| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 282,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | GpioDataRegs.GPFSET.bit.GPIOF12 = 1;    // Set DO_EN[3]                
; 283 | else                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x1000 ; [CPU_ALU] |282| 
        B         $C$L36,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L35:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 284,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 284 | GpioDataRegs.GPFCLEAR.bit.GPIOF12 = 1;  // Clear DO_EN[3]              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x1000 ; [CPU_ALU] |284| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 286,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | } // WriteDspDO_EN()                                                   
;----------------------------------------------------------------------
$C$L36:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.global	_ReadDspID_A

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("ReadDspID_A")
	.dwattr $C$DW$13, DW_AT_low_pc(_ReadDspID_A)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ReadDspID_A")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 305,column 1,is_stmt,address _ReadDspID_A,isa 0

	.dwfde $C$DW$CIE, _ReadDspID_A
;----------------------------------------------------------------------
; 304 | unsigned int ReadDspID_A(void)                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ReadDspID_A                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_ReadDspID_A:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("uTemp")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_uTemp")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 306,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 306 | unsigned int uTemp = 0;                                                
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_ALU] |306| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 308,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 308 | if(GpioDataRegs.GPBDAT.bit.GPIOB12) // ID_A[0]                         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+4   ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#12 ; [CPU_ALU] |308| 
        B         $C$L37,NTC            ; [CPU_ALU] |308| 
        ; branchcc occurs ; [] |308| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 309,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | uTemp |= 0x0001;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0001       ; [CPU_ALU] |309| 
$C$L37:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 311,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 311 | if(GpioDataRegs.GPBDAT.bit.GPIOB13) // ID_A[1]                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#13 ; [CPU_ALU] |311| 
        B         $C$L38,NTC            ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 312,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | uTemp |= 0x0002;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0002       ; [CPU_ALU] |312| 
$C$L38:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 314,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 314 | if(GpioDataRegs.GPBDAT.bit.GPIOB14) // ID_A[2]                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#14 ; [CPU_ALU] |314| 
        B         $C$L39,NTC            ; [CPU_ALU] |314| 
        ; branchcc occurs ; [] |314| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 315,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 315 | uTemp |= 0x0004;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0004       ; [CPU_ALU] |315| 
$C$L39:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 317,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | if(GpioDataRegs.GPBDAT.bit.GPIOB15) // ID_A[3]                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#15 ; [CPU_ALU] |317| 
        B         $C$L40,NTC            ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 318,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 318 | uTemp |= 0x0008;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0008       ; [CPU_ALU] |318| 
$C$L40:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 320,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 320 | return uTemp;                                                          
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |320| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 322,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | } // ReadDspID_A()                                                     
;----------------------------------------------------------------------
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.global	_ReadDspDI_B

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("ReadDspDI_B")
	.dwattr $C$DW$16, DW_AT_low_pc(_ReadDspDI_B)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_ReadDspDI_B")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x154)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 341,column 1,is_stmt,address _ReadDspDI_B,isa 0

	.dwfde $C$DW$CIE, _ReadDspDI_B
;----------------------------------------------------------------------
; 340 | unsigned int ReadDspDI_B(void)                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ReadDspDI_B                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_ReadDspDI_B:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("uTemp")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_uTemp")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 342,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 342 | unsigned int uTemp = 0;                                                
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_ALU] |342| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 344,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 344 | if(GpioDataRegs.GPBDAT.bit.GPIOB8) // DI_B[0]                          
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+4   ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#8 ; [CPU_ALU] |344| 
        B         $C$L41,NTC            ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 345,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 345 | uTemp |= 0x0001;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0001       ; [CPU_ALU] |345| 
$C$L41:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 347,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 347 | if(GpioDataRegs.GPBDAT.bit.GPIOB9) // DI_B[1]                          
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#9 ; [CPU_ALU] |347| 
        B         $C$L42,NTC            ; [CPU_ALU] |347| 
        ; branchcc occurs ; [] |347| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 348,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | uTemp |= 0x0002;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0002       ; [CPU_ALU] |348| 
$C$L42:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 350,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 350 | if(GpioDataRegs.GPBDAT.bit.GPIOB10) // DI_B[2]                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#10 ; [CPU_ALU] |350| 
        B         $C$L43,NTC            ; [CPU_ALU] |350| 
        ; branchcc occurs ; [] |350| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 351,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 351 | uTemp |= 0x0004;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0004       ; [CPU_ALU] |351| 
$C$L43:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 353,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 353 | if(GpioDataRegs.GPBDAT.bit.GPIOB11) // DI_B[3]                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_GpioDataRegs)+4,#11 ; [CPU_ALU] |353| 
        B         $C$L44,NTC            ; [CPU_ALU] |353| 
        ; branchcc occurs ; [] |353| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 354,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | uTemp |= 0x0008;                                                       
;----------------------------------------------------------------------
        OR        *-SP[1],#0x0008       ; [CPU_ALU] |354| 
$C$L44:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 356,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | return uTemp;                                                          
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |356| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c",line 358,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 358 | } // ReadDspDI_B()                                                     
;----------------------------------------------------------------------
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_GpioMuxRegs
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_name("GPIOA0")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$19, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$19, DW_AT_bit_size(0x01)
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_name("GPIOA1")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$20, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$20, DW_AT_bit_size(0x01)
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_name("GPIOA2")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$21, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$21, DW_AT_bit_size(0x01)
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_name("GPIOA3")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$22, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$22, DW_AT_bit_size(0x01)
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("GPIOA4")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$23, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$23, DW_AT_bit_size(0x01)
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("GPIOA5")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$24, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$24, DW_AT_bit_size(0x01)
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("GPIOA6")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$25, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$25, DW_AT_bit_size(0x01)
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("GPIOA7")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$26, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$26, DW_AT_bit_size(0x01)
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("GPIOA8")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$27, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$27, DW_AT_bit_size(0x01)
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("GPIOA9")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$28, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$28, DW_AT_bit_size(0x01)
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("GPIOA10")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$29, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$29, DW_AT_bit_size(0x01)
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("GPIOA11")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$30, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$30, DW_AT_bit_size(0x01)
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("GPIOA12")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$31, DW_AT_bit_size(0x01)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("GPIOA13")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$32, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$32, DW_AT_bit_size(0x01)
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("GPIOA14")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$33, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$33, DW_AT_bit_size(0x01)
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("GPIOA15")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$34, DW_AT_bit_size(0x01)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("all")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_name("bit")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("GPIOA0")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$37, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$37, DW_AT_bit_size(0x01)
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("GPIOA1")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$38, DW_AT_bit_size(0x01)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("GPIOA2")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$39, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$39, DW_AT_bit_size(0x01)
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_name("GPIOA3")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$40, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$40, DW_AT_bit_size(0x01)
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_name("GPIOA4")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$41, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$41, DW_AT_bit_size(0x01)
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("GPIOA5")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$42, DW_AT_bit_size(0x01)
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("GPIOA6")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$43, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$43, DW_AT_bit_size(0x01)
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("GPIOA7")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$44, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$44, DW_AT_bit_size(0x01)
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("GPIOA8")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$45, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$45, DW_AT_bit_size(0x01)
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("GPIOA9")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$46, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$46, DW_AT_bit_size(0x01)
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("GPIOA10")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$47, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$47, DW_AT_bit_size(0x01)
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("GPIOA11")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$48, DW_AT_bit_size(0x01)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("GPIOA12")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$49, DW_AT_bit_size(0x01)
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("GPIOA13")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$50, DW_AT_bit_size(0x01)
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("GPIOA14")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$51, DW_AT_bit_size(0x01)
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("GPIOA15")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$52, DW_AT_bit_size(0x01)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("all")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$54, DW_AT_name("bit")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPADIR_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("GPIOA0")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$55, DW_AT_bit_size(0x01)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("GPIOA1")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$56, DW_AT_bit_size(0x01)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("GPIOA2")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("GPIOA3")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("GPIOA4")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("GPIOA5")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("GPIOA6")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("GPIOA7")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("GPIOA8")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("GPIOA9")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("GPIOA10")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("GPIOA11")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("GPIOA12")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("GPIOA13")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("GPIOA14")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("GPIOA15")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPADIR_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("all")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$72, DW_AT_name("bit")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPAMUX_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("PWM1_GPIOA0")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_PWM1_GPIOA0")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("PWM2_GPIOA1")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_PWM2_GPIOA1")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("PWM3_GPIOA2")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_PWM3_GPIOA2")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("PWM4_GPIOA3")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_PWM4_GPIOA3")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("PWM5_GPIOA4")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_PWM5_GPIOA4")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("PWM6_GPIOA5")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_PWM6_GPIOA5")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("T1PWM_GPIOA6")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_T1PWM_GPIOA6")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("T2PWM_GPIOA7")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_T2PWM_GPIOA7")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("CAP1Q1_GPIOA8")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_CAP1Q1_GPIOA8")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("CAP2Q2_GPIOA9")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_CAP2Q2_GPIOA9")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("CAP3QI1_GPIOA10")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_CAP3QI1_GPIOA10")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("TDIRA_GPIOA11")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_TDIRA_GPIOA11")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("TCLKINA_GPIOA12")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_TCLKINA_GPIOA12")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("C1TRIP_GPIOA13")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_C1TRIP_GPIOA13")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("C2TRIP_GPIOA14")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_C2TRIP_GPIOA14")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("C3TRIP_GPIOA15")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_C3TRIP_GPIOA15")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPAMUX_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("all")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$90, DW_AT_name("bit")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPAQUAL_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("QUALPRD")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$91, DW_AT_bit_size(0x08)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("rsvd1")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$92, DW_AT_bit_size(0x08)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPAQUAL_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("all")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$94, DW_AT_name("bit")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("GPIOA0")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("GPIOA1")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("GPIOA2")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("GPIOA3")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("GPIOA4")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("GPIOA5")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("GPIOA6")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("GPIOA7")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("GPIOA8")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("GPIOA9")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("GPIOA10")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("GPIOA11")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("GPIOA12")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("GPIOA13")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GPIOA14")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("GPIOA15")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("all")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$112, DW_AT_name("bit")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("GPIOA0")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("GPIOA1")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("GPIOA2")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("GPIOA3")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GPIOA4")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("GPIOA5")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("GPIOA6")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("GPIOA7")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("GPIOA8")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("GPIOA9")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("GPIOA10")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("GPIOA11")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("GPIOA12")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("GPIOA13")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("GPIOA14")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("GPIOA15")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("all")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$130, DW_AT_name("bit")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("GPIOB0")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("GPIOB1")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("GPIOB2")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("GPIOB3")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIOB4")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIOB5")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIOB6")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIOB7")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIOB8")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIOB9")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIOB10")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIOB11")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIOB12")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIOB13")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIOB14")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIOB15")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("all")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$148, DW_AT_name("bit")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("GPIOB0")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("GPIOB1")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("GPIOB2")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIOB3")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("GPIOB4")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("GPIOB5")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIOB6")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIOB7")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("GPIOB8")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("GPIOB9")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIOB10")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIOB11")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIOB12")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIOB13")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIOB14")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIOB15")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("all")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$166, DW_AT_name("bit")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPBDIR_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("GPIOB0")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("GPIOB1")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("GPIOB2")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("GPIOB3")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("GPIOB4")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("GPIOB5")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("GPIOB6")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("GPIOB7")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("GPIOB8")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("GPIOB9")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("GPIOB10")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("GPIOB11")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("GPIOB12")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("GPIOB13")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("GPIOB14")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("GPIOB15")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPBDIR_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("all")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$184, DW_AT_name("bit")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPBMUX_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("PWM7_GPIOB0")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_PWM7_GPIOB0")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("PWM8_GPIOB1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_PWM8_GPIOB1")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("PWM9_GPIOB2")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_PWM9_GPIOB2")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("PWM10_GPIOB3")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_PWM10_GPIOB3")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("PWM11_GPIOB4")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_PWM11_GPIOB4")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("PWM12_GPIOB5")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_PWM12_GPIOB5")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("T3PWM_GPIOB6")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_T3PWM_GPIOB6")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("T4PWM_GPIOB7")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_T4PWM_GPIOB7")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("CAP4Q1_GPIOB8")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_CAP4Q1_GPIOB8")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("CAP5Q2_GPIOB9")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_CAP5Q2_GPIOB9")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("CAP6QI2_GPIOB10")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_CAP6QI2_GPIOB10")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("TDIRB_GPIOB11")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_TDIRB_GPIOB11")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("TCLKINB_GPIOB12")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_TCLKINB_GPIOB12")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("C4TRIP_GPIOB13")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_C4TRIP_GPIOB13")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("C5TRIP_GPIOB14")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_C5TRIP_GPIOB14")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("C6TRIP_GPIOB15")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_C6TRIP_GPIOB15")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPBMUX_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("all")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$202, DW_AT_name("bit")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPBQUAL_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("QUALPRD")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$203, DW_AT_bit_size(0x08)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("rsvd1")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$204, DW_AT_bit_size(0x08)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPBQUAL_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("all")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$206, DW_AT_name("bit")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("GPIOB0")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIOB1")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIOB2")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("GPIOB3")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("GPIOB4")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("GPIOB5")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIOB6")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIOB7")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("GPIOB8")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIOB9")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIOB10")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("GPIOB11")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("GPIOB12")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("GPIOB13")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("GPIOB14")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("GPIOB15")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("all")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$224, DW_AT_name("bit")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("GPIOB0")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("GPIOB1")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("GPIOB2")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("GPIOB3")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("GPIOB4")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIOB5")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("GPIOB6")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIOB7")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIOB8")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("GPIOB9")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("GPIOB10")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("GPIOB11")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIOB12")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIOB13")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIOB14")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("GPIOB15")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("all")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$242, DW_AT_name("bit")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIOD0")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIOD1")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("rsvd1")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$245, DW_AT_bit_size(0x03)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("GPIOD5")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("GPIOD6")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("rsvd2")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$248, DW_AT_bit_size(0x09)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("all")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$250, DW_AT_name("bit")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIOD0")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIOD1")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("rsvd1")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$253, DW_AT_bit_size(0x03)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIOD5")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIOD6")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("rsvd2")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$256, DW_AT_bit_size(0x09)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("all")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$258, DW_AT_name("bit")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPDDIR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("GPIOD0")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("GPIOD1")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("rsvd1")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$261, DW_AT_bit_size(0x03)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIOD5")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIOD6")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("rsvd2")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$264, DW_AT_bit_size(0x09)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPDDIR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("all")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$266, DW_AT_name("bit")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPDMUX_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("T1CTRIP_PDPA_GPIOD0")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_T1CTRIP_PDPA_GPIOD0")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("T2CTRIP_SOCA_GPIOD1")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_T2CTRIP_SOCA_GPIOD1")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("rsvd1")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$269, DW_AT_bit_size(0x03)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("T3CTRIP_PDPB_GPIOD5")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_T3CTRIP_PDPB_GPIOD5")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("T4CTRIP_SOCB_GPIOD6")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_T4CTRIP_SOCB_GPIOD6")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("rsvd2")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$272, DW_AT_bit_size(0x09)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPDMUX_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("all")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$274, DW_AT_name("bit")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPDQUAL_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("QUALPRD")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$275, DW_AT_bit_size(0x08)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("rsvd1")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$276, DW_AT_bit_size(0x08)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPDQUAL_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("all")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$278, DW_AT_name("bit")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIOD0")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIOD1")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("rsvd1")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$281, DW_AT_bit_size(0x03)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIOD5")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("GPIOD6")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("rsvd2")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$284, DW_AT_bit_size(0x09)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("all")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$286, DW_AT_name("bit")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOD0")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIOD1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("rsvd1")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$289, DW_AT_bit_size(0x03)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOD5")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIOD6")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("rsvd2")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$292, DW_AT_bit_size(0x09)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("all")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$294, DW_AT_name("bit")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIOE0")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIOE1")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOE2")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("rsvd1")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$298, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("all")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$300, DW_AT_name("bit")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("GPIOE0")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIOE1")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOE2")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("rsvd1")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$304, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("all")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$306, DW_AT_name("bit")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPEDIR_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIOE0")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIOE1")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIOE2")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("rsvd1")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$310, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPEDIR_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("all")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$312, DW_AT_name("bit")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("GPEMUX_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("XINT1_XBIO_GPIOE0")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_XINT1_XBIO_GPIOE0")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("XINT2_ADCSOC_GPIOE1")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_XINT2_ADCSOC_GPIOE1")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("XNMI_XINT13_GPIOE2")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_XNMI_XINT13_GPIOE2")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("rsvd1")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$316, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("GPEMUX_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("all")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$318, DW_AT_name("bit")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("GPEQUAL_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("QUALPRD")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$319, DW_AT_bit_size(0x08)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("rsvd1")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$320, DW_AT_bit_size(0x08)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("GPEQUAL_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("all")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$322, DW_AT_name("bit")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOE0")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOE1")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOE2")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("rsvd1")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$326, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("all")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$328, DW_AT_name("bit")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOE0")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOE1")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIOE2")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("rsvd1")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$332, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("all")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$334, DW_AT_name("bit")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOF0")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIOF1")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("GPIOF2")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIOF3")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOF4")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOF5")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOF6")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOF7")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOF8")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOF9")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOF10")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOF11")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOF12")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOF13")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOF14")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOF15")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("all")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$352, DW_AT_name("bit")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOF0")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOF1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIOF2")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIOF3")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOF4")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOF5")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOF6")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOF7")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOF8")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOF9")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOF10")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOF11")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOF12")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOF13")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOF14")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIOF15")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("all")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$370, DW_AT_name("bit")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("GPFDIR_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOF0")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOF1")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("GPIOF2")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIOF3")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOF4")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOF5")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOF6")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOF7")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOF8")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOF9")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOF10")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOF11")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOF12")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOF13")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOF14")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIOF15")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("GPFDIR_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("all")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$388, DW_AT_name("bit")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("GPFMUX_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("SPISIMOA_GPIOF0")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_SPISIMOA_GPIOF0")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("SPISOMIA_GPIOF1")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_SPISOMIA_GPIOF1")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("SPICLKA_GPIOF2")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_SPICLKA_GPIOF2")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("SPISTEA_GPIOF3")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_SPISTEA_GPIOF3")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("SCITXDA_GPIOF4")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_SCITXDA_GPIOF4")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("SCIRXDA_GPIOF5")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_SCIRXDA_GPIOF5")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("CANTXA_GPIOF6")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_CANTXA_GPIOF6")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("CANRXA_GPIOF7")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_CANRXA_GPIOF7")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("MCLKXA_GPIOF8")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_MCLKXA_GPIOF8")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("MCLKRA_GPIOF9")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_MCLKRA_GPIOF9")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("MFSXA_GPIOF10")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_MFSXA_GPIOF10")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("MFSRA_GPIOF11")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_MFSRA_GPIOF11")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("MDXA_GPIOF12")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_MDXA_GPIOF12")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("MDRA_GPIOF13")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_MDRA_GPIOF13")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("XF_GPIOF14")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_XF_GPIOF14")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("spare_GPIOF15")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_spare_GPIOF15")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("GPFMUX_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("all")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$406, DW_AT_name("bit")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOF0")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOF1")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIOF2")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIOF3")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIOF4")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOF5")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOF6")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOF7")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIOF8")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIOF9")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOF10")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOF11")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOF12")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOF13")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOF14")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIOF15")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("all")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$424, DW_AT_name("bit")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOF0")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOF1")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIOF2")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("GPIOF3")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("GPIOF4")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIOF5")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIOF6")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIOF7")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIOF8")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIOF9")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIOF10")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIOF11")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOF12")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOF13")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIOF14")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIOF15")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("all")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$442, DW_AT_name("bit")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("rsvd1")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$443, DW_AT_bit_size(0x04)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIOG4")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIOG5")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("rsvd2")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("all")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$448, DW_AT_name("bit")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("rsvd1")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$449, DW_AT_bit_size(0x04)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOG4")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOG5")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("rsvd2")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$452, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("all")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$454, DW_AT_name("bit")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("GPGDIR_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("rsvd1")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$455, DW_AT_bit_size(0x04)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIOG4")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIOG5")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("rsvd2")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$458, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("GPGDIR_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("all")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$460, DW_AT_name("bit")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("GPGMUX_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("rsvd1")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$461, DW_AT_bit_size(0x04)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("SCITXDB_GPIOG4")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_SCITXDB_GPIOG4")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("SCIRXDB_GPIOG5")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_SCIRXDB_GPIOG5")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("rsvd2")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$464, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("GPGMUX_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("all")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$466, DW_AT_name("bit")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("rsvd1")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$467, DW_AT_bit_size(0x04)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIOG4")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("GPIOG5")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("rsvd2")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$470, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("all")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$472, DW_AT_name("bit")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("rsvd1")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$473, DW_AT_bit_size(0x04)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIOG4")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIOG5")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("rsvd2")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$476, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("all")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$478, DW_AT_name("bit")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99


$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x20)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$479, DW_AT_name("GPADAT")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$480, DW_AT_name("GPASET")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$481, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$482, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$483, DW_AT_name("GPBDAT")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$484, DW_AT_name("GPBSET")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$485, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$486, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$487, DW_AT_name("rsvd1")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$488, DW_AT_name("GPDDAT")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$489, DW_AT_name("GPDSET")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$490, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$491, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$492, DW_AT_name("GPEDAT")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$493, DW_AT_name("GPESET")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$494, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$495, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$496, DW_AT_name("GPFDAT")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$497, DW_AT_name("GPFSET")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$498, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$499, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$500, DW_AT_name("GPGDAT")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$501, DW_AT_name("GPGSET")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$502, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$503, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$504, DW_AT_name("rsvd2")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101

$C$DW$505	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$101)

$C$DW$T$149	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$505)


$C$DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$105, DW_AT_name("GPIO_MUX_REGS")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x20)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$506, DW_AT_name("GPAMUX")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_GPAMUX")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$507, DW_AT_name("GPADIR")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPADIR")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$508, DW_AT_name("GPAQUAL")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPAQUAL")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("rsvd1")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$510, DW_AT_name("GPBMUX")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPBMUX")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$511, DW_AT_name("GPBDIR")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPBDIR")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$512, DW_AT_name("GPBQUAL")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_GPBQUAL")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$513, DW_AT_name("rsvd2")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$514, DW_AT_name("GPDMUX")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPDMUX")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$515, DW_AT_name("GPDDIR")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPDDIR")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$516, DW_AT_name("GPDQUAL")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_GPDQUAL")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("rsvd3")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$518, DW_AT_name("GPEMUX")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_GPEMUX")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$519, DW_AT_name("GPEDIR")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_GPEDIR")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$520, DW_AT_name("GPEQUAL")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_GPEQUAL")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("rsvd4")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$522, DW_AT_name("GPFMUX")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPFMUX")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$523, DW_AT_name("GPFDIR")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPFDIR")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$524, DW_AT_name("rsvd5")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$525, DW_AT_name("GPGMUX")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_GPGMUX")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$526, DW_AT_name("GPGDIR")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_GPGDIR")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$527, DW_AT_name("rsvd6")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105

$C$DW$528	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$105)

$C$DW$T$150	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$528)

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


$C$DW$T$100	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x04)
$C$DW$529	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$529, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$100


$C$DW$T$102	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x05)
$C$DW$530	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$530, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$102


$C$DW$T$103	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x02)
$C$DW$531	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$531, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$103


$C$DW$T$104	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x06)
$C$DW$532	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$532, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$104

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

$C$DW$533	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$533, DW_AT_name("AL")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_reg0]

$C$DW$534	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$534, DW_AT_name("AH")
	.dwattr $C$DW$534, DW_AT_location[DW_OP_reg1]

$C$DW$535	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$535, DW_AT_name("PL")
	.dwattr $C$DW$535, DW_AT_location[DW_OP_reg2]

$C$DW$536	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$536, DW_AT_name("PH")
	.dwattr $C$DW$536, DW_AT_location[DW_OP_reg3]

$C$DW$537	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$537, DW_AT_name("SP")
	.dwattr $C$DW$537, DW_AT_location[DW_OP_reg20]

$C$DW$538	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$538, DW_AT_name("XT")
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg21]

$C$DW$539	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$539, DW_AT_name("T")
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg22]

$C$DW$540	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$540, DW_AT_name("ST0")
	.dwattr $C$DW$540, DW_AT_location[DW_OP_reg23]

$C$DW$541	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$541, DW_AT_name("ST1")
	.dwattr $C$DW$541, DW_AT_location[DW_OP_reg24]

$C$DW$542	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$542, DW_AT_name("PC")
	.dwattr $C$DW$542, DW_AT_location[DW_OP_reg25]

$C$DW$543	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$543, DW_AT_name("RPC")
	.dwattr $C$DW$543, DW_AT_location[DW_OP_reg26]

$C$DW$544	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$544, DW_AT_name("FP")
	.dwattr $C$DW$544, DW_AT_location[DW_OP_reg28]

$C$DW$545	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$545, DW_AT_name("DP")
	.dwattr $C$DW$545, DW_AT_location[DW_OP_reg29]

$C$DW$546	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$546, DW_AT_name("SXM")
	.dwattr $C$DW$546, DW_AT_location[DW_OP_reg30]

$C$DW$547	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$547, DW_AT_name("PM")
	.dwattr $C$DW$547, DW_AT_location[DW_OP_reg31]

$C$DW$548	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$548, DW_AT_name("OVM")
	.dwattr $C$DW$548, DW_AT_location[DW_OP_regx 0x20]

$C$DW$549	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$549, DW_AT_name("PAGE0")
	.dwattr $C$DW$549, DW_AT_location[DW_OP_regx 0x21]

$C$DW$550	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$550, DW_AT_name("AMODE")
	.dwattr $C$DW$550, DW_AT_location[DW_OP_regx 0x22]

$C$DW$551	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$551, DW_AT_name("EALLOW")
	.dwattr $C$DW$551, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$552	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$552, DW_AT_name("INTM")
	.dwattr $C$DW$552, DW_AT_location[DW_OP_regx 0x23]

$C$DW$553	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$553, DW_AT_name("IFR")
	.dwattr $C$DW$553, DW_AT_location[DW_OP_regx 0x24]

$C$DW$554	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$554, DW_AT_name("IER")
	.dwattr $C$DW$554, DW_AT_location[DW_OP_regx 0x25]

$C$DW$555	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$555, DW_AT_name("V")
	.dwattr $C$DW$555, DW_AT_location[DW_OP_regx 0x26]

$C$DW$556	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$556, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$556, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$557	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$557, DW_AT_name("VOL")
	.dwattr $C$DW$557, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$558	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$558, DW_AT_name("AR0")
	.dwattr $C$DW$558, DW_AT_location[DW_OP_reg4]

$C$DW$559	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$559, DW_AT_name("XAR0")
	.dwattr $C$DW$559, DW_AT_location[DW_OP_reg5]

$C$DW$560	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$560, DW_AT_name("AR1")
	.dwattr $C$DW$560, DW_AT_location[DW_OP_reg6]

$C$DW$561	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$561, DW_AT_name("XAR1")
	.dwattr $C$DW$561, DW_AT_location[DW_OP_reg7]

$C$DW$562	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$562, DW_AT_name("AR2")
	.dwattr $C$DW$562, DW_AT_location[DW_OP_reg8]

$C$DW$563	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$563, DW_AT_name("XAR2")
	.dwattr $C$DW$563, DW_AT_location[DW_OP_reg9]

$C$DW$564	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$564, DW_AT_name("AR3")
	.dwattr $C$DW$564, DW_AT_location[DW_OP_reg10]

$C$DW$565	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$565, DW_AT_name("XAR3")
	.dwattr $C$DW$565, DW_AT_location[DW_OP_reg11]

$C$DW$566	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$566, DW_AT_name("AR4")
	.dwattr $C$DW$566, DW_AT_location[DW_OP_reg12]

$C$DW$567	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$567, DW_AT_name("XAR4")
	.dwattr $C$DW$567, DW_AT_location[DW_OP_reg13]

$C$DW$568	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$568, DW_AT_name("AR5")
	.dwattr $C$DW$568, DW_AT_location[DW_OP_reg14]

$C$DW$569	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$569, DW_AT_name("XAR5")
	.dwattr $C$DW$569, DW_AT_location[DW_OP_reg15]

$C$DW$570	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$570, DW_AT_name("AR6")
	.dwattr $C$DW$570, DW_AT_location[DW_OP_reg16]

$C$DW$571	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$571, DW_AT_name("XAR6")
	.dwattr $C$DW$571, DW_AT_location[DW_OP_reg17]

$C$DW$572	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$572, DW_AT_name("AR7")
	.dwattr $C$DW$572, DW_AT_location[DW_OP_reg18]

$C$DW$573	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$573, DW_AT_name("XAR7")
	.dwattr $C$DW$573, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


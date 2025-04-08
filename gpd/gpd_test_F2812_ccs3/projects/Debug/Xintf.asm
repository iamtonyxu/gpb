;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:53 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("XintfRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_XintfRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{B6F906DF-59D5-468E-8827-88E6B17365E5} 
	.sect	".text"
	.clink
	.global	_InitXintf

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("InitXintf")
	.dwattr $C$DW$2, DW_AT_low_pc(_InitXintf)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_InitXintf")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 32,column 1,is_stmt,address _InitXintf,isa 0

	.dwfde $C$DW$CIE, _InitXintf
;----------------------------------------------------------------------
;  31 | void InitXintf(void)                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitXintf                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitXintf:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 35,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | XintfRegs.XINTCNF2.bit.XTIMCLK = 0;                     // XTIMCLK=SYSC
;     | LKOUT/1                                                                
;----------------------------------------------------------------------
        MOVW      DP,#_XintfRegs+21     ; [CPU_ARAU] 
        AND       @$BLOCKED(_XintfRegs)+21,#0xfff8 ; [CPU_ALU] |35| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 36,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  36 | XintfRegs.XINTCNF2.bit.CLKOFF = 0;                      // XCLKOUT is e
;     | nabled                                                                 
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+20,#0xfff7 ; [CPU_ALU] |36| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 37,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | XintfRegs.XINTCNF2.bit.CLKMODE = 1;                     // XCLKOUT = XT
;     | IMCLK/2                                                                
;  39 | // Make sure write buffer is empty before configuring buffering depth  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+20,#0x0004 ; [CPU_ALU] |37| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 40,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | while(XintfRegs.XINTCNF2.bit.WLEVEL != 0);      // poll the WLEVEL bit 
;----------------------------------------------------------------------
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 40,column 8,is_stmt,isa 0
        AND       AL,@$BLOCKED(_XintfRegs)+20,#0x00c0 ; [CPU_ALU] |40| 
        LSR       AL,6                  ; [CPU_ALU] |40| 
        B         $C$L1,NEQ             ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 41,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | XintfRegs.XINTCNF2.bit.WRBUFF = 0;                      // No write buf
;     | fering                                                                 
;  44 | // Example: Assume Zone 7 is slow, so add additional BCYC cycles whenev
;     | er                                                                     
;  45 | // switching from Zone 7 to another Zone.  This will help avoid bus con
;     | tention.                                                               
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+20,#0xfffc ; [CPU_ALU] |41| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 46,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | XintfRegs.XBANK.bit.BCYC = 7;                           // Add 7 cycles
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+24,#0x0038 ; [CPU_ALU] |46| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | XintfRegs.XBANK.bit.BANK = 7;                           // select zone
;     | 7                                                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+24,#0x0007 ; [CPU_ALU] |47| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 50,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | XintfRegs.XTIMING0.bit.X2TIMING = 0;    // Timing scale factor = 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+1,#0xffbf ; [CPU_ALU] |50| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 51,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | XintfRegs.XTIMING0.bit.XSIZE = 3;               // Always write as 11b 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+1,#0x0003 ; [CPU_ALU] |51| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 52,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | XintfRegs.XTIMING0.bit.READYMODE = 1;   // XREADY is asynchronous      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs),#0x8000 ; [CPU_ALU] |52| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 53,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | XintfRegs.XTIMING0.bit.USEREADY = 0;    // Disable XREADY              
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs),#0xbfff ; [CPU_ALU] |53| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | XintfRegs.XTIMING0.bit.XRDLEAD = 1;             // Read lead time      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs),#0xcfff ; [CPU_ALU] |54| 
        OR        AL,#0x1000            ; [CPU_ALU] |54| 
        MOV       @$BLOCKED(_XintfRegs),AL ; [CPU_ALU] |54| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | XintfRegs.XTIMING0.bit.XRDACTIVE = 2;   // Read active time            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs),#0xf1ff ; [CPU_ALU] |55| 
        OR        AL,#0x0400            ; [CPU_ALU] |55| 
        MOV       @$BLOCKED(_XintfRegs),AL ; [CPU_ALU] |55| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | XintfRegs.XTIMING0.bit.XRDTRAIL = 0;    // Read trail time             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs),#0xfe7f ; [CPU_ALU] |56| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | XintfRegs.XTIMING0.bit.XWRLEAD = 1;             // Write lead time     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs),#0xff9f ; [CPU_ALU] |57| 
        ORB       AL,#0x20              ; [CPU_ALU] |57| 
        MOV       @$BLOCKED(_XintfRegs),AL ; [CPU_ALU] |57| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | XintfRegs.XTIMING0.bit.XWRACTIVE = 2;   // Write active time           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs),#0xffe3 ; [CPU_ALU] |58| 
        ORB       AL,#0x08              ; [CPU_ALU] |58| 
        MOV       @$BLOCKED(_XintfRegs),AL ; [CPU_ALU] |58| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | XintfRegs.XTIMING0.bit.XWRTRAIL = 0;    // Write trail time            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs),#0xfffc ; [CPU_ALU] |59| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 62,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | XintfRegs.XTIMING1.bit.X2TIMING = 0;    // Timing scale factor = 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+3,#0xffbf ; [CPU_ALU] |62| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 63,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  63 | XintfRegs.XTIMING1.bit.XSIZE = 3;               // Always write as 11b 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+3,#0x0003 ; [CPU_ALU] |63| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 64,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  64 | XintfRegs.XTIMING1.bit.READYMODE = 1;   // XREADY is asynchronous      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+2,#0x8000 ; [CPU_ALU] |64| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 65,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | XintfRegs.XTIMING1.bit.USEREADY = 0;    // Disable XREADY              
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+2,#0xbfff ; [CPU_ALU] |65| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 66,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | XintfRegs.XTIMING1.bit.XRDLEAD = 1;             // Read lead time      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+2,#0xcfff ; [CPU_ALU] |66| 
        OR        AL,#0x1000            ; [CPU_ALU] |66| 
        MOV       @$BLOCKED(_XintfRegs)+2,AL ; [CPU_ALU] |66| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 67,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | XintfRegs.XTIMING1.bit.XRDACTIVE = 2;   // Read active time            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+2,#0xf1ff ; [CPU_ALU] |67| 
        OR        AL,#0x0400            ; [CPU_ALU] |67| 
        MOV       @$BLOCKED(_XintfRegs)+2,AL ; [CPU_ALU] |67| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 68,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | XintfRegs.XTIMING1.bit.XRDTRAIL = 0;    // Read trail time             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+2,#0xfe7f ; [CPU_ALU] |68| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 69,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | XintfRegs.XTIMING1.bit.XWRLEAD = 1;             // Write lead time     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+2,#0xff9f ; [CPU_ALU] |69| 
        ORB       AL,#0x20              ; [CPU_ALU] |69| 
        MOV       @$BLOCKED(_XintfRegs)+2,AL ; [CPU_ALU] |69| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 70,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | XintfRegs.XTIMING1.bit.XWRACTIVE = 2;   // Write active time           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+2,#0xffe3 ; [CPU_ALU] |70| 
        ORB       AL,#0x08              ; [CPU_ALU] |70| 
        MOV       @$BLOCKED(_XintfRegs)+2,AL ; [CPU_ALU] |70| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 71,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | XintfRegs.XTIMING1.bit.XWRTRAIL = 0;    // Write trail time            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+2,#0xfffc ; [CPU_ALU] |71| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 74,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | XintfRegs.XTIMING2.bit.X2TIMING = 0;    // Timing scale factor = 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+5,#0xffbf ; [CPU_ALU] |74| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 75,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | XintfRegs.XTIMING2.bit.XSIZE = 3;               // Always write as 11b 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+5,#0x0003 ; [CPU_ALU] |75| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 76,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | XintfRegs.XTIMING2.bit.READYMODE = 1;   // XREADY is asynchronous      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+4,#0x8000 ; [CPU_ALU] |76| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 77,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  77 | XintfRegs.XTIMING2.bit.USEREADY = 0;    // Disable XREADY              
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+4,#0xbfff ; [CPU_ALU] |77| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 78,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | XintfRegs.XTIMING2.bit.XRDLEAD = 1;             // Read lead time      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+4,#0xcfff ; [CPU_ALU] |78| 
        OR        AL,#0x1000            ; [CPU_ALU] |78| 
        MOV       @$BLOCKED(_XintfRegs)+4,AL ; [CPU_ALU] |78| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 79,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  79 | XintfRegs.XTIMING2.bit.XRDACTIVE = 2;   // Read active time            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+4,#0xf1ff ; [CPU_ALU] |79| 
        OR        AL,#0x0400            ; [CPU_ALU] |79| 
        MOV       @$BLOCKED(_XintfRegs)+4,AL ; [CPU_ALU] |79| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 80,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | XintfRegs.XTIMING2.bit.XRDTRAIL = 0;    // Read trail time             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+4,#0xfe7f ; [CPU_ALU] |80| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 81,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | XintfRegs.XTIMING2.bit.XWRLEAD = 1;             // Write lead time     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+4,#0xff9f ; [CPU_ALU] |81| 
        ORB       AL,#0x20              ; [CPU_ALU] |81| 
        MOV       @$BLOCKED(_XintfRegs)+4,AL ; [CPU_ALU] |81| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 82,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | XintfRegs.XTIMING2.bit.XWRACTIVE = 2;   // Write active time           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+4,#0xffe3 ; [CPU_ALU] |82| 
        ORB       AL,#0x08              ; [CPU_ALU] |82| 
        MOV       @$BLOCKED(_XintfRegs)+4,AL ; [CPU_ALU] |82| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | XintfRegs.XTIMING2.bit.XWRTRAIL = 0;    // Write trail time            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+4,#0xfffc ; [CPU_ALU] |83| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | XintfRegs.XTIMING6.bit.X2TIMING = 0;    // Timing scale factor = 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+13,#0xffbf ; [CPU_ALU] |86| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 87,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | XintfRegs.XTIMING6.bit.XSIZE = 3;               // Always write as 11b 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+13,#0x0003 ; [CPU_ALU] |87| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 88,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | XintfRegs.XTIMING6.bit.READYMODE = 1;   // XREADY is asynchronous      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+12,#0x8000 ; [CPU_ALU] |88| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 89,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | XintfRegs.XTIMING6.bit.USEREADY = 0;    // Disable XREADY              
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+12,#0xbfff ; [CPU_ALU] |89| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 90,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | XintfRegs.XTIMING6.bit.XRDLEAD = 1;             // Read lead time      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+12,#0xcfff ; [CPU_ALU] |90| 
        OR        AL,#0x1000            ; [CPU_ALU] |90| 
        MOV       @$BLOCKED(_XintfRegs)+12,AL ; [CPU_ALU] |90| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 91,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | XintfRegs.XTIMING6.bit.XRDACTIVE = 2;   // Read active time            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+12,#0xf1ff ; [CPU_ALU] |91| 
        OR        AL,#0x0400            ; [CPU_ALU] |91| 
        MOV       @$BLOCKED(_XintfRegs)+12,AL ; [CPU_ALU] |91| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 92,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | XintfRegs.XTIMING6.bit.XRDTRAIL = 0;    // Read trail time             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+12,#0xfe7f ; [CPU_ALU] |92| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | XintfRegs.XTIMING6.bit.XWRLEAD = 1;             // Write lead time     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+12,#0xff9f ; [CPU_ALU] |93| 
        ORB       AL,#0x20              ; [CPU_ALU] |93| 
        MOV       @$BLOCKED(_XintfRegs)+12,AL ; [CPU_ALU] |93| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | XintfRegs.XTIMING6.bit.XWRACTIVE = 2;   // Write active time           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+12,#0xffe3 ; [CPU_ALU] |94| 
        ORB       AL,#0x08              ; [CPU_ALU] |94| 
        MOV       @$BLOCKED(_XintfRegs)+12,AL ; [CPU_ALU] |94| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | XintfRegs.XTIMING6.bit.XWRTRAIL = 0;    // Write trail time            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+12,#0xfffc ; [CPU_ALU] |95| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | XintfRegs.XTIMING7.bit.X2TIMING = 0;    // Timing scale factor = 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+15,#0xffbf ; [CPU_ALU] |98| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | XintfRegs.XTIMING7.bit.XSIZE = 3;               // Always write as 11b 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+15,#0x0003 ; [CPU_ALU] |99| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 100,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | XintfRegs.XTIMING7.bit.READYMODE = 1;   // XREADY is asynchronous      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_XintfRegs)+14,#0x8000 ; [CPU_ALU] |100| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 101,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | XintfRegs.XTIMING7.bit.USEREADY = 0;    // Disable XREADY              
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+14,#0xbfff ; [CPU_ALU] |101| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | XintfRegs.XTIMING7.bit.XRDLEAD = 1;             // Read lead time      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+14,#0xcfff ; [CPU_ALU] |102| 
        OR        AL,#0x1000            ; [CPU_ALU] |102| 
        MOV       @$BLOCKED(_XintfRegs)+14,AL ; [CPU_ALU] |102| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | XintfRegs.XTIMING7.bit.XRDACTIVE = 2;   // Read active time            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+14,#0xf1ff ; [CPU_ALU] |103| 
        OR        AL,#0x0400            ; [CPU_ALU] |103| 
        MOV       @$BLOCKED(_XintfRegs)+14,AL ; [CPU_ALU] |103| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | XintfRegs.XTIMING7.bit.XRDTRAIL = 0;    // Read trail time             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+14,#0xfe7f ; [CPU_ALU] |104| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | XintfRegs.XTIMING7.bit.XWRLEAD = 1;             // Write lead time     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+14,#0xff9f ; [CPU_ALU] |105| 
        ORB       AL,#0x20              ; [CPU_ALU] |105| 
        MOV       @$BLOCKED(_XintfRegs)+14,AL ; [CPU_ALU] |105| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | XintfRegs.XTIMING7.bit.XWRACTIVE = 2;   // Write active time           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_XintfRegs)+14,#0xffe3 ; [CPU_ALU] |106| 
        ORB       AL,#0x08              ; [CPU_ALU] |106| 
        MOV       @$BLOCKED(_XintfRegs)+14,AL ; [CPU_ALU] |106| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | XintfRegs.XTIMING7.bit.XWRTRAIL = 0;    // Write trail time            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_XintfRegs)+14,#0xfffc ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 112,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | asm(" RPT #6 || NOP");                                                 
;----------------------------------------------------------------------
 RPT #6 || NOP
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 115,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | } //end of InitXintf()                                                 
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"
	.clink
	.global	_TestRam

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("TestRam")
	.dwattr $C$DW$4, DW_AT_low_pc(_TestRam)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_TestRam")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 140,column 1,is_stmt,address _TestRam,isa 0

	.dwfde $C$DW$CIE, _TestRam
;----------------------------------------------------------------------
; 139 | Uint16 TestRam(void)                                                   
; 141 | Uint32 idx, Cnt;                                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _TestRam                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

_TestRam:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("idx")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("Cnt")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_Cnt")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -4]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("ExMem")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_ExMem")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -6]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ErrCnt")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_ErrCnt")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -7]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 142,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | Uint16 ErrCnt = 0;                                                     
;----------------------------------------------------------------------
        MOV       *-SP[7],#0            ; [CPU_ALU] |142| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 143,column 26,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | volatile Uint16 * ExMem = &XINTF_ZONE6;                                
;----------------------------------------------------------------------
        MOVL      XAR4,#1048576         ; [CPU_ARAU] |143| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |143| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 146,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | Cnt = 0;                                                               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |146| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |146| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 147,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | for(idx = 1; idx <= MAX_RAM_SIZE; idx <<= 1)                           
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |147| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |147| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 147,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |147| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |147| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        B         $C$L3,LO              ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 148,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | ExMem[idx] = Cnt++;                                                    
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |148| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |148| 
        ADDB      ACC,#1                ; [CPU_ALU] |148| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |148| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |148| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |148| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |148| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |148| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 147,column 36,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        LSL       ACC,1                 ; [CPU_ALU] |147| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |147| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 147,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |147| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |147| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        B         $C$L2,HIS             ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
$C$L3:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | Cnt = 0;                                                               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |150| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |150| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 151,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | for(idx = 1; idx <= MAX_RAM_SIZE; idx <<= 1) {                         
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |151| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |151| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 151,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |151| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |151| 
        B         $C$L6,LO              ; [CPU_ALU] |151| 
        ; branchcc occurs ; [] |151| 
$C$L4:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 152,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | if(ExMem[idx] != Cnt++) {                                              
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |152| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |152| 
        ADDB      ACC,#1                ; [CPU_ALU] |152| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |152| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |152| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |152| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |152| 
        MOVZ      AR7,*+XAR4[0]         ; [CPU_ALU] |152| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |152| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |152| 
        B         $C$L5,EQ              ; [CPU_ALU] |152| 
        ; branchcc occurs ; [] |152| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 153,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | ErrCnt |= 0x0001;                                                      
;----------------------------------------------------------------------
        OR        *-SP[7],#0x0001       ; [CPU_ALU] |153| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 154,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L6,UNC             ; [CPU_ALU] |154| 
        ; branch occurs ; [] |154| 
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 151,column 36,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |151| 
        LSL       ACC,1                 ; [CPU_ALU] |151| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |151| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 151,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |151| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |151| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |151| 
        B         $C$L4,HIS             ; [CPU_ALU] |151| 
        ; branchcc occurs ; [] |151| 
$C$L6:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 159,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | Cnt = 0;                                                               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |159| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |159| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 160,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 160 | for(idx = 1; idx < MAX_RAM_SIZE/4; idx <<= 1)                          
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |160| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |160| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 160,column 15,is_stmt,isa 0
        MOVL      XAR4,#65536           ; [CPU_ARAU] |160| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |160| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |160| 
        B         $C$L8,LOS             ; [CPU_ALU] |160| 
        ; branchcc occurs ; [] |160| 
$C$L7:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 161,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | ExMem[Cnt++] = idx;                                                    
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |161| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |161| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |161| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |161| 
        ADDB      XAR6,#1               ; [CPU_ALU] |161| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |161| 
        MOVZ      AR6,*-SP[2]           ; [CPU_ALU] |161| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |161| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 160,column 37,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |160| 
        LSL       ACC,1                 ; [CPU_ALU] |160| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |160| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 160,column 15,is_stmt,isa 0
        MOVL      XAR4,#65536           ; [CPU_ARAU] |160| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |160| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |160| 
        B         $C$L7,HI              ; [CPU_ALU] |160| 
        ; branchcc occurs ; [] |160| 
$C$L8:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 163,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | Cnt = 0;                                                               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |163| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |163| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 164,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 164 | for(idx = 1; idx < MAX_RAM_SIZE/4; idx <<= 1) {                        
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |164| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |164| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 164,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |164| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |164| 
        B         $C$L11,LOS            ; [CPU_ALU] |164| 
        ; branchcc occurs ; [] |164| 
$C$L9:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 165,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | if(ExMem[Cnt++] != idx) {                                              
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |165| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |165| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |165| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |165| 
        ADDB      XAR6,#1               ; [CPU_ALU] |165| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |165| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |165| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |165| 
        B         $C$L10,EQ             ; [CPU_ALU] |165| 
        ; branchcc occurs ; [] |165| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 166,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | ErrCnt|= 0x0002;                                                       
;----------------------------------------------------------------------
        OR        *-SP[7],#0x0002       ; [CPU_ALU] |166| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 167,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L11,UNC            ; [CPU_ALU] |167| 
        ; branch occurs ; [] |167| 
$C$L10:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 164,column 37,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |164| 
        LSL       ACC,1                 ; [CPU_ALU] |164| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |164| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 164,column 15,is_stmt,isa 0
        MOVL      XAR4,#65536           ; [CPU_ARAU] |164| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |164| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |164| 
        B         $C$L9,HI              ; [CPU_ALU] |164| 
        ; branchcc occurs ; [] |164| 
$C$L11:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 172,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | for(idx = 0; idx < MAX_RAM_SIZE; idx++) {                              
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |172| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |172| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 172,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |172| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |172| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |172| 
        B         $C$L13,LOS            ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
$C$L12:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 173,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | ExMem[idx] = 0xaaaa;                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |173| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |173| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |173| 
        MOV       *+XAR4[0],#43690      ; [CPU_ALU] |173| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 172,column 35,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |172| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |172| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |172| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 172,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |172| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |172| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |172| 
        B         $C$L12,HI             ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
$C$L13:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 176,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | for(idx = 0; idx < MAX_RAM_SIZE; idx++) {                              
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |176| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |176| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 176,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |176| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |176| 
        B         $C$L16,LOS            ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR4,#262144          ; [CPU_ARAU] |176| 
$C$L14:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 177,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | if(ExMem[idx] != 0xaaaa) {                                             
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |177| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |177| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |177| 
        MOVZ      AR6,*+XAR5[0]         ; [CPU_ALU] |177| 
        MOV       ACC,#43690            ; [CPU_ALU] |177| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |177| 
        B         $C$L15,EQ             ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 178,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | ErrCnt |= 0x0004;                                                      
;----------------------------------------------------------------------
        OR        *-SP[7],#0x0004       ; [CPU_ALU] |178| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 179,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L16,UNC            ; [CPU_ALU] |179| 
        ; branch occurs ; [] |179| 
$C$L15:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 176,column 35,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |176| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |176| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |176| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 176,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |176| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |176| 
        B         $C$L14,HI             ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
$C$L16:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 182,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | for(idx = 0; idx < MAX_RAM_SIZE; idx++) {                              
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |182| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |182| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 182,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |182| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |182| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |182| 
        B         $C$L18,LOS            ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
$C$L17:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 183,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | ExMem[idx] = 0x5555;                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |183| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |183| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |183| 
        MOV       *+XAR4[0],#21845      ; [CPU_ALU] |183| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 182,column 35,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |182| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |182| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |182| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 182,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |182| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |182| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |182| 
        B         $C$L17,HI             ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
$C$L18:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 186,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | for(idx = 0; idx < MAX_RAM_SIZE; idx++) {                              
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |186| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |186| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 186,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |186| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |186| 
        B         $C$L21,LOS            ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
$C$L19:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 187,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | if(ExMem[idx] != 0x5555) {                                             
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |187| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |187| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |187| 
        MOV       AL,#21845             ; [CPU_ALU] |187| 
        CMP       AL,*+XAR4[0]          ; [CPU_ALU] |187| 
        B         $C$L20,EQ             ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 188,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | ErrCnt |= 0x0008;                                                      
;----------------------------------------------------------------------
        OR        *-SP[7],#0x0008       ; [CPU_ALU] |188| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 189,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L21,UNC            ; [CPU_ALU] |189| 
        ; branch occurs ; [] |189| 
$C$L20:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 186,column 35,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |186| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |186| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |186| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 186,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |186| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |186| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |186| 
        B         $C$L19,HI             ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
$C$L21:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 193,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | return ErrCnt;                                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[7]            ; [CPU_ALU] |193| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 195,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.global	_ZeroRam

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("ZeroRam")
	.dwattr $C$DW$10, DW_AT_low_pc(_ZeroRam)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_ZeroRam")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0xd4)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 213,column 1,is_stmt,address _ZeroRam,isa 0

	.dwfde $C$DW$CIE, _ZeroRam
;----------------------------------------------------------------------
; 212 | void ZeroRam(void)                                                     
; 214 | Uint32 idx;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ZeroRam                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_ZeroRam:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("idx")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("ExMem")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ExMem")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -4]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 215,column 26,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | volatile Uint16 * ExMem = &XINTF_ZONE6;                                
;----------------------------------------------------------------------
        MOVL      XAR4,#1048576         ; [CPU_ARAU] |215| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |215| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 217,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | for(idx = 0; idx < MAX_RAM_SIZE; idx++)                                
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |217| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |217| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 217,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |217| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |217| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |217| 
        B         $C$L23,LOS            ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
$C$L22:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 218,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | ExMem[idx] = 0x0000;                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |218| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |218| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |218| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |218| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 217,column 35,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |217| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |217| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |217| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 217,column 15,is_stmt,isa 0
        MOVL      XAR4,#262144          ; [CPU_ARAU] |217| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |217| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |217| 
        B         $C$L22,HI             ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 220,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | } // ZeroRam()                                                         
;----------------------------------------------------------------------
$C$L23:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xdc)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.global	_WriteCpld

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("WriteCpld")
	.dwattr $C$DW$14, DW_AT_low_pc(_WriteCpld)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_WriteCpld")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 240,column 1,is_stmt,address _WriteCpld,isa 0

	.dwfde $C$DW$CIE, _WriteCpld
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("Addr")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg0]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("Data")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 239 | void WriteCpld(Uint16 Addr, Byte Data)                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _WriteCpld                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_WriteCpld:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("Cpld")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Cpld")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -2]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("Addr")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -3]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("Data")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AH            ; [CPU_ALU] |240| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |240| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 241,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | volatile Byte *Cpld = &XINTF_ZONE0;                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#8192            ; [CPU_ARAU] |241| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |241| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 243,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | Cpld[Addr] = Data;                                                     
;----------------------------------------------------------------------
        MOVZ      AR0,*-SP[3]           ; [CPU_ALU] |243| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |243| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |243| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 246,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | } // WriteCpld()                                                       
;----------------------------------------------------------------------
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.global	_ReadCpld

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("ReadCpld")
	.dwattr $C$DW$21, DW_AT_low_pc(_ReadCpld)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_ReadCpld")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$21, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 265,column 1,is_stmt,address _ReadCpld,isa 0

	.dwfde $C$DW$CIE, _ReadCpld
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("Addr")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 264 | Byte ReadCpld(Uint16 Addr)                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ReadCpld                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_ReadCpld:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("Cpld")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_Cpld")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("Addr")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AL            ; [CPU_ALU] |265| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 266,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | volatile Byte *Cpld = &XINTF_ZONE0;                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#8192            ; [CPU_ARAU] |266| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |266| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 268,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | return Cpld[Addr];                                                     
;----------------------------------------------------------------------
        MOVZ      AR0,*-SP[3]           ; [CPU_ALU] |268| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |268| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c",line 271,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 271 | } // ReadCpld()                                                        
;----------------------------------------------------------------------
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Xintf.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_XintfRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("XBANK_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("BANK")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_BANK")
	.dwattr $C$DW$26, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$26, DW_AT_bit_size(0x03)
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("BCYC")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_BCYC")
	.dwattr $C$DW$27, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$27, DW_AT_bit_size(0x03)
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("rsvd")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$28, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$28, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("XBANK_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("all")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_name("bit")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("XINTCNF2_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("WRBUFF")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_WRBUFF")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$31, DW_AT_bit_size(0x02)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("CLKMODE")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_CLKMODE")
	.dwattr $C$DW$32, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$32, DW_AT_bit_size(0x01)
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("CLKOFF")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_CLKOFF")
	.dwattr $C$DW$33, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$33, DW_AT_bit_size(0x01)
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("rsvd1")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$34, DW_AT_bit_size(0x02)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("WLEVEL")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_WLEVEL")
	.dwattr $C$DW$35, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$35, DW_AT_bit_size(0x02)
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("MPNMC")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_MPNMC")
	.dwattr $C$DW$36, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$36, DW_AT_bit_size(0x01)
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("HOLD")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_HOLD")
	.dwattr $C$DW$37, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$37, DW_AT_bit_size(0x01)
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("HOLDS")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_HOLDS")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$38, DW_AT_bit_size(0x01)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("HOLDAS")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_HOLDAS")
	.dwattr $C$DW$39, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$39, DW_AT_bit_size(0x01)
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_name("rsvd2")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$40, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$40, DW_AT_bit_size(0x04)
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_name("XTIMCLK")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_XTIMCLK")
	.dwattr $C$DW$41, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$41, DW_AT_bit_size(0x03)
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("rsvd3")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$42, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("XINTCNF2_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_name("all")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$44, DW_AT_name("bit")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("XINTF_REGS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x20)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$45, DW_AT_name("XTIMING0")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_XTIMING0")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$46, DW_AT_name("XTIMING1")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_XTIMING1")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$47, DW_AT_name("XTIMING2")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_XTIMING2")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$48, DW_AT_name("rsvd1")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$49, DW_AT_name("XTIMING6")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_XTIMING6")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$50, DW_AT_name("XTIMING7")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_XTIMING7")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$51, DW_AT_name("rsvd2")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$52, DW_AT_name("XINTCNF2")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_XINTCNF2")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_name("rsvd3")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$54, DW_AT_name("XBANK")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_XBANK")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("rsvd4")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("XREVISION")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_XREVISION")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$57, DW_AT_name("rsvd5")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28

$C$DW$58	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$58)


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("XTIMING_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("XWRTRAIL")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_XWRTRAIL")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$59, DW_AT_bit_size(0x02)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("XWRACTIVE")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_XWRACTIVE")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$60, DW_AT_bit_size(0x03)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("XWRLEAD")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_XWRLEAD")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$61, DW_AT_bit_size(0x02)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("XRDTRAIL")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_XRDTRAIL")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$62, DW_AT_bit_size(0x02)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("XRDACTIVE")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_XRDACTIVE")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$63, DW_AT_bit_size(0x03)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("XRDLEAD")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_XRDLEAD")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$64, DW_AT_bit_size(0x02)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("USEREADY")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_USEREADY")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("READYMODE")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_READYMODE")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("XSIZE")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_XSIZE")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$67, DW_AT_bit_size(0x02)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("rsvd1")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$68, DW_AT_bit_size(0x04)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("X2TIMING")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_X2TIMING")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("rsvd3")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$70, DW_AT_bit_size(0x09)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("XTIMING_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$71, DW_AT_name("all")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$72, DW_AT_name("bit")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30

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

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("Byte")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$73	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$39)

$C$DW$T$41	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$73)

$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$74	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)

$C$DW$T$44	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$74)

$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x05)
$C$DW$75	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$75, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$27

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("Uint32")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$76	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$76, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x04)
$C$DW$77	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$77, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$26

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

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AL")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("AH")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg1]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("PL")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg2]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("PH")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg3]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("SP")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg20]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("XT")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg21]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("T")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg22]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("ST0")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg23]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("ST1")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg24]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("PC")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg25]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("RPC")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg26]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("FP")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg28]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("DP")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg29]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("SXM")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg30]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("PM")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg31]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("OVM")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x20]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("PAGE0")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x21]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("AMODE")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x22]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("EALLOW")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("INTM")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x23]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("IFR")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x24]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("IER")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x25]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("V")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x26]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("VOL")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("AR0")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg4]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("XAR0")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg5]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("AR1")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg6]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("XAR1")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg7]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("AR2")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg8]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("XAR2")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg9]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("AR3")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg10]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("XAR3")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg11]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("AR4")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("XAR4")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg13]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("AR5")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg14]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("XAR5")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg15]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("AR6")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg16]

$C$DW$116	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$116, DW_AT_name("XAR6")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg17]

$C$DW$117	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$117, DW_AT_name("AR7")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg18]

$C$DW$118	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$118, DW_AT_name("XAR7")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


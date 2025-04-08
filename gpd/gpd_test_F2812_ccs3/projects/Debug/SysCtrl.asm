;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:53 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("CsmPwl")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_CsmPwl")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("FlashRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_FlashRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("CpuTimer0Regs")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_CpuTimer0Regs")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("SysCtrlRegs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SysCtrlRegs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("DevEmuRegs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_DevEmuRegs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{10040364-50C4-48DA-8DF5-257A334311A8} 
	.sect	".text"
	.clink
	.global	_InitSysCtrl

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("InitSysCtrl")
	.dwattr $C$DW$6, DW_AT_low_pc(_InitSysCtrl)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_InitSysCtrl")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 31,column 1,is_stmt,address _InitSysCtrl,isa 0

	.dwfde $C$DW$CIE, _InitSysCtrl
;----------------------------------------------------------------------
;  30 | void InitSysCtrl(void)                                                 
;  32 | volatile Uint16 i;                                      // General purp
;     | ose Uint16                                                             
;  33 | volatile int16 dummy;                                   // General purp
;     | ose volatile int16                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitSysCtrl                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_InitSysCtrl:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("i")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -1]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("dummy")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -2]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 35,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | asm(" EALLOW");                                         // Enable EALLO
;     | W protected register access                                            
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 38,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  38 | DevEmuRegs.PROTSTART = 0x0100;          // Write default value to prote
;     | ction start register                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DevEmuRegs+4     ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DevEmuRegs)+4,#256 ; [CPU_ALU] |38| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 39,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  39 | DevEmuRegs.PROTRANGE = 0x00FF;          // Write default value to prote
;     | ction range register                                                   
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_DevEmuRegs)+5,#255,UNC ; [CPU_ALU] |39| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 52,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | dummy = CsmPwl.PSWD0;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOVW      DP,#_CsmPwl           ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CsmPwl) ; [CPU_ALU] |52| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |52| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 53,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | dummy = CsmPwl.PSWD1;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+1 ; [CPU_ALU] |53| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |53| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | dummy = CsmPwl.PSWD2;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+2 ; [CPU_ALU] |54| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |54| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | dummy = CsmPwl.PSWD3;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+3 ; [CPU_ALU] |55| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |55| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | dummy = CsmPwl.PSWD4;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+4 ; [CPU_ALU] |56| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |56| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | dummy = CsmPwl.PSWD5;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+5 ; [CPU_ALU] |57| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |57| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | dummy = CsmPwl.PSWD6;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+6 ; [CPU_ALU] |58| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |58| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | dummy = CsmPwl.PSWD7;                           // Dummy read of PWL lo
;     | cations                                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CsmPwl)+7 ; [CPU_ALU] |59| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |59| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 62,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | SysCtrlRegs.WDCR = 0x00E8;                                             
;----------------------------------------------------------------------
        MOVW      DP,#_SysCtrlRegs+25   ; [CPU_ARAU] 
        MOVB      @$BLOCKED(_SysCtrlRegs)+25,#232,UNC ; [CPU_ALU] |62| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | SysCtrlRegs.SCSR = 0x0000;                                             
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_SysCtrlRegs)+18,#0 ; [CPU_ALU] |72| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | SysCtrlRegs.PLLCR.all = 0x0008;                 // PLLx8; 120MHZ = SYSC
;     | LKOUT = CLKIN                                                          
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SysCtrlRegs)+17,#8,UNC ; [CPU_ALU] |84| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 89,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | for(i=0; i<510; i++)                                                   
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_ALU] |89| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 89,column 11,is_stmt,isa 0
        CMP       *-SP[1],#510          ; [CPU_ALU] |89| 
        B         $C$L2,HIS             ; [CPU_ALU] |89| 
        ; branchcc occurs ; [] |89| 
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 91,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | asm(" RPT #255 || NOP");                        // 257 cycles          
;----------------------------------------------------------------------
 RPT #255 || NOP
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 92,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | SysCtrlRegs.WDKEY = 0x0055;                     // Service the watchdog
;     |  while waiting                                                         
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SysCtrlRegs)+21,#85,UNC ; [CPU_ALU] |92| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 93,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | SysCtrlRegs.WDKEY = 0x00AA;                     //   in case the user e
;     | nabled it.                                                             
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SysCtrlRegs)+21,#170,UNC ; [CPU_ALU] |93| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 89,column 18,is_stmt,isa 0
        INC       *-SP[1]               ; [CPU_ALU] |89| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 89,column 11,is_stmt,isa 0
        CMP       *-SP[1],#510          ; [CPU_ALU] |89| 
        B         $C$L1,LO              ; [CPU_ALU] |89| 
        ; branchcc occurs ; [] |89| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | SysCtrlRegs.HISPCP.all = 0x0000;                // Hi-speed periph cloc
;     | k prescaler, HSPCLK=SYSCLKOUT/1                                        
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_SysCtrlRegs)+10,#0 ; [CPU_ALU] |97| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | SysCtrlRegs.LOSPCP.all = 0x0002;                // Lo-speed periph cloc
;     | k prescaler, LSPCLK=SYSCLKOUT/4                                        
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SysCtrlRegs)+11,#2,UNC ; [CPU_ALU] |98| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 100,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | SysCtrlRegs.PCLKCR.bit.ECANENCLK = 1;   // SYSCLK to CAN enabled       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x4000 ; [CPU_ALU] |100| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 101,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | SysCtrlRegs.PCLKCR.bit.MCBSPENCLK = 1;  // LSPCLK to McBSP enabled     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x1000 ; [CPU_ALU] |101| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | SysCtrlRegs.PCLKCR.bit.SCIBENCLK = 1;   // LSPCLK to SCIB enabled      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0800 ; [CPU_ALU] |102| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | SysCtrlRegs.PCLKCR.bit.SCIAENCLK = 1;   // LSPCLK to SCIA enabled      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0400 ; [CPU_ALU] |103| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | SysCtrlRegs.PCLKCR.bit.SPIENCLK = 1;    // LSPCLK to SPI enabled       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0100 ; [CPU_ALU] |104| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | SysCtrlRegs.PCLKCR.bit.ADCENCLK = 1;    // HSPCLK to ADC enabled       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0008 ; [CPU_ALU] |105| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | SysCtrlRegs.PCLKCR.bit.EVBENCLK = 1;    // HSPCLK to EVB enabled       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0002 ; [CPU_ALU] |106| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | SysCtrlRegs.PCLKCR.bit.EVAENCLK = 1;    // HSPCLK to EVA enabled       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SysCtrlRegs)+12,#0x0001 ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 110,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | SysCtrlRegs.LPMCR0.all = 0x00FC;                // LPMCR0 set to defaul
;     | t value                                                                
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_SysCtrlRegs)+14,#252,UNC ; [CPU_ALU] |110| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 111,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | SysCtrlRegs.LPMCR1.all = 0x0000;                // LPMCR1 set to defaul
;     | t value                                                                
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_SysCtrlRegs)+15,#0 ; [CPU_ALU] |111| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 114,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 114 | CpuTimer0Regs.TCR.bit.TSS = 1;                  // Stop Timer          
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer0Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer0Regs)+4,#0x0010 ; [CPU_ALU] |114| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 115,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | CpuTimer0Regs.PRD.all = 3000000;//11400000; //60000;
;     |  // Configure timer period for 1mS := 60,000/60,000,000                
;----------------------------------------------------------------------
        MOVL      XAR4,#3000000         ; [CPU_ARAU] |115| 
        MOVL      @$BLOCKED(_CpuTimer0Regs)+2,XAR4 ; [CPU_ALU] |115| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 116,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | CpuTimer0Regs.TPR.bit.TDDR = 0;                 // TCLK = SYSCLKOUT/2 =
;     |  120,000,000/2 = 60,000,000                                            
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer0Regs)+6,#0xff00 ; [CPU_ALU] |116| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 117,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | CpuTimer0Regs.TCR.bit.FREE = 1;                 // Free Running Timer  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer0Regs)+4,#0x0800 ; [CPU_ALU] |117| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | CpuTimer0Regs.TCR.bit.TRB = 1;                  // CPU Timer Reload    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer0Regs)+4,#0x0020 ; [CPU_ALU] |118| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 119,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | CpuTimer0Regs.TCR.bit.TIE = 1;                  // Enable Timer0 Interr
;     | upts                                                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer0Regs)+4,#0x4000 ; [CPU_ALU] |119| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | CpuTimer0Regs.TCR.bit.TSS = 0;                  // Start Timer0        
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer0Regs)+4,#0xffef ; [CPU_ALU] |120| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 124,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | asm(" EDIS");                                           // Disable EALL
;     | OW protected register access                                           
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 126,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | } //end InitSysCtrl()                                                  
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	"secureRamFuncs"
	.clink
	.global	_InitFlash

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("InitFlash")
	.dwattr $C$DW$10, DW_AT_low_pc(_InitFlash)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_InitFlash")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 144,column 1,is_stmt,address _InitFlash,isa 0

	.dwfde $C$DW$CIE, _InitFlash
;----------------------------------------------------------------------
; 143 | void InitFlash(void)                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitFlash                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitFlash:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 145,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 145 | asm(" EALLOW");
;     |          // Enable EALLOW protected register access                    
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 146,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | FlashRegs.FPWR.bit.PWR = 3;
;     |  // Pump and bank set to active mode                                   
;----------------------------------------------------------------------
        MOVW      DP,#_FlashRegs+2      ; [CPU_ARAU] 
        OR        @$BLOCKED(_FlashRegs)+2,#0x0003 ; [CPU_ALU] |146| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 147,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | FlashRegs.FSTATUS.bit.V3STAT = 1;                               // Clea
;     | r the 3VSTAT bit                                                       
;----------------------------------------------------------------------
        OR        @$BLOCKED(_FlashRegs)+3,#0x0100 ; [CPU_ALU] |147| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 148,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | FlashRegs.FSTDBYWAIT.bit.STDBYWAIT = 0x01FF;    // Sleep to standby tra
;     | nsition cycles                                                         
;----------------------------------------------------------------------
        OR        @$BLOCKED(_FlashRegs)+4,#0x01ff ; [CPU_ALU] |148| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | FlashRegs.FACTIVEWAIT.bit.ACTIVEWAIT = 0x01FF;  // Standby to active tr
;     | ansition cycles                                                        
;----------------------------------------------------------------------
        OR        @$BLOCKED(_FlashRegs)+5,#0x01ff ; [CPU_ALU] |149| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | FlashRegs.FBANKWAIT.bit.RANDWAIT = 5;                   // Random acces
;     | s waitstates                                                           
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_FlashRegs)+6,#0xfff0 ; [CPU_ALU] |150| 
        ORB       AL,#0x05              ; [CPU_ALU] |150| 
        MOV       @$BLOCKED(_FlashRegs)+6,AL ; [CPU_ALU] |150| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 151,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | FlashRegs.FBANKWAIT.bit.PAGEWAIT = 5;                   // Paged access
;     |  waitstates                                                            
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_FlashRegs)+6,#0xf0ff ; [CPU_ALU] |151| 
        OR        AL,#0x0500            ; [CPU_ALU] |151| 
        MOV       @$BLOCKED(_FlashRegs)+6,AL ; [CPU_ALU] |151| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 152,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | FlashRegs.FOTPWAIT.bit.OTPWAIT = 8;                             // OTP
;     | waitstates                                                             
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_FlashRegs)+7,#0xffe0 ; [CPU_ALU] |152| 
        ORB       AL,#0x08              ; [CPU_ALU] |152| 
        MOV       @$BLOCKED(_FlashRegs)+7,AL ; [CPU_ALU] |152| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 153,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | FlashRegs.FOPT.bit.ENPIPE = 1;                                  // Enab
;     | le the flash pipeline                                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_FlashRegs),#0x0001 ; [CPU_ALU] |153| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 154,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | asm(" EDIS");
;     |          // Disable EALLOW protected register access                   
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 159,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | asm(" RPT #6 || NOP");                                                 
;----------------------------------------------------------------------
 RPT #6 || NOP
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c",line 161,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | } //end of InitFlash()                                                 
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/SysCtrl.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xa1)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_CsmPwl
	.global	_FlashRegs
	.global	_CpuTimer0Regs
	.global	_SysCtrlRegs
	.global	_DevEmuRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$12, DW_AT_name("TIM")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$13, DW_AT_name("PRD")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$14, DW_AT_name("TCR")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_name("rsvd1")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$16, DW_AT_name("TPR")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$17, DW_AT_name("TPRH")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20

$C$DW$18	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)

$C$DW$T$72	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$18)


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("CSM_PWL")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_name("PSWD0")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_PSWD0")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_name("PSWD1")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_PSWD1")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_name("PSWD2")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_PSWD2")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_name("PSWD3")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_PSWD3")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("PSWD4")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_PSWD4")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("PSWD5")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_PSWD5")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("PSWD6")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_PSWD6")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("PSWD7")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_PSWD7")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21

$C$DW$27	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$21)

$C$DW$T$73	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$27)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("DEVICECNF_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("rsvd1")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$28, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$28, DW_AT_bit_size(0x03)
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("VMAPS")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_VMAPS")
	.dwattr $C$DW$29, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$29, DW_AT_bit_size(0x01)
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("rsvd2")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$30, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$30, DW_AT_bit_size(0x01)
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("XRSn")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_XRSn")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$31, DW_AT_bit_size(0x01)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("rsvd3")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$32, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$32, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("rsvd4")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$33, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$33, DW_AT_bit_size(0x03)
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("ENPROT")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ENPROT")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$34, DW_AT_bit_size(0x01)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("rsvd5")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$35, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$35, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("DEVICECNF_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$36, DW_AT_name("all")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_name("bit")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("DEVICEID_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("REVID")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_REVID")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$38, DW_AT_bit_size(0x10)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("DEVICEID_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("all")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$40, DW_AT_name("bit")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("DEV_EMU_REGS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0xd0)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_name("DEVICECNF")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_DEVICECNF")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$42, DW_AT_name("PARTID")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_PARTID")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$43, DW_AT_name("DEVICEID")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_DEVICEID")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("PROTSTART")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_PROTSTART")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("PROTRANGE")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_PROTRANGE")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_name("rsvd2")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28

$C$DW$47	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)

$C$DW$T$74	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$47)


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("FACTIVEWAIT_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("ACTIVEWAIT")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_ACTIVEWAIT")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$48, DW_AT_bit_size(0x09)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("rsvd")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$49, DW_AT_bit_size(0x07)
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("FACTIVEWAIT_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("all")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$51, DW_AT_name("bit")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("FBANKWAIT_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("RANDWAIT")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_RANDWAIT")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$52, DW_AT_bit_size(0x04)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("rsvd1")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$53, DW_AT_bit_size(0x04)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("PAGEWAIT")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_PAGEWAIT")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$54, DW_AT_bit_size(0x04)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("rsvd2")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$55, DW_AT_bit_size(0x04)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("FBANKWAIT_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("all")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$57, DW_AT_name("bit")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("FLASH_REGS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x08)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$58, DW_AT_name("FOPT")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_FOPT")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("rsvd1")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$60, DW_AT_name("FPWR")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_FPWR")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$61, DW_AT_name("FSTATUS")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_FSTATUS")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$62, DW_AT_name("FSTDBYWAIT")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_FSTDBYWAIT")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$63, DW_AT_name("FACTIVEWAIT")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_FACTIVEWAIT")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$64, DW_AT_name("FBANKWAIT")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_FBANKWAIT")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$65, DW_AT_name("FOTPWAIT")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_FOTPWAIT")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33

$C$DW$66	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$33)

$C$DW$T$79	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$66)


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("FOPT_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("ENPIPE")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ENPIPE")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("rsvd")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$68, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("FOPT_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("all")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$70, DW_AT_name("bit")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("FOTPWAIT_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("OTPWAIT")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_OTPWAIT")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$71, DW_AT_bit_size(0x05)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("rsvd")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$72, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("FOTPWAIT_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("all")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$74, DW_AT_name("bit")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("FPWR_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("PWR")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_PWR")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$75, DW_AT_bit_size(0x02)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("rsvd")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$76, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("FPWR_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("all")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$78, DW_AT_name("bit")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("FSTATUS_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("PWRS")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_PWRS")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$79, DW_AT_bit_size(0x02)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("STDBYWAITS")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_STDBYWAITS")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("ACTIVEWAITS")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_ACTIVEWAITS")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("rsvd1")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$82, DW_AT_bit_size(0x04)
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("V3STAT")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_V3STAT")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("rsvd2")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$84, DW_AT_bit_size(0x07)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("FSTATUS_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("all")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$86, DW_AT_name("bit")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("FSTDBYWAIT_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("STDBYWAIT")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_STDBYWAIT")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$87, DW_AT_bit_size(0x09)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("rsvd")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$88, DW_AT_bit_size(0x07)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("FSTDBYWAIT_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("all")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$90, DW_AT_name("bit")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("HISPCP_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("HSPCLK")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_HSPCLK")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$91, DW_AT_bit_size(0x03)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("rsvd1")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$92, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("HISPCP_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("all")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$94, DW_AT_name("bit")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("LOSPCP_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("LSPCLK")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_LSPCLK")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$95, DW_AT_bit_size(0x03)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("rsvd1")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("LOSPCP_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("all")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$98, DW_AT_name("bit")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("LPMCR0_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("LPM")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_LPM")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$99, DW_AT_bit_size(0x02)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("QUALSTDBY")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_QUALSTDBY")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$100, DW_AT_bit_size(0x06)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("rsvd1")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$101, DW_AT_bit_size(0x08)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("LPMCR0_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("all")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$103, DW_AT_name("bit")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("LPMCR1_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("XINT1")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_XINT1")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("XNMI")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_XNMI")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("WDINT")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_WDINT")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("T1CTRIP")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_T1CTRIP")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("T2CTRIP")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_T2CTRIP")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("T3CTRIP")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_T3CTRIP")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("T4CTRIP")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_T4CTRIP")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("C1TRIP")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_C1TRIP")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("C2TRIP")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_C2TRIP")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("C3TRIP")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_C3TRIP")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("C4TRIP")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_C4TRIP")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("C5TRIP")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_C5TRIP")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("C6TRIP")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_C6TRIP")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("SCIRXA")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_SCIRXA")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("SCIRXB")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_SCIRXB")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("CANRX")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_CANRX")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("LPMCR1_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("all")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$121, DW_AT_name("bit")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("PARTID_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("PARTNO")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_PARTNO")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$122, DW_AT_bit_size(0x08)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("PARTTYPE")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_PARTTYPE")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$123, DW_AT_bit_size(0x08)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("PARTID_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("all")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$125, DW_AT_name("bit")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PCLKCR_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("EVAENCLK")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_EVAENCLK")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("EVBENCLK")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_EVBENCLK")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("rsvd1")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("ADCENCLK")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_ADCENCLK")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("rsvd2")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$130, DW_AT_bit_size(0x04)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("SPIENCLK")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_SPIENCLK")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("rsvd3")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("SCIAENCLK")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_SCIAENCLK")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("SCIBENCLK")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_SCIBENCLK")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("MCBSPENCLK")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_MCBSPENCLK")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("rsvd4")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("ECANENCLK")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_ECANENCLK")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("PCLKCR_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("all")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$139, DW_AT_name("bit")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("PLLCR_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("DIV")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_DIV")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$140, DW_AT_bit_size(0x04)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("rsvd1")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$141, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("PLLCR_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("all")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$143, DW_AT_name("bit")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("PRD_GROUP")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$144, DW_AT_name("all")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$145, DW_AT_name("half")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("LSW")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("MSW")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("SYS_CTRL_REGS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x20)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$148, DW_AT_name("rsvd1")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$149, DW_AT_name("HISPCP")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_HISPCP")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$150, DW_AT_name("LOSPCP")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_LOSPCP")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$151, DW_AT_name("PCLKCR")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_PCLKCR")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("rsvd2")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$153, DW_AT_name("LPMCR0")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_LPMCR0")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$154, DW_AT_name("LPMCR1")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_LPMCR1")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("rsvd3")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$156, DW_AT_name("PLLCR")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_PLLCR")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("SCSR")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_SCSR")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("WDCNTR")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_WDCNTR")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("rsvd4")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("WDKEY")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_WDKEY")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$161, DW_AT_name("rsvd5")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("WDCR")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_WDCR")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$163, DW_AT_name("rsvd6")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63

$C$DW$164	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$63)

$C$DW$T$98	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$164)


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("rsvd1")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$165, DW_AT_bit_size(0x04)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("TSS")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("TRB")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("rsvd2")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$168, DW_AT_bit_size(0x04)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("SOFT")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("FREE")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("rsvd3")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$171, DW_AT_bit_size(0x02)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("TIE")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("TIF")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("all")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$175, DW_AT_name("bit")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("TIM_GROUP")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$176, DW_AT_name("all")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$177, DW_AT_name("half")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("LSW")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("MSW")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("TDDRH")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$180, DW_AT_bit_size(0x08)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("PSCH")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$181, DW_AT_bit_size(0x08)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("all")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$183, DW_AT_name("bit")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("TDDR")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$184, DW_AT_bit_size(0x08)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("PSC")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$185, DW_AT_bit_size(0x08)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("all")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$187, DW_AT_name("bit")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71

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

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("int16")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)

$C$DW$188	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$104)

$C$DW$T$105	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$188)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$189	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)

$C$DW$T$106	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$189)


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0xca)
$C$DW$190	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$190, DW_AT_upper_bound(0xc9)

	.dwendtag $C$DW$T$27


$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x0a)
$C$DW$191	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$191, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x03)
$C$DW$192	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$192, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x06)
$C$DW$193	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$193, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$62

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

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("AL")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg0]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("AH")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg1]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("PL")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg2]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("PH")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg3]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("SP")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg20]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("XT")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg21]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("T")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg22]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("ST0")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg23]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("ST1")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg24]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("PC")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg25]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("RPC")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg26]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("FP")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg28]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("DP")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg29]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("SXM")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg30]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("PM")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg31]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("OVM")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x20]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("PAGE0")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x21]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("AMODE")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x22]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("EALLOW")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("INTM")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x23]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("IFR")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x24]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("IER")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x25]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("V")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x26]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("VOL")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("AR0")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg4]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("XAR0")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg5]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("AR1")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg6]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("XAR1")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg7]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("AR2")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg8]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("XAR2")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg9]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("AR3")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg10]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("XAR3")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg11]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("AR4")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg12]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("XAR4")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg13]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("AR5")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg14]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("XAR5")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg15]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("AR6")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg16]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("XAR6")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg17]

$C$DW$233	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$233, DW_AT_name("AR7")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg18]

$C$DW$234	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$234, DW_AT_name("XAR7")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


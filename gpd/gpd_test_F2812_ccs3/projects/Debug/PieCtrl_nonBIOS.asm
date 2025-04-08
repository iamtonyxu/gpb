;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Tue Sep 16 13:11:50 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("PieCtrl_nonBIOS.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$1

DW$5	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$5, DW_AT_type(*DW$T$43)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("PieVectTableInit"), DW_AT_symbol_name("_PieVectTableInit")
	.dwattr DW$6, DW_AT_type(*DW$T$44)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("PieVectTable"), DW_AT_symbol_name("_PieVectTable")
	.dwattr DW$7, DW_AT_type(*DW$T$32)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI3322 
	.sect	".text"
	.global	_InitPieCtrl

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("InitPieCtrl"), DW_AT_symbol_name("_InitPieCtrl")
	.dwattr DW$8, DW_AT_low_pc(_InitPieCtrl)
	.dwattr DW$8, DW_AT_high_pc(0x00)
	.dwattr DW$8, DW_AT_begin_file("PieCtrl_nonBIOS.c")
	.dwattr DW$8, DW_AT_begin_line(0x19)
	.dwattr DW$8, DW_AT_begin_column(0x06)
	.dwpsn	"PieCtrl_nonBIOS.c",26,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  25 | void InitPieCtrl(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitPieCtrl                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitPieCtrl:
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"PieCtrl_nonBIOS.c",28,2
;----------------------------------------------------------------------
;  28 | asm(" SETC INTM, DBGM");                        // Disable global inter
;     | rupts                                                                  
;----------------------------------------------------------------------
 SETC INTM, DBGM
	.dwpsn	"PieCtrl_nonBIOS.c",31,2
;----------------------------------------------------------------------
;  31 | PieCtrlRegs.PIECRTL.bit.ENPIE = 0;      // Disable the PIE             
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs
        AND       @_PieCtrlRegs,#0xfffe ; |31| 
	.dwpsn	"PieCtrl_nonBIOS.c",32,2
;----------------------------------------------------------------------
;  32 | asm(" EALLOW");                                         // Enable EALLO
;     | W protected register access                                            
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	"PieCtrl_nonBIOS.c",33,2
;----------------------------------------------------------------------
;  33 | memcpy(&PieVectTable, &PieVectTableInit, 256);                         
;----------------------------------------------------------------------
        SPM       #0
        MOVL      XAR5,#_PieVectTableInit ; |33| 
        MOVL      XAR4,#_PieVectTable   ; |33| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |33| 
        ; call occurs [#___memcpy_ff] ; |33| 
	.dwpsn	"PieCtrl_nonBIOS.c",34,2
;----------------------------------------------------------------------
;  34 | asm(" EDIS");                                           // Disable EALL
;     | OW protected register access                                           
;----------------------------------------------------------------------
 EDIS
	.dwpsn	"PieCtrl_nonBIOS.c",37,2
;----------------------------------------------------------------------
;  37 | PieCtrlRegs.PIEIER1.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+2
        MOV       @_PieCtrlRegs+2,#0    ; |37| 
	.dwpsn	"PieCtrl_nonBIOS.c",38,2
;----------------------------------------------------------------------
;  38 | PieCtrlRegs.PIEIER2.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+4,#0    ; |38| 
	.dwpsn	"PieCtrl_nonBIOS.c",39,2
;----------------------------------------------------------------------
;  39 | PieCtrlRegs.PIEIER3.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+6,#0    ; |39| 
	.dwpsn	"PieCtrl_nonBIOS.c",40,2
;----------------------------------------------------------------------
;  40 | PieCtrlRegs.PIEIER4.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+8,#0    ; |40| 
	.dwpsn	"PieCtrl_nonBIOS.c",41,2
;----------------------------------------------------------------------
;  41 | PieCtrlRegs.PIEIER5.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+10,#0   ; |41| 
	.dwpsn	"PieCtrl_nonBIOS.c",42,2
;----------------------------------------------------------------------
;  42 | PieCtrlRegs.PIEIER6.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+12,#0   ; |42| 
	.dwpsn	"PieCtrl_nonBIOS.c",43,2
;----------------------------------------------------------------------
;  43 | PieCtrlRegs.PIEIER7.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+14,#0   ; |43| 
	.dwpsn	"PieCtrl_nonBIOS.c",44,2
;----------------------------------------------------------------------
;  44 | PieCtrlRegs.PIEIER8.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+16,#0   ; |44| 
	.dwpsn	"PieCtrl_nonBIOS.c",45,2
;----------------------------------------------------------------------
;  45 | PieCtrlRegs.PIEIER9.all =  0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+18,#0   ; |45| 
	.dwpsn	"PieCtrl_nonBIOS.c",46,2
;----------------------------------------------------------------------
;  46 | PieCtrlRegs.PIEIER10.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+20,#0   ; |46| 
	.dwpsn	"PieCtrl_nonBIOS.c",47,2
;----------------------------------------------------------------------
;  47 | PieCtrlRegs.PIEIER11.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+22,#0   ; |47| 
	.dwpsn	"PieCtrl_nonBIOS.c",48,2
;----------------------------------------------------------------------
;  48 | PieCtrlRegs.PIEIER12.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+24,#0   ; |48| 
	.dwpsn	"PieCtrl_nonBIOS.c",51,2
;----------------------------------------------------------------------
;  51 | PieCtrlRegs.PIEIFR1.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+3,#0    ; |51| 
	.dwpsn	"PieCtrl_nonBIOS.c",52,2
;----------------------------------------------------------------------
;  52 | PieCtrlRegs.PIEIFR2.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+5,#0    ; |52| 
	.dwpsn	"PieCtrl_nonBIOS.c",53,2
;----------------------------------------------------------------------
;  53 | PieCtrlRegs.PIEIFR3.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+7,#0    ; |53| 
	.dwpsn	"PieCtrl_nonBIOS.c",54,2
;----------------------------------------------------------------------
;  54 | PieCtrlRegs.PIEIFR4.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+9,#0    ; |54| 
	.dwpsn	"PieCtrl_nonBIOS.c",55,2
;----------------------------------------------------------------------
;  55 | PieCtrlRegs.PIEIFR5.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+11,#0   ; |55| 
	.dwpsn	"PieCtrl_nonBIOS.c",56,2
;----------------------------------------------------------------------
;  56 | PieCtrlRegs.PIEIFR6.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+13,#0   ; |56| 
	.dwpsn	"PieCtrl_nonBIOS.c",57,2
;----------------------------------------------------------------------
;  57 | PieCtrlRegs.PIEIFR7.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+15,#0   ; |57| 
	.dwpsn	"PieCtrl_nonBIOS.c",58,2
;----------------------------------------------------------------------
;  58 | PieCtrlRegs.PIEIFR8.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+17,#0   ; |58| 
	.dwpsn	"PieCtrl_nonBIOS.c",59,2
;----------------------------------------------------------------------
;  59 | PieCtrlRegs.PIEIFR9.all  = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+19,#0   ; |59| 
	.dwpsn	"PieCtrl_nonBIOS.c",60,2
;----------------------------------------------------------------------
;  60 | PieCtrlRegs.PIEIFR10.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+21,#0   ; |60| 
	.dwpsn	"PieCtrl_nonBIOS.c",61,2
;----------------------------------------------------------------------
;  61 | PieCtrlRegs.PIEIFR11.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+23,#0   ; |61| 
	.dwpsn	"PieCtrl_nonBIOS.c",62,2
;----------------------------------------------------------------------
;  62 | PieCtrlRegs.PIEIFR12.all = 0x0000;                                     
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+25,#0   ; |62| 
	.dwpsn	"PieCtrl_nonBIOS.c",65,2
;----------------------------------------------------------------------
;  65 | PieCtrlRegs.PIEACK.all = 0xFFFF;                                       
;----------------------------------------------------------------------
        MOV       @_PieCtrlRegs+1,#65535 ; |65| 
	.dwpsn	"PieCtrl_nonBIOS.c",68,2
;----------------------------------------------------------------------
;  68 | PieCtrlRegs.PIECRTL.bit.ENPIE = 1;              // Enable the PIE      
;----------------------------------------------------------------------
        OR        @_PieCtrlRegs,#0x0001 ; |68| 
	.dwpsn	"PieCtrl_nonBIOS.c",70,1
;----------------------------------------------------------------------
;  70 | } //end of InitPieCtrl()                                               
;----------------------------------------------------------------------
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$8, DW_AT_end_file("PieCtrl_nonBIOS.c")
	.dwattr DW$8, DW_AT_end_line(0x46)
	.dwattr DW$8, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$8

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_PieCtrlRegs
	.global	_PieVectTableInit
	.global	_PieVectTable
	.global	___memcpy_ff

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$35


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x16)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$12	.dwtag  DW_TAG_far_type
	.dwattr DW$12, DW_AT_type(*DW$T$28)
DW$T$43	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$43, DW_AT_type(*DW$12)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("PIE_VECT_TABLE")
	.dwattr DW$T$32, DW_AT_byte_size(0x100)
DW$13	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$13, DW_AT_name("PIE1_RESERVED"), DW_AT_symbol_name("_PIE1_RESERVED")
	.dwattr DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$13, DW_AT_accessibility(DW_ACCESS_public)
DW$14	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$14, DW_AT_name("PIE2_RESERVED"), DW_AT_symbol_name("_PIE2_RESERVED")
	.dwattr DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$14, DW_AT_accessibility(DW_ACCESS_public)
DW$15	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$15, DW_AT_name("PIE3_RESERVED"), DW_AT_symbol_name("_PIE3_RESERVED")
	.dwattr DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$15, DW_AT_accessibility(DW_ACCESS_public)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$16, DW_AT_name("PIE4_RESERVED"), DW_AT_symbol_name("_PIE4_RESERVED")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$17, DW_AT_name("PIE5_RESERVED"), DW_AT_symbol_name("_PIE5_RESERVED")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$18, DW_AT_name("PIE6_RESERVED"), DW_AT_symbol_name("_PIE6_RESERVED")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$19, DW_AT_name("PIE7_RESERVED"), DW_AT_symbol_name("_PIE7_RESERVED")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$20, DW_AT_name("PIE8_RESERVED"), DW_AT_symbol_name("_PIE8_RESERVED")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$21, DW_AT_name("PIE9_RESERVED"), DW_AT_symbol_name("_PIE9_RESERVED")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$22, DW_AT_name("PIE10_RESERVED"), DW_AT_symbol_name("_PIE10_RESERVED")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$23, DW_AT_name("PIE11_RESERVED"), DW_AT_symbol_name("_PIE11_RESERVED")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$24, DW_AT_name("PIE12_RESERVED"), DW_AT_symbol_name("_PIE12_RESERVED")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$25, DW_AT_name("PIE13_RESERVED"), DW_AT_symbol_name("_PIE13_RESERVED")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$26, DW_AT_name("XINT13"), DW_AT_symbol_name("_XINT13")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$27, DW_AT_name("TINT2"), DW_AT_symbol_name("_TINT2")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$28, DW_AT_name("DATALOG"), DW_AT_symbol_name("_DATALOG")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$29, DW_AT_name("RTOSINT"), DW_AT_symbol_name("_RTOSINT")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$30, DW_AT_name("EMUINT"), DW_AT_symbol_name("_EMUINT")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$31, DW_AT_name("XNMI"), DW_AT_symbol_name("_XNMI")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$32, DW_AT_name("ILLEGAL"), DW_AT_symbol_name("_ILLEGAL")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$33, DW_AT_name("USER1"), DW_AT_symbol_name("_USER1")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$34, DW_AT_name("USER2"), DW_AT_symbol_name("_USER2")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$35, DW_AT_name("USER3"), DW_AT_symbol_name("_USER3")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$36, DW_AT_name("USER4"), DW_AT_symbol_name("_USER4")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$37, DW_AT_name("USER5"), DW_AT_symbol_name("_USER5")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$38, DW_AT_name("USER6"), DW_AT_symbol_name("_USER6")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$39, DW_AT_name("USER7"), DW_AT_symbol_name("_USER7")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$40, DW_AT_name("USER8"), DW_AT_symbol_name("_USER8")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$41, DW_AT_name("USER9"), DW_AT_symbol_name("_USER9")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$42, DW_AT_name("USER10"), DW_AT_symbol_name("_USER10")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$43, DW_AT_name("USER11"), DW_AT_symbol_name("_USER11")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$44, DW_AT_name("USER12"), DW_AT_symbol_name("_USER12")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$45, DW_AT_name("PDPINTA"), DW_AT_symbol_name("_PDPINTA")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$46, DW_AT_name("PDPINTB"), DW_AT_symbol_name("_PDPINTB")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$47, DW_AT_name("rsvd1_3"), DW_AT_symbol_name("_rsvd1_3")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$48, DW_AT_name("XINT1"), DW_AT_symbol_name("_XINT1")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$49, DW_AT_name("XINT2"), DW_AT_symbol_name("_XINT2")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$50, DW_AT_name("ADCINT"), DW_AT_symbol_name("_ADCINT")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$51, DW_AT_name("TINT0"), DW_AT_symbol_name("_TINT0")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$52, DW_AT_name("WAKEINT"), DW_AT_symbol_name("_WAKEINT")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$53, DW_AT_name("CMP1INT"), DW_AT_symbol_name("_CMP1INT")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$54, DW_AT_name("CMP2INT"), DW_AT_symbol_name("_CMP2INT")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$55, DW_AT_name("CMP3INT"), DW_AT_symbol_name("_CMP3INT")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$56, DW_AT_name("T1PINT"), DW_AT_symbol_name("_T1PINT")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$57, DW_AT_name("T1CINT"), DW_AT_symbol_name("_T1CINT")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$58, DW_AT_name("T1UFINT"), DW_AT_symbol_name("_T1UFINT")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$59, DW_AT_name("T1OFINT"), DW_AT_symbol_name("_T1OFINT")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$60, DW_AT_name("rsvd2_8"), DW_AT_symbol_name("_rsvd2_8")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$61, DW_AT_name("T2PINT"), DW_AT_symbol_name("_T2PINT")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$62, DW_AT_name("T2CINT"), DW_AT_symbol_name("_T2CINT")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$63, DW_AT_name("T2UFINT"), DW_AT_symbol_name("_T2UFINT")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$64, DW_AT_name("T2OFINT"), DW_AT_symbol_name("_T2OFINT")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$65, DW_AT_name("CAPINT1"), DW_AT_symbol_name("_CAPINT1")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$66, DW_AT_name("CAPINT2"), DW_AT_symbol_name("_CAPINT2")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$67, DW_AT_name("CAPINT3"), DW_AT_symbol_name("_CAPINT3")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$68, DW_AT_name("rsvd3_8"), DW_AT_symbol_name("_rsvd3_8")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$69, DW_AT_name("CMP4INT"), DW_AT_symbol_name("_CMP4INT")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$70, DW_AT_name("CMP5INT"), DW_AT_symbol_name("_CMP5INT")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$71, DW_AT_name("CMP6INT"), DW_AT_symbol_name("_CMP6INT")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$72, DW_AT_name("T3PINT"), DW_AT_symbol_name("_T3PINT")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$73, DW_AT_name("T3CINT"), DW_AT_symbol_name("_T3CINT")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$74, DW_AT_name("T3UFINT"), DW_AT_symbol_name("_T3UFINT")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$75, DW_AT_name("T3OFINT"), DW_AT_symbol_name("_T3OFINT")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$76, DW_AT_name("rsvd4_8"), DW_AT_symbol_name("_rsvd4_8")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$77, DW_AT_name("T4PINT"), DW_AT_symbol_name("_T4PINT")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$78, DW_AT_name("T4CINT"), DW_AT_symbol_name("_T4CINT")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$79, DW_AT_name("T4UFINT"), DW_AT_symbol_name("_T4UFINT")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$80, DW_AT_name("T4OFINT"), DW_AT_symbol_name("_T4OFINT")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$81, DW_AT_name("CAPINT4"), DW_AT_symbol_name("_CAPINT4")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$82, DW_AT_name("CAPINT5"), DW_AT_symbol_name("_CAPINT5")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$83, DW_AT_name("CAPINT6"), DW_AT_symbol_name("_CAPINT6")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$84, DW_AT_name("rsvd5_8"), DW_AT_symbol_name("_rsvd5_8")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$85, DW_AT_name("SPIRXINTA"), DW_AT_symbol_name("_SPIRXINTA")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$86, DW_AT_name("SPITXINTA"), DW_AT_symbol_name("_SPITXINTA")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$87, DW_AT_name("rsvd6_3"), DW_AT_symbol_name("_rsvd6_3")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$88, DW_AT_name("rsvd6_4"), DW_AT_symbol_name("_rsvd6_4")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$89, DW_AT_name("MRINTA"), DW_AT_symbol_name("_MRINTA")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$90, DW_AT_name("MXINTA"), DW_AT_symbol_name("_MXINTA")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$91, DW_AT_name("rsvd6_7"), DW_AT_symbol_name("_rsvd6_7")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$92, DW_AT_name("rsvd6_8"), DW_AT_symbol_name("_rsvd6_8")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$93, DW_AT_name("rsvd7_1"), DW_AT_symbol_name("_rsvd7_1")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$94, DW_AT_name("rsvd7_2"), DW_AT_symbol_name("_rsvd7_2")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$95, DW_AT_name("rsvd7_3"), DW_AT_symbol_name("_rsvd7_3")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$96, DW_AT_name("rsvd7_4"), DW_AT_symbol_name("_rsvd7_4")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$97, DW_AT_name("rsvd7_5"), DW_AT_symbol_name("_rsvd7_5")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$98, DW_AT_name("rsvd7_6"), DW_AT_symbol_name("_rsvd7_6")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$99, DW_AT_name("rsvd7_7"), DW_AT_symbol_name("_rsvd7_7")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$100, DW_AT_name("rsvd7_8"), DW_AT_symbol_name("_rsvd7_8")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$101, DW_AT_name("rsvd8_1"), DW_AT_symbol_name("_rsvd8_1")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$102, DW_AT_name("rsvd8_2"), DW_AT_symbol_name("_rsvd8_2")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$103, DW_AT_name("rsvd8_3"), DW_AT_symbol_name("_rsvd8_3")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$104, DW_AT_name("rsvd8_4"), DW_AT_symbol_name("_rsvd8_4")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$105, DW_AT_name("rsvd8_5"), DW_AT_symbol_name("_rsvd8_5")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$106, DW_AT_name("rsvd8_6"), DW_AT_symbol_name("_rsvd8_6")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$107, DW_AT_name("rsvd8_7"), DW_AT_symbol_name("_rsvd8_7")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$108, DW_AT_name("rsvd8_8"), DW_AT_symbol_name("_rsvd8_8")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$109, DW_AT_name("RXAINT"), DW_AT_symbol_name("_RXAINT")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$110, DW_AT_name("TXAINT"), DW_AT_symbol_name("_TXAINT")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$111, DW_AT_name("RXBINT"), DW_AT_symbol_name("_RXBINT")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$112, DW_AT_name("TXBINT"), DW_AT_symbol_name("_TXBINT")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$113, DW_AT_name("ECAN0INTA"), DW_AT_symbol_name("_ECAN0INTA")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$114, DW_AT_name("ECAN1INTA"), DW_AT_symbol_name("_ECAN1INTA")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$115, DW_AT_name("rsvd9_7"), DW_AT_symbol_name("_rsvd9_7")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$116, DW_AT_name("rsvd9_8"), DW_AT_symbol_name("_rsvd9_8")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$117, DW_AT_name("rsvd10_1"), DW_AT_symbol_name("_rsvd10_1")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$118, DW_AT_name("rsvd10_2"), DW_AT_symbol_name("_rsvd10_2")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$119, DW_AT_name("rsvd10_3"), DW_AT_symbol_name("_rsvd10_3")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$120, DW_AT_name("rsvd10_4"), DW_AT_symbol_name("_rsvd10_4")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$121, DW_AT_name("rsvd10_5"), DW_AT_symbol_name("_rsvd10_5")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$122, DW_AT_name("rsvd10_6"), DW_AT_symbol_name("_rsvd10_6")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$123, DW_AT_name("rsvd10_7"), DW_AT_symbol_name("_rsvd10_7")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$124, DW_AT_name("rsvd10_8"), DW_AT_symbol_name("_rsvd10_8")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$125, DW_AT_name("rsvd11_1"), DW_AT_symbol_name("_rsvd11_1")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$126, DW_AT_name("rsvd11_2"), DW_AT_symbol_name("_rsvd11_2")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$127, DW_AT_name("rsvd11_3"), DW_AT_symbol_name("_rsvd11_3")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$128, DW_AT_name("rsvd11_4"), DW_AT_symbol_name("_rsvd11_4")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$129, DW_AT_name("rsvd11_5"), DW_AT_symbol_name("_rsvd11_5")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$130, DW_AT_name("rsvd11_6"), DW_AT_symbol_name("_rsvd11_6")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$131, DW_AT_name("rsvd11_7"), DW_AT_symbol_name("_rsvd11_7")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$132, DW_AT_name("rsvd11_8"), DW_AT_symbol_name("_rsvd11_8")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$133, DW_AT_name("rsvd12_1"), DW_AT_symbol_name("_rsvd12_1")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$134, DW_AT_name("rsvd12_2"), DW_AT_symbol_name("_rsvd12_2")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$135, DW_AT_name("rsvd12_3"), DW_AT_symbol_name("_rsvd12_3")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$136, DW_AT_name("rsvd12_4"), DW_AT_symbol_name("_rsvd12_4")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$137, DW_AT_name("rsvd12_5"), DW_AT_symbol_name("_rsvd12_5")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$138, DW_AT_name("rsvd12_6"), DW_AT_symbol_name("_rsvd12_6")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$139, DW_AT_name("rsvd12_7"), DW_AT_symbol_name("_rsvd12_7")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$140, DW_AT_name("rsvd12_8"), DW_AT_symbol_name("_rsvd12_8")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32

DW$141	.dwtag  DW_TAG_far_type
	.dwattr DW$141, DW_AT_type(*DW$T$32)
DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr DW$T$44, DW_AT_type(*DW$141)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("PINT"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$142	.dwtag  DW_TAG_far_type
DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr DW$T$33, DW_AT_type(*DW$142)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$28, DW_AT_byte_size(0x1a)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$143, DW_AT_name("PIECRTL"), DW_AT_symbol_name("_PIECRTL")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$144, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$145, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$146, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$147, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$148, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$149, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$150, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$151, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$152, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$153, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$154, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$155, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$156, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$157, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$158, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$159, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$160, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$161, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$162, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$163, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$164, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$165, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$166, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$167, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$168, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28

DW$T$30	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$30, DW_AT_address_class(0x16)

DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$170, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$172, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$174, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$176, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$177, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$178, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$179, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$180, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$181, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$182, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$183, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$184, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$185, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$186, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$187, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$188, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$189, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$190, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$191, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$192, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$193, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$194, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$195, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$196, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$197, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$198, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$199, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$200, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$201, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$202, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$203, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$204, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$205, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$206, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$207, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$208, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$209, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

	.dwattr DW$8, DW_AT_external(0x01)
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

DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$210, DW_AT_location[DW_OP_reg0]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$211, DW_AT_location[DW_OP_reg1]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$212, DW_AT_location[DW_OP_reg2]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$213, DW_AT_location[DW_OP_reg3]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$214, DW_AT_location[DW_OP_reg4]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$215, DW_AT_location[DW_OP_reg5]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$216, DW_AT_location[DW_OP_reg6]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$217, DW_AT_location[DW_OP_reg7]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$218, DW_AT_location[DW_OP_reg8]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$219, DW_AT_location[DW_OP_reg9]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$220, DW_AT_location[DW_OP_reg10]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$221, DW_AT_location[DW_OP_reg11]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$222, DW_AT_location[DW_OP_reg12]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$223, DW_AT_location[DW_OP_reg13]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$224, DW_AT_location[DW_OP_reg14]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$225, DW_AT_location[DW_OP_reg15]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$226, DW_AT_location[DW_OP_reg16]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$227, DW_AT_location[DW_OP_reg17]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$228, DW_AT_location[DW_OP_reg18]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$229, DW_AT_location[DW_OP_reg19]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$230, DW_AT_location[DW_OP_reg20]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$231, DW_AT_location[DW_OP_reg21]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$232, DW_AT_location[DW_OP_reg22]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$233, DW_AT_location[DW_OP_reg23]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$234, DW_AT_location[DW_OP_reg24]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$235, DW_AT_location[DW_OP_reg25]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$236, DW_AT_location[DW_OP_reg26]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$237, DW_AT_location[DW_OP_reg27]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$238, DW_AT_location[DW_OP_reg28]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$239, DW_AT_location[DW_OP_reg29]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$240, DW_AT_location[DW_OP_reg30]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$241, DW_AT_location[DW_OP_reg31]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x20]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x21]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x22]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x23]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x24]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x25]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x26]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x27]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


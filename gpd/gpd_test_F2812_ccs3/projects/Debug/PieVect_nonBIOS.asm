;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Tue Sep 16 13:11:54 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("PieVect_nonBIOS.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("T3CINT_ISR"), DW_AT_symbol_name("_T3CINT_ISR")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("T3UFINT_ISR"), DW_AT_symbol_name("_T3UFINT_ISR")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP6INT_ISR"), DW_AT_symbol_name("_CMP6INT_ISR")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("T3PINT_ISR"), DW_AT_symbol_name("_T3PINT_ISR")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("T4CINT_ISR"), DW_AT_symbol_name("_T4CINT_ISR")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("T4UFINT_ISR"), DW_AT_symbol_name("_T4UFINT_ISR")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("T3OFINT_ISR"), DW_AT_symbol_name("_T3OFINT_ISR")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("T4PINT_ISR"), DW_AT_symbol_name("_T4PINT_ISR")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("T2OFINT_ISR"), DW_AT_symbol_name("_T2OFINT_ISR")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT1_ISR"), DW_AT_symbol_name("_CAPINT1_ISR")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("T2CINT_ISR"), DW_AT_symbol_name("_T2CINT_ISR")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("T2UFINT_ISR"), DW_AT_symbol_name("_T2UFINT_ISR")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP4INT_ISR"), DW_AT_symbol_name("_CMP4INT_ISR")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP5INT_ISR"), DW_AT_symbol_name("_CMP5INT_ISR")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT2_ISR"), DW_AT_symbol_name("_CAPINT2_ISR")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT3_ISR"), DW_AT_symbol_name("_CAPINT3_ISR")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIRXINTB_ISR"), DW_AT_symbol_name("_SCIRXINTB_ISR")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SCITXINTB_ISR"), DW_AT_symbol_name("_SCITXINTB_ISR")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIRXINTA_ISR"), DW_AT_symbol_name("_SCIRXINTA_ISR")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("SCITXINTA_ISR"), DW_AT_symbol_name("_SCITXINTA_ISR")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("PIE_RESERVED"), DW_AT_symbol_name("_PIE_RESERVED")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("rsvd_ISR"), DW_AT_symbol_name("_rsvd_ISR")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("ECAN0INTA_ISR"), DW_AT_symbol_name("_ECAN0INTA_ISR")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("ECAN1INTA_ISR"), DW_AT_symbol_name("_ECAN1INTA_ISR")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT5_ISR"), DW_AT_symbol_name("_CAPINT5_ISR")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT6_ISR"), DW_AT_symbol_name("_CAPINT6_ISR")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("T4OFINT_ISR"), DW_AT_symbol_name("_T4OFINT_ISR")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT4_ISR"), DW_AT_symbol_name("_CAPINT4_ISR")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("MRINTA_ISR"), DW_AT_symbol_name("_MRINTA_ISR")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("MXINTA_ISR"), DW_AT_symbol_name("_MXINTA_ISR")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("SPIRXINTA_ISR"), DW_AT_symbol_name("_SPIRXINTA_ISR")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("SPITXINTA_ISR"), DW_AT_symbol_name("_SPITXINTA_ISR")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("USER5_ISR"), DW_AT_symbol_name("_USER5_ISR")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("USER6_ISR"), DW_AT_symbol_name("_USER6_ISR")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("USER3_ISR"), DW_AT_symbol_name("_USER3_ISR")
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("USER4_ISR"), DW_AT_symbol_name("_USER4_ISR")
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USER9_ISR"), DW_AT_symbol_name("_USER9_ISR")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("USER10_ISR"), DW_AT_symbol_name("_USER10_ISR")
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("USER7_ISR"), DW_AT_symbol_name("_USER7_ISR")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("USER8_ISR"), DW_AT_symbol_name("_USER8_ISR")
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("RTOSINT_ISR"), DW_AT_symbol_name("_RTOSINT_ISR")
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("EMUINT_ISR"), DW_AT_symbol_name("_EMUINT_ISR")
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("INT14_ISR"), DW_AT_symbol_name("_INT14_ISR")
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("DATALOG_ISR"), DW_AT_symbol_name("_DATALOG_ISR")
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("USER1_ISR"), DW_AT_symbol_name("_USER1_ISR")
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("USER2_ISR"), DW_AT_symbol_name("_USER2_ISR")
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("NMI_ISR"), DW_AT_symbol_name("_NMI_ISR")
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("ILLEGAL_ISR"), DW_AT_symbol_name("_ILLEGAL_ISR")
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP2INT_ISR"), DW_AT_symbol_name("_CMP2INT_ISR")
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP3INT_ISR"), DW_AT_symbol_name("_CMP3INT_ISR")
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("WAKEINT_ISR"), DW_AT_symbol_name("_WAKEINT_ISR")
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP1INT_ISR"), DW_AT_symbol_name("_CMP1INT_ISR")
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("T1UFINT_ISR"), DW_AT_symbol_name("_T1UFINT_ISR")
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("T2PINT_ISR"), DW_AT_symbol_name("_T2PINT_ISR")
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("T1PINT_ISR"), DW_AT_symbol_name("_T1PINT_ISR")
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("T1CINT_ISR"), DW_AT_symbol_name("_T1CINT_ISR")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("PDPINTA_ISR"), DW_AT_symbol_name("_PDPINTA_ISR")
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("PDPINTB_ISR"), DW_AT_symbol_name("_PDPINTB_ISR")
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("USER11_ISR"), DW_AT_symbol_name("_USER11_ISR")
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("USER12_ISR"), DW_AT_symbol_name("_USER12_ISR")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("ADCINT_ISR"), DW_AT_symbol_name("_ADCINT_ISR")
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("TINT0_ISR"), DW_AT_symbol_name("_TINT0_ISR")
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("XINT1_ISR"), DW_AT_symbol_name("_XINT1_ISR")
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("XINT2_ISR"), DW_AT_symbol_name("_XINT2_ISR")
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("INT13_ISR"), DW_AT_symbol_name("_INT13_ISR")
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
	.global	_PieVectTableInit
	.sect	".econst"
	.align	2
_PieVectTableInit:
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE1_RESERVED @ 0
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE2_RESERVED @ 32
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE3_RESERVED @ 64
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE4_RESERVED @ 96
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE5_RESERVED @ 128
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE6_RESERVED @ 160
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE7_RESERVED @ 192
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE8_RESERVED @ 224
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE9_RESERVED @ 256
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE10_RESERVED @ 288
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE11_RESERVED @ 320
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE12_RESERVED @ 352
	.field  	_PIE_RESERVED,32		; _PieVectTableInit._PIE13_RESERVED @ 384
	.field  	_INT13_ISR,32		; _PieVectTableInit._XINT13 @ 416
	.field  	_INT14_ISR,32		; _PieVectTableInit._TINT2 @ 448
	.field  	_DATALOG_ISR,32		; _PieVectTableInit._DATALOG @ 480
	.field  	_RTOSINT_ISR,32		; _PieVectTableInit._RTOSINT @ 512
	.field  	_EMUINT_ISR,32		; _PieVectTableInit._EMUINT @ 544
	.field  	_NMI_ISR,32		; _PieVectTableInit._XNMI @ 576
	.field  	_ILLEGAL_ISR,32		; _PieVectTableInit._ILLEGAL @ 608
	.field  	_USER1_ISR,32		; _PieVectTableInit._USER1 @ 640
	.field  	_USER2_ISR,32		; _PieVectTableInit._USER2 @ 672
	.field  	_USER3_ISR,32		; _PieVectTableInit._USER3 @ 704
	.field  	_USER4_ISR,32		; _PieVectTableInit._USER4 @ 736
	.field  	_USER5_ISR,32		; _PieVectTableInit._USER5 @ 768
	.field  	_USER6_ISR,32		; _PieVectTableInit._USER6 @ 800
	.field  	_USER7_ISR,32		; _PieVectTableInit._USER7 @ 832
	.field  	_USER8_ISR,32		; _PieVectTableInit._USER8 @ 864
	.field  	_USER9_ISR,32		; _PieVectTableInit._USER9 @ 896
	.field  	_USER10_ISR,32		; _PieVectTableInit._USER10 @ 928
	.field  	_USER11_ISR,32		; _PieVectTableInit._USER11 @ 960
	.field  	_USER12_ISR,32		; _PieVectTableInit._USER12 @ 992
	.field  	_PDPINTA_ISR,32		; _PieVectTableInit._PDPINTA @ 1024
	.field  	_PDPINTB_ISR,32		; _PieVectTableInit._PDPINTB @ 1056
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd1_3 @ 1088
	.field  	_XINT1_ISR,32		; _PieVectTableInit._XINT1 @ 1120
	.field  	_XINT2_ISR,32		; _PieVectTableInit._XINT2 @ 1152
	.field  	_ADCINT_ISR,32		; _PieVectTableInit._ADCINT @ 1184
	.field  	_TINT0_ISR,32		; _PieVectTableInit._TINT0 @ 1216
	.field  	_WAKEINT_ISR,32		; _PieVectTableInit._WAKEINT @ 1248
	.field  	_CMP1INT_ISR,32		; _PieVectTableInit._CMP1INT @ 1280
	.field  	_CMP2INT_ISR,32		; _PieVectTableInit._CMP2INT @ 1312
	.field  	_CMP3INT_ISR,32		; _PieVectTableInit._CMP3INT @ 1344
	.field  	_T1PINT_ISR,32		; _PieVectTableInit._T1PINT @ 1376
	.field  	_T1CINT_ISR,32		; _PieVectTableInit._T1CINT @ 1408
	.field  	_T1UFINT_ISR,32		; _PieVectTableInit._T1UFINT @ 1440
	.field  	_T1PINT_ISR,32		; _PieVectTableInit._T1OFINT @ 1472
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd2_8 @ 1504
	.field  	_T2PINT_ISR,32		; _PieVectTableInit._T2PINT @ 1536
	.field  	_T2CINT_ISR,32		; _PieVectTableInit._T2CINT @ 1568
	.field  	_T2UFINT_ISR,32		; _PieVectTableInit._T2UFINT @ 1600
	.field  	_T2OFINT_ISR,32		; _PieVectTableInit._T2OFINT @ 1632
	.field  	_CAPINT1_ISR,32		; _PieVectTableInit._CAPINT1 @ 1664
	.field  	_CAPINT2_ISR,32		; _PieVectTableInit._CAPINT2 @ 1696
	.field  	_CAPINT3_ISR,32		; _PieVectTableInit._CAPINT3 @ 1728
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd3_8 @ 1760
	.field  	_CMP4INT_ISR,32		; _PieVectTableInit._CMP4INT @ 1792
	.field  	_CMP5INT_ISR,32		; _PieVectTableInit._CMP5INT @ 1824
	.field  	_CMP6INT_ISR,32		; _PieVectTableInit._CMP6INT @ 1856
	.field  	_T3PINT_ISR,32		; _PieVectTableInit._T3PINT @ 1888
	.field  	_T3CINT_ISR,32		; _PieVectTableInit._T3CINT @ 1920
	.field  	_T3UFINT_ISR,32		; _PieVectTableInit._T3UFINT @ 1952
	.field  	_T3OFINT_ISR,32		; _PieVectTableInit._T3OFINT @ 1984
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd4_8 @ 2016
	.field  	_T4PINT_ISR,32		; _PieVectTableInit._T4PINT @ 2048
	.field  	_T4CINT_ISR,32		; _PieVectTableInit._T4CINT @ 2080
	.field  	_T4UFINT_ISR,32		; _PieVectTableInit._T4UFINT @ 2112
	.field  	_T4OFINT_ISR,32		; _PieVectTableInit._T4OFINT @ 2144
	.field  	_CAPINT4_ISR,32		; _PieVectTableInit._CAPINT4 @ 2176
	.field  	_CAPINT5_ISR,32		; _PieVectTableInit._CAPINT5 @ 2208
	.field  	_CAPINT6_ISR,32		; _PieVectTableInit._CAPINT6 @ 2240
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd5_8 @ 2272
	.field  	_SPIRXINTA_ISR,32		; _PieVectTableInit._SPIRXINTA @ 2304
	.field  	_SPITXINTA_ISR,32		; _PieVectTableInit._SPITXINTA @ 2336
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd6_3 @ 2368
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd6_4 @ 2400
	.field  	_MRINTA_ISR,32		; _PieVectTableInit._MRINTA @ 2432
	.field  	_MXINTA_ISR,32		; _PieVectTableInit._MXINTA @ 2464
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd6_7 @ 2496
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd6_8 @ 2528
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_1 @ 2560
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_2 @ 2592
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_3 @ 2624
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_4 @ 2656
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_5 @ 2688
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_6 @ 2720
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_7 @ 2752
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd7_8 @ 2784
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_1 @ 2816
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_2 @ 2848
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_3 @ 2880
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_4 @ 2912
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_5 @ 2944
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_6 @ 2976
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_7 @ 3008
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd8_8 @ 3040
	.field  	_SCIRXINTA_ISR,32		; _PieVectTableInit._RXAINT @ 3072
	.field  	_SCITXINTA_ISR,32		; _PieVectTableInit._TXAINT @ 3104
	.field  	_SCIRXINTB_ISR,32		; _PieVectTableInit._RXBINT @ 3136
	.field  	_SCITXINTB_ISR,32		; _PieVectTableInit._TXBINT @ 3168
	.field  	_ECAN0INTA_ISR,32		; _PieVectTableInit._ECAN0INTA @ 3200
	.field  	_ECAN1INTA_ISR,32		; _PieVectTableInit._ECAN1INTA @ 3232
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd9_7 @ 3264
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd9_8 @ 3296
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_1 @ 3328
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_2 @ 3360
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_3 @ 3392
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_4 @ 3424
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_5 @ 3456
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_6 @ 3488
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_7 @ 3520
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd10_8 @ 3552
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_1 @ 3584
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_2 @ 3616
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_3 @ 3648
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_4 @ 3680
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_5 @ 3712
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_6 @ 3744
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_7 @ 3776
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd11_8 @ 3808
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_1 @ 3840
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_2 @ 3872
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_3 @ 3904
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_4 @ 3936
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_5 @ 3968
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_6 @ 4000
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_7 @ 4032
	.field  	_rsvd_ISR,32		; _PieVectTableInit._rsvd12_8 @ 4064

DW$66	.dwtag  DW_TAG_variable, DW_AT_name("PieVectTableInit"), DW_AT_symbol_name("_PieVectTableInit")
	.dwattr DW$66, DW_AT_location[DW_OP_addr _PieVectTableInit]
	.dwattr DW$66, DW_AT_type(*DW$T$23)
	.dwattr DW$66, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI2202 
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_T3CINT_ISR
	.global	_T3UFINT_ISR
	.global	_CMP6INT_ISR
	.global	_T3PINT_ISR
	.global	_T4CINT_ISR
	.global	_T4UFINT_ISR
	.global	_T3OFINT_ISR
	.global	_T4PINT_ISR
	.global	_T2OFINT_ISR
	.global	_CAPINT1_ISR
	.global	_T2CINT_ISR
	.global	_T2UFINT_ISR
	.global	_CMP4INT_ISR
	.global	_CMP5INT_ISR
	.global	_CAPINT2_ISR
	.global	_CAPINT3_ISR
	.global	_SCIRXINTB_ISR
	.global	_SCITXINTB_ISR
	.global	_SCIRXINTA_ISR
	.global	_SCITXINTA_ISR
	.global	_PIE_RESERVED
	.global	_rsvd_ISR
	.global	_ECAN0INTA_ISR
	.global	_ECAN1INTA_ISR
	.global	_CAPINT5_ISR
	.global	_CAPINT6_ISR
	.global	_T4OFINT_ISR
	.global	_CAPINT4_ISR
	.global	_MRINTA_ISR
	.global	_MXINTA_ISR
	.global	_SPIRXINTA_ISR
	.global	_SPITXINTA_ISR
	.global	_USER5_ISR
	.global	_USER6_ISR
	.global	_USER3_ISR
	.global	_USER4_ISR
	.global	_USER9_ISR
	.global	_USER10_ISR
	.global	_USER7_ISR
	.global	_USER8_ISR
	.global	_RTOSINT_ISR
	.global	_EMUINT_ISR
	.global	_INT14_ISR
	.global	_DATALOG_ISR
	.global	_USER1_ISR
	.global	_USER2_ISR
	.global	_NMI_ISR
	.global	_ILLEGAL_ISR
	.global	_CMP2INT_ISR
	.global	_CMP3INT_ISR
	.global	_WAKEINT_ISR
	.global	_CMP1INT_ISR
	.global	_T1UFINT_ISR
	.global	_T2PINT_ISR
	.global	_T1PINT_ISR
	.global	_T1CINT_ISR
	.global	_PDPINTA_ISR
	.global	_PDPINTB_ISR
	.global	_USER11_ISR
	.global	_USER12_ISR
	.global	_ADCINT_ISR
	.global	_TINT0_ISR
	.global	_XINT1_ISR
	.global	_XINT2_ISR
	.global	_INT13_ISR

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$67	.dwtag  DW_TAG_far_type
	.dwattr DW$67, DW_AT_type(*DW$T$22)
DW$T$23	.dwtag  DW_TAG_const_type
	.dwattr DW$T$23, DW_AT_type(*DW$67)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PIE_VECT_TABLE")
	.dwattr DW$T$22, DW_AT_byte_size(0x100)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$68, DW_AT_name("PIE1_RESERVED"), DW_AT_symbol_name("_PIE1_RESERVED")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$69, DW_AT_name("PIE2_RESERVED"), DW_AT_symbol_name("_PIE2_RESERVED")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$70, DW_AT_name("PIE3_RESERVED"), DW_AT_symbol_name("_PIE3_RESERVED")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$71, DW_AT_name("PIE4_RESERVED"), DW_AT_symbol_name("_PIE4_RESERVED")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$72, DW_AT_name("PIE5_RESERVED"), DW_AT_symbol_name("_PIE5_RESERVED")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$73, DW_AT_name("PIE6_RESERVED"), DW_AT_symbol_name("_PIE6_RESERVED")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$74, DW_AT_name("PIE7_RESERVED"), DW_AT_symbol_name("_PIE7_RESERVED")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$75, DW_AT_name("PIE8_RESERVED"), DW_AT_symbol_name("_PIE8_RESERVED")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$76, DW_AT_name("PIE9_RESERVED"), DW_AT_symbol_name("_PIE9_RESERVED")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$77, DW_AT_name("PIE10_RESERVED"), DW_AT_symbol_name("_PIE10_RESERVED")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$78, DW_AT_name("PIE11_RESERVED"), DW_AT_symbol_name("_PIE11_RESERVED")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$79, DW_AT_name("PIE12_RESERVED"), DW_AT_symbol_name("_PIE12_RESERVED")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$80, DW_AT_name("PIE13_RESERVED"), DW_AT_symbol_name("_PIE13_RESERVED")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$81, DW_AT_name("XINT13"), DW_AT_symbol_name("_XINT13")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$82, DW_AT_name("TINT2"), DW_AT_symbol_name("_TINT2")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$83, DW_AT_name("DATALOG"), DW_AT_symbol_name("_DATALOG")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$84, DW_AT_name("RTOSINT"), DW_AT_symbol_name("_RTOSINT")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$85, DW_AT_name("EMUINT"), DW_AT_symbol_name("_EMUINT")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$86, DW_AT_name("XNMI"), DW_AT_symbol_name("_XNMI")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$87, DW_AT_name("ILLEGAL"), DW_AT_symbol_name("_ILLEGAL")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$88, DW_AT_name("USER1"), DW_AT_symbol_name("_USER1")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$89, DW_AT_name("USER2"), DW_AT_symbol_name("_USER2")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$90, DW_AT_name("USER3"), DW_AT_symbol_name("_USER3")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$91, DW_AT_name("USER4"), DW_AT_symbol_name("_USER4")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$92, DW_AT_name("USER5"), DW_AT_symbol_name("_USER5")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$93, DW_AT_name("USER6"), DW_AT_symbol_name("_USER6")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$94, DW_AT_name("USER7"), DW_AT_symbol_name("_USER7")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$95, DW_AT_name("USER8"), DW_AT_symbol_name("_USER8")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$96, DW_AT_name("USER9"), DW_AT_symbol_name("_USER9")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$97, DW_AT_name("USER10"), DW_AT_symbol_name("_USER10")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$98, DW_AT_name("USER11"), DW_AT_symbol_name("_USER11")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$99, DW_AT_name("USER12"), DW_AT_symbol_name("_USER12")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$100, DW_AT_name("PDPINTA"), DW_AT_symbol_name("_PDPINTA")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$101, DW_AT_name("PDPINTB"), DW_AT_symbol_name("_PDPINTB")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$102, DW_AT_name("rsvd1_3"), DW_AT_symbol_name("_rsvd1_3")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$103, DW_AT_name("XINT1"), DW_AT_symbol_name("_XINT1")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$104, DW_AT_name("XINT2"), DW_AT_symbol_name("_XINT2")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$105, DW_AT_name("ADCINT"), DW_AT_symbol_name("_ADCINT")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$106, DW_AT_name("TINT0"), DW_AT_symbol_name("_TINT0")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$107, DW_AT_name("WAKEINT"), DW_AT_symbol_name("_WAKEINT")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$108, DW_AT_name("CMP1INT"), DW_AT_symbol_name("_CMP1INT")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$109, DW_AT_name("CMP2INT"), DW_AT_symbol_name("_CMP2INT")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$110, DW_AT_name("CMP3INT"), DW_AT_symbol_name("_CMP3INT")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$111, DW_AT_name("T1PINT"), DW_AT_symbol_name("_T1PINT")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$112, DW_AT_name("T1CINT"), DW_AT_symbol_name("_T1CINT")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$113, DW_AT_name("T1UFINT"), DW_AT_symbol_name("_T1UFINT")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$114, DW_AT_name("T1OFINT"), DW_AT_symbol_name("_T1OFINT")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$115, DW_AT_name("rsvd2_8"), DW_AT_symbol_name("_rsvd2_8")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$116, DW_AT_name("T2PINT"), DW_AT_symbol_name("_T2PINT")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$117, DW_AT_name("T2CINT"), DW_AT_symbol_name("_T2CINT")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$118, DW_AT_name("T2UFINT"), DW_AT_symbol_name("_T2UFINT")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$119, DW_AT_name("T2OFINT"), DW_AT_symbol_name("_T2OFINT")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$120, DW_AT_name("CAPINT1"), DW_AT_symbol_name("_CAPINT1")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$121, DW_AT_name("CAPINT2"), DW_AT_symbol_name("_CAPINT2")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$122, DW_AT_name("CAPINT3"), DW_AT_symbol_name("_CAPINT3")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$123, DW_AT_name("rsvd3_8"), DW_AT_symbol_name("_rsvd3_8")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$124, DW_AT_name("CMP4INT"), DW_AT_symbol_name("_CMP4INT")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$125, DW_AT_name("CMP5INT"), DW_AT_symbol_name("_CMP5INT")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$126, DW_AT_name("CMP6INT"), DW_AT_symbol_name("_CMP6INT")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$127, DW_AT_name("T3PINT"), DW_AT_symbol_name("_T3PINT")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$128, DW_AT_name("T3CINT"), DW_AT_symbol_name("_T3CINT")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$129, DW_AT_name("T3UFINT"), DW_AT_symbol_name("_T3UFINT")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$130, DW_AT_name("T3OFINT"), DW_AT_symbol_name("_T3OFINT")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$131, DW_AT_name("rsvd4_8"), DW_AT_symbol_name("_rsvd4_8")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$132, DW_AT_name("T4PINT"), DW_AT_symbol_name("_T4PINT")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$133, DW_AT_name("T4CINT"), DW_AT_symbol_name("_T4CINT")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$134, DW_AT_name("T4UFINT"), DW_AT_symbol_name("_T4UFINT")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$135, DW_AT_name("T4OFINT"), DW_AT_symbol_name("_T4OFINT")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$136, DW_AT_name("CAPINT4"), DW_AT_symbol_name("_CAPINT4")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$137, DW_AT_name("CAPINT5"), DW_AT_symbol_name("_CAPINT5")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$138, DW_AT_name("CAPINT6"), DW_AT_symbol_name("_CAPINT6")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$139, DW_AT_name("rsvd5_8"), DW_AT_symbol_name("_rsvd5_8")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$140, DW_AT_name("SPIRXINTA"), DW_AT_symbol_name("_SPIRXINTA")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$141, DW_AT_name("SPITXINTA"), DW_AT_symbol_name("_SPITXINTA")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$142, DW_AT_name("rsvd6_3"), DW_AT_symbol_name("_rsvd6_3")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$143, DW_AT_name("rsvd6_4"), DW_AT_symbol_name("_rsvd6_4")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$144, DW_AT_name("MRINTA"), DW_AT_symbol_name("_MRINTA")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$145, DW_AT_name("MXINTA"), DW_AT_symbol_name("_MXINTA")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$146, DW_AT_name("rsvd6_7"), DW_AT_symbol_name("_rsvd6_7")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$147, DW_AT_name("rsvd6_8"), DW_AT_symbol_name("_rsvd6_8")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$148, DW_AT_name("rsvd7_1"), DW_AT_symbol_name("_rsvd7_1")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$149, DW_AT_name("rsvd7_2"), DW_AT_symbol_name("_rsvd7_2")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$150, DW_AT_name("rsvd7_3"), DW_AT_symbol_name("_rsvd7_3")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$151, DW_AT_name("rsvd7_4"), DW_AT_symbol_name("_rsvd7_4")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$152, DW_AT_name("rsvd7_5"), DW_AT_symbol_name("_rsvd7_5")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$153, DW_AT_name("rsvd7_6"), DW_AT_symbol_name("_rsvd7_6")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$154, DW_AT_name("rsvd7_7"), DW_AT_symbol_name("_rsvd7_7")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$155, DW_AT_name("rsvd7_8"), DW_AT_symbol_name("_rsvd7_8")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$156, DW_AT_name("rsvd8_1"), DW_AT_symbol_name("_rsvd8_1")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$157, DW_AT_name("rsvd8_2"), DW_AT_symbol_name("_rsvd8_2")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$158, DW_AT_name("rsvd8_3"), DW_AT_symbol_name("_rsvd8_3")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$159, DW_AT_name("rsvd8_4"), DW_AT_symbol_name("_rsvd8_4")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$160, DW_AT_name("rsvd8_5"), DW_AT_symbol_name("_rsvd8_5")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$161, DW_AT_name("rsvd8_6"), DW_AT_symbol_name("_rsvd8_6")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$162, DW_AT_name("rsvd8_7"), DW_AT_symbol_name("_rsvd8_7")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$163, DW_AT_name("rsvd8_8"), DW_AT_symbol_name("_rsvd8_8")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$164, DW_AT_name("RXAINT"), DW_AT_symbol_name("_RXAINT")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$165, DW_AT_name("TXAINT"), DW_AT_symbol_name("_TXAINT")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$166, DW_AT_name("RXBINT"), DW_AT_symbol_name("_RXBINT")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$167, DW_AT_name("TXBINT"), DW_AT_symbol_name("_TXBINT")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$168, DW_AT_name("ECAN0INTA"), DW_AT_symbol_name("_ECAN0INTA")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$169, DW_AT_name("ECAN1INTA"), DW_AT_symbol_name("_ECAN1INTA")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$170, DW_AT_name("rsvd9_7"), DW_AT_symbol_name("_rsvd9_7")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$171, DW_AT_name("rsvd9_8"), DW_AT_symbol_name("_rsvd9_8")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$172, DW_AT_name("rsvd10_1"), DW_AT_symbol_name("_rsvd10_1")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$173, DW_AT_name("rsvd10_2"), DW_AT_symbol_name("_rsvd10_2")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$174, DW_AT_name("rsvd10_3"), DW_AT_symbol_name("_rsvd10_3")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$175, DW_AT_name("rsvd10_4"), DW_AT_symbol_name("_rsvd10_4")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$176, DW_AT_name("rsvd10_5"), DW_AT_symbol_name("_rsvd10_5")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$177, DW_AT_name("rsvd10_6"), DW_AT_symbol_name("_rsvd10_6")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$178, DW_AT_name("rsvd10_7"), DW_AT_symbol_name("_rsvd10_7")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$179, DW_AT_name("rsvd10_8"), DW_AT_symbol_name("_rsvd10_8")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$180, DW_AT_name("rsvd11_1"), DW_AT_symbol_name("_rsvd11_1")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$181, DW_AT_name("rsvd11_2"), DW_AT_symbol_name("_rsvd11_2")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$182, DW_AT_name("rsvd11_3"), DW_AT_symbol_name("_rsvd11_3")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$183, DW_AT_name("rsvd11_4"), DW_AT_symbol_name("_rsvd11_4")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$184, DW_AT_name("rsvd11_5"), DW_AT_symbol_name("_rsvd11_5")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$185, DW_AT_name("rsvd11_6"), DW_AT_symbol_name("_rsvd11_6")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$186, DW_AT_name("rsvd11_7"), DW_AT_symbol_name("_rsvd11_7")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$187, DW_AT_name("rsvd11_8"), DW_AT_symbol_name("_rsvd11_8")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$188, DW_AT_name("rsvd12_1"), DW_AT_symbol_name("_rsvd12_1")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$189, DW_AT_name("rsvd12_2"), DW_AT_symbol_name("_rsvd12_2")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$190, DW_AT_name("rsvd12_3"), DW_AT_symbol_name("_rsvd12_3")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$191, DW_AT_name("rsvd12_4"), DW_AT_symbol_name("_rsvd12_4")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$192, DW_AT_name("rsvd12_5"), DW_AT_symbol_name("_rsvd12_5")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$193, DW_AT_name("rsvd12_6"), DW_AT_symbol_name("_rsvd12_6")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$194, DW_AT_name("rsvd12_7"), DW_AT_symbol_name("_rsvd12_7")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$195, DW_AT_name("rsvd12_8"), DW_AT_symbol_name("_rsvd12_8")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("PINT"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$20	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_address_class(0x16)


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
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x07, 10
	.dwcfa	0x07, 11
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
	.dwcfa	0x07, 27
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

DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$196, DW_AT_location[DW_OP_reg0]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$197, DW_AT_location[DW_OP_reg1]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$198, DW_AT_location[DW_OP_reg2]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$199, DW_AT_location[DW_OP_reg3]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$200, DW_AT_location[DW_OP_reg4]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$201, DW_AT_location[DW_OP_reg5]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$202, DW_AT_location[DW_OP_reg6]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$203, DW_AT_location[DW_OP_reg7]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$204, DW_AT_location[DW_OP_reg8]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$205, DW_AT_location[DW_OP_reg9]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$206, DW_AT_location[DW_OP_reg10]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$207, DW_AT_location[DW_OP_reg11]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$208, DW_AT_location[DW_OP_reg12]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$209, DW_AT_location[DW_OP_reg13]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$210, DW_AT_location[DW_OP_reg14]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$211, DW_AT_location[DW_OP_reg15]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$212, DW_AT_location[DW_OP_reg16]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$213, DW_AT_location[DW_OP_reg17]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$214, DW_AT_location[DW_OP_reg18]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$215, DW_AT_location[DW_OP_reg19]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$216, DW_AT_location[DW_OP_reg20]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$217, DW_AT_location[DW_OP_reg21]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$218, DW_AT_location[DW_OP_reg22]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$219, DW_AT_location[DW_OP_reg23]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$220, DW_AT_location[DW_OP_reg24]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$221, DW_AT_location[DW_OP_reg25]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$222, DW_AT_location[DW_OP_reg26]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$223, DW_AT_location[DW_OP_reg27]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$224, DW_AT_location[DW_OP_reg28]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$225, DW_AT_location[DW_OP_reg29]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$226, DW_AT_location[DW_OP_reg30]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$227, DW_AT_location[DW_OP_reg31]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x20]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x21]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x22]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x23]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x24]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x25]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x26]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x27]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


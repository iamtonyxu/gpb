;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:53 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_SpiMode$2+0,32
	.bits		0,16
			; _SpiMode$2 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("InitSysCtrl")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_InitSysCtrl")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("InitXintf")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_InitXintf")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("InitGpio")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_InitGpio")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("InitPieCtrl")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_InitPieCtrl")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("InitFlash")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_InitFlash")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("InitAdc")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_InitAdc")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("InitEv")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_InitEv")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("InitECan")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_InitECan")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("SetDBGIER")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_SetDBGIER")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("DelayUs")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_DelayUs")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("ConfigEepromInterface")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ConfigEepromInterface")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwendtag $C$DW$13


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("EepromWriteByte")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_EepromWriteByte")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("ConfigDacInterface")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_ConfigDacInterface")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("TxDacData")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_TxDacData")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$18


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("AuxEepromWriteStatus")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_AuxEepromWriteStatus")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$21


$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("AuxEepromWriteEnable")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_AuxEepromWriteEnable")
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("AuxEepromWriteByte")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_AuxEepromWriteByte")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("ConfigMax7301Interface")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_ConfigMax7301Interface")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwendtag $C$DW$28


$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("ConfigMax7301DIO")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_ConfigMax7301DIO")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
	.dwendtag $C$DW$29


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("Max7301Write")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_Max7301Write")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$141)

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$141)

	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("ConfigTlv1570Interface")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ConfigTlv1570Interface")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwendtag $C$DW$33

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("secureRamFuncs_loadstart")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_secureRamFuncs_loadstart")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("secureRamFuncs_loadend")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_secureRamFuncs_loadend")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("secureRamFuncs_runstart")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_secureRamFuncs_runstart")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external

	.global	_DSP_OUT
_DSP_OUT:	.usect	".ebss",1,1,0
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("DSP_OUT")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_DSP_OUT")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _DSP_OUT]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$37, DW_AT_external

	.global	_DSP_IN
_DSP_IN:	.usect	".ebss",1,1,0
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("DSP_IN")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_DSP_IN")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _DSP_IN]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$38, DW_AT_external

_SpiMode$2:	.usect	".ebss",1,1,0

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("InitSpi")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_InitSpi")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
	.dwendtag $C$DW$39


$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("GetAdcCalibrationFactors")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_GetAdcCalibrationFactors")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.dwendtag $C$DW$40


$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("TxECanMsg")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_TxECanMsg")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$10)

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$99)

	.dwendtag $C$DW$41


$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("RxECanMsg")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_RxECanMsg")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$99)

	.dwendtag $C$DW$44


$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("StartConversion")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_StartConversion")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.dwendtag $C$DW$47


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("GetAdcConversion")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_GetAdcConversion")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwendtag $C$DW$48


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("EepromReadByte")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_EepromReadByte")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$49


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("ReadCpld")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_ReadCpld")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
	.dwendtag $C$DW$51


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("EepromTest")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_EepromTest")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("AuxEepromTest")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_AuxEepromTest")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
	.dwendtag $C$DW$53


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("AuxEepromReadStatus")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_AuxEepromReadStatus")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("AuxEepromReadByte")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_AuxEepromReadByte")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$55


$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("TxSpi")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_TxSpi")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
	.dwendtag $C$DW$57


$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("FormatSpiTxWord")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_FormatSpiTxWord")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
	.dwendtag $C$DW$58


$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("SpiRxNotReady")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_SpiRxNotReady")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
	.dwendtag $C$DW$59


$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("RxSpi")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_RxSpi")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
	.dwendtag $C$DW$60


$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("ReadDspDI_B")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_ReadDspDI_B")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
	.dwendtag $C$DW$61


$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("ReadDspID_A")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_ReadDspID_A")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
	.dwendtag $C$DW$62


$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("Max7301Input")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_Max7301Input")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$63


$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("WriteCpld")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_WriteCpld")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
	.dwendtag $C$DW$65


$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("WriteDspDO_A")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_WriteDspDO_A")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwendtag $C$DW$66


$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("WriteDspDO_EN")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_WriteDspDO_EN")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
	.dwendtag $C$DW$67


$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("TestRam")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_TestRam")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
	.dwendtag $C$DW$68

_ParamsCRC$1:	.usect	".ebss",2,1,1
_PcbModel$3:	.usect	".ebss",2,0,1

$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("CheckRxMailBoxes")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_CheckRxMailBoxes")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
	.dwendtag $C$DW$69


$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("crcCalc32")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_crcCalc32")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$149)

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$70


$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("Tlv1570Convert")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_Tlv1570Convert")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$74

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("CpuTimer0Regs")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_CpuTimer0Regs")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_PieCtrlRegs")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external

	.sblock	".ebss"
;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{31FC4A0D-F53B-4F83-99BB-30936015D728} 
	.sect	".text"
	.clink
	.global	_main

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("main")
	.dwattr $C$DW$79, DW_AT_low_pc(_main)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-84)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 41,column 1,is_stmt,address _main,isa 0

	.dwfde $C$DW$CIE, _main
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("SpiMode")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_SpiMode$2")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _SpiMode$2]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("ParamsCRC")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_ParamsCRC$1")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _ParamsCRC$1]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("PcbModel")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_PcbModel$3")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr _PcbModel$3]

;----------------------------------------------------------------------
;  40 | void main(void)                                                        
;  42 | SMessage TxMessage, RxMessage;                                         
;  43 | float GainCalErr, DacOut, AdcChnlResult;                               
;  44 | int32 OffsCalErr;                                                      
;  45 | int32 Iq32;                                                            
;  46 | static Uint32 ParamsCRC;                                               
;  47 | Uint16 idx, Cnt, HighWord, LowWord, MsgCnt;                            
;  48 | Byte EepromArray[44];                                                  
;  49 | Byte CpldRd;                                                           
;  50 | static int SpiMode = 0;                                                
;  51 | static const Uint32 PcbModel = 100025092;       // Assembly Number of U
;     | UT                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _main                         FR SIZE:  82           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 76 Auto,  4 SOE     *
;***************************************************************

_main:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVZ      AR2,SP                ; [CPU_ALU] 
        SUBB      FP,#6                 ; [CPU_ARAU] 
        ADDB      SP,#78                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -84
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("GainCalErr")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_GainCalErr")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -4]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("DacOut")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_DacOut")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -6]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("AdcChnlResult")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_AdcChnlResult")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -8]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("OffsCalErr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_OffsCalErr")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -10]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("Iq32")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_Iq32")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -12]

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("EepromArray")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_EepromArray")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -56]

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("TxMessage")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_TxMessage")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -64]

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("RxMessage")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_RxMessage")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -72]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("idx")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -73]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("Cnt")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_Cnt")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -74]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("HighWord")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_HighWord")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -75]

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("LowWord")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_LowWord")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -76]

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("MsgCnt")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_MsgCnt")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -77]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("CpldRd")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_CpldRd")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -78]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | InitSysCtrl();                                          // Initialize t
;     | he CPU (FILE: SysCtrl.c)                                               
;----------------------------------------------------------------------
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_InitSysCtrl")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_InitSysCtrl         ; [CPU_ALU] |54| 
        ; call occurs [#_InitSysCtrl] ; [] |54| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | InitXintf();                                            // Initialize t
;     | he external memory interface (FILE: Xintf.c)                           
;----------------------------------------------------------------------
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_InitXintf")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_InitXintf           ; [CPU_ALU] |55| 
        ; call occurs [#_InitXintf] ; [] |55| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | InitGpio();                                                     // Init
;     | ialize the shared GPIO pins (FILE: Gpio.c)                             
;----------------------------------------------------------------------
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_InitGpio")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_InitGpio            ; [CPU_ALU] |56| 
        ; call occurs [#_InitGpio] ; [] |56| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | GpioDataRegs.GPASET.bit.GPIOA4 = 1; // Set RESET#_CPLD = HIGH          
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+1   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0010 ; [CPU_ALU] |57| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | GpioDataRegs.GPASET.bit.GPIOA3 = 1; // Set CPLD_PWR = HIGH             
;  59 | //      WriteCpld(0xb, ReadCpld(0xb) | 0x10);                          
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+1,#0x0008 ; [CPU_ALU] |58| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | InitPieCtrl();                                          // Initialize a
;     | nd enable the PIE (FILE: PieCtrl.c)                                    
;----------------------------------------------------------------------
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_InitPieCtrl")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #_InitPieCtrl         ; [CPU_ALU] |60| 
        ; call occurs [#_InitPieCtrl] ; [] |60| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 64,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  64 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;      // Enable CPU Timer0 Interrupt
;     | in PIE group 1                                                         
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+2,#0x0040 ; [CPU_ALU] |64| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 65,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | IER |= 0x0001;                                          // Enable INT1
;     | in IER to enable PIE group                                             
;  69 | // Section secureRamFuncs contains user defined code that runs from CSM
;     |  secured RAM                                                           
;----------------------------------------------------------------------
        OR        IER,#0x0001           ; [CPU_ALU] |65| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 70,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | memcpy( &secureRamFuncs_runstart,                                      
;  71 |                 &secureRamFuncs_loadstart,                             
;  72 |                 &secureRamFuncs_loadend - &secureRamFuncs_loadstart);  
;----------------------------------------------------------------------
        MOVL      XAR5,#_secureRamFuncs_loadstart ; [CPU_ARAU] |70| 
        MOVL      XAR4,#_secureRamFuncs_loadend ; [CPU_ARAU] |70| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |70| 
        SUBL      XAR4,ACC              ; [CPU_ALU] |70| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |70| 
        MOVL      XAR4,#_secureRamFuncs_runstart ; [CPU_ARAU] |70| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_memcpy")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_memcpy              ; [CPU_ALU] |70| 
        ; call occurs [#_memcpy] ; [] |70| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 75,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | InitFlash();                                            // Initialize t
;     | he FLASH (FILE: SysCtrl.c)                                             
;----------------------------------------------------------------------
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_InitFlash")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_InitFlash           ; [CPU_ALU] |75| 
        ; call occurs [#_InitFlash] ; [] |75| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 78,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | InitAdc();                                                      // Init
;     | ialize the ADC (FILE: Adc.c)                                           
;----------------------------------------------------------------------
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_InitAdc")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_InitAdc             ; [CPU_ALU] |78| 
        ; call occurs [#_InitAdc] ; [] |78| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 79,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  79 | InitEv();                                                       // Init
;     | ialize the Event Manager (FILE: Ev.c)                                  
;----------------------------------------------------------------------
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_InitEv")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_InitEv              ; [CPU_ALU] |79| 
        ; call occurs [#_InitEv] ; [] |79| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 80,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | InitECan();                                                     // Init
;     | ialize the CAN Module (FILE: eCanCtrl.c)                               
;----------------------------------------------------------------------
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_InitECan")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_InitECan            ; [CPU_ALU] |80| 
        ; call occurs [#_InitECan] ; [] |80| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 81,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | InitSpi();                                                      // Init
;     | ialize the SPI Module (FILE: Spi.c)                                    
;----------------------------------------------------------------------
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_InitSpi")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_InitSpi             ; [CPU_ALU] |81| 
        ; call occurs [#_InitSpi] ; [] |81| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 85,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | SetDBGIER(IER);                                             // Configur
;     | e the DBGIER for realtime debug                                        
;----------------------------------------------------------------------
        MOV       AL,IER                ; [CPU_ALU] |85| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_SetDBGIER")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_SetDBGIER           ; [CPU_ALU] |85| 
        ; call occurs [#_SetDBGIER] ; [] |85| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | asm(" CLRC INTM, DBGM");                        // Enable global interr
;     | upts and realtime debug                                                
;----------------------------------------------------------------------
 CLRC INTM, DBGM
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 91,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | for(Cnt = 0; Cnt < 3; Cnt++) {                                         
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |91| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |91| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 91,column 15,is_stmt,isa 0
        MOVL      XAR0,#10              ; [CPU_ALU] |91| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |91| 
        CMPB      AL,#3                 ; [CPU_ALU] |91| 
        B         $C$L4,HIS             ; [CPU_ALU] |91| 
        ; branchcc occurs ; [] |91| 
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 92,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+3   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0001 ; [CPU_ALU] |92| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 93,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0002 ; [CPU_ALU] |93| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 94,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0004 ; [CPU_ALU] |94| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 95,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */                
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |95| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |95| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 95,column 16,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |95| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |95| 
        CMPB      AL,#20                ; [CPU_ALU] |95| 
        B         $C$L3,HIS             ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 96,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | DelayUs(40000); /* Delay 50mS */                                       
;----------------------------------------------------------------------
        MOV       AL,#40000             ; [CPU_ALU] |96| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_DelayUs")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |96| 
        ; call occurs [#_DelayUs] ; [] |96| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 95,column 26,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |95| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |95| 
        MOVL      XAR0,#11              ; [CPU_ALU] |95| 
        ADDB      AL,#1                 ; [CPU_ALU] |95| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |95| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 95,column 16,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |95| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |95| 
        CMPB      AL,#20                ; [CPU_ALU] |95| 
        B         $C$L2,LO              ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
$C$L3:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 91,column 24,is_stmt,isa 0
        MOVL      XAR0,#10              ; [CPU_ALU] |91| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |91| 
        MOVL      XAR0,#10              ; [CPU_ALU] |91| 
        ADDB      AL,#1                 ; [CPU_ALU] |91| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |91| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 91,column 15,is_stmt,isa 0
        MOVL      XAR0,#10              ; [CPU_ALU] |91| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |91| 
        CMPB      AL,#3                 ; [CPU_ALU] |91| 
        B         $C$L1,LO              ; [CPU_ALU] |91| 
        ; branchcc occurs ; [] |91| 
$C$L4:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | GetAdcCalibrationFactors(&GainCalErr, &OffsCalErr);                    
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |104| 
        MOVZ      AR5,SP                ; [CPU_ALU] |104| 
        SPM       #0                    ; [CPU_ALU] 
        SUBB      XAR4,#4               ; [CPU_ARAU] |104| 
        SUBB      XAR5,#10              ; [CPU_ARAU] |104| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |104| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |104| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_GetAdcCalibrationFactors")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_GetAdcCalibrationFactors ; [CPU_ALU] |104| 
        ; call occurs [#_GetAdcCalibrationFactors] ; [] |104| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | TxMessage.sMsgStruct.Cmd = 'P';                                        
;----------------------------------------------------------------------
        MOVL      XAR0,#20              ; [CPU_ALU] |106| 
        MOVB      *+FP[AR0],#80,UNC     ; [CPU_ALU] |106| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | TxMessage.sMsgStruct.Parm1 = 0xaa;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[62],#170,UNC     ; [CPU_ALU] |108| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 109,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | TxMessage.sMsgStruct.Parm2 = 0x55;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[61],#85,UNC      ; [CPU_ALU] |109| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 110,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | TxMessage.sMsgStruct.Parm3 = 0xcc;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[60],#204,UNC     ; [CPU_ALU] |110| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 111,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | TxMessage.sMsgStruct.Parm4 = 0x33;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[59],#51,UNC      ; [CPU_ALU] |111| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 112,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | TxMessage.sMsgStruct.Parm5 = 0xdd;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[58],#221,UNC     ; [CPU_ALU] |112| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 113,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 113 | TxMessage.sMsgStruct.Parm6 = 0x22;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[57],#34,UNC      ; [CPU_ALU] |113| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 114,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 114 | TxECanMsg(15, &TxMessage);                                             
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |114| 
        MOVB      AL,#15                ; [CPU_ALU] |114| 
        SUBB      XAR4,#64              ; [CPU_ARAU] |114| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |114| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_TxECanMsg")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #_TxECanMsg           ; [CPU_ALU] |114| 
        ; call occurs [#_TxECanMsg] ; [] |114| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 117,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | while(1)                                                               
;----------------------------------------------------------------------
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 119,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | while(!CheckRxMailBoxes()){}    // Wait for CAN Message                
;----------------------------------------------------------------------
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 119,column 9,is_stmt,isa 0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_CheckRxMailBoxes")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #_CheckRxMailBoxes    ; [CPU_ALU] |119| 
        ; call occurs [#_CheckRxMailBoxes] ; [] |119| 
        TEST      ACC                   ; [CPU_ALU] |119| 
        B         $C$L5,EQ              ; [CPU_ALU] |119| 
        ; branchcc occurs ; [] |119| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 120,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | RxECanMsg(16, &RxMessage);              // Receive CAN Message         
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |120| 
        MOVB      AL,#16                ; [CPU_ALU] |120| 
        SUBB      XAR4,#72              ; [CPU_ARAU] |120| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |120| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_RxECanMsg")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #_RxECanMsg           ; [CPU_ALU] |120| 
        ; call occurs [#_RxECanMsg] ; [] |120| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 121,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | TxMessage.sMsgStruct.Cmd = RxMessage.sMsgStruct.Cmd;                   
;----------------------------------------------------------------------
        MOVL      XAR0,#12              ; [CPU_ALU] |121| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |121| 
        MOVL      XAR0,#20              ; [CPU_ALU] |121| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |121| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 122,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 122 | TxMessage.sMsgStruct.Parm1 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[62],#0           ; [CPU_ALU] |122| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 123,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |123| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 124,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | TxMessage.sMsgStruct.Parm3 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[60],#0           ; [CPU_ALU] |124| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 125,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | TxMessage.sMsgStruct.Parm4 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[59],#0           ; [CPU_ALU] |125| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 126,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | TxMessage.sMsgStruct.Parm5 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[58],#0           ; [CPU_ALU] |126| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 127,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | TxMessage.sMsgStruct.Parm6 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[57],#0           ; [CPU_ALU] |127| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 128,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+3   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0001 ; [CPU_ALU] |128| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 129,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0002 ; [CPU_ALU] |129| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 130,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0004 ; [CPU_ALU] |130| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 131,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | switch(RxMessage.sMsgStruct.Cmd) {                                     
; 132 |         case 'A':       /* Acquire and Convert the selected DSP-ADC Cha
;     | nnel */                                                                
;----------------------------------------------------------------------
        B         $C$L138,UNC           ; [CPU_ALU] |131| 
        ; branch occurs ; [] |131| 
$C$L6:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 133,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 133 | StartConversion();                                                     
;----------------------------------------------------------------------
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_StartConversion")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #_StartConversion     ; [CPU_ALU] |133| 
        ; call occurs [#_StartConversion] ; [] |133| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 134,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | TxMessage.sMsgStruct.Parm1 = RxMessage.sMsgStruct.Parm1;               
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |134| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |134| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |134| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 135,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | switch(RxMessage.sMsgStruct.Parm1) {                                   
; 136 |         case 0: /* ADCIN0 : 1.8V */                                    
;----------------------------------------------------------------------
        B         $C$L24,UNC            ; [CPU_ALU] |135| 
        ; branch occurs ; [] |135| 
$C$L7:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 137,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | AdcChnlResult = GetAdcConversion(ADCIN0, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |137| 
        MOVB      XAR4,#0               ; [CPU_ALU] |137| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |137| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |137| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |137| 
        ; call occurs [#_GetAdcConversion] ; [] |137| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |137| 
        ; call occurs [#I$$TOFS] ; [] |137| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |137| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 138,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | break;                                                                 
; 139 | case 1: /* ADCIN1 : MTR3 */                                            
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |138| 
        ; branch occurs ; [] |138| 
$C$L8:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 140,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | AdcChnlResult = GetAdcConversion(ADCIN1, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |140| 
        MOVB      XAR4,#1               ; [CPU_ALU] |140| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |140| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |140| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |140| 
        ; call occurs [#_GetAdcConversion] ; [] |140| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |140| 
        ; call occurs [#I$$TOFS] ; [] |140| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |140| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 141,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | break;                                                                 
; 142 | case 2: /* ADCIN2 : MTR5 */                                            
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |141| 
        ; branch occurs ; [] |141| 
$C$L9:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 143,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | AdcChnlResult = GetAdcConversion(ADCIN2, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |143| 
        MOVB      XAR4,#2               ; [CPU_ALU] |143| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |143| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |143| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |143| 
        ; call occurs [#_GetAdcConversion] ; [] |143| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |143| 
        ; call occurs [#I$$TOFS] ; [] |143| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |143| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 144,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 144 | break;                                                                 
; 145 | case 3: /* ADCIN3 : MTR24 */                                           
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |144| 
        ; branch occurs ; [] |144| 
$C$L10:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 146,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | AdcChnlResult = GetAdcConversion(ADCIN3, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |146| 
        MOVB      XAR4,#3               ; [CPU_ALU] |146| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |146| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |146| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |146| 
        ; call occurs [#_GetAdcConversion] ; [] |146| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |146| 
        ; call occurs [#I$$TOFS] ; [] |146| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |146| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 147,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | break;                                                                 
; 148 | case 4: /* ADCIN4 : REF0.9 */                                          
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |147| 
        ; branch occurs ; [] |147| 
$C$L11:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 149,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | AdcChnlResult = GetAdcConversion(ADCIN4, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |149| 
        MOVB      XAR4,#4               ; [CPU_ALU] |149| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |149| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |149| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |149| 
        ; call occurs [#_GetAdcConversion] ; [] |149| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |149| 
        ; call occurs [#I$$TOFS] ; [] |149| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |149| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 150,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | break;                                                                 
; 151 | case 5: /* ADCIN5 : REF2.5 */                                          
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |150| 
        ; branch occurs ; [] |150| 
$C$L12:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 152,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | AdcChnlResult = GetAdcConversion(ADCIN5, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |152| 
        MOVB      XAR4,#5               ; [CPU_ALU] |152| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |152| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |152| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |152| 
        ; call occurs [#_GetAdcConversion] ; [] |152| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |152| 
        ; call occurs [#I$$TOFS] ; [] |152| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |152| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 153,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | break;                                                                 
; 154 | case 6: /* ADCIN6 : 0.1908V */                                         
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |153| 
        ; branch occurs ; [] |153| 
$C$L13:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 155,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | AdcChnlResult = GetAdcConversion(ADCIN6, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |155| 
        MOVB      XAR4,#6               ; [CPU_ALU] |155| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |155| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |155| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |155| 
        ; call occurs [#_GetAdcConversion] ; [] |155| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |155| 
        ; call occurs [#I$$TOFS] ; [] |155| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |155| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 156,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 156 | break;                                                                 
; 157 | case 7: /* ADCIN7 : AO_MF_TST0 */                                      
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |156| 
        ; branch occurs ; [] |156| 
$C$L14:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 158,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | AdcChnlResult = GetAdcConversion(ADCIN7, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |158| 
        MOVB      XAR4,#7               ; [CPU_ALU] |158| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |158| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |158| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |158| 
        ; call occurs [#_GetAdcConversion] ; [] |158| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |158| 
        ; call occurs [#I$$TOFS] ; [] |158| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |158| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 159,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | break;                                                                 
; 160 | case 8: /* ADCIN8 : AO_MF_TST1 */                                      
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |159| 
        ; branch occurs ; [] |159| 
$C$L15:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 161,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | AdcChnlResult = GetAdcConversion(ADCIN8, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |161| 
        MOVB      XAR4,#8               ; [CPU_ALU] |161| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |161| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |161| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |161| 
        ; call occurs [#_GetAdcConversion] ; [] |161| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |161| 
        ; call occurs [#I$$TOFS] ; [] |161| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |161| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 162,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | break;                                                                 
; 163 | case 9: /* ADCIN9 : AO_MF_TST2 */                                      
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |162| 
        ; branch occurs ; [] |162| 
$C$L16:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 164,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 164 | AdcChnlResult = GetAdcConversion(ADCIN9, GainCalErr, OffsCalErr);      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |164| 
        MOVB      XAR4,#9               ; [CPU_ALU] |164| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |164| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |164| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |164| 
        ; call occurs [#_GetAdcConversion] ; [] |164| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |164| 
        ; call occurs [#I$$TOFS] ; [] |164| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |164| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 165,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | break;                                                                 
; 166 | case 10: /* ADCIN10 : AO_MF_TST3 */                                    
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |165| 
        ; branch occurs ; [] |165| 
$C$L17:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 167,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | AdcChnlResult = GetAdcConversion(ADCIN10, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |167| 
        MOVB      XAR4,#10              ; [CPU_ALU] |167| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |167| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |167| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |167| 
        ; call occurs [#_GetAdcConversion] ; [] |167| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |167| 
        ; call occurs [#I$$TOFS] ; [] |167| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |167| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 168,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | break;                                                                 
; 169 | case 11: /* ADCIN11 : AGND */                                          
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |168| 
        ; branch occurs ; [] |168| 
$C$L18:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 170,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | AdcChnlResult = GetAdcConversion(ADCIN11, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |170| 
        MOVB      XAR4,#11              ; [CPU_ALU] |170| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |170| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |170| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |170| 
        ; call occurs [#_GetAdcConversion] ; [] |170| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |170| 
        ; call occurs [#I$$TOFS] ; [] |170| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |170| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 171,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | break;                                                                 
; 172 | case 12: /* ADCIN12 : PEL_MON */                                       
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |171| 
        ; branch occurs ; [] |171| 
$C$L19:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 173,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | AdcChnlResult = GetAdcConversion(ADCIN12, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |173| 
        MOVB      XAR4,#12              ; [CPU_ALU] |173| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |173| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |173| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |173| 
        ; call occurs [#_GetAdcConversion] ; [] |173| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |173| 
        ; call occurs [#I$$TOFS] ; [] |173| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |173| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 174,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | break;                                                                 
; 175 | case 13: /* ADCIN13 : MEL_MON */                                       
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |174| 
        ; branch occurs ; [] |174| 
$C$L20:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 176,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | AdcChnlResult = GetAdcConversion(ADCIN13, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |176| 
        MOVB      XAR4,#13              ; [CPU_ALU] |176| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |176| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |176| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |176| 
        ; call occurs [#_GetAdcConversion] ; [] |176| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |176| 
        ; call occurs [#I$$TOFS] ; [] |176| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |176| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 177,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | break;                                                                 
; 178 | case 14: /* ADCIN14 : BEL_MON */                                       
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |177| 
        ; branch occurs ; [] |177| 
$C$L21:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 179,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | AdcChnlResult = GetAdcConversion(ADCIN14, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |179| 
        MOVB      XAR4,#14              ; [CPU_ALU] |179| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |179| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |179| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |179| 
        ; call occurs [#_GetAdcConversion] ; [] |179| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |179| 
        ; call occurs [#I$$TOFS] ; [] |179| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |179| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 180,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | break;                                                                 
; 181 | case 15: /* ADCIN15 : TEMP_MON */                                      
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |180| 
        ; branch occurs ; [] |180| 
$C$L22:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 182,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | AdcChnlResult = GetAdcConversion(ADCIN15, GainCalErr, OffsCalErr);     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |182| 
        MOVB      XAR4,#15              ; [CPU_ALU] |182| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |182| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |182| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_GetAdcConversion")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #_GetAdcConversion    ; [CPU_ALU] |182| 
        ; call occurs [#_GetAdcConversion] ; [] |182| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("I$$TOFS")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #I$$TOFS              ; [CPU_ALU] |182| 
        ; call occurs [#I$$TOFS] ; [] |182| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |182| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 183,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | break;                                                                 
; 184 | default:                                                               
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |183| 
        ; branch occurs ; [] |183| 
$C$L23:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 185,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | AdcChnlResult = 0.0;                                                   
;----------------------------------------------------------------------
        MOV       ACC,#0                ; [CPU_ALU] |185| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |185| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 186,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_ALU] |186| 
        ; branch occurs ; [] |186| 
$C$L24:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 135,column 5,is_stmt,isa 0
        MOVL      XAR0,#14              ; [CPU_ALU] |135| 
        MOVZ      AR6,*+FP[AR0]         ; [CPU_ALU] |135| 
        MOV       AL,AR6                ; [CPU_ALU] |135| 
        CMPB      AL,#15                ; [CPU_ALU] |135| 
        B         $C$L23,HI             ; [CPU_ALU] |135| 
        ; branchcc occurs ; [] |135| 
        MOVL      XAR7,#$C$SW3          ; [CPU_ARAU] |135| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,XAR7              ; [CPU_ALU] |135| 
        ADD       ACC,AR6 << #1         ; [CPU_ALU] |135| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |135| 
        MOVL      XAR7,*XAR7            ; [CPU_ALU] |135| 
        LB        *XAR7                 ; [CPU_ALU] |135| 
        ; branch occurs ; [] |135| 
	.sect	".switch:_main"
	.clink
$C$SW3:	.long	$C$L7	; 0
	.long	$C$L8	; 1
	.long	$C$L9	; 2
	.long	$C$L10	; 3
	.long	$C$L11	; 4
	.long	$C$L12	; 5
	.long	$C$L13	; 6
	.long	$C$L14	; 7
	.long	$C$L15	; 8
	.long	$C$L16	; 9
	.long	$C$L17	; 10
	.long	$C$L18	; 11
	.long	$C$L19	; 12
	.long	$C$L20	; 13
	.long	$C$L21	; 14
	.long	$C$L22	; 15
	.sect	".text"
$C$L25:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 189,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | if((AdcChnlResult >= -32768.0) && (AdcChnlResult <= 32767.999847)) {   
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-29184 << 15     ; [CPU_ALU] |189| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |189| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |189| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_ALU] |189| 
        ; call occurs [#FS$$CMP] ; [] |189| 
        CMPB      AL,#0                 ; [CPU_ALU] |189| 
        B         $C$L26,LT             ; [CPU_ALU] |189| 
        ; branchcc occurs ; [] |189| 
        MOVB      AL,#0                 ; [CPU_ALU] |189| 
        MOV       AH,#18176             ; [CPU_ALU] |189| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |189| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |189| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_ALU] |189| 
        ; call occurs [#FS$$CMP] ; [] |189| 
        CMPB      AL,#0                 ; [CPU_ALU] |189| 
        B         $C$L26,GT             ; [CPU_ALU] |189| 
        ; branchcc occurs ; [] |189| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 190,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | Iq32 = (long int)(AdcChnlResult * 65536.0);                            
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |190| 
        MOV       AH,#18304             ; [CPU_ALU] |190| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |190| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |190| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |190| 
        ; call occurs [#FS$$MPY] ; [] |190| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_ALU] |190| 
        ; call occurs [#FS$$TOL] ; [] |190| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |190| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 191,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | TxMessage.sMsgStruct.Parm6 = (Iq32 & 0xff);                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |191| 
        ANDB      AL,#0xff              ; [CPU_ALU] |191| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |191| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 192,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | TxMessage.sMsgStruct.Parm5 = ((Iq32 >> 8) & 0xff);                     
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |192| 
        SFR       ACC,8                 ; [CPU_ALU] |192| 
        ANDB      AL,#0xff              ; [CPU_ALU] |192| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |192| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 193,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | TxMessage.sMsgStruct.Parm4 = ((Iq32 >> 16) & 0xff);                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |193| 
        ANDB      AL,#0xff              ; [CPU_ALU] |193| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |193| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 194,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 194 | TxMessage.sMsgStruct.Parm3 = ((Iq32 >> 24) & 0xff);                    
;----------------------------------------------------------------------
        MOV       T,#24                 ; [CPU_ALU] |194| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |194| 
        ASRL      ACC,T                 ; [CPU_ALU] |194| 
        ANDB      AL,#0xff              ; [CPU_ALU] |194| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |194| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 195,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |195| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 196,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 196 | TxMessage.sMsgStruct.Length = 6;                                       
; 198 | else { /* Number out of IQ32 range */                                  
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |196| 
        B         $C$L140,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L26:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 199,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | TxMessage.sMsgStruct.Parm2 = 0xff;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[61],#255,UNC     ; [CPU_ALU] |199| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 200,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | TxMessage.sMsgStruct.Length = 2;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#2,UNC       ; [CPU_ALU] |200| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 202,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | break;                                                                 
; 203 | case 'B':       /* Construct EEPROM Structure and write structure to EE
;     | PROM */                                                                
; 204 | switch(RxMessage.sMsgStruct.Parm1) {                                   
; 205 |         case 0: /* Get PCB Hardware Version and Model Number */        
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
$C$L27:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 207,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 207 | EepromArray[0x08] = (PcbModel >> 24) & 0xff;                           
;----------------------------------------------------------------------
        MOVB      *-SP[48],#5,UNC       ; [CPU_ALU] |207| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 208,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | EepromArray[0x09] = (PcbModel >> 16) & 0xff;                           
;----------------------------------------------------------------------
        MOVB      *-SP[47],#246,UNC     ; [CPU_ALU] |208| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 209,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | EepromArray[0x0a] = (PcbModel >> 8) & 0xff;                            
;----------------------------------------------------------------------
        MOVB      *-SP[46],#67,UNC      ; [CPU_ALU] |209| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 210,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | EepromArray[0x0b] = (PcbModel & 0xff);                                 
;----------------------------------------------------------------------
        MOVB      *-SP[45],#4,UNC       ; [CPU_ALU] |210| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 212,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | EepromArray[0x0c] = RxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |212| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |212| 
        MOV       *-SP[44],AL           ; [CPU_ALU] |212| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 213,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 213 | EepromArray[0x0d] = RxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |213| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |213| 
        MOV       *-SP[43],AL           ; [CPU_ALU] |213| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 214,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | EepromArray[0x0e] = RxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |214| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |214| 
        MOV       *-SP[42],AL           ; [CPU_ALU] |214| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 215,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | EepromArray[0x0f] = RxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |215| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |215| 
        MOV       *-SP[41],AL           ; [CPU_ALU] |215| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 216,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |216| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 217,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | break;                                                                 
; 218 | case 1: /* Get PCB Serial Number */                                    
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |217| 
        ; branch occurs ; [] |217| 
$C$L28:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 220,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | EepromArray[0x10] = RxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |220| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |220| 
        MOV       *-SP[40],AL           ; [CPU_ALU] |220| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 221,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | EepromArray[0x11] = RxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |221| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |221| 
        MOV       *-SP[39],AL           ; [CPU_ALU] |221| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 222,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 222 | EepromArray[0x12] = RxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |222| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |222| 
        MOV       *-SP[38],AL           ; [CPU_ALU] |222| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 223,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | EepromArray[0x13] = RxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |223| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |223| 
        MOV       *-SP[37],AL           ; [CPU_ALU] |223| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 224,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 224 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |224| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 225,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | break;                                                                 
; 226 | case 2: /* Construct Offset and Calibration fields */                  
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |225| 
        ; branch occurs ; [] |225| 
$C$L29:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 228,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | EepromArray[0x14] = (OffsCalErr >> 24) & 0xff;                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |228| 
        MOV       T,#24                 ; [CPU_ALU] |228| 
        ASRL      ACC,T                 ; [CPU_ALU] |228| 
        ANDB      AL,#0xff              ; [CPU_ALU] |228| 
        MOV       *-SP[36],AL           ; [CPU_ALU] |228| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 229,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 229 | EepromArray[0x15] = (OffsCalErr >> 16) & 0xff;                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |229| 
        ANDB      AL,#0xff              ; [CPU_ALU] |229| 
        MOV       *-SP[35],AL           ; [CPU_ALU] |229| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 230,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | EepromArray[0x16] = (OffsCalErr >> 8) & 0xff;                          
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |230| 
        SFR       ACC,8                 ; [CPU_ALU] |230| 
        ANDB      AL,#0xff              ; [CPU_ALU] |230| 
        MOV       *-SP[34],AL           ; [CPU_ALU] |230| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 231,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | EepromArray[0x17] = (OffsCalErr & 0xff);                               
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |231| 
        ANDB      AL,#0xff              ; [CPU_ALU] |231| 
        MOV       *-SP[33],AL           ; [CPU_ALU] |231| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 233,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | Iq32 = (int32)(GainCalErr * 65536.0);                                  
;----------------------------------------------------------------------
        MOV       AH,#18304             ; [CPU_ALU] |233| 
        MOVB      AL,#0                 ; [CPU_ALU] |233| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |233| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |233| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |233| 
        ; call occurs [#FS$$MPY] ; [] |233| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_ALU] |233| 
        ; call occurs [#FS$$TOL] ; [] |233| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |233| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 234,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | EepromArray[0x18] = (Iq32 >> 24) & 0xff;                               
;----------------------------------------------------------------------
        MOV       T,#24                 ; [CPU_ALU] |234| 
        ASRL      ACC,T                 ; [CPU_ALU] |234| 
        ANDB      AL,#0xff              ; [CPU_ALU] |234| 
        MOV       *-SP[32],AL           ; [CPU_ALU] |234| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 235,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | EepromArray[0x19] = (Iq32 >> 16) & 0xff;                               
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |235| 
        ANDB      AL,#0xff              ; [CPU_ALU] |235| 
        MOV       *-SP[31],AL           ; [CPU_ALU] |235| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 236,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | EepromArray[0x1a] = (Iq32 >> 8) & 0xff;                                
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |236| 
        SFR       ACC,8                 ; [CPU_ALU] |236| 
        ANDB      AL,#0xff              ; [CPU_ALU] |236| 
        MOV       *-SP[30],AL           ; [CPU_ALU] |236| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 237,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 237 | EepromArray[0x1b] = (Iq32 & 0xff);                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |237| 
        ANDB      AL,#0xff              ; [CPU_ALU] |237| 
        MOV       *-SP[29],AL           ; [CPU_ALU] |237| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 239,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | EepromArray[0x1c] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[28],#0           ; [CPU_ALU] |239| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 240,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | EepromArray[0x1d] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[27],#0           ; [CPU_ALU] |240| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 241,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | EepromArray[0x1e] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[26],#0           ; [CPU_ALU] |241| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 242,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | EepromArray[0x1f] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[25],#0           ; [CPU_ALU] |242| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 244,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | EepromArray[0x20] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[24],#0           ; [CPU_ALU] |244| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 245,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | EepromArray[0x21] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[23],#0           ; [CPU_ALU] |245| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 246,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | EepromArray[0x22] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[22],#0           ; [CPU_ALU] |246| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 247,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | EepromArray[0x23] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[21],#0           ; [CPU_ALU] |247| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 249,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 249 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |249| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 250,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | break;                                                                 
; 251 | case 3: /* Calculate the EEPROM Parameters CRC */                      
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |250| 
        ; branch occurs ; [] |250| 
$C$L30:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 253,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | EepromArray[0x04] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[52],#0           ; [CPU_ALU] |253| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 254,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | EepromArray[0x05] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[51],#0           ; [CPU_ALU] |254| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 255,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | EepromArray[0x06] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[50],#0           ; [CPU_ALU] |255| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 256,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | EepromArray[0x07] = 0x00;                                              
;----------------------------------------------------------------------
        MOV       *-SP[49],#0           ; [CPU_ALU] |256| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 258,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | ParamsCRC = crcCalc32(EepromArray, 4, 28);                             
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |258| 
        MOVB      AL,#4                 ; [CPU_ALU] |258| 
        MOVB      AH,#28                ; [CPU_ALU] |258| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |258| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |258| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_crcCalc32")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_crcCalc32           ; [CPU_ALU] |258| 
        ; call occurs [#_crcCalc32] ; [] |258| 
        MOVW      DP,#_ParamsCRC$1      ; [CPU_ARAU] 
        MOVL      @_ParamsCRC$1,ACC     ; [CPU_ALU] |258| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 259,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | TxMessage.sMsgStruct.Parm6 = (ParamsCRC & 0xff);                       
;----------------------------------------------------------------------
        MOVB      AL.LSB,@_ParamsCRC$1  ; [CPU_ALU] |259| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |259| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 260,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 260 | TxMessage.sMsgStruct.Parm5 = ((ParamsCRC >> 8) & 0xff);                
;----------------------------------------------------------------------
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,@_ParamsCRC$1     ; [CPU_ALU] |260| 
        SFR       ACC,8                 ; [CPU_ALU] |260| 
        ANDB      AL,#0xff              ; [CPU_ALU] |260| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |260| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 261,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | TxMessage.sMsgStruct.Parm4 = ((ParamsCRC >> 16) & 0xff);               
;----------------------------------------------------------------------
        MOVB      AL.LSB,@$BLOCKED(_ParamsCRC$1)+1 ; [CPU_ALU] |261| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |261| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 262,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 262 | TxMessage.sMsgStruct.Parm3 = ((ParamsCRC >> 24) & 0xff);               
;----------------------------------------------------------------------
        MOV       T,#24                 ; [CPU_ALU] |262| 
        MOVL      ACC,@_ParamsCRC$1     ; [CPU_ALU] |262| 
        LSRL      ACC,T                 ; [CPU_ALU] |262| 
        ANDB      AL,#0xff              ; [CPU_ALU] |262| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |262| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 263,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |263| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 265,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | EepromArray[0x00] = TxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[60]           ; [CPU_ALU] |265| 
        MOV       *-SP[56],AL           ; [CPU_ALU] |265| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 266,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | EepromArray[0x01] = TxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[59]           ; [CPU_ALU] |266| 
        MOV       *-SP[55],AL           ; [CPU_ALU] |266| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 267,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | EepromArray[0x02] = TxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[58]           ; [CPU_ALU] |267| 
        MOV       *-SP[54],AL           ; [CPU_ALU] |267| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 268,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | EepromArray[0x03] = TxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[57]           ; [CPU_ALU] |268| 
        MOV       *-SP[53],AL           ; [CPU_ALU] |268| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 269,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 269 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |269| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 270,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 270 | break;                                                                 
; 271 | case 4: /* Write and verify Structure to Serial EEPROM */              
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |270| 
        ; branch occurs ; [] |270| 
$C$L31:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 272,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 272 | if(SpiMode != 2) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |272| 
        CMPB      AL,#2                 ; [CPU_ALU] |272| 
        B         $C$L32,EQ             ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 273,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 273 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |273| 
        ; call occurs [#_ConfigEepromInterface] ; [] |273| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 274,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |274| 
$C$L32:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 276,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | for(idx = 0x00; idx < 0x1c; idx++) {                                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |276| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |276| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 276,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |276| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |276| 
        CMPB      AL,#28                ; [CPU_ALU] |276| 
        B         $C$L34,HIS            ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
$C$L33:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 277,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 277 | EepromWriteByte(idx, EepromArray[idx]);                                
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |277| 
        MOVL      XAR0,#11              ; [CPU_ALU] |277| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |277| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |277| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |277| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |277| 
        MOVL      XAR0,#11              ; [CPU_ALU] |277| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |277| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |277| 
        ; call occurs [#_EepromWriteByte] ; [] |277| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 278,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 278 | EepromWriteByte((idx + 0x200), EepromArray[idx]);                      
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |278| 
        MOVZ      AR4,SP                ; [CPU_ALU] |278| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |278| 
        MOVL      XAR0,#11              ; [CPU_ALU] |278| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |278| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |278| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |278| 
        ADD       AL,#512               ; [CPU_ALU] |278| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |278| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |278| 
        ; call occurs [#_EepromWriteByte] ; [] |278| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 279,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | EepromWriteByte((idx + 0x400), EepromArray[idx]);                      
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |279| 
        MOVZ      AR4,SP                ; [CPU_ALU] |279| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |279| 
        MOVL      XAR0,#11              ; [CPU_ALU] |279| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |279| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |279| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |279| 
        ADD       AL,#1024              ; [CPU_ALU] |279| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |279| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |279| 
        ; call occurs [#_EepromWriteByte] ; [] |279| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 276,column 35,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |276| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |276| 
        MOVL      XAR0,#11              ; [CPU_ALU] |276| 
        ADDB      AL,#1                 ; [CPU_ALU] |276| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |276| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 276,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |276| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |276| 
        CMPB      AL,#28                ; [CPU_ALU] |276| 
        B         $C$L33,LO             ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
$C$L34:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 281,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | EepromWriteByte(0x1ff4, 0xa5);  // CAN ID Password                     
;----------------------------------------------------------------------
        MOV       AL,#8180              ; [CPU_ALU] |281| 
        MOVB      AH,#165               ; [CPU_ALU] |281| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |281| 
        ; call occurs [#_EepromWriteByte] ; [] |281| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 282,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | EepromWriteByte(0x1ff5, 0x77);  // CAN ID Password                     
;----------------------------------------------------------------------
        MOV       AL,#8181              ; [CPU_ALU] |282| 
        MOVB      AH,#119               ; [CPU_ALU] |282| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |282| 
        ; call occurs [#_EepromWriteByte] ; [] |282| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 283,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | EepromWriteByte(0x1ff6, 0x88);  // CAN ID Password                     
; 284 | //EepromWriteByte(0x1ff7, 0x94);        // CAN_ID                      
;----------------------------------------------------------------------
        MOV       AL,#8182              ; [CPU_ALU] |283| 
        MOVB      AH,#136               ; [CPU_ALU] |283| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |283| 
        ; call occurs [#_EepromWriteByte] ; [] |283| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 285,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 285 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |285| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 286,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | TxMessage.sMsgStruct.Parm3 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[60],#0           ; [CPU_ALU] |286| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 287,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | TxMessage.sMsgStruct.Parm4 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[59],#0           ; [CPU_ALU] |287| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 288,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | for(idx = 0x00; idx < 0x2c; idx++) {                                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |288| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |288| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 288,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |288| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |288| 
        CMPB      AL,#44                ; [CPU_ALU] |288| 
        B         $C$L39,HIS            ; [CPU_ALU] |288| 
        ; branchcc occurs ; [] |288| 
$C$L35:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 289,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | if(EepromArray[idx] != EepromReadByte(idx))                            
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |289| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |289| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |289| 
        ; call occurs [#_EepromReadByte] ; [] |289| 
        MOVZ      AR4,SP                ; [CPU_ALU] |289| 
        MOVL      XAR0,#11              ; [CPU_ALU] |289| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |289| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |289| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |289| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |289| 
        MOVU      ACC,AL                ; [CPU_ALU] |289| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |289| 
        B         $C$L36,EQ             ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 290,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | TxMessage.sMsgStruct.Parm2++;                                          
;----------------------------------------------------------------------
        INC       *-SP[61]              ; [CPU_ALU] |290| 
$C$L36:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 291,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | if(EepromArray[idx] != EepromReadByte(idx + 0x200))                    
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |291| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |291| 
        ADD       AL,#512               ; [CPU_ALU] |291| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |291| 
        ; call occurs [#_EepromReadByte] ; [] |291| 
        MOVZ      AR4,SP                ; [CPU_ALU] |291| 
        MOVL      XAR0,#11              ; [CPU_ALU] |291| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |291| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |291| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |291| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |291| 
        MOVU      ACC,AL                ; [CPU_ALU] |291| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |291| 
        B         $C$L37,EQ             ; [CPU_ALU] |291| 
        ; branchcc occurs ; [] |291| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 292,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 292 | TxMessage.sMsgStruct.Parm3++;                                          
;----------------------------------------------------------------------
        INC       *-SP[60]              ; [CPU_ALU] |292| 
$C$L37:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 293,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | if(EepromArray[idx] != EepromReadByte(idx + 0x400))                    
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |293| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |293| 
        ADD       AL,#1024              ; [CPU_ALU] |293| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |293| 
        ; call occurs [#_EepromReadByte] ; [] |293| 
        MOVZ      AR4,SP                ; [CPU_ALU] |293| 
        MOVL      XAR0,#11              ; [CPU_ALU] |293| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |293| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |293| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |293| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |293| 
        MOVU      ACC,AL                ; [CPU_ALU] |293| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |293| 
        B         $C$L38,EQ             ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 294,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | TxMessage.sMsgStruct.Parm4++;                                          
;----------------------------------------------------------------------
        INC       *-SP[59]              ; [CPU_ALU] |294| 
$C$L38:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 288,column 35,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |288| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |288| 
        MOVL      XAR0,#11              ; [CPU_ALU] |288| 
        ADDB      AL,#1                 ; [CPU_ALU] |288| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |288| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 288,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |288| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |288| 
        CMPB      AL,#44                ; [CPU_ALU] |288| 
        B         $C$L35,LO             ; [CPU_ALU] |288| 
        ; branchcc occurs ; [] |288| 
$C$L39:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 296,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | TxMessage.sMsgStruct.Length = 4;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#4,UNC       ; [CPU_ALU] |296| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 297,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 297 | break;                                                                 
; 298 | case 6: // Perform a memory dump of the serial EEPROM                  
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |297| 
        ; branch occurs ; [] |297| 
$C$L40:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 299,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 299 | if(SpiMode != 2) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |299| 
        CMPB      AL,#2                 ; [CPU_ALU] |299| 
        B         $C$L41,EQ             ; [CPU_ALU] |299| 
        ; branchcc occurs ; [] |299| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 300,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |300| 
        ; call occurs [#_ConfigEepromInterface] ; [] |300| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 301,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |301| 
$C$L41:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 303,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | Cnt = RxMessage.sMsgStruct.Parm3 - RxMessage.sMsgStruct.Parm2;         
;----------------------------------------------------------------------
        MOVL      XAR1,#16              ; [CPU_ALU] |303| 
        MOVL      XAR0,#15              ; [CPU_ALU] |303| 
        MOV       AL,*+FP[AR1]          ; [CPU_ALU] |303| 
        SUB       AL,*+FP[AR0]          ; [CPU_ALU] |303| 
        MOVL      XAR0,#10              ; [CPU_ALU] |303| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |303| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 304,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | if(Cnt <= 6) {                                                         
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |304| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |304| 
        CMPB      AL,#6                 ; [CPU_ALU] |304| 
        B         $C$L44,HI             ; [CPU_ALU] |304| 
        ; branchcc occurs ; [] |304| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 305,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 305 | MsgCnt = 2;                                                            
;----------------------------------------------------------------------
        MOVB      *+FP[7],#2,UNC        ; [CPU_ALU] |305| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 306,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 306 | for(idx = RxMessage.sMsgStruct.Parm2; idx < RxMessage.sMsgStruct.Parm3;
;     |  idx++) {                                                              
;----------------------------------------------------------------------
        MOVL      XAR0,#15              ; [CPU_ALU] |306| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |306| 
        MOVL      XAR0,#11              ; [CPU_ALU] |306| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |306| 
        B         $C$L43,UNC            ; [CPU_ALU] |306| 
        ; branch occurs ; [] |306| 
$C$L42:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 307,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | TxMessage.bData[MsgCnt++] = EepromReadByte(idx);                       
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |307| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |307| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |307| 
        ; call occurs [#_EepromReadByte] ; [] |307| 
        MOVZ      AR4,SP                ; [CPU_ALU] |307| 
        MOVZ      AR0,*+FP[7]           ; [CPU_ALU] |307| 
        SUBB      XAR4,#64              ; [CPU_ARAU] |307| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |307| 
        INC       *+FP[7]               ; [CPU_ALU] |307| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |307| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 306,column 80,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |306| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |306| 
        MOVL      XAR0,#11              ; [CPU_ALU] |306| 
        ADDB      AL,#1                 ; [CPU_ALU] |306| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |306| 
$C$L43:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 306,column 46,is_stmt,isa 0
        MOVL      XAR0,#16              ; [CPU_ALU] |306| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |306| 
        MOVL      XAR0,#11              ; [CPU_ALU] |306| 
        CMP       AL,*+FP[AR0]          ; [CPU_ALU] |306| 
        B         $C$L42,HI             ; [CPU_ALU] |306| 
        ; branchcc occurs ; [] |306| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 309,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | TxMessage.sMsgStruct.Length = Cnt;                                     
; 311 | else {                                                                 
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |309| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |309| 
        MOV       *-SP[63],AL           ; [CPU_ALU] |309| 
        B         $C$L140,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L44:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 312,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |312| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 314,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 314 | break;                                                                 
; 315 | case 7: // Read CAN ID Validation Password and CAN_ID                  
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |314| 
        ; branch occurs ; [] |314| 
$C$L45:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 316,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 316 | TxMessage.sMsgStruct.Parm1 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[62],#0           ; [CPU_ALU] |316| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 317,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |317| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 318,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 318 | TxMessage.sMsgStruct.Parm3 = EepromReadByte(0x1ff4);                   
;----------------------------------------------------------------------
        MOV       AL,#8180              ; [CPU_ALU] |318| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |318| 
        ; call occurs [#_EepromReadByte] ; [] |318| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |318| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 319,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 319 | TxMessage.sMsgStruct.Parm4 = EepromReadByte(0x1ff5);                   
;----------------------------------------------------------------------
        MOV       AL,#8181              ; [CPU_ALU] |319| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |319| 
        ; call occurs [#_EepromReadByte] ; [] |319| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |319| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 320,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 320 | TxMessage.sMsgStruct.Parm5 = EepromReadByte(0x1ff6);                   
;----------------------------------------------------------------------
        MOV       AL,#8182              ; [CPU_ALU] |320| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |320| 
        ; call occurs [#_EepromReadByte] ; [] |320| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |320| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 321,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 321 | TxMessage.sMsgStruct.Parm6 = EepromReadByte(0x1ff7);                   
;----------------------------------------------------------------------
        MOV       AL,#8183              ; [CPU_ALU] |321| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |321| 
        ; call occurs [#_EepromReadByte] ; [] |321| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |321| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 322,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |322| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 323,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 323 | break;                                                                 
; 325 | break;                                                                 
; 326 | case 'C':       /* Read the Version Code of the CPLD (U41) */          
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |323| 
        ; branch occurs ; [] |323| 
$C$L46:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 204,column 5,is_stmt,isa 0
        MOVL      XAR0,#14              ; [CPU_ALU] |204| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |204| 
        CMPB      AL,#3                 ; [CPU_ALU] |204| 
        B         $C$L47,GT             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#3                 ; [CPU_ALU] |204| 
        B         $C$L30,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#0                 ; [CPU_ALU] |204| 
        B         $C$L27,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#1                 ; [CPU_ALU] |204| 
        B         $C$L28,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#2                 ; [CPU_ALU] |204| 
        B         $C$L29,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        B         $C$L140,UNC           ; [CPU_ALU] |204| 
        ; branch occurs ; [] |204| 
$C$L47:    
        CMPB      AL,#4                 ; [CPU_ALU] |204| 
        B         $C$L31,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#6                 ; [CPU_ALU] |204| 
        B         $C$L40,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#7                 ; [CPU_ALU] |204| 
        B         $C$L45,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        B         $C$L140,UNC           ; [CPU_ALU] |204| 
        ; branch occurs ; [] |204| 
$C$L48:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 327,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 327 | TxMessage.sMsgStruct.Parm1 = ReadCpld(6);               // Read CPLD_VE
;     | RSION1                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#6                 ; [CPU_ALU] |327| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |327| 
        ; call occurs [#_ReadCpld] ; [] |327| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |327| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 328,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 328 | TxMessage.sMsgStruct.Parm2 = ReadCpld(5);               // Read CPLD_VE
;     | RSION0                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_ALU] |328| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |328| 
        ; call occurs [#_ReadCpld] ; [] |328| 
        MOV       *-SP[61],AL           ; [CPU_ALU] |328| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 329,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 329 | TxMessage.sMsgStruct.Length = 2;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#2,UNC       ; [CPU_ALU] |329| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 330,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 330 | break;                                                                 
; 331 | case 'D':       /* Program DAC (A through D) Output. Note: Expected dat
;     | a is in IQ32 format */                                                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |330| 
        ; branch occurs ; [] |330| 
$C$L49:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 332,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 332 | if(SpiMode != 1) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |332| 
        CMPB      AL,#1                 ; [CPU_ALU] |332| 
        B         $C$L50,EQ             ; [CPU_ALU] |332| 
        ; branchcc occurs ; [] |332| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 333,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 333 | ConfigDacInterface();                                                  
;----------------------------------------------------------------------
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_ConfigDacInterface")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_ConfigDacInterface  ; [CPU_ALU] |333| 
        ; call occurs [#_ConfigDacInterface] ; [] |333| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 334,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 334 | SpiMode = 1;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#1,UNC    ; [CPU_ALU] |334| 
$C$L50:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 336,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 336 | HighWord = ((RxMessage.sMsgStruct.Parm3 << 8) | (RxMessage.sMsgStruct.P
;     | arm4)) & 0xffff;                                                       
;----------------------------------------------------------------------
        MOVL      XAR1,#16              ; [CPU_ALU] |336| 
        MOVL      XAR0,#17              ; [CPU_ALU] |336| 
        MOV       ACC,*+FP[AR1] << #8   ; [CPU_ALU] |336| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |336| 
        MOVL      XAR0,#9               ; [CPU_ALU] |336| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |336| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 337,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 337 | LowWord = ((RxMessage.sMsgStruct.Parm5 << 8) | (RxMessage.sMsgStruct.Pa
;     | rm6)) & 0xffff;                                                        
;----------------------------------------------------------------------
        MOVL      XAR1,#18              ; [CPU_ALU] |337| 
        MOVL      XAR0,#19              ; [CPU_ALU] |337| 
        MOV       ACC,*+FP[AR1] << #8   ; [CPU_ALU] |337| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |337| 
        MOVL      XAR0,#8               ; [CPU_ALU] |337| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |337| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 338,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 338 | DacOut = ((float)(HighWord & 0x7fff)) + ((float)(LowWord))/65536.0;    
;----------------------------------------------------------------------
        MOVL      XAR0,#9               ; [CPU_ALU] |338| 
        AND       AL,*+FP[AR0],#0x7fff  ; [CPU_ALU] |338| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_ALU] |338| 
        ; call occurs [#U$$TOFS] ; [] |338| 
        MOVL      XAR0,#8               ; [CPU_ALU] |338| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |338| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |338| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_ALU] |338| 
        ; call occurs [#U$$TOFS] ; [] |338| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |338| 
        MOVB      AL,#0                 ; [CPU_ALU] |338| 
        MOV       AH,#18304             ; [CPU_ALU] |338| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |338| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |338| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_ALU] |338| 
        ; call occurs [#FS$$DIV] ; [] |338| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |338| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |338| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_ALU] |338| 
        ; call occurs [#FS$$ADD] ; [] |338| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |338| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 339,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 339 | if(HighWord & 0x8000)                                                  
;----------------------------------------------------------------------
        MOVL      XAR0,#9               ; [CPU_ALU] |339| 
        TBIT      *+FP[AR0],#15         ; [CPU_ALU] |339| 
        B         $C$L51,NTC            ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 340,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 340 | DacOut *= -1.0;                                                        
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |340| 
        MOV       AH,#49024             ; [CPU_ALU] |340| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |340| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |340| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_ALU] |340| 
        ; call occurs [#FS$$MPY] ; [] |340| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |340| 
$C$L51:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 341,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 341 | TxDacData(RxMessage.sMsgStruct.Parm1, DacOut);                         
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |341| 
        MOVZ      AR4,*+FP[AR0]         ; [CPU_ALU] |341| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_TxDacData")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_TxDacData           ; [CPU_ALU] |341| 
        ; call occurs [#_TxDacData] ; [] |341| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 342,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 342 | TxDacData(RxMessage.sMsgStruct.Parm1, DacOut);                         
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |342| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |342| 
        MOVZ      AR4,*+FP[AR0]         ; [CPU_ALU] |342| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_TxDacData")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_TxDacData           ; [CPU_ALU] |342| 
        ; call occurs [#_TxDacData] ; [] |342| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 343,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 343 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |343| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 344,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 344 | break;                                                                 
; 345 | case 'E':       /* Test Serial EEPROM */                               
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |344| 
        ; branch occurs ; [] |344| 
$C$L52:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 346,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 346 | if(SpiMode != 2) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |346| 
        CMPB      AL,#2                 ; [CPU_ALU] |346| 
        B         $C$L53,EQ             ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 347,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 347 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |347| 
        ; call occurs [#_ConfigEepromInterface] ; [] |347| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 348,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |348| 
$C$L53:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 350,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 350 | TxMessage.sMsgStruct.Parm1 = EepromTest(); /* This test can take up to
;     | 3 minutes to complete */                                               
;----------------------------------------------------------------------
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_EepromTest")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #_EepromTest          ; [CPU_ALU] |350| 
        ; call occurs [#_EepromTest] ; [] |350| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |350| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 351,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 351 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |351| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 352,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | break;                                                                 
; 353 | case 'F':       /* Test external Power Distribution Board Serial EEPROM
;     |  */                                                                    
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |352| 
        ; branch occurs ; [] |352| 
$C$L54:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 354,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |354| 
        ; call occurs [#_ConfigEepromInterface] ; [] |354| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 355,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 355 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |355| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 356,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | switch (RxMessage.sMsgStruct.Parm1) {                                  
; 357 |         case 0: // Test external EEPROM ' F 1 0'                       
;----------------------------------------------------------------------
        B         $C$L88,UNC            ; [CPU_ALU] |356| 
        ; branch occurs ; [] |356| 
$C$L55:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 358,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 358 | TxMessage.sMsgStruct.Parm1 = AuxEepromTest(); // This test can take up
;     | to 3 minutes to complete                                               
;----------------------------------------------------------------------
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_AuxEepromTest")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_AuxEepromTest       ; [CPU_ALU] |358| 
        ; call occurs [#_AuxEepromTest] ; [] |358| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |358| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 359,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 359 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |359| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 360,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 360 | break;                                                                 
; 361 | case 1: // Read external EEPROM Status Register 'F 1 1'                
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |360| 
        ; branch occurs ; [] |360| 
$C$L56:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 362,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 362 | TxMessage.sMsgStruct.Parm1 = AuxEepromReadStatus();                    
;----------------------------------------------------------------------
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_AuxEepromReadStatus")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_AuxEepromReadStatus ; [CPU_ALU] |362| 
        ; call occurs [#_AuxEepromReadStatus] ; [] |362| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |362| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 363,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 363 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |363| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 364,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 364 | break;                                                                 
; 365 | case 2: // Read Byte from selected address 'F 3 2 HiAddr LoAddr'       
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |364| 
        ; branch occurs ; [] |364| 
$C$L57:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 366,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 366 | LowWord = ((RxMessage.sMsgStruct.Parm2 << 8) | (RxMessage.sMsgStruct.Pa
;     | rm3)) & 0xffff;                                                        
;----------------------------------------------------------------------
        MOVL      XAR1,#15              ; [CPU_ALU] |366| 
        MOVL      XAR0,#16              ; [CPU_ALU] |366| 
        MOV       ACC,*+FP[AR1] << #8   ; [CPU_ALU] |366| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |366| 
        MOVL      XAR0,#8               ; [CPU_ALU] |366| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |366| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 367,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 367 | TxMessage.sMsgStruct.Parm1 = AuxEepromReadByte(LowWord);               
;----------------------------------------------------------------------
        MOVL      XAR0,#8               ; [CPU_ALU] |367| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |367| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |367| 
        ; call occurs [#_AuxEepromReadByte] ; [] |367| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |367| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 368,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 368 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |368| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 369,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 369 | break;                                                                 
; 370 | case 3: // Write to Status Register 'F 2 3 StsData'                    
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |369| 
        ; branch occurs ; [] |369| 
$C$L58:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 371,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 371 | AuxEepromWriteStatus(RxMessage.sMsgStruct.Parm2);                      
;----------------------------------------------------------------------
        MOVL      XAR0,#15              ; [CPU_ALU] |371| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |371| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_AuxEepromWriteStatus")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #_AuxEepromWriteStatus ; [CPU_ALU] |371| 
        ; call occurs [#_AuxEepromWriteStatus] ; [] |371| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 372,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 372 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |372| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 373,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 373 | break;                                                                 
; 374 | case 4: // Write Selected Byte to selected address 'F 4 4 HiAddr LoAddr
;     |  Data'                                                                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |373| 
        ; branch occurs ; [] |373| 
$C$L59:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 375,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 375 | AuxEepromWriteEnable(TRUE);                                            
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |375| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_AuxEepromWriteEnable")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_AuxEepromWriteEnable ; [CPU_ALU] |375| 
        ; call occurs [#_AuxEepromWriteEnable] ; [] |375| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 376,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 376 | GpioDataRegs.GPFCLEAR.bit.GPIOF8 = 1;   /* Assert AUXEEPROM CS */      
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0100 ; [CPU_ALU] |376| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 377,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 377 | TxSpi(FormatSpiTxWord(WRITE, 8));               /* Transmit WRSR Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_ALU] |377| 
        MOVB      AH,#8                 ; [CPU_ALU] |377| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |377| 
        ; call occurs [#_FormatSpiTxWord] ; [] |377| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_TxSpi")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |377| 
        ; call occurs [#_TxSpi] ; [] |377| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 378,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 378 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |378| 
        ; call occurs [#_SpiRxNotReady] ; [] |378| 
        CMPB      AL,#0                 ; [CPU_ALU] |378| 
        B         $C$L61,EQ             ; [CPU_ALU] |378| 
        ; branchcc occurs ; [] |378| 
$C$L60:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 378,column 31,is_stmt,isa 0
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |378| 
        ; call occurs [#_SpiRxNotReady] ; [] |378| 
        CMPB      AL,#0                 ; [CPU_ALU] |378| 
        B         $C$L60,NEQ            ; [CPU_ALU] |378| 
        ; branchcc occurs ; [] |378| 
$C$L61:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 379,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 379 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_RxSpi")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |379| 
        ; call occurs [#_RxSpi] ; [] |379| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 380,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 380 | TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm2 & 0xff), 8)); /* Tran
;     | smit High Addr Byte to EEPROM */                                       
;----------------------------------------------------------------------
        MOVL      XAR0,#15              ; [CPU_ALU] |380| 
        MOVB      AH,#8                 ; [CPU_ALU] |380| 
        AND       AL,*+FP[AR0],#0x00ff  ; [CPU_ALU] |380| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |380| 
        ; call occurs [#_FormatSpiTxWord] ; [] |380| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_TxSpi")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |380| 
        ; call occurs [#_TxSpi] ; [] |380| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 381,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 381 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |381| 
        ; call occurs [#_SpiRxNotReady] ; [] |381| 
        CMPB      AL,#0                 ; [CPU_ALU] |381| 
        B         $C$L63,EQ             ; [CPU_ALU] |381| 
        ; branchcc occurs ; [] |381| 
$C$L62:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 381,column 31,is_stmt,isa 0
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |381| 
        ; call occurs [#_SpiRxNotReady] ; [] |381| 
        CMPB      AL,#0                 ; [CPU_ALU] |381| 
        B         $C$L62,NEQ            ; [CPU_ALU] |381| 
        ; branchcc occurs ; [] |381| 
$C$L63:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 382,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 382 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_RxSpi")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |382| 
        ; call occurs [#_RxSpi] ; [] |382| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 383,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 383 | TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm3 & 0xff), 8)); /* Tran
;     | smit Low Addr Byte to EEPROM */                                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |383| 
        MOVB      AH,#8                 ; [CPU_ALU] |383| 
        AND       AL,*+FP[AR0],#0x00ff  ; [CPU_ALU] |383| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |383| 
        ; call occurs [#_FormatSpiTxWord] ; [] |383| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_TxSpi")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |383| 
        ; call occurs [#_TxSpi] ; [] |383| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 384,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 384 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |384| 
        ; call occurs [#_SpiRxNotReady] ; [] |384| 
        CMPB      AL,#0                 ; [CPU_ALU] |384| 
        B         $C$L65,EQ             ; [CPU_ALU] |384| 
        ; branchcc occurs ; [] |384| 
$C$L64:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 384,column 31,is_stmt,isa 0
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |384| 
        ; call occurs [#_SpiRxNotReady] ; [] |384| 
        CMPB      AL,#0                 ; [CPU_ALU] |384| 
        B         $C$L64,NEQ            ; [CPU_ALU] |384| 
        ; branchcc occurs ; [] |384| 
$C$L65:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 385,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 385 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_RxSpi")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |385| 
        ; call occurs [#_RxSpi] ; [] |385| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 386,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 386 | TxSpi(FormatSpiTxWord((RxMessage.sMsgStruct.Parm4 & 0xff), 8)); /* Tran
;     | smit Data Byte to EEPROM */                                            
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |386| 
        MOVB      AH,#8                 ; [CPU_ALU] |386| 
        AND       AL,*+FP[AR0],#0x00ff  ; [CPU_ALU] |386| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |386| 
        ; call occurs [#_FormatSpiTxWord] ; [] |386| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_TxSpi")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |386| 
        ; call occurs [#_TxSpi] ; [] |386| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 387,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 387 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |387| 
        ; call occurs [#_SpiRxNotReady] ; [] |387| 
        CMPB      AL,#0                 ; [CPU_ALU] |387| 
        B         $C$L67,EQ             ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
$C$L66:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 387,column 31,is_stmt,isa 0
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |387| 
        ; call occurs [#_SpiRxNotReady] ; [] |387| 
        CMPB      AL,#0                 ; [CPU_ALU] |387| 
        B         $C$L66,NEQ            ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
$C$L67:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 388,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 388 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_RxSpi")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |388| 
        ; call occurs [#_RxSpi] ; [] |388| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 389,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 389 | GpioDataRegs.GPFSET.bit.GPIOF8 = 1;             /* De-Assert AUXEEPROM
;     | CS */                                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0100 ; [CPU_ALU] |389| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 390,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 390 | break;                                                                 
; 391 | case 5: /* Get PCB Model Number */                                     
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |390| 
        ; branch occurs ; [] |390| 
$C$L68:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 393,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 393 | EepromArray[0x04] = RxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |393| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |393| 
        MOV       *-SP[52],AL           ; [CPU_ALU] |393| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 394,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 394 | EepromArray[0x05] = RxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |394| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |394| 
        MOV       *-SP[51],AL           ; [CPU_ALU] |394| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 395,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 395 | EepromArray[0x06] = RxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |395| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |395| 
        MOV       *-SP[50],AL           ; [CPU_ALU] |395| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 396,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 396 | EepromArray[0x07] = RxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |396| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |396| 
        MOV       *-SP[49],AL           ; [CPU_ALU] |396| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 397,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 397 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |397| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 398,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 398 | break;                                                                 
; 399 | case 6: /* Get PCB Hardware Version */                                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |398| 
        ; branch occurs ; [] |398| 
$C$L69:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 401,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 401 | EepromArray[0x08] = RxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |401| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |401| 
        MOV       *-SP[48],AL           ; [CPU_ALU] |401| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 402,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 402 | EepromArray[0x09] = RxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |402| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |402| 
        MOV       *-SP[47],AL           ; [CPU_ALU] |402| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 403,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 403 | EepromArray[0x0a] = RxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |403| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |403| 
        MOV       *-SP[46],AL           ; [CPU_ALU] |403| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 404,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 404 | EepromArray[0x0b] = RxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |404| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |404| 
        MOV       *-SP[45],AL           ; [CPU_ALU] |404| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 405,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 405 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |405| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 406,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 406 | break;                                                                 
; 407 | case 7: /* Get PCB Serial Number */                                    
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |406| 
        ; branch occurs ; [] |406| 
$C$L70:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 409,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 409 | EepromArray[0x0c] = RxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |409| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |409| 
        MOV       *-SP[44],AL           ; [CPU_ALU] |409| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 410,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 410 | EepromArray[0x0d] = RxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |410| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |410| 
        MOV       *-SP[43],AL           ; [CPU_ALU] |410| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 411,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 411 | EepromArray[0x0e] = RxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |411| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |411| 
        MOV       *-SP[42],AL           ; [CPU_ALU] |411| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 412,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 412 | EepromArray[0x0f] = RxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |412| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |412| 
        MOV       *-SP[41],AL           ; [CPU_ALU] |412| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 413,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 413 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |413| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 414,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 414 | break;                                                                 
; 415 | case 8: /* Calculate the EEPROM Parameters CRC */                      
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |414| 
        ; branch occurs ; [] |414| 
$C$L71:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 417,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 417 | ParamsCRC = crcCalc32(EepromArray, 4, 16);                             
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |417| 
        MOVB      AL,#4                 ; [CPU_ALU] |417| 
        MOVB      AH,#16                ; [CPU_ALU] |417| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |417| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |417| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_crcCalc32")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #_crcCalc32           ; [CPU_ALU] |417| 
        ; call occurs [#_crcCalc32] ; [] |417| 
        MOVW      DP,#_ParamsCRC$1      ; [CPU_ARAU] 
        MOVL      @_ParamsCRC$1,ACC     ; [CPU_ALU] |417| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 418,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 418 | TxMessage.sMsgStruct.Parm6 = (ParamsCRC & 0xff);                       
;----------------------------------------------------------------------
        MOVB      AL.LSB,@_ParamsCRC$1  ; [CPU_ALU] |418| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |418| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 419,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 419 | TxMessage.sMsgStruct.Parm5 = ((ParamsCRC >> 8) & 0xff);                
;----------------------------------------------------------------------
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,@_ParamsCRC$1     ; [CPU_ALU] |419| 
        SFR       ACC,8                 ; [CPU_ALU] |419| 
        ANDB      AL,#0xff              ; [CPU_ALU] |419| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |419| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 420,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 420 | TxMessage.sMsgStruct.Parm4 = ((ParamsCRC >> 16) & 0xff);               
;----------------------------------------------------------------------
        MOVB      AL.LSB,@$BLOCKED(_ParamsCRC$1)+1 ; [CPU_ALU] |420| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |420| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 421,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 421 | TxMessage.sMsgStruct.Parm3 = ((ParamsCRC >> 24) & 0xff);               
;----------------------------------------------------------------------
        MOV       T,#24                 ; [CPU_ALU] |421| 
        MOVL      ACC,@_ParamsCRC$1     ; [CPU_ALU] |421| 
        LSRL      ACC,T                 ; [CPU_ALU] |421| 
        ANDB      AL,#0xff              ; [CPU_ALU] |421| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |421| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 422,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 422 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |422| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 424,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 424 | EepromArray[0x00] = TxMessage.sMsgStruct.Parm3;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[60]           ; [CPU_ALU] |424| 
        MOV       *-SP[56],AL           ; [CPU_ALU] |424| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 425,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 425 | EepromArray[0x01] = TxMessage.sMsgStruct.Parm4;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[59]           ; [CPU_ALU] |425| 
        MOV       *-SP[55],AL           ; [CPU_ALU] |425| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 426,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 426 | EepromArray[0x02] = TxMessage.sMsgStruct.Parm5;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[58]           ; [CPU_ALU] |426| 
        MOV       *-SP[54],AL           ; [CPU_ALU] |426| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 427,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 427 | EepromArray[0x03] = TxMessage.sMsgStruct.Parm6;                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[57]           ; [CPU_ALU] |427| 
        MOV       *-SP[53],AL           ; [CPU_ALU] |427| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 428,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 428 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |428| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 429,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 429 | break;                                                                 
; 430 | case 9: /* Write and verify Structure to Serial EEPROM */              
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |429| 
        ; branch occurs ; [] |429| 
$C$L72:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 431,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 431 | if(SpiMode != 2) {                                                     
;----------------------------------------------------------------------
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |431| 
        CMPB      AL,#2                 ; [CPU_ALU] |431| 
        B         $C$L73,EQ             ; [CPU_ALU] |431| 
        ; branchcc occurs ; [] |431| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 432,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 432 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |432| 
        ; call occurs [#_ConfigEepromInterface] ; [] |432| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 433,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 433 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |433| 
$C$L73:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 435,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | for(idx = 0x00; idx < 0x10; idx++) {                                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |435| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |435| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 435,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |435| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |435| 
        CMPB      AL,#16                ; [CPU_ALU] |435| 
        B         $C$L75,HIS            ; [CPU_ALU] |435| 
        ; branchcc occurs ; [] |435| 
$C$L74:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 436,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 436 | AuxEepromWriteByte(idx, EepromArray[idx]);                             
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |436| 
        MOVL      XAR0,#11              ; [CPU_ALU] |436| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |436| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |436| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |436| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |436| 
        MOVL      XAR0,#11              ; [CPU_ALU] |436| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |436| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_AuxEepromWriteByte")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #_AuxEepromWriteByte  ; [CPU_ALU] |436| 
        ; call occurs [#_AuxEepromWriteByte] ; [] |436| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 437,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 437 | AuxEepromWriteByte((idx + 0x200), EepromArray[idx]);                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |437| 
        MOVZ      AR4,SP                ; [CPU_ALU] |437| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |437| 
        MOVL      XAR0,#11              ; [CPU_ALU] |437| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |437| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |437| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |437| 
        ADD       AL,#512               ; [CPU_ALU] |437| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |437| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_AuxEepromWriteByte")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_AuxEepromWriteByte  ; [CPU_ALU] |437| 
        ; call occurs [#_AuxEepromWriteByte] ; [] |437| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 438,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 438 | AuxEepromWriteByte((idx + 0x400), EepromArray[idx]);                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |438| 
        MOVZ      AR4,SP                ; [CPU_ALU] |438| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |438| 
        MOVL      XAR0,#11              ; [CPU_ALU] |438| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |438| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |438| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |438| 
        ADD       AL,#1024              ; [CPU_ALU] |438| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |438| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_AuxEepromWriteByte")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_AuxEepromWriteByte  ; [CPU_ALU] |438| 
        ; call occurs [#_AuxEepromWriteByte] ; [] |438| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 435,column 35,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |435| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |435| 
        MOVL      XAR0,#11              ; [CPU_ALU] |435| 
        ADDB      AL,#1                 ; [CPU_ALU] |435| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |435| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 435,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |435| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |435| 
        CMPB      AL,#16                ; [CPU_ALU] |435| 
        B         $C$L74,LO             ; [CPU_ALU] |435| 
        ; branchcc occurs ; [] |435| 
$C$L75:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 440,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |440| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 441,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 441 | TxMessage.sMsgStruct.Parm3 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[60],#0           ; [CPU_ALU] |441| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 442,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 442 | TxMessage.sMsgStruct.Parm4 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[59],#0           ; [CPU_ALU] |442| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 443,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 443 | for(idx = 0x00; idx < 0x10; idx++) {                                   
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |443| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |443| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 443,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |443| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |443| 
        CMPB      AL,#16                ; [CPU_ALU] |443| 
        B         $C$L80,HIS            ; [CPU_ALU] |443| 
        ; branchcc occurs ; [] |443| 
$C$L76:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 444,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 444 | if(EepromArray[idx] != AuxEepromReadByte(idx))                         
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |444| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |444| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |444| 
        ; call occurs [#_AuxEepromReadByte] ; [] |444| 
        MOVZ      AR4,SP                ; [CPU_ALU] |444| 
        MOVL      XAR0,#11              ; [CPU_ALU] |444| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |444| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |444| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |444| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |444| 
        MOVU      ACC,AL                ; [CPU_ALU] |444| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |444| 
        B         $C$L77,EQ             ; [CPU_ALU] |444| 
        ; branchcc occurs ; [] |444| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 445,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 445 | TxMessage.sMsgStruct.Parm2++;                                          
;----------------------------------------------------------------------
        INC       *-SP[61]              ; [CPU_ALU] |445| 
$C$L77:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 446,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 446 | if(EepromArray[idx] != AuxEepromReadByte(idx + 0x200))                 
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |446| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |446| 
        ADD       AL,#512               ; [CPU_ALU] |446| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |446| 
        ; call occurs [#_AuxEepromReadByte] ; [] |446| 
        MOVZ      AR4,SP                ; [CPU_ALU] |446| 
        MOVL      XAR0,#11              ; [CPU_ALU] |446| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |446| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |446| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |446| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |446| 
        MOVU      ACC,AL                ; [CPU_ALU] |446| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |446| 
        B         $C$L78,EQ             ; [CPU_ALU] |446| 
        ; branchcc occurs ; [] |446| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 447,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 447 | TxMessage.sMsgStruct.Parm3++;                                          
;----------------------------------------------------------------------
        INC       *-SP[60]              ; [CPU_ALU] |447| 
$C$L78:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 448,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 448 | if(EepromArray[idx] != AuxEepromReadByte(idx + 0x400))                 
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |448| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |448| 
        ADD       AL,#1024              ; [CPU_ALU] |448| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |448| 
        ; call occurs [#_AuxEepromReadByte] ; [] |448| 
        MOVZ      AR4,SP                ; [CPU_ALU] |448| 
        MOVL      XAR0,#11              ; [CPU_ALU] |448| 
        MOVZ      AR0,*+FP[AR0]         ; [CPU_ALU] |448| 
        SUBB      XAR4,#56              ; [CPU_ARAU] |448| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |448| 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |448| 
        MOVU      ACC,AL                ; [CPU_ALU] |448| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |448| 
        B         $C$L79,EQ             ; [CPU_ALU] |448| 
        ; branchcc occurs ; [] |448| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 449,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 449 | TxMessage.sMsgStruct.Parm4++;                                          
;----------------------------------------------------------------------
        INC       *-SP[59]              ; [CPU_ALU] |449| 
$C$L79:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 443,column 35,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |443| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |443| 
        MOVL      XAR0,#11              ; [CPU_ALU] |443| 
        ADDB      AL,#1                 ; [CPU_ALU] |443| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |443| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 443,column 23,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |443| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |443| 
        CMPB      AL,#16                ; [CPU_ALU] |443| 
        B         $C$L76,LO             ; [CPU_ALU] |443| 
        ; branchcc occurs ; [] |443| 
$C$L80:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 451,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | TxMessage.sMsgStruct.Length = 4;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#4,UNC       ; [CPU_ALU] |451| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 452,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 452 | break;                                                                 
; 453 | case 10:        // Perform a memory dump of the serial EEPROM          
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |452| 
        ; branch occurs ; [] |452| 
$C$L81:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 454,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 454 | if(SpiMode != 2) {                                                     
;----------------------------------------------------------------------
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |454| 
        CMPB      AL,#2                 ; [CPU_ALU] |454| 
        B         $C$L82,EQ             ; [CPU_ALU] |454| 
        ; branchcc occurs ; [] |454| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 455,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 455 | ConfigEepromInterface();                                               
;----------------------------------------------------------------------
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_ConfigEepromInterface")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_ConfigEepromInterface ; [CPU_ALU] |455| 
        ; call occurs [#_ConfigEepromInterface] ; [] |455| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 456,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 456 | SpiMode = 2;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#2,UNC    ; [CPU_ALU] |456| 
$C$L82:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 458,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 458 | Cnt = RxMessage.sMsgStruct.Parm3 - RxMessage.sMsgStruct.Parm2;         
;----------------------------------------------------------------------
        MOVL      XAR1,#16              ; [CPU_ALU] |458| 
        MOVL      XAR0,#15              ; [CPU_ALU] |458| 
        MOV       AL,*+FP[AR1]          ; [CPU_ALU] |458| 
        SUB       AL,*+FP[AR0]          ; [CPU_ALU] |458| 
        MOVL      XAR0,#10              ; [CPU_ALU] |458| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |458| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 459,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 459 | if(Cnt <= 6) {                                                         
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |459| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |459| 
        CMPB      AL,#6                 ; [CPU_ALU] |459| 
        B         $C$L85,HI             ; [CPU_ALU] |459| 
        ; branchcc occurs ; [] |459| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 460,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 460 | MsgCnt = 2;                                                            
;----------------------------------------------------------------------
        MOVB      *+FP[7],#2,UNC        ; [CPU_ALU] |460| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 461,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 461 | for(idx = RxMessage.sMsgStruct.Parm2; idx < RxMessage.sMsgStruct.Parm3;
;     |  idx++) {                                                              
;----------------------------------------------------------------------
        MOVL      XAR0,#15              ; [CPU_ALU] |461| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |461| 
        MOVL      XAR0,#11              ; [CPU_ALU] |461| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |461| 
        B         $C$L84,UNC            ; [CPU_ALU] |461| 
        ; branch occurs ; [] |461| 
$C$L83:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 462,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 462 | TxMessage.bData[MsgCnt++] = AuxEepromReadByte(idx);                    
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |462| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |462| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |462| 
        ; call occurs [#_AuxEepromReadByte] ; [] |462| 
        MOVZ      AR4,SP                ; [CPU_ALU] |462| 
        MOVZ      AR0,*+FP[7]           ; [CPU_ALU] |462| 
        SUBB      XAR4,#64              ; [CPU_ARAU] |462| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |462| 
        INC       *+FP[7]               ; [CPU_ALU] |462| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |462| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 461,column 80,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |461| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |461| 
        MOVL      XAR0,#11              ; [CPU_ALU] |461| 
        ADDB      AL,#1                 ; [CPU_ALU] |461| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |461| 
$C$L84:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 461,column 46,is_stmt,isa 0
        MOVL      XAR0,#16              ; [CPU_ALU] |461| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |461| 
        MOVL      XAR0,#11              ; [CPU_ALU] |461| 
        CMP       AL,*+FP[AR0]          ; [CPU_ALU] |461| 
        B         $C$L83,HI             ; [CPU_ALU] |461| 
        ; branchcc occurs ; [] |461| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 464,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 464 | TxMessage.sMsgStruct.Length = Cnt;                                     
; 466 | else {                                                                 
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |464| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |464| 
        MOV       *-SP[63],AL           ; [CPU_ALU] |464| 
        B         $C$L140,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L85:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 467,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 467 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |467| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 469,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 469 | break;                                                                 
; 470 | case 11:        //add 2/19/2009                                        
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |469| 
        ; branch occurs ; [] |469| 
$C$L86:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 471,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | Cnt = RxMessage.sMsgStruct.Parm2;                                      
;----------------------------------------------------------------------
        MOVL      XAR0,#15              ; [CPU_ALU] |471| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |471| 
        MOVL      XAR0,#10              ; [CPU_ALU] |471| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |471| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 472,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 472 | TxMessage.sMsgStruct.Parm1 = AuxEepromReadByte(Cnt);                   
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |472| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |472| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |472| 
        ; call occurs [#_AuxEepromReadByte] ; [] |472| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |472| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 473,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | TxMessage.sMsgStruct.Parm2 = AuxEepromReadByte(Cnt + 0x1);             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |473| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |473| 
        ADDB      AL,#1                 ; [CPU_ALU] |473| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |473| 
        ; call occurs [#_AuxEepromReadByte] ; [] |473| 
        MOV       *-SP[61],AL           ; [CPU_ALU] |473| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 474,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 474 | TxMessage.sMsgStruct.Parm3 = AuxEepromReadByte(Cnt + 0x2);             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |474| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |474| 
        ADDB      AL,#2                 ; [CPU_ALU] |474| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |474| 
        ; call occurs [#_AuxEepromReadByte] ; [] |474| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |474| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 475,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 475 | TxMessage.sMsgStruct.Parm4 = AuxEepromReadByte(Cnt + 0x3);             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |475| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |475| 
        ADDB      AL,#3                 ; [CPU_ALU] |475| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_AuxEepromReadByte")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_AuxEepromReadByte   ; [CPU_ALU] |475| 
        ; call occurs [#_AuxEepromReadByte] ; [] |475| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |475| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 476,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 476 | TxMessage.sMsgStruct.Length = 4;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#4,UNC       ; [CPU_ALU] |476| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 477,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 477 | break;                                                                 
; 478 | default:                                                               
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |477| 
        ; branch occurs ; [] |477| 
$C$L87:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 479,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 479 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |479| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 480,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 480 | break;                                                                 
; 482 | break;                                                                 
; 483 | case 'G':       /* Toggle D7 and D8 ON and OFF */                      
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |480| 
        ; branch occurs ; [] |480| 
$C$L88:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 356,column 5,is_stmt,isa 0
        MOVL      XAR0,#14              ; [CPU_ALU] |356| 
        MOVZ      AR6,*+FP[AR0]         ; [CPU_ALU] |356| 
        MOV       AL,AR6                ; [CPU_ALU] |356| 
        CMPB      AL,#11                ; [CPU_ALU] |356| 
        B         $C$L87,HI             ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVL      XAR7,#$C$SW4          ; [CPU_ARAU] |356| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,XAR7              ; [CPU_ALU] |356| 
        ADD       ACC,AR6 << #1         ; [CPU_ALU] |356| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |356| 
        MOVL      XAR7,*XAR7            ; [CPU_ALU] |356| 
        LB        *XAR7                 ; [CPU_ALU] |356| 
        ; branch occurs ; [] |356| 
	.sect	".switch:_main"
	.clink
$C$SW4:	.long	$C$L55	; 0
	.long	$C$L56	; 1
	.long	$C$L57	; 2
	.long	$C$L58	; 3
	.long	$C$L59	; 4
	.long	$C$L68	; 5
	.long	$C$L69	; 6
	.long	$C$L70	; 7
	.long	$C$L71	; 8
	.long	$C$L72	; 9
	.long	$C$L81	; 10
	.long	$C$L86	; 11
	.sect	".text"
$C$L89:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 484,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 484 | GpioDataRegs.GPBSET.bit.GPIOB6 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0040 ; [CPU_ALU] |484| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 485,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 485 | GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0080 ; [CPU_ALU] |485| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 486,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 486 | for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */                
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |486| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |486| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 486,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |486| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |486| 
        CMPB      AL,#20                ; [CPU_ALU] |486| 
        B         $C$L91,HIS            ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
$C$L90:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 487,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 487 | DelayUs(40000); /* Delay 50mS */                                       
;----------------------------------------------------------------------
        MOV       AL,#40000             ; [CPU_ALU] |487| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_DelayUs")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |487| 
        ; call occurs [#_DelayUs] ; [] |487| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 486,column 29,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |486| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |486| 
        MOVL      XAR0,#11              ; [CPU_ALU] |486| 
        ADDB      AL,#1                 ; [CPU_ALU] |486| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |486| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 486,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |486| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |486| 
        CMPB      AL,#20                ; [CPU_ALU] |486| 
        B         $C$L90,LO             ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
$C$L91:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 488,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 488 | GpioDataRegs.GPBSET.bit.GPIOB7 = 1;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0080 ; [CPU_ALU] |488| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 489,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 489 | GpioDataRegs.GPBCLEAR.bit.GPIOB6 = 1;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0040 ; [CPU_ALU] |489| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 490,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 490 | for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */                
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |490| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |490| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 490,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |490| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |490| 
        CMPB      AL,#20                ; [CPU_ALU] |490| 
        B         $C$L93,HIS            ; [CPU_ALU] |490| 
        ; branchcc occurs ; [] |490| 
$C$L92:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 491,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 491 | DelayUs(40000); /* Delay 50mS */                                       
;----------------------------------------------------------------------
        MOV       AL,#40000             ; [CPU_ALU] |491| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_DelayUs")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |491| 
        ; call occurs [#_DelayUs] ; [] |491| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 490,column 29,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |490| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |490| 
        MOVL      XAR0,#11              ; [CPU_ALU] |490| 
        ADDB      AL,#1                 ; [CPU_ALU] |490| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |490| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 490,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |490| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |490| 
        CMPB      AL,#20                ; [CPU_ALU] |490| 
        B         $C$L92,LO             ; [CPU_ALU] |490| 
        ; branchcc occurs ; [] |490| 
$C$L93:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 492,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 492 | GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+6,#0x0080 ; [CPU_ALU] |492| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 493,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 493 | for(idx = 0; idx < 20; idx++) /* Total Delay ~ 1-sec */                
;----------------------------------------------------------------------
        MOVL      XAR0,#11              ; [CPU_ALU] |493| 
        MOV       *+FP[AR0],#0          ; [CPU_ALU] |493| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 493,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |493| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |493| 
        CMPB      AL,#20                ; [CPU_ALU] |493| 
        B         $C$L95,HIS            ; [CPU_ALU] |493| 
        ; branchcc occurs ; [] |493| 
$C$L94:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 494,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 494 | DelayUs(40000); /* Delay 50mS */                                       
;----------------------------------------------------------------------
        MOV       AL,#40000             ; [CPU_ALU] |494| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_DelayUs")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |494| 
        ; call occurs [#_DelayUs] ; [] |494| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 493,column 29,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |493| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |493| 
        MOVL      XAR0,#11              ; [CPU_ALU] |493| 
        ADDB      AL,#1                 ; [CPU_ALU] |493| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |493| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 493,column 19,is_stmt,isa 0
        MOVL      XAR0,#11              ; [CPU_ALU] |493| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |493| 
        CMPB      AL,#20                ; [CPU_ALU] |493| 
        B         $C$L94,LO             ; [CPU_ALU] |493| 
        ; branchcc occurs ; [] |493| 
$C$L95:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 495,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 495 | GpioDataRegs.GPBSET.bit.GPIOB6 = 1;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0040 ; [CPU_ALU] |495| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 496,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | GpioDataRegs.GPBSET.bit.GPIOB7 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x0080 ; [CPU_ALU] |496| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 497,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 497 | break;                                                                 
; 498 | case 'I':       /* Read Digital Inputs DI_A[27..0], ID_A[3..0], and SYN
;     | C_I */                                                                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |497| 
        ; branch occurs ; [] |497| 
$C$L96:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 499,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 499 | TxMessage.sMsgStruct.Parm1 = ReadDspDI_B();     // Read DI_A[27..24]   
;----------------------------------------------------------------------
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_ReadDspDI_B")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_ReadDspDI_B         ; [CPU_ALU] |499| 
        ; call occurs [#_ReadDspDI_B] ; [] |499| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |499| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 500,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 500 | TxMessage.sMsgStruct.Parm2 = ReadCpld(0x2);     // Read DI_A[23..16]   
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_ALU] |500| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |500| 
        ; call occurs [#_ReadCpld] ; [] |500| 
        MOV       *-SP[61],AL           ; [CPU_ALU] |500| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 501,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 501 | TxMessage.sMsgStruct.Parm3 = ReadCpld(0x1);     // Read DI_A[15..8]    
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |501| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |501| 
        ; call occurs [#_ReadCpld] ; [] |501| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |501| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 502,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 502 | TxMessage.sMsgStruct.Parm4 = ReadCpld(0x0);     // Read DI_A[7..0]     
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |502| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |502| 
        ; call occurs [#_ReadCpld] ; [] |502| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |502| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 503,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 503 | TxMessage.sMsgStruct.Parm5 = ReadDspID_A();     // Read ID_A[3..0]     
;----------------------------------------------------------------------
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_ReadDspID_A")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_ReadDspID_A         ; [CPU_ALU] |503| 
        ; call occurs [#_ReadDspID_A] ; [] |503| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |503| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 504,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 504 | TxMessage.sMsgStruct.Parm6 = GpioDataRegs.GPEDAT.bit.GPIOE0 & 0x01; //
;     | SYNC_I                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+16  ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_GpioDataRegs)+16 ; [CPU_ALU] |504| 
        ANDB      AL,#0x01              ; [CPU_ALU] |504| 
        ANDB      AL,#0x01              ; [CPU_ALU] |504| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |504| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 505,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 505 | TxMessage.sMsgStruct.Parm6 <<= 1;                                      
;----------------------------------------------------------------------
        MOV       ACC,*-SP[57] << #1    ; [CPU_ALU] |505| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |505| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 506,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 506 | TxMessage.sMsgStruct.Parm6 |= GpioDataRegs.GPGDAT.bit.GPIOG5;
;     |  // SERIAL_IN                                                          
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_GpioDataRegs)+24,#0x0020 ; [CPU_ALU] |506| 
        LSR       AL,5                  ; [CPU_ALU] |506| 
        OR        *-SP[57],AL           ; [CPU_ALU] |506| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 507,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 507 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |507| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 508,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 508 | break;                                                                 
; 509 | case 'J':       /* Write/Read from external SPI BUS */                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |508| 
        ; branch occurs ; [] |508| 
$C$L97:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 510,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 510 | if(SpiMode != 3) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |510| 
        CMPB      AL,#3                 ; [CPU_ALU] |510| 
        B         $C$L108,EQ            ; [CPU_ALU] |510| 
        ; branchcc occurs ; [] |510| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 511,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | ConfigMax7301Interface();                                              
;----------------------------------------------------------------------
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_ConfigMax7301Interface")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_ConfigMax7301Interface ; [CPU_ALU] |511| 
        ; call occurs [#_ConfigMax7301Interface] ; [] |511| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 512,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 512 | SpiMode = 3;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#3,UNC    ; [CPU_ALU] |512| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 514,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 514 | switch(RxMessage.sMsgStruct.Parm1) {                                   
; 515 |         case 0: /* Configure MAX7301 0n STAND Power Distribution */    
;----------------------------------------------------------------------
        B         $C$L108,UNC           ; [CPU_ALU] |514| 
        ; branch occurs ; [] |514| 
$C$L98:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 516,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 516 | ConfigMax7301DIO();                                                    
;----------------------------------------------------------------------
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_ConfigMax7301DIO")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_ConfigMax7301DIO    ; [CPU_ALU] |516| 
        ; call occurs [#_ConfigMax7301DIO] ; [] |516| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 517,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 517 | break;                                                                 
; 518 | case 1: /* Write to external SPI Device */                             
; 519 | switch(RxMessage.sMsgStruct.Parm2) {                                   
; 520 |         case 0: // Write to P24                                        
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |517| 
        ; branch occurs ; [] |517| 
$C$L99:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 521,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 521 | Max7301Write(MAX7103_WRITE_PORT24, RxMessage.sMsgStruct.Parm3);        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |521| 
        MOVB      AL,#56                ; [CPU_ALU] |521| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |521| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |521| 
        ; call occurs [#_Max7301Write] ; [] |521| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 522,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 522 | break;                                                                 
; 523 | case 1: // Write to P25                                                
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |522| 
        ; branch occurs ; [] |522| 
$C$L100:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 524,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 524 | Max7301Write(MAX7103_WRITE_PORT25, RxMessage.sMsgStruct.Parm3);        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |524| 
        MOVB      AL,#57                ; [CPU_ALU] |524| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |524| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |524| 
        ; call occurs [#_Max7301Write] ; [] |524| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 525,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 525 | break;                                                                 
; 526 | case 2: // Write to P26                                                
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |525| 
        ; branch occurs ; [] |525| 
$C$L101:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 527,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 527 | Max7301Write(MAX7103_WRITE_PORT26, RxMessage.sMsgStruct.Parm3);        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |527| 
        MOVB      AL,#58                ; [CPU_ALU] |527| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |527| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |527| 
        ; call occurs [#_Max7301Write] ; [] |527| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 528,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 528 | break;                                                                 
; 529 | case 3: // Write to P27                                                
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |528| 
        ; branch occurs ; [] |528| 
$C$L102:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 530,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 530 | Max7301Write(MAX7103_WRITE_PORT27, RxMessage.sMsgStruct.Parm3);        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |530| 
        MOVB      AL,#59                ; [CPU_ALU] |530| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |530| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |530| 
        ; call occurs [#_Max7301Write] ; [] |530| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 531,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 531 | break;                                                                 
; 532 | case 4: // Write to P28_P31                                            
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |531| 
        ; branch occurs ; [] |531| 
$C$L103:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 533,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | Max7301Write(MAX7103_WRITE_PORT28_31, RxMessage.sMsgStruct.Parm3);     
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |533| 
        MOVB      AL,#92                ; [CPU_ALU] |533| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |533| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |533| 
        ; call occurs [#_Max7301Write] ; [] |533| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 534,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 534 | break;                                                                 
; 535 | case 5: //write to P29
;     |                                                                        
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |534| 
        ; branch occurs ; [] |534| 
$C$L104:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 536,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 536 | Max7301Write(MAX7103_WRITE_PORT29, RxMessage.sMsgStruct.Parm3);        
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |536| 
        MOVB      AL,#61                ; [CPU_ALU] |536| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |536| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_Max7301Write")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #_Max7301Write        ; [CPU_ALU] |536| 
        ; call occurs [#_Max7301Write] ; [] |536| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 537,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 537 | break;                                                                 
; 538 | default:                                                               
; 539 | break;                                                                 
; 541 | break;                                                                 
; 542 | case 2: /* Read from external SPI Device */                            
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |537| 
        ; branch occurs ; [] |537| 
$C$L105:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 519,column 7,is_stmt,isa 0
        MOVL      XAR0,#15              ; [CPU_ALU] |519| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |519| 
        CMPB      AL,#3                 ; [CPU_ALU] |519| 
        B         $C$L106,GT            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        CMPB      AL,#3                 ; [CPU_ALU] |519| 
        B         $C$L102,EQ            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        CMPB      AL,#0                 ; [CPU_ALU] |519| 
        B         $C$L99,EQ             ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        CMPB      AL,#1                 ; [CPU_ALU] |519| 
        B         $C$L100,EQ            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        CMPB      AL,#2                 ; [CPU_ALU] |519| 
        B         $C$L101,EQ            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        B         $C$L140,UNC           ; [CPU_ALU] |519| 
        ; branch occurs ; [] |519| 
$C$L106:    
        CMPB      AL,#4                 ; [CPU_ALU] |519| 
        B         $C$L103,EQ            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        CMPB      AL,#5                 ; [CPU_ALU] |519| 
        B         $C$L104,EQ            ; [CPU_ALU] |519| 
        ; branchcc occurs ; [] |519| 
        B         $C$L140,UNC           ; [CPU_ALU] |519| 
        ; branch occurs ; [] |519| 
$C$L107:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 543,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 543 | Cnt = Max7301Input(MAX7103_READ_PORT23);                               
;----------------------------------------------------------------------
        MOV       AL,#46848             ; [CPU_ALU] |543| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_Max7301Input")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #_Max7301Input        ; [CPU_ALU] |543| 
        ; call occurs [#_Max7301Input] ; [] |543| 
        MOVL      XAR0,#10              ; [CPU_ALU] |543| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |543| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 544,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 544 | Cnt <<= 1;                                                             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |544| 
        MOV       ACC,*+FP[AR0] << #1   ; [CPU_ALU] |544| 
        MOVL      XAR0,#10              ; [CPU_ALU] |544| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |544| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 545,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 545 | Cnt |= Max7301Input(MAX7103_READ_PORT21);                              
;----------------------------------------------------------------------
        MOV       AL,#46336             ; [CPU_ALU] |545| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_Max7301Input")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #_Max7301Input        ; [CPU_ALU] |545| 
        ; call occurs [#_Max7301Input] ; [] |545| 
        MOVL      XAR0,#10              ; [CPU_ALU] |545| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |545| 
        MOVL      XAR0,#10              ; [CPU_ALU] |545| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |545| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 546,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 546 | Cnt <<= 1;                                                             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |546| 
        MOV       ACC,*+FP[AR0] << #1   ; [CPU_ALU] |546| 
        MOVL      XAR0,#10              ; [CPU_ALU] |546| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |546| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 547,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 547 | Cnt |= Max7301Input(MAX7103_READ_PORT20);                              
;----------------------------------------------------------------------
        MOV       AL,#46080             ; [CPU_ALU] |547| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_Max7301Input")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #_Max7301Input        ; [CPU_ALU] |547| 
        ; call occurs [#_Max7301Input] ; [] |547| 
        MOVL      XAR0,#10              ; [CPU_ALU] |547| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |547| 
        MOVL      XAR0,#10              ; [CPU_ALU] |547| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |547| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 548,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 548 | Cnt <<= 8;                                                             
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |548| 
        MOV       ACC,*+FP[AR0] << #8   ; [CPU_ALU] |548| 
        MOVL      XAR0,#10              ; [CPU_ALU] |548| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |548| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 549,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 549 | Cnt |= Max7301Input(MAX7103_READ_PORT12_19);                           
;----------------------------------------------------------------------
        MOV       AL,#52224             ; [CPU_ALU] |549| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_Max7301Input")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #_Max7301Input        ; [CPU_ALU] |549| 
        ; call occurs [#_Max7301Input] ; [] |549| 
        MOVL      XAR0,#10              ; [CPU_ALU] |549| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |549| 
        MOVL      XAR0,#10              ; [CPU_ALU] |549| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |549| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 550,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 550 | Cnt &= 0x0fff;                                                         
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |550| 
        AND       AL,*+FP[AR0],#0x0fff  ; [CPU_ALU] |550| 
        MOVL      XAR0,#10              ; [CPU_ALU] |550| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |550| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 551,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 551 | TxMessage.sMsgStruct.Parm1 = Cnt & 0xff;                               
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |551| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |551| 
        ANDB      AL,#0xff              ; [CPU_ALU] |551| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |551| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 552,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 552 | TxMessage.sMsgStruct.Parm2 = (Cnt >> 8) & 0xff;                        
;----------------------------------------------------------------------
        MOVL      XAR0,#10              ; [CPU_ALU] |552| 
        AND       AL,*+FP[AR0],#0xff00  ; [CPU_ALU] |552| 
        LSR       AL,8                  ; [CPU_ALU] |552| 
        MOV       *-SP[61],AL           ; [CPU_ALU] |552| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 553,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 553 | TxMessage.sMsgStruct.Length = 2;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#2,UNC       ; [CPU_ALU] |553| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 554,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 554 | break;                                                                 
; 555 | default:                                                               
; 556 | break;                                                                 
; 558 | break;                                                                 
; 559 | case 'N':       /* Acquire and convert the selected On-Board ADC channe
;     | l */                                                                   
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |554| 
        ; branch occurs ; [] |554| 
$C$L108:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 514,column 5,is_stmt,isa 0
        MOVL      XAR0,#14              ; [CPU_ALU] |514| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |514| 
        B         $C$L98,EQ             ; [CPU_ALU] |514| 
        ; branchcc occurs ; [] |514| 
        CMPB      AL,#1                 ; [CPU_ALU] |514| 
        B         $C$L105,EQ            ; [CPU_ALU] |514| 
        ; branchcc occurs ; [] |514| 
        CMPB      AL,#2                 ; [CPU_ALU] |514| 
        B         $C$L107,EQ            ; [CPU_ALU] |514| 
        ; branchcc occurs ; [] |514| 
        B         $C$L140,UNC           ; [CPU_ALU] |514| 
        ; branch occurs ; [] |514| 
$C$L109:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 560,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 560 | if(SpiMode != 4) {                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOV       AL,@_SpiMode$2        ; [CPU_ALU] |560| 
        CMPB      AL,#4                 ; [CPU_ALU] |560| 
        B         $C$L118,EQ            ; [CPU_ALU] |560| 
        ; branchcc occurs ; [] |560| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 561,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 561 | ConfigTlv1570Interface();                                              
;----------------------------------------------------------------------
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_ConfigTlv1570Interface")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #_ConfigTlv1570Interface ; [CPU_ALU] |561| 
        ; call occurs [#_ConfigTlv1570Interface] ; [] |561| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 562,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 562 | SpiMode = 4;                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SpiMode$2        ; [CPU_ARAU] 
        MOVB      @_SpiMode$2,#4,UNC    ; [CPU_ALU] |562| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 564,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 564 | switch(RxMessage.sMsgStruct.Parm1) {                                   
; 565 |         case 0: // Select and convert Channel 0 (AI_MF_A0)             
;----------------------------------------------------------------------
        B         $C$L118,UNC           ; [CPU_ALU] |564| 
        ; branch occurs ; [] |564| 
$C$L110:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 566,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 566 | Tlv1570Convert(ADC0);                                                  
;----------------------------------------------------------------------
        MOVB      AL,#8                 ; [CPU_ALU] |566| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |566| 
        ; call occurs [#_Tlv1570Convert] ; [] |566| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 567,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 567 | Iq32 = Tlv1570Convert(ADC0);                                           
;----------------------------------------------------------------------
        MOVB      AL,#8                 ; [CPU_ALU] |567| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |567| 
        ; call occurs [#_Tlv1570Convert] ; [] |567| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |567| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 568,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 568 | break;                                                                 
; 569 | case 1: // Select and convert Channel 1 (AI_MF_A1)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |568| 
        ; branch occurs ; [] |568| 
$C$L111:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 570,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 570 | Tlv1570Convert(ADC1);                                                  
;----------------------------------------------------------------------
        MOVB      AL,#136               ; [CPU_ALU] |570| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |570| 
        ; call occurs [#_Tlv1570Convert] ; [] |570| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 571,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 571 | Iq32 = Tlv1570Convert(ADC1);                                           
;----------------------------------------------------------------------
        MOVB      AL,#136               ; [CPU_ALU] |571| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |571| 
        ; call occurs [#_Tlv1570Convert] ; [] |571| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |571| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 572,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 572 | break;                                                                 
; 573 | case 2: // Select and convert Channel 2 (AI_MF_A2)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |572| 
        ; branch occurs ; [] |572| 
$C$L112:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 574,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 574 | Tlv1570Convert(ADC2);                                                  
;----------------------------------------------------------------------
        MOV       AL,#264               ; [CPU_ALU] |574| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |574| 
        ; call occurs [#_Tlv1570Convert] ; [] |574| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 575,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 575 | Iq32 = Tlv1570Convert(ADC2);                                           
;----------------------------------------------------------------------
        MOV       AL,#264               ; [CPU_ALU] |575| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |575| 
        ; call occurs [#_Tlv1570Convert] ; [] |575| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |575| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 576,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 576 | break;                                                                 
; 577 | case 3: // Select and convert Channel 3 (AI_MF_A3)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |576| 
        ; branch occurs ; [] |576| 
$C$L113:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 578,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 578 | Tlv1570Convert(ADC3);                                                  
;----------------------------------------------------------------------
        MOV       AL,#392               ; [CPU_ALU] |578| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |578| 
        ; call occurs [#_Tlv1570Convert] ; [] |578| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 579,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 579 | Iq32 = Tlv1570Convert(ADC3);                                           
;----------------------------------------------------------------------
        MOV       AL,#392               ; [CPU_ALU] |579| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |579| 
        ; call occurs [#_Tlv1570Convert] ; [] |579| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |579| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 580,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 580 | break;                                                                 
; 581 | case 4: // Select and convert Channel 4 (AI_MF_A4)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |580| 
        ; branch occurs ; [] |580| 
$C$L114:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 582,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 582 | Tlv1570Convert(ADC4);                                                  
;----------------------------------------------------------------------
        MOV       AL,#520               ; [CPU_ALU] |582| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |582| 
        ; call occurs [#_Tlv1570Convert] ; [] |582| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 583,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 583 | Iq32 = Tlv1570Convert(ADC4);                                           
;----------------------------------------------------------------------
        MOV       AL,#520               ; [CPU_ALU] |583| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |583| 
        ; call occurs [#_Tlv1570Convert] ; [] |583| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |583| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 584,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 584 | break;                                                                 
; 585 | case 5: // Select and convert Channel 5 (AI_MF_A5)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |584| 
        ; branch occurs ; [] |584| 
$C$L115:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 586,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 586 | Tlv1570Convert(ADC5);                                                  
;----------------------------------------------------------------------
        MOV       AL,#648               ; [CPU_ALU] |586| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |586| 
        ; call occurs [#_Tlv1570Convert] ; [] |586| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 587,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 587 | Iq32 = Tlv1570Convert(ADC5);                                           
;----------------------------------------------------------------------
        MOV       AL,#648               ; [CPU_ALU] |587| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |587| 
        ; call occurs [#_Tlv1570Convert] ; [] |587| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |587| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 588,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 588 | break;                                                                 
; 589 | case 6: // Select and convert Channel 6 (AI_MF_A6)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |588| 
        ; branch occurs ; [] |588| 
$C$L116:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 590,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 590 | Tlv1570Convert(ADC6);                                                  
;----------------------------------------------------------------------
        MOV       AL,#776               ; [CPU_ALU] |590| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |590| 
        ; call occurs [#_Tlv1570Convert] ; [] |590| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 591,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 591 | Iq32 = Tlv1570Convert(ADC6);                                           
;----------------------------------------------------------------------
        MOV       AL,#776               ; [CPU_ALU] |591| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |591| 
        ; call occurs [#_Tlv1570Convert] ; [] |591| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |591| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 592,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 592 | break;                                                                 
; 593 | case 7: // Select and convert Channel 7 (AI_MF_A7)                     
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |592| 
        ; branch occurs ; [] |592| 
$C$L117:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 594,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 594 | Tlv1570Convert(ADC7);                                                  
;----------------------------------------------------------------------
        MOV       AL,#904               ; [CPU_ALU] |594| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |594| 
        ; call occurs [#_Tlv1570Convert] ; [] |594| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 595,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 595 | Iq32 = Tlv1570Convert(ADC7);                                           
;----------------------------------------------------------------------
        MOV       AL,#904               ; [CPU_ALU] |595| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_Tlv1570Convert")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #_Tlv1570Convert      ; [CPU_ALU] |595| 
        ; call occurs [#_Tlv1570Convert] ; [] |595| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |595| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 596,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 596 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L120,UNC           ; [CPU_ALU] |596| 
        ; branch occurs ; [] |596| 
$C$L118:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 564,column 5,is_stmt,isa 0
        MOVL      XAR0,#14              ; [CPU_ALU] |564| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |564| 
        CMPB      AL,#4                 ; [CPU_ALU] |564| 
        B         $C$L119,GT            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#4                 ; [CPU_ALU] |564| 
        B         $C$L114,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#0                 ; [CPU_ALU] |564| 
        B         $C$L110,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#1                 ; [CPU_ALU] |564| 
        B         $C$L111,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#2                 ; [CPU_ALU] |564| 
        B         $C$L112,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#3                 ; [CPU_ALU] |564| 
        B         $C$L113,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        B         $C$L120,UNC           ; [CPU_ALU] |564| 
        ; branch occurs ; [] |564| 
$C$L119:    
        CMPB      AL,#5                 ; [CPU_ALU] |564| 
        B         $C$L115,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#6                 ; [CPU_ALU] |564| 
        B         $C$L116,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CMPB      AL,#7                 ; [CPU_ALU] |564| 
        B         $C$L117,EQ            ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
$C$L120:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 598,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 598 | TxMessage.sMsgStruct.Parm6 = (Iq32 & 0xff);                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |598| 
        ANDB      AL,#0xff              ; [CPU_ALU] |598| 
        MOV       *-SP[57],AL           ; [CPU_ALU] |598| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 599,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 599 | TxMessage.sMsgStruct.Parm5 = ((Iq32 >> 8) & 0xff);                     
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |599| 
        SFR       ACC,8                 ; [CPU_ALU] |599| 
        ANDB      AL,#0xff              ; [CPU_ALU] |599| 
        MOV       *-SP[58],AL           ; [CPU_ALU] |599| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 600,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 600 | TxMessage.sMsgStruct.Parm4 = ((Iq32 >> 16) & 0xff);                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |600| 
        ANDB      AL,#0xff              ; [CPU_ALU] |600| 
        MOV       *-SP[59],AL           ; [CPU_ALU] |600| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 601,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 601 | TxMessage.sMsgStruct.Parm3 = ((Iq32 >> 24) & 0xff);                    
;----------------------------------------------------------------------
        MOV       T,#24                 ; [CPU_ALU] |601| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |601| 
        ASRL      ACC,T                 ; [CPU_ALU] |601| 
        ANDB      AL,#0xff              ; [CPU_ALU] |601| 
        MOV       *-SP[60],AL           ; [CPU_ALU] |601| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 602,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 602 | TxMessage.sMsgStruct.Parm2 = 0x00;                                     
;----------------------------------------------------------------------
        MOV       *-SP[61],#0           ; [CPU_ALU] |602| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 603,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 603 | TxMessage.sMsgStruct.Length = 6;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#6,UNC       ; [CPU_ALU] |603| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 604,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 604 | break;                                                                 
; 605 | case 'O':       /* Write to Digital Outputs DO[23..0] and DMO[31..24] *
;     | /                                                                      
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |604| 
        ; branch occurs ; [] |604| 
$C$L121:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 606,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 606 | HighWord = (RxMessage.sMsgStruct.Parm1 << 8) | RxMessage.sMsgStruct.Par
;     | m2;                                                                    
;----------------------------------------------------------------------
        MOVL      XAR1,#14              ; [CPU_ALU] |606| 
        MOVL      XAR0,#15              ; [CPU_ALU] |606| 
        MOV       ACC,*+FP[AR1] << #8   ; [CPU_ALU] |606| 
        OR        AL,*+FP[AR0]          ; [CPU_ALU] |606| 
        MOVL      XAR0,#9               ; [CPU_ALU] |606| 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] |606| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 607,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 607 | WriteCpld(0x8, RxMessage.sMsgStruct.Parm4);     // Set DO_A[7..0]      
;----------------------------------------------------------------------
        MOVL      XAR0,#17              ; [CPU_ALU] |607| 
        MOVB      AL,#8                 ; [CPU_ALU] |607| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |607| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |607| 
        ; call occurs [#_WriteCpld] ; [] |607| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 608,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 608 | WriteCpld(0x9, RxMessage.sMsgStruct.Parm3); // Set DO_A[15..8]         
;----------------------------------------------------------------------
        MOVL      XAR0,#16              ; [CPU_ALU] |608| 
        MOVB      AL,#9                 ; [CPU_ALU] |608| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |608| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |608| 
        ; call occurs [#_WriteCpld] ; [] |608| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 609,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 609 | WriteDspDO_A(HighWord);                                         // Set
;     | DO_A[31..16]                                                           
;----------------------------------------------------------------------
        MOVL      XAR0,#9               ; [CPU_ALU] |609| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |609| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_WriteDspDO_A")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #_WriteDspDO_A        ; [CPU_ALU] |609| 
        ; call occurs [#_WriteDspDO_A] ; [] |609| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 610,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 610 | if(RxMessage.sMsgStruct.Parm5 & 0x01) {                                
;----------------------------------------------------------------------
        MOVL      XAR0,#18              ; [CPU_ALU] |610| 
        TBIT      *+FP[AR0],#0          ; [CPU_ALU] |610| 
        B         $C$L122,NTC           ; [CPU_ALU] |610| 
        ; branchcc occurs ; [] |610| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 611,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 611 | GpioDataRegs.GPGSET.bit.GPIOG4 = 1;             // Set SERIAL_OUT = HIG
;     | H                                                                      
; 613 | else {                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+25  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+25,#0x0010 ; [CPU_ALU] |611| 
        B         $C$L123,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L122:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 614,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 614 | GpioDataRegs.GPGCLEAR.bit.GPIOG4 = 1;   // Set SERIAL_OUT = LOW        
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+26  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+26,#0x0010 ; [CPU_ALU] |614| 
$C$L123:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 616,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 616 | if(RxMessage.sMsgStruct.Parm6) {                        // Enable DO_A[
;     | 31..0]                                                                 
;----------------------------------------------------------------------
        MOVL      XAR0,#19              ; [CPU_ALU] |616| 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |616| 
        B         $C$L124,EQ            ; [CPU_ALU] |616| 
        ; branchcc occurs ; [] |616| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 617,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 617 | WriteCpld(0xa, 0x3);                                    // Set DO_EN[1.
;     | .0]                                                                    
;----------------------------------------------------------------------
        MOVB      AL,#10                ; [CPU_ALU] |617| 
        MOVB      AH,#3                 ; [CPU_ALU] |617| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |617| 
        ; call occurs [#_WriteCpld] ; [] |617| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 618,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 618 | WriteDspDO_EN(0x3);                                             // Set
;     | DO_EN[3..2]                                                            
; 620 | else {                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_ALU] |618| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_WriteDspDO_EN")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #_WriteDspDO_EN       ; [CPU_ALU] |618| 
        ; call occurs [#_WriteDspDO_EN] ; [] |618| 
        B         $C$L125,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L124:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 621,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 621 | WriteCpld(0xa, 0x0);                                    // Clear DO_EN[
;     | 1..0]                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#10                ; [CPU_ALU] |621| 
        MOVB      AH,#0                 ; [CPU_ALU] |621| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |621| 
        ; call occurs [#_WriteCpld] ; [] |621| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 622,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 622 | WriteDspDO_EN(0x0);                                             // Clea
;     | r DO_EN[3..2]                                                          
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |622| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_WriteDspDO_EN")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #_WriteDspDO_EN       ; [CPU_ALU] |622| 
        ; call occurs [#_WriteDspDO_EN] ; [] |622| 
$C$L125:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 624,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 624 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |624| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 625,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 625 | break;                                                                 
; 626 | case 'P':       /* Query BEL_SNS, MEL_SNS, and PEL_SNS */              
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |625| 
        ; branch occurs ; [] |625| 
$C$L126:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 627,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 627 | TxMessage.sMsgStruct.Parm1 = ReadCpld(0x4);     // Read CPLD Loop Enabl
;     | e Sense inputs                                                         
;----------------------------------------------------------------------
        MOVB      AL,#4                 ; [CPU_ALU] |627| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |627| 
        ; call occurs [#_ReadCpld] ; [] |627| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |627| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 628,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 628 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |628| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 629,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 629 | break;                                                                 
; 630 | case 'Q':       /* Query CPLD Fault sub-system */                      
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |629| 
        ; branch occurs ; [] |629| 
$C$L127:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 631,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 631 | TxMessage.sMsgStruct.Parm1 = ReadCpld(0x3);     // Read CPLD Faults    
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_ALU] |631| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |631| 
        ; call occurs [#_ReadCpld] ; [] |631| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |631| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 632,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 632 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |632| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 633,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 633 | break;                                                                 
; 634 | case 'R':       /* Test The External SRAM (U43) */                     
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |633| 
        ; branch occurs ; [] |633| 
$C$L128:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 635,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 635 | TxMessage.sMsgStruct.Parm1 = TestRam();                                
;----------------------------------------------------------------------
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_TestRam")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #_TestRam             ; [CPU_ALU] |635| 
        ; call occurs [#_TestRam] ; [] |635| 
        MOV       *-SP[62],AL           ; [CPU_ALU] |635| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 636,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 636 | TxMessage.sMsgStruct.Length = 1;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#1,UNC       ; [CPU_ALU] |636| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 637,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 637 | break;                                                                 
; 638 | case 'S':       /* Set or Clear V5_ON, AD_TEST, and DSPTEST */         
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |637| 
        ; branch occurs ; [] |637| 
$C$L129:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 639,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 639 | if(RxMessage.sMsgStruct.Parm1 & 0x01) { // Set V5_ON                   
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |639| 
        TBIT      *+FP[AR0],#0          ; [CPU_ALU] |639| 
        B         $C$L130,NTC           ; [CPU_ALU] |639| 
        ; branchcc occurs ; [] |639| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 640,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 640 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |640| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |640| 
        ; call occurs [#_ReadCpld] ; [] |640| 
        MOV       *+FP[6],AL            ; [CPU_ALU] |640| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 641,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 641 | WriteCpld(0xb, (CpldRd | 0x01));        // Bit field 1 at addr(0xb) is
;     | defined as V5_ON                                                       
; 643 | else {
;     |  // Clear V5_ON                                                        
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |641| 
        MOV       AH,*+FP[6]            ; [CPU_ALU] |641| 
        ORB       AH,#0x01              ; [CPU_ALU] |641| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |641| 
        ; call occurs [#_WriteCpld] ; [] |641| 
        B         $C$L131,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L130:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 644,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 644 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |644| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |644| 
        ; call occurs [#_ReadCpld] ; [] |644| 
        MOV       *+FP[6],AL            ; [CPU_ALU] |644| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 645,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 645 | WriteCpld(0xb, (CpldRd & 0xfe));        // Bit field 1 at addr(0xb) is
;     | defined as V5_ON                                                       
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |645| 
        AND       AH,*+FP[6],#0x00fe    ; [CPU_ALU] |645| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |645| 
        ; call occurs [#_WriteCpld] ; [] |645| 
$C$L131:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 647,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 647 | if(RxMessage.sMsgStruct.Parm1 & 0x02) { // Set AD_TEST                 
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |647| 
        TBIT      *+FP[AR0],#1          ; [CPU_ALU] |647| 
        B         $C$L132,NTC           ; [CPU_ALU] |647| 
        ; branchcc occurs ; [] |647| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 648,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 648 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |648| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |648| 
        ; call occurs [#_ReadCpld] ; [] |648| 
        MOV       *+FP[6],AL            ; [CPU_ALU] |648| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 649,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 649 | WriteCpld(0xb, (CpldRd | 0x02));        // Bit field 2 at addr(0xb) is
;     | defined as AD_TEST                                                     
; 651 | else {
;     |  // Clear AD_TEST                                                      
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |649| 
        MOV       AH,*+FP[6]            ; [CPU_ALU] |649| 
        ORB       AH,#0x02              ; [CPU_ALU] |649| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |649| 
        ; call occurs [#_WriteCpld] ; [] |649| 
        B         $C$L133,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L132:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 652,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 652 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |652| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_ReadCpld")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #_ReadCpld            ; [CPU_ALU] |652| 
        ; call occurs [#_ReadCpld] ; [] |652| 
        MOV       *+FP[6],AL            ; [CPU_ALU] |652| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 653,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 653 | WriteCpld(0xb, (CpldRd & 0xfd));        // Bit field 2 at addr(0xb) is
;     | defined as AD_TEST                                                     
;----------------------------------------------------------------------
        MOVB      AL,#11                ; [CPU_ALU] |653| 
        AND       AH,*+FP[6],#0x00fd    ; [CPU_ALU] |653| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_WriteCpld")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #_WriteCpld           ; [CPU_ALU] |653| 
        ; call occurs [#_WriteCpld] ; [] |653| 
$C$L133:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 655,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 655 | if(RxMessage.sMsgStruct.Parm1 & 0x04) { // Set DSPTEST                 
;----------------------------------------------------------------------
        MOVL      XAR0,#14              ; [CPU_ALU] |655| 
        TBIT      *+FP[AR0],#2          ; [CPU_ALU] |655| 
        B         $C$L134,NTC           ; [CPU_ALU] |655| 
        ; branchcc occurs ; [] |655| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 656,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 656 | GpioDataRegs.GPESET.bit.GPIOE2 = 1;                                    
; 658 | else {
;     |  // Clear DSPTEST                                                      
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+17  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+17,#0x0004 ; [CPU_ALU] |656| 
        B         $C$L140,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L134:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 659,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 659 | GpioDataRegs.GPECLEAR.bit.GPIOE2 = 1;                                  
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+18  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+18,#0x0004 ; [CPU_ALU] |659| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 661,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 661 | break;                                                                 
; 662 | case 'T':       /* Change Watchdog timer period to 325mS: Force Watchdo
;     | g timer to time out */                                                 
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |661| 
        ; branch occurs ; [] |661| 
$C$L135:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 663,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 663 | while(CpuTimer0Regs.TIM.all < (11400000 - 100)) {;}     // Change close
;     |  to the last dog kik                                                   
;----------------------------------------------------------------------
        MOV       AL,#62172             ; [CPU_ALU] |663| 
        MOV       AH,#173               ; [CPU_ALU] |663| 
        MOVW      DP,#_CpuTimer0Regs    ; [CPU_ARAU] 
        CMPL      ACC,@$BLOCKED(_CpuTimer0Regs) ; [CPU_ALU] |663| 
        B         $C$L135,HI            ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 664,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 664 | CpuTimer0Regs.PRD.all = 39000000;
;     |  // Change period betweed edges to 325mS                               
;----------------------------------------------------------------------
        MOV       AL,#6080              ; [CPU_ALU] |664| 
        MOV       AH,#595               ; [CPU_ALU] |664| 
        MOVL      @$BLOCKED(_CpuTimer0Regs)+2,ACC ; [CPU_ALU] |664| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 665,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 665 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |665| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 666,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 666 | break;                                                                 
; 667 | case 'v':       /* Get DSP Firmware Version */                         
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |666| 
        ; branch occurs ; [] |666| 
$C$L136:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 668,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 668 | TxMessage.sMsgStruct.Parm3 = 0x01;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[60],#1,UNC       ; [CPU_ALU] |668| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 669,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 669 | TxMessage.sMsgStruct.Parm2 = 0x05;                                     
;----------------------------------------------------------------------
        MOVB      *-SP[61],#5,UNC       ; [CPU_ALU] |669| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 670,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 670 | TxMessage.sMsgStruct.Length = 2;                                       
;----------------------------------------------------------------------
        MOVB      *-SP[63],#2,UNC       ; [CPU_ALU] |670| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 671,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 671 | break;                                                                 
; 672 | default:        /* Unrecognized Command */                             
;----------------------------------------------------------------------
        B         $C$L140,UNC           ; [CPU_ALU] |671| 
        ; branch occurs ; [] |671| 
$C$L137:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 673,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 673 | TxMessage.sMsgStruct.Cmd = '~';                                        
;----------------------------------------------------------------------
        MOVL      XAR0,#20              ; [CPU_ALU] |673| 
        MOVB      *+FP[AR0],#126,UNC    ; [CPU_ALU] |673| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 674,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 674 | TxMessage.sMsgStruct.Length = 0;                                       
;----------------------------------------------------------------------
        MOV       *-SP[63],#0           ; [CPU_ALU] |674| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 675,column 3,is_stmt,isa 0
        B         $C$L140,UNC           ; [CPU_ALU] |675| 
        ; branch occurs ; [] |675| 
$C$L138:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 131,column 3,is_stmt,isa 0
        MOVL      XAR0,#12              ; [CPU_ALU] |131| 
        MOV       AH,*+FP[AR0]          ; [CPU_ALU] |131| 
        MOV       AL,AH                 ; [CPU_ALU] |131| 
        ADDB      AL,#-65               ; [CPU_ALU] |131| 
        CMPB      AL,#19                ; [CPU_ALU] |131| 
        B         $C$L139,LOS           ; [CPU_ALU] |131| 
        ; branchcc occurs ; [] |131| 
        CMPB      AH,#118               ; [CPU_ALU] |131| 
        B         $C$L136,EQ            ; [CPU_ALU] |131| 
        ; branchcc occurs ; [] |131| 
        B         $C$L137,UNC           ; [CPU_ALU] |131| 
        ; branch occurs ; [] |131| 
$C$L139:    
        MOV       ACC,AH << #1          ; [CPU_ALU] |131| 
        MOVZ      AR6,AL                ; [CPU_ALU] |131| 
        SUB       AR6,#130              ; [CPU_ALU] |131| 
        MOVL      XAR7,#$C$SW5          ; [CPU_ARAU] |131| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |131| 
        ADDU      ACC,AR6               ; [CPU_ALU] |131| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |131| 
        MOVL      XAR7,*XAR7            ; [CPU_ALU] |131| 
        LB        *XAR7                 ; [CPU_ALU] |131| 
        ; branch occurs ; [] |131| 
	.sect	".switch:_main"
	.clink
$C$SW5:	.long	$C$L6	; 65
	.long	$C$L46	; 66
	.long	$C$L48	; 67
	.long	$C$L49	; 68
	.long	$C$L52	; 69
	.long	$C$L54	; 70
	.long	$C$L89	; 71
	.long	$C$L137	; 0
	.long	$C$L96	; 73
	.long	$C$L97	; 74
	.long	$C$L137	; 0
	.long	$C$L137	; 0
	.long	$C$L137	; 0
	.long	$C$L109	; 78
	.long	$C$L121	; 79
	.long	$C$L126	; 80
	.long	$C$L127	; 81
	.long	$C$L128	; 82
	.long	$C$L129	; 83
	.long	$C$L135	; 84
	.sect	".text"
$C$L140:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 676,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 676 | DelayUs(65535); /* Delay approximately 82mS */                         
;----------------------------------------------------------------------
        MOV       AL,#65535             ; [CPU_ALU] |676| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_DelayUs")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #_DelayUs             ; [CPU_ALU] |676| 
        ; call occurs [#_DelayUs] ; [] |676| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 677,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 677 | TxECanMsg(15, &TxMessage);                                             
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_ALU] |677| 
        MOVB      AL,#15                ; [CPU_ALU] |677| 
        SUBB      XAR4,#64              ; [CPU_ARAU] |677| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |677| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_TxECanMsg")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #_TxECanMsg           ; [CPU_ALU] |677| 
        ; call occurs [#_TxECanMsg] ; [] |677| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 678,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 678 | GpioDataRegs.GPATOGGLE.bit.GPIOA0 = 1;                                 
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+3   ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0001 ; [CPU_ALU] |678| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 679,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 679 | GpioDataRegs.GPATOGGLE.bit.GPIOA1 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0002 ; [CPU_ALU] |679| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 680,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 680 | GpioDataRegs.GPATOGGLE.bit.GPIOA2 = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x0004 ; [CPU_ALU] |680| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c",line 117,column 8,is_stmt,isa 0
        B         $C$L5,UNC             ; [CPU_ALU] |117| 
        ; branch occurs ; [] |117| 
	.dwattr $C$DW$79, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/main_nonBIOS.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x2ac)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_InitSysCtrl
	.global	_InitXintf
	.global	_InitGpio
	.global	_InitPieCtrl
	.global	_InitFlash
	.global	_InitAdc
	.global	_InitEv
	.global	_InitECan
	.global	_SetDBGIER
	.global	_DelayUs
	.global	_ConfigEepromInterface
	.global	_EepromWriteByte
	.global	_ConfigDacInterface
	.global	_TxDacData
	.global	_AuxEepromWriteStatus
	.global	_AuxEepromWriteEnable
	.global	_AuxEepromWriteByte
	.global	_ConfigMax7301Interface
	.global	_ConfigMax7301DIO
	.global	_Max7301Write
	.global	_ConfigTlv1570Interface
	.global	_secureRamFuncs_loadstart
	.global	_secureRamFuncs_loadend
	.global	_secureRamFuncs_runstart
	.global	_InitSpi
	.global	_GetAdcCalibrationFactors
	.global	_TxECanMsg
	.global	_RxECanMsg
	.global	_StartConversion
	.global	_GetAdcConversion
	.global	_EepromReadByte
	.global	_ReadCpld
	.global	_EepromTest
	.global	_AuxEepromTest
	.global	_AuxEepromReadStatus
	.global	_AuxEepromReadByte
	.global	_TxSpi
	.global	_FormatSpiTxWord
	.global	_SpiRxNotReady
	.global	_RxSpi
	.global	_ReadDspDI_B
	.global	_ReadDspID_A
	.global	_Max7301Input
	.global	_WriteCpld
	.global	_WriteDspDO_A
	.global	_WriteDspDO_EN
	.global	_TestRam
	.global	_CheckRxMailBoxes
	.global	_crcCalc32
	.global	_Tlv1570Convert
	.global	_CpuTimer0Regs
	.global	_PieCtrlRegs
	.global	_GpioDataRegs
	.global	_memcpy
	.global	I$$TOFS
	.global	FS$$CMP
	.global	FS$$MPY
	.global	FS$$TOL
	.global	U$$TOFS
	.global	FS$$DIV
	.global	FS$$ADD

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("MODE_A")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_MODE_A")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("MODE_B")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_MODE_B")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("SELFTEST_OK")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_SELFTEST_OK")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("FLTREF_CTRL")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_FLTREF_CTRL")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("BMHV_ENA")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_BMHV_ENA")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("BMHV_ENB")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_BMHV_ENB")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("BEL_CNTL")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_BEL_CNTL")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("CANRX_LED")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_CANRX_LED")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("CANTX_LED")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_CANTX_LED")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("MJIL_RST")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_MJIL_RST")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("MNIL_RST")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_MNIL_RST")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("LOFCLK")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_LOFCLK")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("VAC_ENAB")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_VAC_ENAB")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("M24V_CTRL")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_M24V_CTRL")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("RCVRPD")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_RCVRPD")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("RESERVED")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_RESERVED")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("VCODE")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_VCODE")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$294, DW_AT_bit_size(0x04)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("KLYITRIG_MON")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_KLYITRIG_MON")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("ILOIL_MON")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_ILOIL_MON")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("ILMOD_MON")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_ILMOD_MON")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("ILKFIL_MON")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_ILKFIL_MON")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("ILHVOC_MON")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_ILHVOC_MON")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("ILHVCB_MON")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_ILHVCB_MON")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("BEAMEN_MON")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_BEAMEN_MON")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("CB24VPG")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_CB24VPG")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("MODTRIG_MON")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_MODTRIG_MON")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("MOD24VPG")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_MOD24VPG")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("MODE_FLT")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_MODE_FLT")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("KHV_ST")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_KHV_ST")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("CANMSG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$307, DW_AT_name("bData")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_bData")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$308, DW_AT_name("sMsgStruct")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_sMsgStruct")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("SMessage")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)

$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x20)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x08)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$309, DW_AT_name("TIM")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$310, DW_AT_name("PRD")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$311, DW_AT_name("TCR")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("rsvd1")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$313, DW_AT_name("TPR")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$314, DW_AT_name("TPRH")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$315	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$24)

$C$DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$315)


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("DspGpInput")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("Word")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_Word")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$317, DW_AT_name("Bit")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_Bit")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("DspGpOutput")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("Word")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_Word")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$319, DW_AT_name("Bit")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_Bit")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIOA0")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIOA1")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOA2")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOA3")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOA4")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOA5")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIOA6")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIOA7")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOA8")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOA9")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOA10")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIOA11")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIOA12")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIOA13")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIOA14")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOA15")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("all")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$337, DW_AT_name("bit")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIOA0")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOA1")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOA2")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOA3")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOA4")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOA5")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOA6")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOA7")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOA8")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOA9")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOA10")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOA11")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOA12")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIOA13")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIOA14")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOA15")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("all")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$355, DW_AT_name("bit")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIOA0")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOA1")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOA2")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOA3")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOA4")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOA5")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOA6")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOA7")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOA8")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOA9")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOA10")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOA11")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIOA12")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIOA13")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIOA14")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOA15")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("all")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$373, DW_AT_name("bit")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIOA0")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOA1")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOA2")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOA3")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOA4")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOA5")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOA6")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOA7")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOA8")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOA9")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOA10")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOA11")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIOA12")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIOA13")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIOA14")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIOA15")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("all")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$391, DW_AT_name("bit")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("GPIOB0")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIOB1")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOB2")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIOB3")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOB4")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOB5")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIOB6")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIOB7")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIOB8")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOB9")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOB10")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIOB11")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIOB12")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIOB13")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("GPIOB14")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOB15")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("all")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$409, DW_AT_name("bit")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIOB0")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIOB1")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOB2")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOB3")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOB4")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIOB5")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIOB6")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOB7")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOB8")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOB9")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOB10")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOB11")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIOB12")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIOB13")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("GPIOB14")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOB15")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("all")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$427, DW_AT_name("bit")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("GPIOB0")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("GPIOB1")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIOB2")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIOB3")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIOB4")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIOB5")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIOB6")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIOB7")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIOB8")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOB9")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOB10")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIOB11")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIOB12")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("GPIOB13")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIOB14")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIOB15")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("all")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$445, DW_AT_name("bit")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("GPIOB0")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("GPIOB1")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("GPIOB2")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIOB3")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOB4")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOB5")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIOB6")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIOB7")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIOB8")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIOB9")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIOB10")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIOB11")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIOB12")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIOB13")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIOB14")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIOB15")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("all")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$463, DW_AT_name("bit")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("GPIOD0")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("GPIOD1")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("rsvd1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$466, DW_AT_bit_size(0x03)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIOD5")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIOD6")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("rsvd2")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$469, DW_AT_bit_size(0x09)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("all")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$471, DW_AT_name("bit")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIOD0")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIOD1")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("rsvd1")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$474, DW_AT_bit_size(0x03)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIOD5")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIOD6")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("rsvd2")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$477, DW_AT_bit_size(0x09)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("all")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$479, DW_AT_name("bit")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIOD0")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("GPIOD1")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("rsvd1")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$482, DW_AT_bit_size(0x03)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("GPIOD5")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("GPIOD6")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("rsvd2")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$485, DW_AT_bit_size(0x09)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("all")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$487, DW_AT_name("bit")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("GPIOD0")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("GPIOD1")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("rsvd1")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$490, DW_AT_bit_size(0x03)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIOD5")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIOD6")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("rsvd2")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$493, DW_AT_bit_size(0x09)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("all")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$495, DW_AT_name("bit")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("GPIOE0")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("GPIOE1")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("GPIOE2")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("rsvd1")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$499, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("all")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$501, DW_AT_name("bit")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("GPIOE0")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIOE1")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("GPIOE2")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("rsvd1")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$505, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("all")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$507, DW_AT_name("bit")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIOE0")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("GPIOE1")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIOE2")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("rsvd1")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$511, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("all")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$513, DW_AT_name("bit")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("GPIOE0")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIOE1")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("GPIOE2")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("rsvd1")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$517, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("all")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$519, DW_AT_name("bit")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("GPIOF0")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("GPIOF1")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIOF2")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIOF3")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("GPIOF4")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("GPIOF5")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("GPIOF6")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("GPIOF7")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("GPIOF8")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIOF9")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("GPIOF10")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("GPIOF11")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("GPIOF12")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("GPIOF13")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("GPIOF14")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("GPIOF15")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("all")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$537, DW_AT_name("bit")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("GPIOF0")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("GPIOF1")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIOF2")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIOF3")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("GPIOF4")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("GPIOF5")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("GPIOF6")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("GPIOF7")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("GPIOF8")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("GPIOF9")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("GPIOF10")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("GPIOF11")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("GPIOF12")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GPIOF13")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("GPIOF14")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("GPIOF15")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("all")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$555, DW_AT_name("bit")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("GPIOF0")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("GPIOF1")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("GPIOF2")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("GPIOF3")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("GPIOF4")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("GPIOF5")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("GPIOF6")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("GPIOF7")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("GPIOF8")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("GPIOF9")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("GPIOF10")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("GPIOF11")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("GPIOF12")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("GPIOF13")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("GPIOF14")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("GPIOF15")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("all")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$573, DW_AT_name("bit")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("GPIOF0")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("GPIOF1")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("GPIOF2")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("GPIOF3")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("GPIOF4")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("GPIOF5")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("GPIOF6")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("GPIOF7")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("GPIOF8")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("GPIOF9")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("GPIOF10")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("GPIOF11")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("GPIOF12")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("GPIOF13")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("GPIOF14")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("GPIOF15")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("all")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$591, DW_AT_name("bit")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("rsvd1")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$592, DW_AT_bit_size(0x04)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIOG4")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIOG5")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("rsvd2")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$595, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("all")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$597, DW_AT_name("bit")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("rsvd1")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$598, DW_AT_bit_size(0x04)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GPIOG4")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GPIOG5")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("rsvd2")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$601, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("all")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$603, DW_AT_name("bit")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("rsvd1")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$604, DW_AT_bit_size(0x04)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("GPIOG4")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("GPIOG5")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("rsvd2")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$607, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("all")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$609, DW_AT_name("bit")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("rsvd1")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$610, DW_AT_bit_size(0x04)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GPIOG4")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIOG5")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("rsvd2")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$613, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("all")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$615, DW_AT_name("bit")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x20)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$616, DW_AT_name("GPADAT")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$617, DW_AT_name("GPASET")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$618, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$619, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$620, DW_AT_name("GPBDAT")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$621, DW_AT_name("GPBSET")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$622, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$623, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$624, DW_AT_name("rsvd1")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$625, DW_AT_name("GPDDAT")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$626, DW_AT_name("GPDSET")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$627, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$628, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$629, DW_AT_name("GPEDAT")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$630, DW_AT_name("GPESET")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$631, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$632, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$633, DW_AT_name("GPFDAT")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$634, DW_AT_name("GPFSET")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$635, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$636, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$637, DW_AT_name("GPGDAT")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$638, DW_AT_name("GPGSET")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$639, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$640, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$641, DW_AT_name("rsvd2")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76

$C$DW$642	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$76)

$C$DW$T$125	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$642)


$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("ACK1")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_ACK1")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("ACK2")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_ACK2")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("ACK3")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_ACK3")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("ACK4")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_ACK4")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("ACK5")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_ACK5")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("ACK6")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_ACK6")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("ACK7")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_ACK7")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("ACK8")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_ACK8")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("ACK9")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_ACK9")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("ACK10")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_ACK10")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("ACK11")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_ACK11")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("ACK12")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_ACK12")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("rsvd")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$655, DW_AT_bit_size(0x04)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$78, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("all")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$657, DW_AT_name("bit")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("ENPIE")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_ENPIE")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("PIEVECT")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_PIEVECT")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$659, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$80, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("all")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$661, DW_AT_name("bit")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("PIEIER_BITS")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("INTx1")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_name("INTx2")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("INTx3")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("INTx4")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("INTx5")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("INTx6")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("INTx7")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("INTx8")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("rsvd")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$670, DW_AT_bit_size(0x08)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$82, DW_AT_name("PIEIER_REG")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("all")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$672, DW_AT_name("bit")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("PIEIFR_BITS")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("INTx1")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("INTx2")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("INTx3")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("INTx4")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("INTx5")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("INTx6")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("INTx7")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("INTx8")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("rsvd")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$681, DW_AT_bit_size(0x08)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$84, DW_AT_name("PIEIFR_REG")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("all")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$683, DW_AT_name("bit")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x1a)
$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$684, DW_AT_name("PIECRTL")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_PIECRTL")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$685, DW_AT_name("PIEACK")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_PIEACK")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$686, DW_AT_name("PIEIER1")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_PIEIER1")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$687, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_PIEIFR1")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$688, DW_AT_name("PIEIER2")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_PIEIER2")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$689, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_PIEIFR2")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$690, DW_AT_name("PIEIER3")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_PIEIER3")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$691, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_PIEIFR3")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$692, DW_AT_name("PIEIER4")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_PIEIER4")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$693, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_PIEIFR4")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$694, DW_AT_name("PIEIER5")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_PIEIER5")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$695, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_PIEIFR5")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$696, DW_AT_name("PIEIER6")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_PIEIER6")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$697, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_PIEIFR6")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$698, DW_AT_name("PIEIER7")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_PIEIER7")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$699, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_PIEIFR7")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$700, DW_AT_name("PIEIER8")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_PIEIER8")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$701, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_PIEIFR8")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$702, DW_AT_name("PIEIER9")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_PIEIER9")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$703, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_PIEIFR9")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$704, DW_AT_name("PIEIER10")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_PIEIER10")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$705, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_PIEIFR10")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$706, DW_AT_name("PIEIER11")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_PIEIER11")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$707, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_PIEIFR11")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$708, DW_AT_name("PIEIER12")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_PIEIER12")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$709, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_PIEIFR12")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85

$C$DW$710	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$85)

$C$DW$T$128	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$710)


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("PRD_GROUP")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x02)
$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$711, DW_AT_name("all")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$712, DW_AT_name("half")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x02)
$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("LSW")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("MSW")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("rsvd1")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$715, DW_AT_bit_size(0x04)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("TSS")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("TRB")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("rsvd2")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$718, DW_AT_bit_size(0x04)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("SOFT")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("FREE")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("rsvd3")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$721, DW_AT_bit_size(0x02)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("TIE")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("TIF")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$90, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("all")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$725, DW_AT_name("bit")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("TIM_GROUP")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$726, DW_AT_name("all")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$727, DW_AT_name("half")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("LSW")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("MSW")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("TDDRH")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$730, DW_AT_bit_size(0x08)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("PSCH")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$731, DW_AT_bit_size(0x08)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$94, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("all")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$733, DW_AT_name("bit")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("TDDR")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$734, DW_AT_bit_size(0x08)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("PSC")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$735, DW_AT_bit_size(0x08)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$96, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("all")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$737, DW_AT_name("bit")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96

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


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$738	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$738, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$22

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

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("Byte")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)

$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)


$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x2c)
$C$DW$739	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$739, DW_AT_upper_bound(0x2b)

	.dwendtag $C$DW$T$150

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$75	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x04)
$C$DW$740	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$740, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$75

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("int32")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("Uint32")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$741	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$86)

$C$DW$T$161	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$741)

$C$DW$T$167	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$167, DW_AT_name("size_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)

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


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_name("sCAN_MSG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x08)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$742, DW_AT_name("Cmd")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_Cmd")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$743, DW_AT_name("Length")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_Length")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$744, DW_AT_name("Parm1")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_Parm1")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$745, DW_AT_name("Parm2")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_Parm2")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$746, DW_AT_name("Parm3")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_Parm3")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$747, DW_AT_name("Parm4")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_Parm4")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$748, DW_AT_name("Parm5")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_Parm5")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$749, DW_AT_name("Parm6")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_Parm6")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97

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

$C$DW$750	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$750, DW_AT_name("AL")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_reg0]

$C$DW$751	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$751, DW_AT_name("AH")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_reg1]

$C$DW$752	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$752, DW_AT_name("PL")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_reg2]

$C$DW$753	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$753, DW_AT_name("PH")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_reg3]

$C$DW$754	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$754, DW_AT_name("SP")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_reg20]

$C$DW$755	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$755, DW_AT_name("XT")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_reg21]

$C$DW$756	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$756, DW_AT_name("T")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_reg22]

$C$DW$757	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$757, DW_AT_name("ST0")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_reg23]

$C$DW$758	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$758, DW_AT_name("ST1")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_reg24]

$C$DW$759	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$759, DW_AT_name("PC")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_reg25]

$C$DW$760	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$760, DW_AT_name("RPC")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_reg26]

$C$DW$761	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$761, DW_AT_name("FP")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_reg28]

$C$DW$762	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$762, DW_AT_name("DP")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_reg29]

$C$DW$763	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$763, DW_AT_name("SXM")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_reg30]

$C$DW$764	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$764, DW_AT_name("PM")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_reg31]

$C$DW$765	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$765, DW_AT_name("OVM")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_regx 0x20]

$C$DW$766	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$766, DW_AT_name("PAGE0")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_regx 0x21]

$C$DW$767	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$767, DW_AT_name("AMODE")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_regx 0x22]

$C$DW$768	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$768, DW_AT_name("EALLOW")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$769	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$769, DW_AT_name("INTM")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_regx 0x23]

$C$DW$770	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$770, DW_AT_name("IFR")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_regx 0x24]

$C$DW$771	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$771, DW_AT_name("IER")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_regx 0x25]

$C$DW$772	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$772, DW_AT_name("V")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_regx 0x26]

$C$DW$773	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$773, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$774	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$774, DW_AT_name("VOL")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$775	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$775, DW_AT_name("AR0")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_reg4]

$C$DW$776	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$776, DW_AT_name("XAR0")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_reg5]

$C$DW$777	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$777, DW_AT_name("AR1")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_reg6]

$C$DW$778	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$778, DW_AT_name("XAR1")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_reg7]

$C$DW$779	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$779, DW_AT_name("AR2")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_reg8]

$C$DW$780	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$780, DW_AT_name("XAR2")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_reg9]

$C$DW$781	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$781, DW_AT_name("AR3")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_reg10]

$C$DW$782	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$782, DW_AT_name("XAR3")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_reg11]

$C$DW$783	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$783, DW_AT_name("AR4")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_reg12]

$C$DW$784	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$784, DW_AT_name("XAR4")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_reg13]

$C$DW$785	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$785, DW_AT_name("AR5")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_reg14]

$C$DW$786	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$786, DW_AT_name("XAR5")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_reg15]

$C$DW$787	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$787, DW_AT_name("AR6")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_reg16]

$C$DW$788	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$788, DW_AT_name("XAR6")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_reg17]

$C$DW$789	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$789, DW_AT_name("AR7")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_reg18]

$C$DW$790	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$790, DW_AT_name("XAR7")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


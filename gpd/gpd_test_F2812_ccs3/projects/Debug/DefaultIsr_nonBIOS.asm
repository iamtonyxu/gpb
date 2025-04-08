;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.0 *
;* Date/Time created: Tue Sep 16 13:11:04 2008                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("DefaultIsr_nonBIOS.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Toggle$1+0,32
	.field  	0,16			; _Toggle$1 @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCpld"), DW_AT_symbol_name("_WriteCpld")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$1

_Toggle$1:	.usect	".ebss",1,1,0

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCpld"), DW_AT_symbol_name("_ReadCpld")
	.dwattr DW$4, DW_AT_type(*DW$T$29)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$4

DW$6	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$6, DW_AT_type(*DW$T$37)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\iadevait\LOCALS~1\Temp\TI6682 
	.sect	".text"
	.global	_INT13_ISR

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("INT13_ISR"), DW_AT_symbol_name("_INT13_ISR")
	.dwattr DW$7, DW_AT_low_pc(_INT13_ISR)
	.dwattr DW$7, DW_AT_high_pc(0x00)
	.dwattr DW$7, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$7, DW_AT_begin_line(0x1d)
	.dwattr DW$7, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",30,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  29 | interrupt void INT13_ISR(void)                  // 0x000D1A  INT13 - XI
;     | NT13 (or CPU Timer1, reserved for TI)                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _INT13_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_INT13_ISR:
;----------------------------------------------------------------------
;  31 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",32,2
;----------------------------------------------------------------------
;  32 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",33,8
;----------------------------------------------------------------------
;  33 | while(1);                                                              
;----------------------------------------------------------------------
L1:    
DW$L$_INT13_ISR$2$B:
        B         L1,UNC                ; |33| 
        ; branch occurs ; |33| 
DW$L$_INT13_ISR$2$E:

DW$8	.dwtag  DW_TAG_loop
	.dwattr DW$8, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L1:1:1221595864")
	.dwattr DW$8, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$8, DW_AT_begin_line(0x21)
	.dwattr DW$8, DW_AT_end_line(0x21)
DW$9	.dwtag  DW_TAG_loop_range
	.dwattr DW$9, DW_AT_low_pc(DW$L$_INT13_ISR$2$B)
	.dwattr DW$9, DW_AT_high_pc(DW$L$_INT13_ISR$2$E)
	.dwendtag DW$8

	.dwattr DW$7, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$7, DW_AT_end_line(0x22)
	.dwattr DW$7, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$7

	.sect	".text"
	.global	_INT14_ISR

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("INT14_ISR"), DW_AT_symbol_name("_INT14_ISR")
	.dwattr DW$10, DW_AT_low_pc(_INT14_ISR)
	.dwattr DW$10, DW_AT_high_pc(0x00)
	.dwattr DW$10, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$10, DW_AT_begin_line(0x25)
	.dwattr DW$10, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",38,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  37 | interrupt void INT14_ISR(void)                  // 0x000D1C  INT14 - CP
;     | U Timer2, reserved for TI                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _INT14_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_INT14_ISR:
;----------------------------------------------------------------------
;  39 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",40,2
;----------------------------------------------------------------------
;  40 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",41,8
;----------------------------------------------------------------------
;  41 | while(1);                                                              
;----------------------------------------------------------------------
L2:    
DW$L$_INT14_ISR$2$B:
        B         L2,UNC                ; |41| 
        ; branch occurs ; |41| 
DW$L$_INT14_ISR$2$E:

DW$11	.dwtag  DW_TAG_loop
	.dwattr DW$11, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L2:1:1221595864")
	.dwattr DW$11, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$11, DW_AT_begin_line(0x29)
	.dwattr DW$11, DW_AT_end_line(0x29)
DW$12	.dwtag  DW_TAG_loop_range
	.dwattr DW$12, DW_AT_low_pc(DW$L$_INT14_ISR$2$B)
	.dwattr DW$12, DW_AT_high_pc(DW$L$_INT14_ISR$2$E)
	.dwendtag DW$11

	.dwattr DW$10, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$10, DW_AT_end_line(0x2a)
	.dwattr DW$10, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$10

	.sect	".text"
	.global	_DATALOG_ISR

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("DATALOG_ISR"), DW_AT_symbol_name("_DATALOG_ISR")
	.dwattr DW$13, DW_AT_low_pc(_DATALOG_ISR)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$13, DW_AT_begin_line(0x2d)
	.dwattr DW$13, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",46,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  45 | interrupt void DATALOG_ISR(void)                // 0x000D1E  DATALOG -
;     | CPU data logging interrupt                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DATALOG_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DATALOG_ISR:
;----------------------------------------------------------------------
;  47 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",48,2
;----------------------------------------------------------------------
;  48 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",49,8
;----------------------------------------------------------------------
;  49 | while(1);                                                              
;----------------------------------------------------------------------
L3:    
DW$L$_DATALOG_ISR$2$B:
        B         L3,UNC                ; |49| 
        ; branch occurs ; |49| 
DW$L$_DATALOG_ISR$2$E:

DW$14	.dwtag  DW_TAG_loop
	.dwattr DW$14, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L3:1:1221595864")
	.dwattr DW$14, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$14, DW_AT_begin_line(0x31)
	.dwattr DW$14, DW_AT_end_line(0x31)
DW$15	.dwtag  DW_TAG_loop_range
	.dwattr DW$15, DW_AT_low_pc(DW$L$_DATALOG_ISR$2$B)
	.dwattr DW$15, DW_AT_high_pc(DW$L$_DATALOG_ISR$2$E)
	.dwendtag DW$14

	.dwattr DW$13, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$13, DW_AT_end_line(0x32)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$13

	.sect	".text"
	.global	_RTOSINT_ISR

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("RTOSINT_ISR"), DW_AT_symbol_name("_RTOSINT_ISR")
	.dwattr DW$16, DW_AT_low_pc(_RTOSINT_ISR)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$16, DW_AT_begin_line(0x35)
	.dwattr DW$16, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",54,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  53 | interrupt void RTOSINT_ISR(void)                // 0x000D20  RTOSINT -
;     | CPU RTOS interrupt                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _RTOSINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RTOSINT_ISR:
;----------------------------------------------------------------------
;  55 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",56,2
;----------------------------------------------------------------------
;  56 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",57,8
;----------------------------------------------------------------------
;  57 | while(1);                                                              
;----------------------------------------------------------------------
L4:    
DW$L$_RTOSINT_ISR$2$B:
        B         L4,UNC                ; |57| 
        ; branch occurs ; |57| 
DW$L$_RTOSINT_ISR$2$E:

DW$17	.dwtag  DW_TAG_loop
	.dwattr DW$17, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L4:1:1221595864")
	.dwattr DW$17, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$17, DW_AT_begin_line(0x39)
	.dwattr DW$17, DW_AT_end_line(0x39)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_RTOSINT_ISR$2$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_RTOSINT_ISR$2$E)
	.dwendtag DW$17

	.dwattr DW$16, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$16, DW_AT_end_line(0x3a)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$16

	.sect	".text"
	.global	_EMUINT_ISR

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("EMUINT_ISR"), DW_AT_symbol_name("_EMUINT_ISR")
	.dwattr DW$19, DW_AT_low_pc(_EMUINT_ISR)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$19, DW_AT_begin_line(0x3d)
	.dwattr DW$19, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",62,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  61 | interrupt void EMUINT_ISR(void)                 // 0x000D22  EMUINT - C
;     | PU emulation interrupt                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EMUINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EMUINT_ISR:
;----------------------------------------------------------------------
;  63 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",64,2
;----------------------------------------------------------------------
;  64 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",65,8
;----------------------------------------------------------------------
;  65 | while(1);                                                              
;----------------------------------------------------------------------
L5:    
DW$L$_EMUINT_ISR$2$B:
        B         L5,UNC                ; |65| 
        ; branch occurs ; |65| 
DW$L$_EMUINT_ISR$2$E:

DW$20	.dwtag  DW_TAG_loop
	.dwattr DW$20, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L5:1:1221595864")
	.dwattr DW$20, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$20, DW_AT_begin_line(0x41)
	.dwattr DW$20, DW_AT_end_line(0x41)
DW$21	.dwtag  DW_TAG_loop_range
	.dwattr DW$21, DW_AT_low_pc(DW$L$_EMUINT_ISR$2$B)
	.dwattr DW$21, DW_AT_high_pc(DW$L$_EMUINT_ISR$2$E)
	.dwendtag DW$20

	.dwattr DW$19, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$19, DW_AT_end_line(0x42)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$19

	.sect	".text"
	.global	_NMI_ISR

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("NMI_ISR"), DW_AT_symbol_name("_NMI_ISR")
	.dwattr DW$22, DW_AT_low_pc(_NMI_ISR)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$22, DW_AT_begin_line(0x45)
	.dwattr DW$22, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",70,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  69 | interrupt void NMI_ISR(void)                    // 0x000D24  NMI - XNMI
;     |  interrupt                                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _NMI_ISR                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_NMI_ISR:
;----------------------------------------------------------------------
;  71 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",72,2
;----------------------------------------------------------------------
;  72 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",73,8
;----------------------------------------------------------------------
;  73 | while(1);                                                              
;----------------------------------------------------------------------
L6:    
DW$L$_NMI_ISR$2$B:
        B         L6,UNC                ; |73| 
        ; branch occurs ; |73| 
DW$L$_NMI_ISR$2$E:

DW$23	.dwtag  DW_TAG_loop
	.dwattr DW$23, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L6:1:1221595864")
	.dwattr DW$23, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$23, DW_AT_begin_line(0x49)
	.dwattr DW$23, DW_AT_end_line(0x49)
DW$24	.dwtag  DW_TAG_loop_range
	.dwattr DW$24, DW_AT_low_pc(DW$L$_NMI_ISR$2$B)
	.dwattr DW$24, DW_AT_high_pc(DW$L$_NMI_ISR$2$E)
	.dwendtag DW$23

	.dwattr DW$22, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$22, DW_AT_end_line(0x4a)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$22

	.sect	".text"
	.global	_ILLEGAL_ISR

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("ILLEGAL_ISR"), DW_AT_symbol_name("_ILLEGAL_ISR")
	.dwattr DW$25, DW_AT_low_pc(_ILLEGAL_ISR)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$25, DW_AT_begin_line(0x4d)
	.dwattr DW$25, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",78,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  77 | interrupt void ILLEGAL_ISR(void)                // 0x000D26  ILLEGAL -
;     | illegal operation trap                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ILLEGAL_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ILLEGAL_ISR:
;----------------------------------------------------------------------
;  79 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",80,2
;----------------------------------------------------------------------
;  80 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",81,8
;----------------------------------------------------------------------
;  81 | while(1);                                                              
;----------------------------------------------------------------------
L7:    
DW$L$_ILLEGAL_ISR$2$B:
        B         L7,UNC                ; |81| 
        ; branch occurs ; |81| 
DW$L$_ILLEGAL_ISR$2$E:

DW$26	.dwtag  DW_TAG_loop
	.dwattr DW$26, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L7:1:1221595864")
	.dwattr DW$26, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$26, DW_AT_begin_line(0x51)
	.dwattr DW$26, DW_AT_end_line(0x51)
DW$27	.dwtag  DW_TAG_loop_range
	.dwattr DW$27, DW_AT_low_pc(DW$L$_ILLEGAL_ISR$2$B)
	.dwattr DW$27, DW_AT_high_pc(DW$L$_ILLEGAL_ISR$2$E)
	.dwendtag DW$26

	.dwattr DW$25, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$25, DW_AT_end_line(0x52)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$25

	.sect	".text"
	.global	_USER1_ISR

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("USER1_ISR"), DW_AT_symbol_name("_USER1_ISR")
	.dwattr DW$28, DW_AT_low_pc(_USER1_ISR)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$28, DW_AT_begin_line(0x55)
	.dwattr DW$28, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",86,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  85 | interrupt void USER1_ISR(void)                  // 0x000D28  USER1 - so
;     | ftware interrupt #1                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER1_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER1_ISR:
;----------------------------------------------------------------------
;  87 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",88,2
;----------------------------------------------------------------------
;  88 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",89,8
;----------------------------------------------------------------------
;  89 | while(1);                                                              
;----------------------------------------------------------------------
L8:    
DW$L$_USER1_ISR$2$B:
        B         L8,UNC                ; |89| 
        ; branch occurs ; |89| 
DW$L$_USER1_ISR$2$E:

DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L8:1:1221595864")
	.dwattr DW$29, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$29, DW_AT_begin_line(0x59)
	.dwattr DW$29, DW_AT_end_line(0x59)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_USER1_ISR$2$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_USER1_ISR$2$E)
	.dwendtag DW$29

	.dwattr DW$28, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$28, DW_AT_end_line(0x5a)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$28

	.sect	".text"
	.global	_USER2_ISR

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("USER2_ISR"), DW_AT_symbol_name("_USER2_ISR")
	.dwattr DW$31, DW_AT_low_pc(_USER2_ISR)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$31, DW_AT_begin_line(0x5d)
	.dwattr DW$31, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",94,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  93 | interrupt void USER2_ISR(void)                  // 0x000D2A  USER2 - so
;     | ftware interrupt #2                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER2_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER2_ISR:
;----------------------------------------------------------------------
;  95 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",96,2
;----------------------------------------------------------------------
;  96 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",97,8
;----------------------------------------------------------------------
;  97 | while(1);                                                              
;----------------------------------------------------------------------
L9:    
DW$L$_USER2_ISR$2$B:
        B         L9,UNC                ; |97| 
        ; branch occurs ; |97| 
DW$L$_USER2_ISR$2$E:

DW$32	.dwtag  DW_TAG_loop
	.dwattr DW$32, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L9:1:1221595864")
	.dwattr DW$32, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$32, DW_AT_begin_line(0x61)
	.dwattr DW$32, DW_AT_end_line(0x61)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_USER2_ISR$2$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_USER2_ISR$2$E)
	.dwendtag DW$32

	.dwattr DW$31, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$31, DW_AT_end_line(0x62)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$31

	.sect	".text"
	.global	_USER3_ISR

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("USER3_ISR"), DW_AT_symbol_name("_USER3_ISR")
	.dwattr DW$34, DW_AT_low_pc(_USER3_ISR)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$34, DW_AT_begin_line(0x65)
	.dwattr DW$34, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",102,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 101 | interrupt void USER3_ISR(void)                  // 0x000D2C  USER3 - so
;     | ftware interrupt #3                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER3_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER3_ISR:
;----------------------------------------------------------------------
; 103 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",104,2
;----------------------------------------------------------------------
; 104 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",105,8
;----------------------------------------------------------------------
; 105 | while(1);                                                              
;----------------------------------------------------------------------
L10:    
DW$L$_USER3_ISR$2$B:
        B         L10,UNC               ; |105| 
        ; branch occurs ; |105| 
DW$L$_USER3_ISR$2$E:

DW$35	.dwtag  DW_TAG_loop
	.dwattr DW$35, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L10:1:1221595864")
	.dwattr DW$35, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$35, DW_AT_begin_line(0x69)
	.dwattr DW$35, DW_AT_end_line(0x69)
DW$36	.dwtag  DW_TAG_loop_range
	.dwattr DW$36, DW_AT_low_pc(DW$L$_USER3_ISR$2$B)
	.dwattr DW$36, DW_AT_high_pc(DW$L$_USER3_ISR$2$E)
	.dwendtag DW$35

	.dwattr DW$34, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$34, DW_AT_end_line(0x6a)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$34

	.sect	".text"
	.global	_USER4_ISR

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USER4_ISR"), DW_AT_symbol_name("_USER4_ISR")
	.dwattr DW$37, DW_AT_low_pc(_USER4_ISR)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$37, DW_AT_begin_line(0x6d)
	.dwattr DW$37, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",110,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 109 | interrupt void USER4_ISR(void)                  // 0x000D2E  USER4 - so
;     | ftware interrupt #4                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER4_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER4_ISR:
;----------------------------------------------------------------------
; 111 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",112,2
;----------------------------------------------------------------------
; 112 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",113,8
;----------------------------------------------------------------------
; 113 | while(1);                                                              
;----------------------------------------------------------------------
L11:    
DW$L$_USER4_ISR$2$B:
        B         L11,UNC               ; |113| 
        ; branch occurs ; |113| 
DW$L$_USER4_ISR$2$E:

DW$38	.dwtag  DW_TAG_loop
	.dwattr DW$38, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L11:1:1221595864")
	.dwattr DW$38, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$38, DW_AT_begin_line(0x71)
	.dwattr DW$38, DW_AT_end_line(0x71)
DW$39	.dwtag  DW_TAG_loop_range
	.dwattr DW$39, DW_AT_low_pc(DW$L$_USER4_ISR$2$B)
	.dwattr DW$39, DW_AT_high_pc(DW$L$_USER4_ISR$2$E)
	.dwendtag DW$38

	.dwattr DW$37, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$37, DW_AT_end_line(0x72)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$37

	.sect	".text"
	.global	_USER5_ISR

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("USER5_ISR"), DW_AT_symbol_name("_USER5_ISR")
	.dwattr DW$40, DW_AT_low_pc(_USER5_ISR)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$40, DW_AT_begin_line(0x75)
	.dwattr DW$40, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",118,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 117 | interrupt void USER5_ISR(void)                  // 0x000D30  USER5 - so
;     | ftware interrupt #5                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER5_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER5_ISR:
;----------------------------------------------------------------------
; 119 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",120,2
;----------------------------------------------------------------------
; 120 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",121,8
;----------------------------------------------------------------------
; 121 | while(1);                                                              
;----------------------------------------------------------------------
L12:    
DW$L$_USER5_ISR$2$B:
        B         L12,UNC               ; |121| 
        ; branch occurs ; |121| 
DW$L$_USER5_ISR$2$E:

DW$41	.dwtag  DW_TAG_loop
	.dwattr DW$41, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L12:1:1221595864")
	.dwattr DW$41, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$41, DW_AT_begin_line(0x79)
	.dwattr DW$41, DW_AT_end_line(0x79)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_USER5_ISR$2$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_USER5_ISR$2$E)
	.dwendtag DW$41

	.dwattr DW$40, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$40, DW_AT_end_line(0x7a)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$40

	.sect	".text"
	.global	_USER6_ISR

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("USER6_ISR"), DW_AT_symbol_name("_USER6_ISR")
	.dwattr DW$43, DW_AT_low_pc(_USER6_ISR)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$43, DW_AT_begin_line(0x7d)
	.dwattr DW$43, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",126,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 125 | interrupt void USER6_ISR(void)                  // 0x000D32  USER6 - so
;     | ftware interrupt #6                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER6_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER6_ISR:
;----------------------------------------------------------------------
; 127 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",128,2
;----------------------------------------------------------------------
; 128 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",129,8
;----------------------------------------------------------------------
; 129 | while(1);                                                              
;----------------------------------------------------------------------
L13:    
DW$L$_USER6_ISR$2$B:
        B         L13,UNC               ; |129| 
        ; branch occurs ; |129| 
DW$L$_USER6_ISR$2$E:

DW$44	.dwtag  DW_TAG_loop
	.dwattr DW$44, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L13:1:1221595864")
	.dwattr DW$44, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$44, DW_AT_begin_line(0x81)
	.dwattr DW$44, DW_AT_end_line(0x81)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_USER6_ISR$2$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_USER6_ISR$2$E)
	.dwendtag DW$44

	.dwattr DW$43, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$43, DW_AT_end_line(0x82)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$43

	.sect	".text"
	.global	_USER7_ISR

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("USER7_ISR"), DW_AT_symbol_name("_USER7_ISR")
	.dwattr DW$46, DW_AT_low_pc(_USER7_ISR)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$46, DW_AT_begin_line(0x85)
	.dwattr DW$46, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",134,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 133 | interrupt void USER7_ISR(void)                  // 0x000D34  USER7 - so
;     | ftware interrupt #7                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER7_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER7_ISR:
;----------------------------------------------------------------------
; 135 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",136,2
;----------------------------------------------------------------------
; 136 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",137,8
;----------------------------------------------------------------------
; 137 | while(1);                                                              
;----------------------------------------------------------------------
L14:    
DW$L$_USER7_ISR$2$B:
        B         L14,UNC               ; |137| 
        ; branch occurs ; |137| 
DW$L$_USER7_ISR$2$E:

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L14:1:1221595864")
	.dwattr DW$47, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$47, DW_AT_begin_line(0x89)
	.dwattr DW$47, DW_AT_end_line(0x89)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_USER7_ISR$2$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_USER7_ISR$2$E)
	.dwendtag DW$47

	.dwattr DW$46, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$46, DW_AT_end_line(0x8a)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$46

	.sect	".text"
	.global	_USER8_ISR

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("USER8_ISR"), DW_AT_symbol_name("_USER8_ISR")
	.dwattr DW$49, DW_AT_low_pc(_USER8_ISR)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$49, DW_AT_begin_line(0x8d)
	.dwattr DW$49, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",142,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 141 | interrupt void USER8_ISR(void)                  // 0x000D36  USER8 - so
;     | ftware interrupt #8                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER8_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER8_ISR:
;----------------------------------------------------------------------
; 143 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",144,2
;----------------------------------------------------------------------
; 144 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",145,8
;----------------------------------------------------------------------
; 145 | while(1);                                                              
;----------------------------------------------------------------------
L15:    
DW$L$_USER8_ISR$2$B:
        B         L15,UNC               ; |145| 
        ; branch occurs ; |145| 
DW$L$_USER8_ISR$2$E:

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L15:1:1221595864")
	.dwattr DW$50, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$50, DW_AT_begin_line(0x91)
	.dwattr DW$50, DW_AT_end_line(0x91)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_USER8_ISR$2$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_USER8_ISR$2$E)
	.dwendtag DW$50

	.dwattr DW$49, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$49, DW_AT_end_line(0x92)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$49

	.sect	".text"
	.global	_USER9_ISR

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("USER9_ISR"), DW_AT_symbol_name("_USER9_ISR")
	.dwattr DW$52, DW_AT_low_pc(_USER9_ISR)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$52, DW_AT_begin_line(0x95)
	.dwattr DW$52, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",150,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 149 | interrupt void USER9_ISR(void)                  // 0x000D38  USER9 - so
;     | ftware interrupt #9                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER9_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER9_ISR:
;----------------------------------------------------------------------
; 151 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",152,2
;----------------------------------------------------------------------
; 152 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",153,8
;----------------------------------------------------------------------
; 153 | while(1);                                                              
;----------------------------------------------------------------------
L16:    
DW$L$_USER9_ISR$2$B:
        B         L16,UNC               ; |153| 
        ; branch occurs ; |153| 
DW$L$_USER9_ISR$2$E:

DW$53	.dwtag  DW_TAG_loop
	.dwattr DW$53, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L16:1:1221595864")
	.dwattr DW$53, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$53, DW_AT_begin_line(0x99)
	.dwattr DW$53, DW_AT_end_line(0x99)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_USER9_ISR$2$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_USER9_ISR$2$E)
	.dwendtag DW$53

	.dwattr DW$52, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$52, DW_AT_end_line(0x9a)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$52

	.sect	".text"
	.global	_USER10_ISR

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("USER10_ISR"), DW_AT_symbol_name("_USER10_ISR")
	.dwattr DW$55, DW_AT_low_pc(_USER10_ISR)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$55, DW_AT_begin_line(0x9d)
	.dwattr DW$55, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",158,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 157 | interrupt void USER10_ISR(void)                 // 0x000D3A  USER10 - s
;     | oftware interrupt #10                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER10_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER10_ISR:
;----------------------------------------------------------------------
; 159 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",160,2
;----------------------------------------------------------------------
; 160 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",161,8
;----------------------------------------------------------------------
; 161 | while(1);                                                              
;----------------------------------------------------------------------
L17:    
DW$L$_USER10_ISR$2$B:
        B         L17,UNC               ; |161| 
        ; branch occurs ; |161| 
DW$L$_USER10_ISR$2$E:

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L17:1:1221595864")
	.dwattr DW$56, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$56, DW_AT_begin_line(0xa1)
	.dwattr DW$56, DW_AT_end_line(0xa1)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_USER10_ISR$2$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_USER10_ISR$2$E)
	.dwendtag DW$56

	.dwattr DW$55, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$55, DW_AT_end_line(0xa2)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$55

	.sect	".text"
	.global	_USER11_ISR

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("USER11_ISR"), DW_AT_symbol_name("_USER11_ISR")
	.dwattr DW$58, DW_AT_low_pc(_USER11_ISR)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$58, DW_AT_begin_line(0xa5)
	.dwattr DW$58, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",166,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 165 | interrupt void USER11_ISR(void)                 // 0x000D3C  USER11 - s
;     | oftware interrupt #11                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER11_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER11_ISR:
;----------------------------------------------------------------------
; 167 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",168,2
;----------------------------------------------------------------------
; 168 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",169,8
;----------------------------------------------------------------------
; 169 | while(1);                                                              
;----------------------------------------------------------------------
L18:    
DW$L$_USER11_ISR$2$B:
        B         L18,UNC               ; |169| 
        ; branch occurs ; |169| 
DW$L$_USER11_ISR$2$E:

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L18:1:1221595864")
	.dwattr DW$59, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$59, DW_AT_begin_line(0xa9)
	.dwattr DW$59, DW_AT_end_line(0xa9)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_USER11_ISR$2$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_USER11_ISR$2$E)
	.dwendtag DW$59

	.dwattr DW$58, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$58, DW_AT_end_line(0xaa)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$58

	.sect	".text"
	.global	_USER12_ISR

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("USER12_ISR"), DW_AT_symbol_name("_USER12_ISR")
	.dwattr DW$61, DW_AT_low_pc(_USER12_ISR)
	.dwattr DW$61, DW_AT_high_pc(0x00)
	.dwattr DW$61, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$61, DW_AT_begin_line(0xad)
	.dwattr DW$61, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",174,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 173 | interrupt void USER12_ISR(void)                 // 0x000D3E  USER12 - s
;     | oftware interrupt #12                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _USER12_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_USER12_ISR:
;----------------------------------------------------------------------
; 175 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",176,2
;----------------------------------------------------------------------
; 176 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",177,8
;----------------------------------------------------------------------
; 177 | while(1);                                                              
;----------------------------------------------------------------------
L19:    
DW$L$_USER12_ISR$2$B:
        B         L19,UNC               ; |177| 
        ; branch occurs ; |177| 
DW$L$_USER12_ISR$2$E:

DW$62	.dwtag  DW_TAG_loop
	.dwattr DW$62, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L19:1:1221595864")
	.dwattr DW$62, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$62, DW_AT_begin_line(0xb1)
	.dwattr DW$62, DW_AT_end_line(0xb1)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_USER12_ISR$2$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_USER12_ISR$2$E)
	.dwendtag DW$62

	.dwattr DW$61, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$61, DW_AT_end_line(0xb2)
	.dwattr DW$61, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$61

	.sect	".text"
	.global	_PDPINTA_ISR

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("PDPINTA_ISR"), DW_AT_symbol_name("_PDPINTA_ISR")
	.dwattr DW$64, DW_AT_low_pc(_PDPINTA_ISR)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$64, DW_AT_begin_line(0xb5)
	.dwattr DW$64, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",182,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 181 | interrupt void PDPINTA_ISR(void)                // 0x000D40  PDPINTA (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _PDPINTA_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PDPINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",183,2
;----------------------------------------------------------------------
; 183 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
; 185 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |183| 
	.dwpsn	"DefaultIsr_nonBIOS.c",186,2
;----------------------------------------------------------------------
; 186 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",187,8
;----------------------------------------------------------------------
; 187 | while(1);                                                              
;----------------------------------------------------------------------
L20:    
DW$L$_PDPINTA_ISR$2$B:
        B         L20,UNC               ; |187| 
        ; branch occurs ; |187| 
DW$L$_PDPINTA_ISR$2$E:

DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L20:1:1221595864")
	.dwattr DW$65, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$65, DW_AT_begin_line(0xbb)
	.dwattr DW$65, DW_AT_end_line(0xbb)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_PDPINTA_ISR$2$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_PDPINTA_ISR$2$E)
	.dwendtag DW$65

	.dwattr DW$64, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$64, DW_AT_end_line(0xbc)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$64

	.sect	".text"
	.global	_PDPINTB_ISR

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("PDPINTB_ISR"), DW_AT_symbol_name("_PDPINTB_ISR")
	.dwattr DW$67, DW_AT_low_pc(_PDPINTB_ISR)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$67, DW_AT_begin_line(0xbf)
	.dwattr DW$67, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",192,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 191 | interrupt void PDPINTB_ISR(void)                // 0x000D42  PDPINTB (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _PDPINTB_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PDPINTB_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",193,2
;----------------------------------------------------------------------
; 193 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
; 195 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |193| 
	.dwpsn	"DefaultIsr_nonBIOS.c",196,2
;----------------------------------------------------------------------
; 196 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",197,8
;----------------------------------------------------------------------
; 197 | while(1);                                                              
;----------------------------------------------------------------------
L21:    
DW$L$_PDPINTB_ISR$2$B:
        B         L21,UNC               ; |197| 
        ; branch occurs ; |197| 
DW$L$_PDPINTB_ISR$2$E:

DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L21:1:1221595864")
	.dwattr DW$68, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$68, DW_AT_begin_line(0xc5)
	.dwattr DW$68, DW_AT_end_line(0xc5)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_PDPINTB_ISR$2$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_PDPINTB_ISR$2$E)
	.dwendtag DW$68

	.dwattr DW$67, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$67, DW_AT_end_line(0xc6)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$67

	.sect	".text"
	.global	_XINT1_ISR

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("XINT1_ISR"), DW_AT_symbol_name("_XINT1_ISR")
	.dwattr DW$70, DW_AT_low_pc(_XINT1_ISR)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$70, DW_AT_begin_line(0xc9)
	.dwattr DW$70, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",202,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 201 | interrupt void XINT1_ISR(void)                  // 0x000D46  XINT1     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _XINT1_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_XINT1_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",203,2
;----------------------------------------------------------------------
; 203 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
; 205 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |203| 
	.dwpsn	"DefaultIsr_nonBIOS.c",206,2
;----------------------------------------------------------------------
; 206 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",207,8
;----------------------------------------------------------------------
; 207 | while(1);                                                              
;----------------------------------------------------------------------
L22:    
DW$L$_XINT1_ISR$2$B:
        B         L22,UNC               ; |207| 
        ; branch occurs ; |207| 
DW$L$_XINT1_ISR$2$E:

DW$71	.dwtag  DW_TAG_loop
	.dwattr DW$71, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L22:1:1221595864")
	.dwattr DW$71, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$71, DW_AT_begin_line(0xcf)
	.dwattr DW$71, DW_AT_end_line(0xcf)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_XINT1_ISR$2$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_XINT1_ISR$2$E)
	.dwendtag DW$71

	.dwattr DW$70, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$70, DW_AT_end_line(0xd0)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$70

	.sect	".text"
	.global	_XINT2_ISR

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("XINT2_ISR"), DW_AT_symbol_name("_XINT2_ISR")
	.dwattr DW$73, DW_AT_low_pc(_XINT2_ISR)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$73, DW_AT_begin_line(0xd3)
	.dwattr DW$73, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",212,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 211 | interrupt void XINT2_ISR(void)                  // 0x000D48  XINT2     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _XINT2_ISR                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_XINT2_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",213,2
;----------------------------------------------------------------------
; 213 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
; 215 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |213| 
	.dwpsn	"DefaultIsr_nonBIOS.c",216,2
;----------------------------------------------------------------------
; 216 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",217,8
;----------------------------------------------------------------------
; 217 | while(1);                                                              
;----------------------------------------------------------------------
L23:    
DW$L$_XINT2_ISR$2$B:
        B         L23,UNC               ; |217| 
        ; branch occurs ; |217| 
DW$L$_XINT2_ISR$2$E:

DW$74	.dwtag  DW_TAG_loop
	.dwattr DW$74, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L23:1:1221595864")
	.dwattr DW$74, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$74, DW_AT_begin_line(0xd9)
	.dwattr DW$74, DW_AT_end_line(0xd9)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_XINT2_ISR$2$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_XINT2_ISR$2$E)
	.dwendtag DW$74

	.dwattr DW$73, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$73, DW_AT_end_line(0xda)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$73

	.sect	".text"
	.global	_ADCINT_ISR

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("ADCINT_ISR"), DW_AT_symbol_name("_ADCINT_ISR")
	.dwattr DW$76, DW_AT_low_pc(_ADCINT_ISR)
	.dwattr DW$76, DW_AT_high_pc(0x00)
	.dwattr DW$76, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$76, DW_AT_begin_line(0xdd)
	.dwattr DW$76, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",222,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 221 | interrupt void ADCINT_ISR(void)         // 0x000D4A  ADCINT (ADC)      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ADCINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ADCINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",224,2
;----------------------------------------------------------------------
; 224 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;         // Must acknowledge the
;     |  PIE group                                                             
; 226 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |224| 
	.dwpsn	"DefaultIsr_nonBIOS.c",227,2
;----------------------------------------------------------------------
; 227 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",228,8
;----------------------------------------------------------------------
; 228 | while(1);                                                              
;----------------------------------------------------------------------
L24:    
DW$L$_ADCINT_ISR$2$B:
        B         L24,UNC               ; |228| 
        ; branch occurs ; |228| 
DW$L$_ADCINT_ISR$2$E:

DW$77	.dwtag  DW_TAG_loop
	.dwattr DW$77, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L24:1:1221595864")
	.dwattr DW$77, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$77, DW_AT_begin_line(0xe4)
	.dwattr DW$77, DW_AT_end_line(0xe4)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_ADCINT_ISR$2$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_ADCINT_ISR$2$E)
	.dwendtag DW$77

	.dwattr DW$76, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$76, DW_AT_end_line(0xe6)
	.dwattr DW$76, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$76

	.sect	".text"
	.global	_TINT0_ISR

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("TINT0_ISR"), DW_AT_symbol_name("_TINT0_ISR")
	.dwattr DW$79, DW_AT_low_pc(_TINT0_ISR)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$79, DW_AT_begin_line(0xe9)
	.dwattr DW$79, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",234,1

	.dwfde DW$CIE
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("Toggle"), DW_AT_symbol_name("_Toggle$1")
	.dwattr DW$80, DW_AT_type(*DW$T$29)
	.dwattr DW$80, DW_AT_location[DW_OP_addr _Toggle$1]
;----------------------------------------------------------------------
; 233 | interrupt void TINT0_ISR(void)                  // 0x000D4C  TINT0 (CPU
;     |  TIMER 0)                                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _TINT0_ISR                    FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto, 12 SOE     *
;***************************************************************

_TINT0_ISR:
;----------------------------------------------------------------------
; 235 | static Byte Toggle = 0;                                                
; 236 | Byte CpldRd;                                                           
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        PUSH      AR1H:AR0H
	.dwcfa	0x80, 5, 2
	.dwcfa	0x80, 7, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR4
	.dwcfa	0x80, 12, 4
	.dwcfa	0x80, 13, 5
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR5
	.dwcfa	0x80, 14, 6
	.dwcfa	0x80, 15, 7
	.dwcfa	0x1d, -8
        MOVL      *SP++,XAR6
	.dwcfa	0x80, 16, 8
	.dwcfa	0x80, 17, 9
	.dwcfa	0x1d, -10
        MOVL      *SP++,XAR7
	.dwcfa	0x80, 18, 10
	.dwcfa	0x80, 19, 11
	.dwcfa	0x1d, -12
        MOVL      *SP++,XT
	.dwcfa	0x80, 21, 12
	.dwcfa	0x80, 22, 13
	.dwcfa	0x1d, -14
        ADDB      SP,#2
	.dwcfa	0x1d, -16
        SPM       0
        CLRC      PAGE0,OVM
        CLRC      AMODE
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("CpldRd"), DW_AT_symbol_name("_CpldRd")
	.dwattr DW$81, DW_AT_type(*DW$T$29)
	.dwattr DW$81, DW_AT_location[DW_OP_breg20 -1]
	.dwpsn	"DefaultIsr_nonBIOS.c",238,2
;----------------------------------------------------------------------
; 238 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |238| 
	.dwpsn	"DefaultIsr_nonBIOS.c",240,2
;----------------------------------------------------------------------
; 240 | if(Toggle) {                                                           
;----------------------------------------------------------------------
        MOVW      DP,#_Toggle$1
        MOV       AL,@_Toggle$1         ; |240| 
        BF        L25,EQ                ; |240| 
        ; branchcc occurs ; |240| 
	.dwpsn	"DefaultIsr_nonBIOS.c",241,3
;----------------------------------------------------------------------
; 241 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; |241| 
        LCR       #_ReadCpld            ; |241| 
        ; call occurs [#_ReadCpld] ; |241| 
        MOV       *-SP[1],AL            ; |241| 
	.dwpsn	"DefaultIsr_nonBIOS.c",242,3
;----------------------------------------------------------------------
; 242 | WriteCpld(0xb, (CpldRd | 0x10));                                       
;----------------------------------------------------------------------
        MOV       AH,*-SP[1]            ; |242| 
        ORB       AH,#0x10              ; |242| 
        MOVB      AL,#11                ; |242| 
        LCR       #_WriteCpld           ; |242| 
        ; call occurs [#_WriteCpld] ; |242| 
	.dwpsn	"DefaultIsr_nonBIOS.c",243,3
;----------------------------------------------------------------------
; 243 | Toggle = 0;                                                            
;----------------------------------------------------------------------
        MOVW      DP,#_Toggle$1
        MOV       @_Toggle$1,#0         ; |243| 
	.dwpsn	"DefaultIsr_nonBIOS.c",244,2
;----------------------------------------------------------------------
; 245 | else {                                                                 
;----------------------------------------------------------------------
        B         L26,UNC               ; |244| 
        ; branch occurs ; |244| 
L25:    
	.dwpsn	"DefaultIsr_nonBIOS.c",246,3
;----------------------------------------------------------------------
; 246 | CpldRd = ReadCpld(0xb);                                                
;----------------------------------------------------------------------
        MOVB      AL,#11                ; |246| 
        LCR       #_ReadCpld            ; |246| 
        ; call occurs [#_ReadCpld] ; |246| 
        MOV       *-SP[1],AL            ; |246| 
	.dwpsn	"DefaultIsr_nonBIOS.c",247,3
;----------------------------------------------------------------------
; 247 | WriteCpld(0xb, (CpldRd & 0xef));                                       
;----------------------------------------------------------------------
        AND       AH,*-SP[1],#0x00ef    ; |247| 
        MOVB      AL,#11                ; |247| 
        LCR       #_WriteCpld           ; |247| 
        ; call occurs [#_WriteCpld] ; |247| 
	.dwpsn	"DefaultIsr_nonBIOS.c",248,3
;----------------------------------------------------------------------
; 248 | Toggle = 1;                                                            
;----------------------------------------------------------------------
        MOVW      DP,#_Toggle$1
        MOV       @_Toggle$1,#1         ; |248| 
	.dwpsn	"DefaultIsr_nonBIOS.c",249,2
L26:    
	.dwpsn	"DefaultIsr_nonBIOS.c",251,1
        SUBB      SP,#2
	.dwcfa	0x1d, -14
        MOVL      XT,*--SP
	.dwcfa	0x1d, -12
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 21
        MOVL      XAR7,*--SP
	.dwcfa	0x1d, -10
	.dwcfa	0xc0, 18
        MOVL      XAR6,*--SP
	.dwcfa	0x1d, -8
	.dwcfa	0xc0, 16
        MOVL      XAR5,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 14
        MOVL      XAR4,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 12
        POP       AR1H:AR0H
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 5
	.dwcfa	0xc0, 7
        NASP
        IRET
        ; return occurs
	.dwattr DW$79, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$79, DW_AT_end_line(0xfb)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$79

	.sect	".text"
	.global	_WAKEINT_ISR

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("WAKEINT_ISR"), DW_AT_symbol_name("_WAKEINT_ISR")
	.dwattr DW$82, DW_AT_low_pc(_WAKEINT_ISR)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$82, DW_AT_begin_line(0xfe)
	.dwattr DW$82, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",255,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 254 | interrupt void WAKEINT_ISR(void)                // 0x000D4E  WAKEINT (L
;     | PM/WD)                                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _WAKEINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WAKEINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",256,2
;----------------------------------------------------------------------
; 256 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Must acknowledge the PIE gro
;     | up                                                                     
; 258 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |256| 
	.dwpsn	"DefaultIsr_nonBIOS.c",259,2
;----------------------------------------------------------------------
; 259 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",260,8
;----------------------------------------------------------------------
; 260 | while(1);                                                              
;----------------------------------------------------------------------
L27:    
DW$L$_WAKEINT_ISR$2$B:
        B         L27,UNC               ; |260| 
        ; branch occurs ; |260| 
DW$L$_WAKEINT_ISR$2$E:

DW$83	.dwtag  DW_TAG_loop
	.dwattr DW$83, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L27:1:1221595864")
	.dwattr DW$83, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$83, DW_AT_begin_line(0x104)
	.dwattr DW$83, DW_AT_end_line(0x104)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_WAKEINT_ISR$2$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_WAKEINT_ISR$2$E)
	.dwendtag DW$83

	.dwattr DW$82, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$82, DW_AT_end_line(0x105)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$82

	.sect	".text"
	.global	_CMP1INT_ISR

DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP1INT_ISR"), DW_AT_symbol_name("_CMP1INT_ISR")
	.dwattr DW$85, DW_AT_low_pc(_CMP1INT_ISR)
	.dwattr DW$85, DW_AT_high_pc(0x00)
	.dwattr DW$85, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$85, DW_AT_begin_line(0x108)
	.dwattr DW$85, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",265,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 264 | interrupt void CMP1INT_ISR(void)                // 0x000D50  CMP1INT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP1INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP1INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",266,2
;----------------------------------------------------------------------
; 266 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 268 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |266| 
	.dwpsn	"DefaultIsr_nonBIOS.c",269,2
;----------------------------------------------------------------------
; 269 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",270,8
;----------------------------------------------------------------------
; 270 | while(1);                                                              
;----------------------------------------------------------------------
L28:    
DW$L$_CMP1INT_ISR$2$B:
        B         L28,UNC               ; |270| 
        ; branch occurs ; |270| 
DW$L$_CMP1INT_ISR$2$E:

DW$86	.dwtag  DW_TAG_loop
	.dwattr DW$86, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L28:1:1221595864")
	.dwattr DW$86, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$86, DW_AT_begin_line(0x10e)
	.dwattr DW$86, DW_AT_end_line(0x10e)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_CMP1INT_ISR$2$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_CMP1INT_ISR$2$E)
	.dwendtag DW$86

	.dwattr DW$85, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$85, DW_AT_end_line(0x10f)
	.dwattr DW$85, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$85

	.sect	".text"
	.global	_CMP2INT_ISR

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP2INT_ISR"), DW_AT_symbol_name("_CMP2INT_ISR")
	.dwattr DW$88, DW_AT_low_pc(_CMP2INT_ISR)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$88, DW_AT_begin_line(0x112)
	.dwattr DW$88, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",275,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 274 | interrupt void CMP2INT_ISR(void)                // 0x000D52  CMP2INT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP2INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP2INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",276,2
;----------------------------------------------------------------------
; 276 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 278 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |276| 
	.dwpsn	"DefaultIsr_nonBIOS.c",279,2
;----------------------------------------------------------------------
; 279 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",280,8
;----------------------------------------------------------------------
; 280 | while(1);                                                              
;----------------------------------------------------------------------
L29:    
DW$L$_CMP2INT_ISR$2$B:
        B         L29,UNC               ; |280| 
        ; branch occurs ; |280| 
DW$L$_CMP2INT_ISR$2$E:

DW$89	.dwtag  DW_TAG_loop
	.dwattr DW$89, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L29:1:1221595864")
	.dwattr DW$89, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$89, DW_AT_begin_line(0x118)
	.dwattr DW$89, DW_AT_end_line(0x118)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$_CMP2INT_ISR$2$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$_CMP2INT_ISR$2$E)
	.dwendtag DW$89

	.dwattr DW$88, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$88, DW_AT_end_line(0x119)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$88

	.sect	".text"
	.global	_CMP3INT_ISR

DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP3INT_ISR"), DW_AT_symbol_name("_CMP3INT_ISR")
	.dwattr DW$91, DW_AT_low_pc(_CMP3INT_ISR)
	.dwattr DW$91, DW_AT_high_pc(0x00)
	.dwattr DW$91, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$91, DW_AT_begin_line(0x11c)
	.dwattr DW$91, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",285,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 284 | interrupt void CMP3INT_ISR(void)                // 0x000D54  CMP3INT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP3INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP3INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",286,2
;----------------------------------------------------------------------
; 286 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 288 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |286| 
	.dwpsn	"DefaultIsr_nonBIOS.c",289,2
;----------------------------------------------------------------------
; 289 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",290,8
;----------------------------------------------------------------------
; 290 | while(1);                                                              
;----------------------------------------------------------------------
L30:    
DW$L$_CMP3INT_ISR$2$B:
        B         L30,UNC               ; |290| 
        ; branch occurs ; |290| 
DW$L$_CMP3INT_ISR$2$E:

DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L30:1:1221595864")
	.dwattr DW$92, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$92, DW_AT_begin_line(0x122)
	.dwattr DW$92, DW_AT_end_line(0x122)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_CMP3INT_ISR$2$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_CMP3INT_ISR$2$E)
	.dwendtag DW$92

	.dwattr DW$91, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$91, DW_AT_end_line(0x123)
	.dwattr DW$91, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$91

	.sect	".text"
	.global	_T1PINT_ISR

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("T1PINT_ISR"), DW_AT_symbol_name("_T1PINT_ISR")
	.dwattr DW$94, DW_AT_low_pc(_T1PINT_ISR)
	.dwattr DW$94, DW_AT_high_pc(0x00)
	.dwattr DW$94, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$94, DW_AT_begin_line(0x126)
	.dwattr DW$94, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",295,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 294 | interrupt void T1PINT_ISR(void)                 // 0x000D56  T1PINT (EV
;     | -A)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T1PINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T1PINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",296,2
;----------------------------------------------------------------------
; 296 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 298 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |296| 
	.dwpsn	"DefaultIsr_nonBIOS.c",299,2
;----------------------------------------------------------------------
; 299 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",300,8
;----------------------------------------------------------------------
; 300 | while(1);                                                              
;----------------------------------------------------------------------
L31:    
DW$L$_T1PINT_ISR$2$B:
        B         L31,UNC               ; |300| 
        ; branch occurs ; |300| 
DW$L$_T1PINT_ISR$2$E:

DW$95	.dwtag  DW_TAG_loop
	.dwattr DW$95, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L31:1:1221595864")
	.dwattr DW$95, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$95, DW_AT_begin_line(0x12c)
	.dwattr DW$95, DW_AT_end_line(0x12c)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_T1PINT_ISR$2$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_T1PINT_ISR$2$E)
	.dwendtag DW$95

	.dwattr DW$94, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$94, DW_AT_end_line(0x12d)
	.dwattr DW$94, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$94

	.sect	".text"
	.global	_T1CINT_ISR

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("T1CINT_ISR"), DW_AT_symbol_name("_T1CINT_ISR")
	.dwattr DW$97, DW_AT_low_pc(_T1CINT_ISR)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$97, DW_AT_begin_line(0x130)
	.dwattr DW$97, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",305,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 304 | interrupt void T1CINT_ISR(void)                 // 0x000D58  T1CINT (EV
;     | -A)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T1CINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T1CINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",306,2
;----------------------------------------------------------------------
; 306 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 308 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |306| 
	.dwpsn	"DefaultIsr_nonBIOS.c",309,2
;----------------------------------------------------------------------
; 309 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",310,8
;----------------------------------------------------------------------
; 310 | while(1);                                                              
;----------------------------------------------------------------------
L32:    
DW$L$_T1CINT_ISR$2$B:
        B         L32,UNC               ; |310| 
        ; branch occurs ; |310| 
DW$L$_T1CINT_ISR$2$E:

DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L32:1:1221595864")
	.dwattr DW$98, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$98, DW_AT_begin_line(0x136)
	.dwattr DW$98, DW_AT_end_line(0x136)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_T1CINT_ISR$2$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_T1CINT_ISR$2$E)
	.dwendtag DW$98

	.dwattr DW$97, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$97, DW_AT_end_line(0x137)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$97

	.sect	".text"
	.global	_T1UFINT_ISR

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("T1UFINT_ISR"), DW_AT_symbol_name("_T1UFINT_ISR")
	.dwattr DW$100, DW_AT_low_pc(_T1UFINT_ISR)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$100, DW_AT_begin_line(0x13a)
	.dwattr DW$100, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",315,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 314 | interrupt void T1UFINT_ISR(void)                // 0x000D5A  T1UFINT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T1UFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T1UFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",316,2
;----------------------------------------------------------------------
; 316 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 318 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |316| 
	.dwpsn	"DefaultIsr_nonBIOS.c",319,2
;----------------------------------------------------------------------
; 319 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",320,8
;----------------------------------------------------------------------
; 320 | while(1);                                                              
;----------------------------------------------------------------------
L33:    
DW$L$_T1UFINT_ISR$2$B:
        B         L33,UNC               ; |320| 
        ; branch occurs ; |320| 
DW$L$_T1UFINT_ISR$2$E:

DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L33:1:1221595864")
	.dwattr DW$101, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$101, DW_AT_begin_line(0x140)
	.dwattr DW$101, DW_AT_end_line(0x140)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_T1UFINT_ISR$2$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_T1UFINT_ISR$2$E)
	.dwendtag DW$101

	.dwattr DW$100, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$100, DW_AT_end_line(0x141)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$100

	.sect	".text"
	.global	_T1OFINT_ISR

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("T1OFINT_ISR"), DW_AT_symbol_name("_T1OFINT_ISR")
	.dwattr DW$103, DW_AT_low_pc(_T1OFINT_ISR)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$103, DW_AT_begin_line(0x144)
	.dwattr DW$103, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",325,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 324 | interrupt void T1OFINT_ISR(void)                // 0x000D5C  T1OFINT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T1OFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T1OFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",326,2
;----------------------------------------------------------------------
; 326 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP2; // Must acknowledge the PIE gro
;     | up                                                                     
; 328 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#2    ; |326| 
	.dwpsn	"DefaultIsr_nonBIOS.c",329,2
;----------------------------------------------------------------------
; 329 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",330,8
;----------------------------------------------------------------------
; 330 | while(1);                                                              
;----------------------------------------------------------------------
L34:    
DW$L$_T1OFINT_ISR$2$B:
        B         L34,UNC               ; |330| 
        ; branch occurs ; |330| 
DW$L$_T1OFINT_ISR$2$E:

DW$104	.dwtag  DW_TAG_loop
	.dwattr DW$104, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L34:1:1221595864")
	.dwattr DW$104, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$104, DW_AT_begin_line(0x14a)
	.dwattr DW$104, DW_AT_end_line(0x14a)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_T1OFINT_ISR$2$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_T1OFINT_ISR$2$E)
	.dwendtag DW$104

	.dwattr DW$103, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$103, DW_AT_end_line(0x14b)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$103

	.sect	".text"
	.global	_T2PINT_ISR

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("T2PINT_ISR"), DW_AT_symbol_name("_T2PINT_ISR")
	.dwattr DW$106, DW_AT_low_pc(_T2PINT_ISR)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$106, DW_AT_begin_line(0x14e)
	.dwattr DW$106, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",335,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 334 | interrupt void T2PINT_ISR(void)                 // 0x000D60  T2PINT (EV
;     | -A)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T2PINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T2PINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",336,2
;----------------------------------------------------------------------
; 336 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 338 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |336| 
	.dwpsn	"DefaultIsr_nonBIOS.c",339,2
;----------------------------------------------------------------------
; 339 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",340,8
;----------------------------------------------------------------------
; 340 | while(1);                                                              
;----------------------------------------------------------------------
L35:    
DW$L$_T2PINT_ISR$2$B:
        B         L35,UNC               ; |340| 
        ; branch occurs ; |340| 
DW$L$_T2PINT_ISR$2$E:

DW$107	.dwtag  DW_TAG_loop
	.dwattr DW$107, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L35:1:1221595864")
	.dwattr DW$107, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$107, DW_AT_begin_line(0x154)
	.dwattr DW$107, DW_AT_end_line(0x154)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_T2PINT_ISR$2$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_T2PINT_ISR$2$E)
	.dwendtag DW$107

	.dwattr DW$106, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$106, DW_AT_end_line(0x155)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$106

	.sect	".text"
	.global	_T2CINT_ISR

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("T2CINT_ISR"), DW_AT_symbol_name("_T2CINT_ISR")
	.dwattr DW$109, DW_AT_low_pc(_T2CINT_ISR)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$109, DW_AT_begin_line(0x158)
	.dwattr DW$109, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",345,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 344 | interrupt void T2CINT_ISR(void)                 // 0x000D62  T2CINT (EV
;     | -A)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T2CINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T2CINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",346,2
;----------------------------------------------------------------------
; 346 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 348 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |346| 
	.dwpsn	"DefaultIsr_nonBIOS.c",349,2
;----------------------------------------------------------------------
; 349 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",350,8
;----------------------------------------------------------------------
; 350 | while(1);                                                              
;----------------------------------------------------------------------
L36:    
DW$L$_T2CINT_ISR$2$B:
        B         L36,UNC               ; |350| 
        ; branch occurs ; |350| 
DW$L$_T2CINT_ISR$2$E:

DW$110	.dwtag  DW_TAG_loop
	.dwattr DW$110, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L36:1:1221595864")
	.dwattr DW$110, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$110, DW_AT_begin_line(0x15e)
	.dwattr DW$110, DW_AT_end_line(0x15e)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_T2CINT_ISR$2$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_T2CINT_ISR$2$E)
	.dwendtag DW$110

	.dwattr DW$109, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$109, DW_AT_end_line(0x15f)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$109

	.sect	".text"
	.global	_T2UFINT_ISR

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("T2UFINT_ISR"), DW_AT_symbol_name("_T2UFINT_ISR")
	.dwattr DW$112, DW_AT_low_pc(_T2UFINT_ISR)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$112, DW_AT_begin_line(0x162)
	.dwattr DW$112, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",355,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 354 | interrupt void T2UFINT_ISR(void)                // 0x000D64  T2UFINT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T2UFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T2UFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",356,2
;----------------------------------------------------------------------
; 356 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 358 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |356| 
	.dwpsn	"DefaultIsr_nonBIOS.c",359,2
;----------------------------------------------------------------------
; 359 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",360,8
;----------------------------------------------------------------------
; 360 | while(1);                                                              
;----------------------------------------------------------------------
L37:    
DW$L$_T2UFINT_ISR$2$B:
        B         L37,UNC               ; |360| 
        ; branch occurs ; |360| 
DW$L$_T2UFINT_ISR$2$E:

DW$113	.dwtag  DW_TAG_loop
	.dwattr DW$113, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L37:1:1221595864")
	.dwattr DW$113, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$113, DW_AT_begin_line(0x168)
	.dwattr DW$113, DW_AT_end_line(0x168)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_T2UFINT_ISR$2$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_T2UFINT_ISR$2$E)
	.dwendtag DW$113

	.dwattr DW$112, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$112, DW_AT_end_line(0x169)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$112

	.sect	".text"
	.global	_T2OFINT_ISR

DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("T2OFINT_ISR"), DW_AT_symbol_name("_T2OFINT_ISR")
	.dwattr DW$115, DW_AT_low_pc(_T2OFINT_ISR)
	.dwattr DW$115, DW_AT_high_pc(0x00)
	.dwattr DW$115, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$115, DW_AT_begin_line(0x16c)
	.dwattr DW$115, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",365,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 364 | interrupt void T2OFINT_ISR(void)                // 0x000D66  T2OFINT (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T2OFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T2OFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",366,2
;----------------------------------------------------------------------
; 366 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 368 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |366| 
	.dwpsn	"DefaultIsr_nonBIOS.c",369,2
;----------------------------------------------------------------------
; 369 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",370,8
;----------------------------------------------------------------------
; 370 | while(1);                                                              
;----------------------------------------------------------------------
L38:    
DW$L$_T2OFINT_ISR$2$B:
        B         L38,UNC               ; |370| 
        ; branch occurs ; |370| 
DW$L$_T2OFINT_ISR$2$E:

DW$116	.dwtag  DW_TAG_loop
	.dwattr DW$116, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L38:1:1221595864")
	.dwattr DW$116, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$116, DW_AT_begin_line(0x172)
	.dwattr DW$116, DW_AT_end_line(0x172)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_T2OFINT_ISR$2$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_T2OFINT_ISR$2$E)
	.dwendtag DW$116

	.dwattr DW$115, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$115, DW_AT_end_line(0x173)
	.dwattr DW$115, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$115

	.sect	".text"
	.global	_CAPINT1_ISR

DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT1_ISR"), DW_AT_symbol_name("_CAPINT1_ISR")
	.dwattr DW$118, DW_AT_low_pc(_CAPINT1_ISR)
	.dwattr DW$118, DW_AT_high_pc(0x00)
	.dwattr DW$118, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$118, DW_AT_begin_line(0x176)
	.dwattr DW$118, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",375,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 374 | interrupt void CAPINT1_ISR(void)                // 0x000D68  CAPINT1 (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT1_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT1_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",376,2
;----------------------------------------------------------------------
; 376 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 378 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |376| 
	.dwpsn	"DefaultIsr_nonBIOS.c",379,2
;----------------------------------------------------------------------
; 379 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",380,8
;----------------------------------------------------------------------
; 380 | while(1);                                                              
;----------------------------------------------------------------------
L39:    
DW$L$_CAPINT1_ISR$2$B:
        B         L39,UNC               ; |380| 
        ; branch occurs ; |380| 
DW$L$_CAPINT1_ISR$2$E:

DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L39:1:1221595864")
	.dwattr DW$119, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$119, DW_AT_begin_line(0x17c)
	.dwattr DW$119, DW_AT_end_line(0x17c)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_CAPINT1_ISR$2$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_CAPINT1_ISR$2$E)
	.dwendtag DW$119

	.dwattr DW$118, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$118, DW_AT_end_line(0x17e)
	.dwattr DW$118, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$118

	.sect	".text"
	.global	_CAPINT2_ISR

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT2_ISR"), DW_AT_symbol_name("_CAPINT2_ISR")
	.dwattr DW$121, DW_AT_low_pc(_CAPINT2_ISR)
	.dwattr DW$121, DW_AT_high_pc(0x00)
	.dwattr DW$121, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$121, DW_AT_begin_line(0x181)
	.dwattr DW$121, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",386,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 385 | interrupt void CAPINT2_ISR(void)                // 0x000D6A  CAPINT2 (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT2_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT2_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",387,2
;----------------------------------------------------------------------
; 387 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 389 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |387| 
	.dwpsn	"DefaultIsr_nonBIOS.c",390,2
;----------------------------------------------------------------------
; 390 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",391,8
;----------------------------------------------------------------------
; 391 | while(1);                                                              
;----------------------------------------------------------------------
L40:    
DW$L$_CAPINT2_ISR$2$B:
        B         L40,UNC               ; |391| 
        ; branch occurs ; |391| 
DW$L$_CAPINT2_ISR$2$E:

DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L40:1:1221595864")
	.dwattr DW$122, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$122, DW_AT_begin_line(0x187)
	.dwattr DW$122, DW_AT_end_line(0x187)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_CAPINT2_ISR$2$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_CAPINT2_ISR$2$E)
	.dwendtag DW$122

	.dwattr DW$121, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$121, DW_AT_end_line(0x188)
	.dwattr DW$121, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$121

	.sect	".text"
	.global	_CAPINT3_ISR

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT3_ISR"), DW_AT_symbol_name("_CAPINT3_ISR")
	.dwattr DW$124, DW_AT_low_pc(_CAPINT3_ISR)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$124, DW_AT_begin_line(0x18b)
	.dwattr DW$124, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",396,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 395 | interrupt void CAPINT3_ISR(void)                // 0x000D6C  CAPINT3 (E
;     | V-A)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT3_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT3_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",397,2
;----------------------------------------------------------------------
; 397 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Must acknowledge the PIE gro
;     | up                                                                     
; 399 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#4    ; |397| 
	.dwpsn	"DefaultIsr_nonBIOS.c",400,2
;----------------------------------------------------------------------
; 400 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",401,8
;----------------------------------------------------------------------
; 401 | while(1);                                                              
;----------------------------------------------------------------------
L41:    
DW$L$_CAPINT3_ISR$2$B:
        B         L41,UNC               ; |401| 
        ; branch occurs ; |401| 
DW$L$_CAPINT3_ISR$2$E:

DW$125	.dwtag  DW_TAG_loop
	.dwattr DW$125, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L41:1:1221595864")
	.dwattr DW$125, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$125, DW_AT_begin_line(0x191)
	.dwattr DW$125, DW_AT_end_line(0x191)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_CAPINT3_ISR$2$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_CAPINT3_ISR$2$E)
	.dwendtag DW$125

	.dwattr DW$124, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$124, DW_AT_end_line(0x192)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$124

	.sect	".text"
	.global	_CMP4INT_ISR

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP4INT_ISR"), DW_AT_symbol_name("_CMP4INT_ISR")
	.dwattr DW$127, DW_AT_low_pc(_CMP4INT_ISR)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$127, DW_AT_begin_line(0x195)
	.dwattr DW$127, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",406,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 405 | interrupt void CMP4INT_ISR(void)                // 0x000D70  CMP4INT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP4INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP4INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",407,2
;----------------------------------------------------------------------
; 407 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 409 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |407| 
	.dwpsn	"DefaultIsr_nonBIOS.c",410,2
;----------------------------------------------------------------------
; 410 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",411,8
;----------------------------------------------------------------------
; 411 | while(1);                                                              
;----------------------------------------------------------------------
L42:    
DW$L$_CMP4INT_ISR$2$B:
        B         L42,UNC               ; |411| 
        ; branch occurs ; |411| 
DW$L$_CMP4INT_ISR$2$E:

DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L42:1:1221595864")
	.dwattr DW$128, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$128, DW_AT_begin_line(0x19b)
	.dwattr DW$128, DW_AT_end_line(0x19b)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_CMP4INT_ISR$2$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_CMP4INT_ISR$2$E)
	.dwendtag DW$128

	.dwattr DW$127, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$127, DW_AT_end_line(0x19c)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$127

	.sect	".text"
	.global	_CMP5INT_ISR

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP5INT_ISR"), DW_AT_symbol_name("_CMP5INT_ISR")
	.dwattr DW$130, DW_AT_low_pc(_CMP5INT_ISR)
	.dwattr DW$130, DW_AT_high_pc(0x00)
	.dwattr DW$130, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$130, DW_AT_begin_line(0x19f)
	.dwattr DW$130, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",416,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 415 | interrupt void CMP5INT_ISR(void)                // 0x000D72  CMP5INT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP5INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP5INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",417,2
;----------------------------------------------------------------------
; 417 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 419 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |417| 
	.dwpsn	"DefaultIsr_nonBIOS.c",420,2
;----------------------------------------------------------------------
; 420 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",421,8
;----------------------------------------------------------------------
; 421 | while(1);                                                              
;----------------------------------------------------------------------
L43:    
DW$L$_CMP5INT_ISR$2$B:
        B         L43,UNC               ; |421| 
        ; branch occurs ; |421| 
DW$L$_CMP5INT_ISR$2$E:

DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L43:1:1221595864")
	.dwattr DW$131, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$131, DW_AT_begin_line(0x1a5)
	.dwattr DW$131, DW_AT_end_line(0x1a5)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_CMP5INT_ISR$2$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_CMP5INT_ISR$2$E)
	.dwendtag DW$131

	.dwattr DW$130, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$130, DW_AT_end_line(0x1a6)
	.dwattr DW$130, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$130

	.sect	".text"
	.global	_CMP6INT_ISR

DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("CMP6INT_ISR"), DW_AT_symbol_name("_CMP6INT_ISR")
	.dwattr DW$133, DW_AT_low_pc(_CMP6INT_ISR)
	.dwattr DW$133, DW_AT_high_pc(0x00)
	.dwattr DW$133, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$133, DW_AT_begin_line(0x1a9)
	.dwattr DW$133, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",426,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 425 | interrupt void CMP6INT_ISR(void)                // 0x000D74  CMP6INT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CMP6INT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CMP6INT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",427,2
;----------------------------------------------------------------------
; 427 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 429 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |427| 
	.dwpsn	"DefaultIsr_nonBIOS.c",430,2
;----------------------------------------------------------------------
; 430 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",431,8
;----------------------------------------------------------------------
; 431 | while(1);                                                              
;----------------------------------------------------------------------
L44:    
DW$L$_CMP6INT_ISR$2$B:
        B         L44,UNC               ; |431| 
        ; branch occurs ; |431| 
DW$L$_CMP6INT_ISR$2$E:

DW$134	.dwtag  DW_TAG_loop
	.dwattr DW$134, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L44:1:1221595864")
	.dwattr DW$134, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$134, DW_AT_begin_line(0x1af)
	.dwattr DW$134, DW_AT_end_line(0x1af)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_CMP6INT_ISR$2$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_CMP6INT_ISR$2$E)
	.dwendtag DW$134

	.dwattr DW$133, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$133, DW_AT_end_line(0x1b0)
	.dwattr DW$133, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$133

	.sect	".text"
	.global	_T3PINT_ISR

DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("T3PINT_ISR"), DW_AT_symbol_name("_T3PINT_ISR")
	.dwattr DW$136, DW_AT_low_pc(_T3PINT_ISR)
	.dwattr DW$136, DW_AT_high_pc(0x00)
	.dwattr DW$136, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$136, DW_AT_begin_line(0x1b3)
	.dwattr DW$136, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",436,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 435 | interrupt void T3PINT_ISR(void)                 // 0x000D76  T3PINT (EV
;     | -B)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T3PINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T3PINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",437,2
;----------------------------------------------------------------------
; 437 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 439 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |437| 
	.dwpsn	"DefaultIsr_nonBIOS.c",440,2
;----------------------------------------------------------------------
; 440 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",441,8
;----------------------------------------------------------------------
; 441 | while(1);                                                              
;----------------------------------------------------------------------
L45:    
DW$L$_T3PINT_ISR$2$B:
        B         L45,UNC               ; |441| 
        ; branch occurs ; |441| 
DW$L$_T3PINT_ISR$2$E:

DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L45:1:1221595864")
	.dwattr DW$137, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$137, DW_AT_begin_line(0x1b9)
	.dwattr DW$137, DW_AT_end_line(0x1b9)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_T3PINT_ISR$2$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_T3PINT_ISR$2$E)
	.dwendtag DW$137

	.dwattr DW$136, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$136, DW_AT_end_line(0x1ba)
	.dwattr DW$136, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$136

	.sect	".text"
	.global	_T3CINT_ISR

DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("T3CINT_ISR"), DW_AT_symbol_name("_T3CINT_ISR")
	.dwattr DW$139, DW_AT_low_pc(_T3CINT_ISR)
	.dwattr DW$139, DW_AT_high_pc(0x00)
	.dwattr DW$139, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$139, DW_AT_begin_line(0x1bd)
	.dwattr DW$139, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",446,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 445 | interrupt void T3CINT_ISR(void)                 // 0x000D78  T3CINT (EV
;     | -B)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T3CINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T3CINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",447,2
;----------------------------------------------------------------------
; 447 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 449 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |447| 
	.dwpsn	"DefaultIsr_nonBIOS.c",450,2
;----------------------------------------------------------------------
; 450 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",451,8
;----------------------------------------------------------------------
; 451 | while(1);                                                              
;----------------------------------------------------------------------
L46:    
DW$L$_T3CINT_ISR$2$B:
        B         L46,UNC               ; |451| 
        ; branch occurs ; |451| 
DW$L$_T3CINT_ISR$2$E:

DW$140	.dwtag  DW_TAG_loop
	.dwattr DW$140, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L46:1:1221595864")
	.dwattr DW$140, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$140, DW_AT_begin_line(0x1c3)
	.dwattr DW$140, DW_AT_end_line(0x1c3)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_T3CINT_ISR$2$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_T3CINT_ISR$2$E)
	.dwendtag DW$140

	.dwattr DW$139, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$139, DW_AT_end_line(0x1c4)
	.dwattr DW$139, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$139

	.sect	".text"
	.global	_T3UFINT_ISR

DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("T3UFINT_ISR"), DW_AT_symbol_name("_T3UFINT_ISR")
	.dwattr DW$142, DW_AT_low_pc(_T3UFINT_ISR)
	.dwattr DW$142, DW_AT_high_pc(0x00)
	.dwattr DW$142, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$142, DW_AT_begin_line(0x1c7)
	.dwattr DW$142, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",456,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 455 | interrupt void T3UFINT_ISR(void)                // 0x000D7A  T3UFINT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T3UFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T3UFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",457,2
;----------------------------------------------------------------------
; 457 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 459 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |457| 
	.dwpsn	"DefaultIsr_nonBIOS.c",460,2
;----------------------------------------------------------------------
; 460 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",461,8
;----------------------------------------------------------------------
; 461 | while(1);                                                              
;----------------------------------------------------------------------
L47:    
DW$L$_T3UFINT_ISR$2$B:
        B         L47,UNC               ; |461| 
        ; branch occurs ; |461| 
DW$L$_T3UFINT_ISR$2$E:

DW$143	.dwtag  DW_TAG_loop
	.dwattr DW$143, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L47:1:1221595864")
	.dwattr DW$143, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$143, DW_AT_begin_line(0x1cd)
	.dwattr DW$143, DW_AT_end_line(0x1cd)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_T3UFINT_ISR$2$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_T3UFINT_ISR$2$E)
	.dwendtag DW$143

	.dwattr DW$142, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$142, DW_AT_end_line(0x1ce)
	.dwattr DW$142, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$142

	.sect	".text"
	.global	_T3OFINT_ISR

DW$145	.dwtag  DW_TAG_subprogram, DW_AT_name("T3OFINT_ISR"), DW_AT_symbol_name("_T3OFINT_ISR")
	.dwattr DW$145, DW_AT_low_pc(_T3OFINT_ISR)
	.dwattr DW$145, DW_AT_high_pc(0x00)
	.dwattr DW$145, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$145, DW_AT_begin_line(0x1d1)
	.dwattr DW$145, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",466,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 465 | interrupt void T3OFINT_ISR(void)                // 0x000D7C  T3OFINT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T3OFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T3OFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",467,2
;----------------------------------------------------------------------
; 467 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP4; // Must acknowledge the PIE gro
;     | up                                                                     
; 469 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#8    ; |467| 
	.dwpsn	"DefaultIsr_nonBIOS.c",470,2
;----------------------------------------------------------------------
; 470 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",471,8
;----------------------------------------------------------------------
; 471 | while(1);                                                              
;----------------------------------------------------------------------
L48:    
DW$L$_T3OFINT_ISR$2$B:
        B         L48,UNC               ; |471| 
        ; branch occurs ; |471| 
DW$L$_T3OFINT_ISR$2$E:

DW$146	.dwtag  DW_TAG_loop
	.dwattr DW$146, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L48:1:1221595864")
	.dwattr DW$146, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$146, DW_AT_begin_line(0x1d7)
	.dwattr DW$146, DW_AT_end_line(0x1d7)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_T3OFINT_ISR$2$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_T3OFINT_ISR$2$E)
	.dwendtag DW$146

	.dwattr DW$145, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$145, DW_AT_end_line(0x1d8)
	.dwattr DW$145, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$145

	.sect	".text"
	.global	_T4PINT_ISR

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("T4PINT_ISR"), DW_AT_symbol_name("_T4PINT_ISR")
	.dwattr DW$148, DW_AT_low_pc(_T4PINT_ISR)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$148, DW_AT_begin_line(0x1db)
	.dwattr DW$148, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",476,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 475 | interrupt void T4PINT_ISR(void)                 // 0x000D80  T4PINT (EV
;     | -B)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T4PINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T4PINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",477,2
;----------------------------------------------------------------------
; 477 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 479 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |477| 
	.dwpsn	"DefaultIsr_nonBIOS.c",480,2
;----------------------------------------------------------------------
; 480 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",481,8
;----------------------------------------------------------------------
; 481 | while(1);                                                              
;----------------------------------------------------------------------
L49:    
DW$L$_T4PINT_ISR$2$B:
        B         L49,UNC               ; |481| 
        ; branch occurs ; |481| 
DW$L$_T4PINT_ISR$2$E:

DW$149	.dwtag  DW_TAG_loop
	.dwattr DW$149, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L49:1:1221595864")
	.dwattr DW$149, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$149, DW_AT_begin_line(0x1e1)
	.dwattr DW$149, DW_AT_end_line(0x1e1)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_T4PINT_ISR$2$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_T4PINT_ISR$2$E)
	.dwendtag DW$149

	.dwattr DW$148, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$148, DW_AT_end_line(0x1e2)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$148

	.sect	".text"
	.global	_T4CINT_ISR

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("T4CINT_ISR"), DW_AT_symbol_name("_T4CINT_ISR")
	.dwattr DW$151, DW_AT_low_pc(_T4CINT_ISR)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$151, DW_AT_begin_line(0x1e5)
	.dwattr DW$151, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",486,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 485 | interrupt void T4CINT_ISR(void)                 // 0x000D82  T4CINT (EV
;     | -B)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T4CINT_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T4CINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",487,2
;----------------------------------------------------------------------
; 487 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 489 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |487| 
	.dwpsn	"DefaultIsr_nonBIOS.c",490,2
;----------------------------------------------------------------------
; 490 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",491,8
;----------------------------------------------------------------------
; 491 | while(1);                                                              
;----------------------------------------------------------------------
L50:    
DW$L$_T4CINT_ISR$2$B:
        B         L50,UNC               ; |491| 
        ; branch occurs ; |491| 
DW$L$_T4CINT_ISR$2$E:

DW$152	.dwtag  DW_TAG_loop
	.dwattr DW$152, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L50:1:1221595864")
	.dwattr DW$152, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$152, DW_AT_begin_line(0x1eb)
	.dwattr DW$152, DW_AT_end_line(0x1eb)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_T4CINT_ISR$2$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_T4CINT_ISR$2$E)
	.dwendtag DW$152

	.dwattr DW$151, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$151, DW_AT_end_line(0x1ec)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$151

	.sect	".text"
	.global	_T4UFINT_ISR

DW$154	.dwtag  DW_TAG_subprogram, DW_AT_name("T4UFINT_ISR"), DW_AT_symbol_name("_T4UFINT_ISR")
	.dwattr DW$154, DW_AT_low_pc(_T4UFINT_ISR)
	.dwattr DW$154, DW_AT_high_pc(0x00)
	.dwattr DW$154, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$154, DW_AT_begin_line(0x1ef)
	.dwattr DW$154, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",496,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 495 | interrupt void T4UFINT_ISR(void)                // 0x000D84  T4UFINT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T4UFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T4UFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",497,2
;----------------------------------------------------------------------
; 497 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 499 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |497| 
	.dwpsn	"DefaultIsr_nonBIOS.c",500,2
;----------------------------------------------------------------------
; 500 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",501,8
;----------------------------------------------------------------------
; 501 | while(1);                                                              
;----------------------------------------------------------------------
L51:    
DW$L$_T4UFINT_ISR$2$B:
        B         L51,UNC               ; |501| 
        ; branch occurs ; |501| 
DW$L$_T4UFINT_ISR$2$E:

DW$155	.dwtag  DW_TAG_loop
	.dwattr DW$155, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L51:1:1221595864")
	.dwattr DW$155, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$155, DW_AT_begin_line(0x1f5)
	.dwattr DW$155, DW_AT_end_line(0x1f5)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_T4UFINT_ISR$2$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_T4UFINT_ISR$2$E)
	.dwendtag DW$155

	.dwattr DW$154, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$154, DW_AT_end_line(0x1f6)
	.dwattr DW$154, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$154

	.sect	".text"
	.global	_T4OFINT_ISR

DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("T4OFINT_ISR"), DW_AT_symbol_name("_T4OFINT_ISR")
	.dwattr DW$157, DW_AT_low_pc(_T4OFINT_ISR)
	.dwattr DW$157, DW_AT_high_pc(0x00)
	.dwattr DW$157, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$157, DW_AT_begin_line(0x1f9)
	.dwattr DW$157, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",506,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 505 | interrupt void T4OFINT_ISR(void)                // 0x000D86  T4OFINT (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _T4OFINT_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_T4OFINT_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",507,2
;----------------------------------------------------------------------
; 507 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 509 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |507| 
	.dwpsn	"DefaultIsr_nonBIOS.c",510,2
;----------------------------------------------------------------------
; 510 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",511,8
;----------------------------------------------------------------------
; 511 | while(1);                                                              
;----------------------------------------------------------------------
L52:    
DW$L$_T4OFINT_ISR$2$B:
        B         L52,UNC               ; |511| 
        ; branch occurs ; |511| 
DW$L$_T4OFINT_ISR$2$E:

DW$158	.dwtag  DW_TAG_loop
	.dwattr DW$158, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L52:1:1221595864")
	.dwattr DW$158, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$158, DW_AT_begin_line(0x1ff)
	.dwattr DW$158, DW_AT_end_line(0x1ff)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_T4OFINT_ISR$2$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_T4OFINT_ISR$2$E)
	.dwendtag DW$158

	.dwattr DW$157, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$157, DW_AT_end_line(0x200)
	.dwattr DW$157, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$157

	.sect	".text"
	.global	_CAPINT4_ISR

DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT4_ISR"), DW_AT_symbol_name("_CAPINT4_ISR")
	.dwattr DW$160, DW_AT_low_pc(_CAPINT4_ISR)
	.dwattr DW$160, DW_AT_high_pc(0x00)
	.dwattr DW$160, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$160, DW_AT_begin_line(0x203)
	.dwattr DW$160, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",516,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 515 | interrupt void CAPINT4_ISR(void)                // 0x000D88  CAPINT4 (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT4_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT4_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",517,2
;----------------------------------------------------------------------
; 517 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 519 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |517| 
	.dwpsn	"DefaultIsr_nonBIOS.c",520,2
;----------------------------------------------------------------------
; 520 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",521,8
;----------------------------------------------------------------------
; 521 | while(1);                                                              
;----------------------------------------------------------------------
L53:    
DW$L$_CAPINT4_ISR$2$B:
        B         L53,UNC               ; |521| 
        ; branch occurs ; |521| 
DW$L$_CAPINT4_ISR$2$E:

DW$161	.dwtag  DW_TAG_loop
	.dwattr DW$161, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L53:1:1221595864")
	.dwattr DW$161, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$161, DW_AT_begin_line(0x209)
	.dwattr DW$161, DW_AT_end_line(0x209)
DW$162	.dwtag  DW_TAG_loop_range
	.dwattr DW$162, DW_AT_low_pc(DW$L$_CAPINT4_ISR$2$B)
	.dwattr DW$162, DW_AT_high_pc(DW$L$_CAPINT4_ISR$2$E)
	.dwendtag DW$161

	.dwattr DW$160, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$160, DW_AT_end_line(0x20a)
	.dwattr DW$160, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$160

	.sect	".text"
	.global	_CAPINT5_ISR

DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT5_ISR"), DW_AT_symbol_name("_CAPINT5_ISR")
	.dwattr DW$163, DW_AT_low_pc(_CAPINT5_ISR)
	.dwattr DW$163, DW_AT_high_pc(0x00)
	.dwattr DW$163, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$163, DW_AT_begin_line(0x20d)
	.dwattr DW$163, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",526,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 525 | interrupt void CAPINT5_ISR(void)                // 0x000D8A  CAPINT5 (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT5_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT5_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",527,2
;----------------------------------------------------------------------
; 527 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 529 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |527| 
	.dwpsn	"DefaultIsr_nonBIOS.c",530,2
;----------------------------------------------------------------------
; 530 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",531,8
;----------------------------------------------------------------------
; 531 | while(1);                                                              
;----------------------------------------------------------------------
L54:    
DW$L$_CAPINT5_ISR$2$B:
        B         L54,UNC               ; |531| 
        ; branch occurs ; |531| 
DW$L$_CAPINT5_ISR$2$E:

DW$164	.dwtag  DW_TAG_loop
	.dwattr DW$164, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L54:1:1221595864")
	.dwattr DW$164, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$164, DW_AT_begin_line(0x213)
	.dwattr DW$164, DW_AT_end_line(0x213)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_CAPINT5_ISR$2$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_CAPINT5_ISR$2$E)
	.dwendtag DW$164

	.dwattr DW$163, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$163, DW_AT_end_line(0x214)
	.dwattr DW$163, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$163

	.sect	".text"
	.global	_CAPINT6_ISR

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("CAPINT6_ISR"), DW_AT_symbol_name("_CAPINT6_ISR")
	.dwattr DW$166, DW_AT_low_pc(_CAPINT6_ISR)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$166, DW_AT_begin_line(0x217)
	.dwattr DW$166, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",536,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 535 | interrupt void CAPINT6_ISR(void)                // 0x000D8C  CAPINT6 (E
;     | V-B)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CAPINT6_ISR                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CAPINT6_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",537,2
;----------------------------------------------------------------------
; 537 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP5; // Must acknowledge the PIE gro
;     | up                                                                     
; 539 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#16   ; |537| 
	.dwpsn	"DefaultIsr_nonBIOS.c",540,2
;----------------------------------------------------------------------
; 540 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",541,8
;----------------------------------------------------------------------
; 541 | while(1);                                                              
;----------------------------------------------------------------------
L55:    
DW$L$_CAPINT6_ISR$2$B:
        B         L55,UNC               ; |541| 
        ; branch occurs ; |541| 
DW$L$_CAPINT6_ISR$2$E:

DW$167	.dwtag  DW_TAG_loop
	.dwattr DW$167, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L55:1:1221595864")
	.dwattr DW$167, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$167, DW_AT_begin_line(0x21d)
	.dwattr DW$167, DW_AT_end_line(0x21d)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_CAPINT6_ISR$2$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_CAPINT6_ISR$2$E)
	.dwendtag DW$167

	.dwattr DW$166, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$166, DW_AT_end_line(0x21e)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$166

	.sect	".text"
	.global	_SPIRXINTA_ISR

DW$169	.dwtag  DW_TAG_subprogram, DW_AT_name("SPIRXINTA_ISR"), DW_AT_symbol_name("_SPIRXINTA_ISR")
	.dwattr DW$169, DW_AT_low_pc(_SPIRXINTA_ISR)
	.dwattr DW$169, DW_AT_high_pc(0x00)
	.dwattr DW$169, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$169, DW_AT_begin_line(0x221)
	.dwattr DW$169, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",546,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 545 | interrupt void SPIRXINTA_ISR(void)              // 0x000D90  SPIRXINTA
;     | (SPI)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPIRXINTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPIRXINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",547,2
;----------------------------------------------------------------------
; 547 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP6; // Must acknowledge the PIE gro
;     | up                                                                     
; 549 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#32   ; |547| 
	.dwpsn	"DefaultIsr_nonBIOS.c",550,2
;----------------------------------------------------------------------
; 550 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",551,8
;----------------------------------------------------------------------
; 551 | while(1);                                                              
;----------------------------------------------------------------------
L56:    
DW$L$_SPIRXINTA_ISR$2$B:
        B         L56,UNC               ; |551| 
        ; branch occurs ; |551| 
DW$L$_SPIRXINTA_ISR$2$E:

DW$170	.dwtag  DW_TAG_loop
	.dwattr DW$170, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L56:1:1221595864")
	.dwattr DW$170, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$170, DW_AT_begin_line(0x227)
	.dwattr DW$170, DW_AT_end_line(0x227)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_SPIRXINTA_ISR$2$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_SPIRXINTA_ISR$2$E)
	.dwendtag DW$170

	.dwattr DW$169, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$169, DW_AT_end_line(0x228)
	.dwattr DW$169, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$169

	.sect	".text"
	.global	_SPITXINTA_ISR

DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("SPITXINTA_ISR"), DW_AT_symbol_name("_SPITXINTA_ISR")
	.dwattr DW$172, DW_AT_low_pc(_SPITXINTA_ISR)
	.dwattr DW$172, DW_AT_high_pc(0x00)
	.dwattr DW$172, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$172, DW_AT_begin_line(0x22b)
	.dwattr DW$172, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",556,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 555 | interrupt void SPITXINTA_ISR(void)              // 0x000D92  SPITXINTA
;     | (SPI)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPITXINTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPITXINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",557,2
;----------------------------------------------------------------------
; 557 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP6; // Must acknowledge the PIE gro
;     | up                                                                     
; 559 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#32   ; |557| 
	.dwpsn	"DefaultIsr_nonBIOS.c",560,2
;----------------------------------------------------------------------
; 560 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",561,8
;----------------------------------------------------------------------
; 561 | while(1);                                                              
;----------------------------------------------------------------------
L57:    
DW$L$_SPITXINTA_ISR$2$B:
        B         L57,UNC               ; |561| 
        ; branch occurs ; |561| 
DW$L$_SPITXINTA_ISR$2$E:

DW$173	.dwtag  DW_TAG_loop
	.dwattr DW$173, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L57:1:1221595864")
	.dwattr DW$173, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$173, DW_AT_begin_line(0x231)
	.dwattr DW$173, DW_AT_end_line(0x231)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_SPITXINTA_ISR$2$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_SPITXINTA_ISR$2$E)
	.dwendtag DW$173

	.dwattr DW$172, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$172, DW_AT_end_line(0x232)
	.dwattr DW$172, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$172

	.sect	".text"
	.global	_MRINTA_ISR

DW$175	.dwtag  DW_TAG_subprogram, DW_AT_name("MRINTA_ISR"), DW_AT_symbol_name("_MRINTA_ISR")
	.dwattr DW$175, DW_AT_low_pc(_MRINTA_ISR)
	.dwattr DW$175, DW_AT_high_pc(0x00)
	.dwattr DW$175, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$175, DW_AT_begin_line(0x235)
	.dwattr DW$175, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",566,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 565 | interrupt void MRINTA_ISR(void)                 // 0x000D98  MRINT (McB
;     | SP)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _MRINTA_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MRINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",567,2
;----------------------------------------------------------------------
; 567 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP6; // Must acknowledge the PIE gro
;     | up                                                                     
; 569 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#32   ; |567| 
	.dwpsn	"DefaultIsr_nonBIOS.c",570,2
;----------------------------------------------------------------------
; 570 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",571,8
;----------------------------------------------------------------------
; 571 | while(1);                                                              
;----------------------------------------------------------------------
L58:    
DW$L$_MRINTA_ISR$2$B:
        B         L58,UNC               ; |571| 
        ; branch occurs ; |571| 
DW$L$_MRINTA_ISR$2$E:

DW$176	.dwtag  DW_TAG_loop
	.dwattr DW$176, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L58:1:1221595864")
	.dwattr DW$176, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$176, DW_AT_begin_line(0x23b)
	.dwattr DW$176, DW_AT_end_line(0x23b)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_MRINTA_ISR$2$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_MRINTA_ISR$2$E)
	.dwendtag DW$176

	.dwattr DW$175, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$175, DW_AT_end_line(0x23c)
	.dwattr DW$175, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$175

	.sect	".text"
	.global	_MXINTA_ISR

DW$178	.dwtag  DW_TAG_subprogram, DW_AT_name("MXINTA_ISR"), DW_AT_symbol_name("_MXINTA_ISR")
	.dwattr DW$178, DW_AT_low_pc(_MXINTA_ISR)
	.dwattr DW$178, DW_AT_high_pc(0x00)
	.dwattr DW$178, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$178, DW_AT_begin_line(0x23f)
	.dwattr DW$178, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",576,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 575 | interrupt void MXINTA_ISR(void)                 // 0x000D9A  MXINT (McB
;     | SP)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _MXINTA_ISR                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MXINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",577,2
;----------------------------------------------------------------------
; 577 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP6; // Must acknowledge the PIE gro
;     | up                                                                     
; 579 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#32   ; |577| 
	.dwpsn	"DefaultIsr_nonBIOS.c",580,2
;----------------------------------------------------------------------
; 580 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",581,8
;----------------------------------------------------------------------
; 581 | while(1);                                                              
;----------------------------------------------------------------------
L59:    
DW$L$_MXINTA_ISR$2$B:
        B         L59,UNC               ; |581| 
        ; branch occurs ; |581| 
DW$L$_MXINTA_ISR$2$E:

DW$179	.dwtag  DW_TAG_loop
	.dwattr DW$179, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L59:1:1221595864")
	.dwattr DW$179, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$179, DW_AT_begin_line(0x245)
	.dwattr DW$179, DW_AT_end_line(0x245)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_MXINTA_ISR$2$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_MXINTA_ISR$2$E)
	.dwendtag DW$179

	.dwattr DW$178, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$178, DW_AT_end_line(0x246)
	.dwattr DW$178, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$178

	.sect	".text"
	.global	_SCIRXINTA_ISR

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIRXINTA_ISR"), DW_AT_symbol_name("_SCIRXINTA_ISR")
	.dwattr DW$181, DW_AT_low_pc(_SCIRXINTA_ISR)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$181, DW_AT_begin_line(0x249)
	.dwattr DW$181, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",586,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 585 | interrupt void SCIRXINTA_ISR(void)              // 0x000DC0  SCIRXINTA
;     | (SCI-A)                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SCIRXINTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SCIRXINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",587,2
;----------------------------------------------------------------------
; 587 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 589 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |587| 
	.dwpsn	"DefaultIsr_nonBIOS.c",590,2
;----------------------------------------------------------------------
; 590 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",591,8
;----------------------------------------------------------------------
; 591 | while(1);                                                              
;----------------------------------------------------------------------
L60:    
DW$L$_SCIRXINTA_ISR$2$B:
        B         L60,UNC               ; |591| 
        ; branch occurs ; |591| 
DW$L$_SCIRXINTA_ISR$2$E:

DW$182	.dwtag  DW_TAG_loop
	.dwattr DW$182, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L60:1:1221595864")
	.dwattr DW$182, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$182, DW_AT_begin_line(0x24f)
	.dwattr DW$182, DW_AT_end_line(0x24f)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_SCIRXINTA_ISR$2$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_SCIRXINTA_ISR$2$E)
	.dwendtag DW$182

	.dwattr DW$181, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$181, DW_AT_end_line(0x250)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$181

	.sect	".text"
	.global	_SCITXINTA_ISR

DW$184	.dwtag  DW_TAG_subprogram, DW_AT_name("SCITXINTA_ISR"), DW_AT_symbol_name("_SCITXINTA_ISR")
	.dwattr DW$184, DW_AT_low_pc(_SCITXINTA_ISR)
	.dwattr DW$184, DW_AT_high_pc(0x00)
	.dwattr DW$184, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$184, DW_AT_begin_line(0x253)
	.dwattr DW$184, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",596,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 595 | interrupt void SCITXINTA_ISR(void)              // 0x000DC2  SCITXINTA
;     | (SCI-A)                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SCITXINTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SCITXINTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",597,2
;----------------------------------------------------------------------
; 597 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 599 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |597| 
	.dwpsn	"DefaultIsr_nonBIOS.c",600,2
;----------------------------------------------------------------------
; 600 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",601,8
;----------------------------------------------------------------------
; 601 | while(1);                                                              
;----------------------------------------------------------------------
L61:    
DW$L$_SCITXINTA_ISR$2$B:
        B         L61,UNC               ; |601| 
        ; branch occurs ; |601| 
DW$L$_SCITXINTA_ISR$2$E:

DW$185	.dwtag  DW_TAG_loop
	.dwattr DW$185, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L61:1:1221595864")
	.dwattr DW$185, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$185, DW_AT_begin_line(0x259)
	.dwattr DW$185, DW_AT_end_line(0x259)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_SCITXINTA_ISR$2$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_SCITXINTA_ISR$2$E)
	.dwendtag DW$185

	.dwattr DW$184, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$184, DW_AT_end_line(0x25a)
	.dwattr DW$184, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$184

	.sect	".text"
	.global	_SCIRXINTB_ISR

DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIRXINTB_ISR"), DW_AT_symbol_name("_SCIRXINTB_ISR")
	.dwattr DW$187, DW_AT_low_pc(_SCIRXINTB_ISR)
	.dwattr DW$187, DW_AT_high_pc(0x00)
	.dwattr DW$187, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$187, DW_AT_begin_line(0x25d)
	.dwattr DW$187, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",606,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 605 | interrupt void SCIRXINTB_ISR(void)              // 0x000DC4  SCIRXINTB
;     | (SCI-B)                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SCIRXINTB_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SCIRXINTB_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",607,2
;----------------------------------------------------------------------
; 607 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 609 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |607| 
	.dwpsn	"DefaultIsr_nonBIOS.c",610,2
;----------------------------------------------------------------------
; 610 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",611,8
;----------------------------------------------------------------------
; 611 | while(1);                                                              
;----------------------------------------------------------------------
L62:    
DW$L$_SCIRXINTB_ISR$2$B:
        B         L62,UNC               ; |611| 
        ; branch occurs ; |611| 
DW$L$_SCIRXINTB_ISR$2$E:

DW$188	.dwtag  DW_TAG_loop
	.dwattr DW$188, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L62:1:1221595864")
	.dwattr DW$188, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$188, DW_AT_begin_line(0x263)
	.dwattr DW$188, DW_AT_end_line(0x263)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_SCIRXINTB_ISR$2$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_SCIRXINTB_ISR$2$E)
	.dwendtag DW$188

	.dwattr DW$187, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$187, DW_AT_end_line(0x264)
	.dwattr DW$187, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$187

	.sect	".text"
	.global	_SCITXINTB_ISR

DW$190	.dwtag  DW_TAG_subprogram, DW_AT_name("SCITXINTB_ISR"), DW_AT_symbol_name("_SCITXINTB_ISR")
	.dwattr DW$190, DW_AT_low_pc(_SCITXINTB_ISR)
	.dwattr DW$190, DW_AT_high_pc(0x00)
	.dwattr DW$190, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$190, DW_AT_begin_line(0x267)
	.dwattr DW$190, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",616,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 615 | interrupt void SCITXINTB_ISR(void)              // 0x000DC6  SCITXINTB
;     | (SCI-B)                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SCITXINTB_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SCITXINTB_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",617,2
;----------------------------------------------------------------------
; 617 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 619 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |617| 
	.dwpsn	"DefaultIsr_nonBIOS.c",620,2
;----------------------------------------------------------------------
; 620 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",621,8
;----------------------------------------------------------------------
; 621 | while(1);                                                              
;----------------------------------------------------------------------
L63:    
DW$L$_SCITXINTB_ISR$2$B:
        B         L63,UNC               ; |621| 
        ; branch occurs ; |621| 
DW$L$_SCITXINTB_ISR$2$E:

DW$191	.dwtag  DW_TAG_loop
	.dwattr DW$191, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L63:1:1221595864")
	.dwattr DW$191, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$191, DW_AT_begin_line(0x26d)
	.dwattr DW$191, DW_AT_end_line(0x26d)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_SCITXINTB_ISR$2$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_SCITXINTB_ISR$2$E)
	.dwendtag DW$191

	.dwattr DW$190, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$190, DW_AT_end_line(0x26e)
	.dwattr DW$190, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$190

	.sect	".text"
	.global	_ECAN0INTA_ISR

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("ECAN0INTA_ISR"), DW_AT_symbol_name("_ECAN0INTA_ISR")
	.dwattr DW$193, DW_AT_low_pc(_ECAN0INTA_ISR)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$193, DW_AT_begin_line(0x271)
	.dwattr DW$193, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",626,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 625 | interrupt void ECAN0INTA_ISR(void)              // 0x000DC8  ECAN0INT (
;     | CAN)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ECAN0INTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ECAN0INTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",627,2
;----------------------------------------------------------------------
; 627 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 629 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |627| 
	.dwpsn	"DefaultIsr_nonBIOS.c",630,2
;----------------------------------------------------------------------
; 630 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",631,8
;----------------------------------------------------------------------
; 631 | while(1);                                                              
;----------------------------------------------------------------------
L64:    
DW$L$_ECAN0INTA_ISR$2$B:
        B         L64,UNC               ; |631| 
        ; branch occurs ; |631| 
DW$L$_ECAN0INTA_ISR$2$E:

DW$194	.dwtag  DW_TAG_loop
	.dwattr DW$194, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L64:1:1221595864")
	.dwattr DW$194, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$194, DW_AT_begin_line(0x277)
	.dwattr DW$194, DW_AT_end_line(0x277)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_ECAN0INTA_ISR$2$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_ECAN0INTA_ISR$2$E)
	.dwendtag DW$194

	.dwattr DW$193, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$193, DW_AT_end_line(0x278)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$193

	.sect	".text"
	.global	_ECAN1INTA_ISR

DW$196	.dwtag  DW_TAG_subprogram, DW_AT_name("ECAN1INTA_ISR"), DW_AT_symbol_name("_ECAN1INTA_ISR")
	.dwattr DW$196, DW_AT_low_pc(_ECAN1INTA_ISR)
	.dwattr DW$196, DW_AT_high_pc(0x00)
	.dwattr DW$196, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$196, DW_AT_begin_line(0x27b)
	.dwattr DW$196, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",636,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 635 | interrupt void ECAN1INTA_ISR(void)              // 0x000DCA  ECAN1INT (
;     | CAN)                                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ECAN1INTA_ISR                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ECAN1INTA_ISR:
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",637,2
;----------------------------------------------------------------------
; 637 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP9; // Must acknowledge the PIE gro
;     | up                                                                     
; 639 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |637| 
	.dwpsn	"DefaultIsr_nonBIOS.c",640,2
;----------------------------------------------------------------------
; 640 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",641,8
;----------------------------------------------------------------------
; 641 | while(1);                                                              
;----------------------------------------------------------------------
L65:    
DW$L$_ECAN1INTA_ISR$2$B:
        B         L65,UNC               ; |641| 
        ; branch occurs ; |641| 
DW$L$_ECAN1INTA_ISR$2$E:

DW$197	.dwtag  DW_TAG_loop
	.dwattr DW$197, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L65:1:1221595864")
	.dwattr DW$197, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$197, DW_AT_begin_line(0x281)
	.dwattr DW$197, DW_AT_end_line(0x281)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$_ECAN1INTA_ISR$2$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$_ECAN1INTA_ISR$2$E)
	.dwendtag DW$197

	.dwattr DW$196, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$196, DW_AT_end_line(0x282)
	.dwattr DW$196, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$196

	.sect	".text"
	.global	_PIE_RESERVED

DW$199	.dwtag  DW_TAG_subprogram, DW_AT_name("PIE_RESERVED"), DW_AT_symbol_name("_PIE_RESERVED")
	.dwattr DW$199, DW_AT_low_pc(_PIE_RESERVED)
	.dwattr DW$199, DW_AT_high_pc(0x00)
	.dwattr DW$199, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$199, DW_AT_begin_line(0x28a)
	.dwattr DW$199, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",651,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 650 | interrupt void PIE_RESERVED(void)               // Reserved PIE base ve
;     | ctor.                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _PIE_RESERVED                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PIE_RESERVED:
;----------------------------------------------------------------------
; 652 | // This ISR is for reserved PIE base vectors.  It should never be reach
;     | ed by                                                                  
; 653 | // properly executing code.  If you get here, it means something is wro
;     | ng.                                                                    
; 655 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",656,2
;----------------------------------------------------------------------
; 656 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",657,8
;----------------------------------------------------------------------
; 657 | while(1);                                                              
;----------------------------------------------------------------------
L66:    
DW$L$_PIE_RESERVED$2$B:
        B         L66,UNC               ; |657| 
        ; branch occurs ; |657| 
DW$L$_PIE_RESERVED$2$E:

DW$200	.dwtag  DW_TAG_loop
	.dwattr DW$200, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L66:1:1221595864")
	.dwattr DW$200, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$200, DW_AT_begin_line(0x291)
	.dwattr DW$200, DW_AT_end_line(0x291)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$_PIE_RESERVED$2$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$_PIE_RESERVED$2$E)
	.dwendtag DW$200

	.dwattr DW$199, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$199, DW_AT_end_line(0x292)
	.dwattr DW$199, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$199

	.sect	".text"
	.global	_rsvd_ISR

DW$202	.dwtag  DW_TAG_subprogram, DW_AT_name("rsvd_ISR"), DW_AT_symbol_name("_rsvd_ISR")
	.dwattr DW$202, DW_AT_low_pc(_rsvd_ISR)
	.dwattr DW$202, DW_AT_high_pc(0x00)
	.dwattr DW$202, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$202, DW_AT_begin_line(0x295)
	.dwattr DW$202, DW_AT_begin_column(0x10)
	.dwpsn	"DefaultIsr_nonBIOS.c",662,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 661 | interrupt void rsvd_ISR(void)                   // Reserved PIE group v
;     | ector                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _rsvd_ISR                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_rsvd_ISR:
;----------------------------------------------------------------------
; 663 | // This ISR is for reserved PIE group vectors.  It should never be reac
;     | hed by                                                                 
; 664 | // properly executing code.  If you get here, it means something is wro
;     | ng.                                                                    
; 666 | // Next two lines for debug only - remove after inserting your ISR     
;----------------------------------------------------------------------
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DefaultIsr_nonBIOS.c",667,2
;----------------------------------------------------------------------
; 667 | asm (" ESTOP0");                                        // Emulator Hal
;     | t instruction                                                          
;----------------------------------------------------------------------
 ESTOP0
	.dwpsn	"DefaultIsr_nonBIOS.c",668,8
;----------------------------------------------------------------------
; 668 | while(1);                                                              
;----------------------------------------------------------------------
L67:    
DW$L$_rsvd_ISR$2$B:
        B         L67,UNC               ; |668| 
        ; branch occurs ; |668| 
DW$L$_rsvd_ISR$2$E:

DW$203	.dwtag  DW_TAG_loop
	.dwattr DW$203, DW_AT_name("G:/VMS/Tsunami/100025092/Firmware/spra958f/eZdspF2812/projects/Debug/DefaultIsr_nonBIOS.asm:L67:1:1221595864")
	.dwattr DW$203, DW_AT_begin_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$203, DW_AT_begin_line(0x29c)
	.dwattr DW$203, DW_AT_end_line(0x29c)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_rsvd_ISR$2$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_rsvd_ISR$2$E)
	.dwendtag DW$203

	.dwattr DW$202, DW_AT_end_file("DefaultIsr_nonBIOS.c")
	.dwattr DW$202, DW_AT_end_line(0x29d)
	.dwattr DW$202, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$202

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_WriteCpld
	.global	_ReadCpld
	.global	_PieCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$30	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("Byte"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$33

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$208	.dwtag  DW_TAG_far_type
	.dwattr DW$208, DW_AT_type(*DW$T$28)
DW$T$37	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$37, DW_AT_type(*DW$208)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$28, DW_AT_byte_size(0x1a)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$209, DW_AT_name("PIECRTL"), DW_AT_symbol_name("_PIECRTL")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$210, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$211, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$212, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$213, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$214, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$215, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$216, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$217, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$218, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$219, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$220, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$221, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$222, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$223, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$224, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$225, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$226, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$227, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$228, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$229, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$230, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$231, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$232, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$233, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$234, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$236, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$238, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$240, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$242, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$243, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$244, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$245, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$246, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$247, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$248, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$249, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$250, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$251, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$252, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$253, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$254, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$255, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$256, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$257, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$258, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$259, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$260, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$261, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$262, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$263, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$264, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$265, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$266, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$267, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$268, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$269, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$270, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$271, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$272, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$273, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$274, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$275, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


	.dwattr DW$76, DW_AT_external(0x01)
	.dwattr DW$118, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$160, DW_AT_external(0x01)
	.dwattr DW$163, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_external(0x01)
	.dwattr DW$85, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$130, DW_AT_external(0x01)
	.dwattr DW$133, DW_AT_external(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
	.dwattr DW$175, DW_AT_external(0x01)
	.dwattr DW$178, DW_AT_external(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$199, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_external(0x01)
	.dwattr DW$187, DW_AT_external(0x01)
	.dwattr DW$184, DW_AT_external(0x01)
	.dwattr DW$190, DW_AT_external(0x01)
	.dwattr DW$169, DW_AT_external(0x01)
	.dwattr DW$172, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$109, DW_AT_external(0x01)
	.dwattr DW$115, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$139, DW_AT_external(0x01)
	.dwattr DW$145, DW_AT_external(0x01)
	.dwattr DW$136, DW_AT_external(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
	.dwattr DW$157, DW_AT_external(0x01)
	.dwattr DW$148, DW_AT_external(0x01)
	.dwattr DW$154, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
	.dwattr DW$202, DW_AT_external(0x01)
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

DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$276, DW_AT_location[DW_OP_reg0]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$277, DW_AT_location[DW_OP_reg1]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$278, DW_AT_location[DW_OP_reg2]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$279, DW_AT_location[DW_OP_reg3]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$280, DW_AT_location[DW_OP_reg4]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$281, DW_AT_location[DW_OP_reg5]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$282, DW_AT_location[DW_OP_reg6]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$283, DW_AT_location[DW_OP_reg7]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$284, DW_AT_location[DW_OP_reg8]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$285, DW_AT_location[DW_OP_reg9]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$286, DW_AT_location[DW_OP_reg10]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$287, DW_AT_location[DW_OP_reg11]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$288, DW_AT_location[DW_OP_reg12]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$289, DW_AT_location[DW_OP_reg13]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$290, DW_AT_location[DW_OP_reg14]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$291, DW_AT_location[DW_OP_reg15]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$292, DW_AT_location[DW_OP_reg16]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$293, DW_AT_location[DW_OP_reg17]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$294, DW_AT_location[DW_OP_reg18]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$295, DW_AT_location[DW_OP_reg19]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$296, DW_AT_location[DW_OP_reg20]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$297, DW_AT_location[DW_OP_reg21]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$298, DW_AT_location[DW_OP_reg22]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$299, DW_AT_location[DW_OP_reg23]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$300, DW_AT_location[DW_OP_reg24]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$301, DW_AT_location[DW_OP_reg25]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$302, DW_AT_location[DW_OP_reg26]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$303, DW_AT_location[DW_OP_reg27]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$304, DW_AT_location[DW_OP_reg28]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$305, DW_AT_location[DW_OP_reg29]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$306, DW_AT_location[DW_OP_reg30]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$307, DW_AT_location[DW_OP_reg31]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x20]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x21]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x22]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x23]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x24]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x25]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x26]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x27]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU


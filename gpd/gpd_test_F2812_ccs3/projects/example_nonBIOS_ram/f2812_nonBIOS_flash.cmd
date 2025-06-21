/**********************************************************************
* File: f2812.cmd -- Linker command file for Boot to Flash bootmode.
* History: 09/08/03 - original (based on DSP28 header files v1.00, D. Alter)
*          02/14/05 - made consistent with DSP/BIOS linkage allocation (D. Alter)
**********************************************************************/

MEMORY
{
PAGE 0:    /* Program Memory */
   ZONE0       : origin = 0x002000, length = 0x002000     /* XINTF zone 0 */
   ZONE1       : origin = 0x004000, length = 0x002000     /* XINTF zone 1 */
   L0SARAM     : origin = 0x008000, length = 0x001000     /* 4Kw L0 SARAM */
   ZONE2       : origin = 0x080000, length = 0x080000     /* XINTF zone 2 */
   ZONE6       : origin = 0x100000, length = 0x080000     /* XINTF zone 6 */
   OTP         : origin = 0x3D7800, length = 0x000400     /* on-chip OTP */
   FLASH_IJ    : origin = 0x3D8000, length = 0x004000     /* on-chip FLASH */
   FLASH_GH    : origin = 0x3DC000, length = 0x008000     /* on-chip FLASH */
   FLASH_EF    : origin = 0x3E4000, length = 0x008000     /* on-chip FLASH */
   FLASH_CD    : origin = 0x3EC000, length = 0x008000     /* on-chip FLASH */
   FLASH_AB    : origin = 0x3F4000, length = 0x003F80     /* on-chip FLASH */
   CSM_RSVD    : origin = 0x3F7F80, length = 0x000076     /* Part of FLASHA.  Reserved when CSM is in use. */
   BEGIN_FLASH : origin = 0x3F7FF6, length = 0x000002     /* Part of FLASHA.  Used for "boot to flash" bootloader mode. */
   PASSWORDS   : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations. */
   BEGIN_H0    : origin = 0x3F8000, length = 0x000002     /* Part of H0.  Used for "boot to H0" bootloader mode. */
   H0SARAM     : origin = 0x3F8002, length = 0x001FFE     /* 8Kw H0 SARAM */
/*   ZONE7       : origin = 0x3FC000, length = 0x003FC0     /* XINTF zone 7 available if MP/MCn=1 */
   BOOTROM     : origin = 0x3FF000, length = 0x000FC0     /* boot ROM available if MP/MCn=0 */
   RESET       : origin = 0x3FFFC0, length = 0x000002     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */
   VECTORS     : origin = 0x3FFFC2, length = 0x00003E     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */

 PAGE 1 :   /* Data Memory */
   M0SARAM     : origin = 0x000000, length = 0x000400     /* 1Kw M0 SARAM */
   M1SARAM     : origin = 0x000400, length = 0x000400     /* 1Kw M1 SARAM */
   L1SARAM     : origin = 0x009000, length = 0x001000     /* 4Kw L1 SARAM */

}


SECTIONS
{
/*** Compiler Required Sections ***/
  /* Program memory (PAGE 0) sections */
   .text             : > FLASH_AB,         PAGE = 0
   .cinit            : > FLASH_CD,         PAGE = 0
   .const            : > FLASH_CD,         PAGE = 0
   .econst           : > FLASH_CD,         PAGE = 0
   .pinit            : > FLASH_CD,         PAGE = 0
   .reset            : > RESET,            PAGE = 0, TYPE = DSECT  /* We are not using the .reset section */
   .switch           : > FLASH_CD,         PAGE = 0

  /* Data Memory (PAGE 1) sections */
   .bss              : > L1SARAM,          PAGE = 1
   .ebss             : > L1SARAM,          PAGE = 1
   .cio              : > M0SARAM,          PAGE = 1
   .stack            : > M1SARAM,          PAGE = 1
   .sysmem           : > L1SARAM,          PAGE = 1
   .esysmem          : > L1SARAM,          PAGE = 1

/*** User Defined Sections ***/
   codestart         : > BEGIN_FLASH,      PAGE = 0                /* Used by file CodeStartBranch.asm */
   csm_rsvd          : > CSM_RSVD,         PAGE = 0                /* Used by file passwords.asm */
   passwords         : > PASSWORDS,        PAGE = 0                /* Used by file passwords.asm */
   secureRamFuncs    :   LOAD = FLASH_AB,  PAGE = 0                /* Used by InitFlash() in SysCtrl.c */
                         RUN = L0SARAM,    PAGE = 0
                         LOAD_START(_secureRamFuncs_loadstart),
                         LOAD_END(_secureRamFuncs_loadend),
                         RUN_START(_secureRamFuncs_runstart)
   IQmathTables		 :	 LOAD = BOOTROM, type = NOLOAD, PAGE = 0
   IQmath			 : 	 LOAD = FLASH_CD, PAGE = 0
						 LOAD_START(_iqfuncs_loadstart),
						 LOAD_END(_iqfuncs_loadend),
						 RUN_START(iqfuncs_runstart)
}

/******************* end of file ************************/

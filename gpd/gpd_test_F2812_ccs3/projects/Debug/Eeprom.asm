;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Tue Apr  8 10:05:52 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --diag_wrap=off --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\repo\jabil2025\gpb\gpb_project_v3\projects\example_nonBIOS_ram\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit:_crctable"
	.clink
	.align	1
	.field  	-$C$IR_1,16
	.field  	_crctable+0,32
	.bits		0,32
			; _crctable[0] @ 0
	.bits		0x77073096,32
			; _crctable[1] @ 32
	.bits		0xee0e612c,32
			; _crctable[2] @ 64
	.bits		0x990951ba,32
			; _crctable[3] @ 96
	.bits		0x76dc419,32
			; _crctable[4] @ 128
	.bits		0x706af48f,32
			; _crctable[5] @ 160
	.bits		0xe963a535,32
			; _crctable[6] @ 192
	.bits		0x9e6495a3,32
			; _crctable[7] @ 224
	.bits		0xedb8832,32
			; _crctable[8] @ 256
	.bits		0x79dcb8a4,32
			; _crctable[9] @ 288
	.bits		0xe0d5e91e,32
			; _crctable[10] @ 320
	.bits		0x97d2d988,32
			; _crctable[11] @ 352
	.bits		0x9b64c2b,32
			; _crctable[12] @ 384
	.bits		0x7eb17cbd,32
			; _crctable[13] @ 416
	.bits		0xe7b82d07,32
			; _crctable[14] @ 448
	.bits		0x90bf1d91,32
			; _crctable[15] @ 480
	.bits		0x1db71064,32
			; _crctable[16] @ 512
	.bits		0x6ab020f2,32
			; _crctable[17] @ 544
	.bits		0xf3b97148,32
			; _crctable[18] @ 576
	.bits		0x84be41de,32
			; _crctable[19] @ 608
	.bits		0x1adad47d,32
			; _crctable[20] @ 640
	.bits		0x6ddde4eb,32
			; _crctable[21] @ 672
	.bits		0xf4d4b551,32
			; _crctable[22] @ 704
	.bits		0x83d385c7,32
			; _crctable[23] @ 736
	.bits		0x136c9856,32
			; _crctable[24] @ 768
	.bits		0x646ba8c0,32
			; _crctable[25] @ 800
	.bits		0xfd62f97a,32
			; _crctable[26] @ 832
	.bits		0x8a65c9ec,32
			; _crctable[27] @ 864
	.bits		0x14015c4f,32
			; _crctable[28] @ 896
	.bits		0x63066cd9,32
			; _crctable[29] @ 928
	.bits		0xfa0f3d63,32
			; _crctable[30] @ 960
	.bits		0x8d080df5,32
			; _crctable[31] @ 992
	.bits		0x3b6e20c8,32
			; _crctable[32] @ 1024
	.bits		0x4c69105e,32
			; _crctable[33] @ 1056
	.bits		0xd56041e4,32
			; _crctable[34] @ 1088
	.bits		0xa2677172,32
			; _crctable[35] @ 1120
	.bits		0x3c03e4d1,32
			; _crctable[36] @ 1152
	.bits		0x4b04d447,32
			; _crctable[37] @ 1184
	.bits		0xd20d85fd,32
			; _crctable[38] @ 1216
	.bits		0xa50ab56b,32
			; _crctable[39] @ 1248
	.bits		0x35b5a8fa,32
			; _crctable[40] @ 1280
	.bits		0x42b2986c,32
			; _crctable[41] @ 1312
	.bits		0xdbbbc9d6,32
			; _crctable[42] @ 1344
	.bits		0xacbcf940,32
			; _crctable[43] @ 1376
	.bits		0x32d86ce3,32
			; _crctable[44] @ 1408
	.bits		0x45df5c75,32
			; _crctable[45] @ 1440
	.bits		0xdcd60dcf,32
			; _crctable[46] @ 1472
	.bits		0xabd13d59,32
			; _crctable[47] @ 1504
	.bits		0x26d930ac,32
			; _crctable[48] @ 1536
	.bits		0x51de003a,32
			; _crctable[49] @ 1568
	.bits		0xc8d75180,32
			; _crctable[50] @ 1600
	.bits		0xbfd06116,32
			; _crctable[51] @ 1632
	.bits		0x21b4f4b5,32
			; _crctable[52] @ 1664
	.bits		0x56b3c423,32
			; _crctable[53] @ 1696
	.bits		0xcfba9599,32
			; _crctable[54] @ 1728
	.bits		0xb8bda50f,32
			; _crctable[55] @ 1760
	.bits		0x2802b89e,32
			; _crctable[56] @ 1792
	.bits		0x5f058808,32
			; _crctable[57] @ 1824
	.bits		0xc60cd9b2,32
			; _crctable[58] @ 1856
	.bits		0xb10be924,32
			; _crctable[59] @ 1888
	.bits		0x2f6f7c87,32
			; _crctable[60] @ 1920
	.bits		0x58684c11,32
			; _crctable[61] @ 1952
	.bits		0xc1611dab,32
			; _crctable[62] @ 1984
	.bits		0xb6662d3d,32
			; _crctable[63] @ 2016
	.bits		0x76dc4190,32
			; _crctable[64] @ 2048
	.bits		0x1db7106,32
			; _crctable[65] @ 2080
	.bits		0x98d220bc,32
			; _crctable[66] @ 2112
	.bits		0xefd5102a,32
			; _crctable[67] @ 2144
	.bits		0x71b18589,32
			; _crctable[68] @ 2176
	.bits		0x6b6b51f,32
			; _crctable[69] @ 2208
	.bits		0x9fbfe4a5,32
			; _crctable[70] @ 2240
	.bits		0xe8b8d433,32
			; _crctable[71] @ 2272
	.bits		0x7807c9a2,32
			; _crctable[72] @ 2304
	.bits		0xf00f934,32
			; _crctable[73] @ 2336
	.bits		0x9609a88e,32
			; _crctable[74] @ 2368
	.bits		0xe10e9818,32
			; _crctable[75] @ 2400
	.bits		0x7f6a0dbb,32
			; _crctable[76] @ 2432
	.bits		0x86d3d2d,32
			; _crctable[77] @ 2464
	.bits		0x91646c97,32
			; _crctable[78] @ 2496
	.bits		0xe6635c01,32
			; _crctable[79] @ 2528
	.bits		0x6b6b51f4,32
			; _crctable[80] @ 2560
	.bits		0x1c6c6162,32
			; _crctable[81] @ 2592
	.bits		0x856530d8,32
			; _crctable[82] @ 2624
	.bits		0xf262004e,32
			; _crctable[83] @ 2656
	.bits		0x6c0695ed,32
			; _crctable[84] @ 2688
	.bits		0x1b01a57b,32
			; _crctable[85] @ 2720
	.bits		0x8208f4c1,32
			; _crctable[86] @ 2752
	.bits		0xf50fc457,32
			; _crctable[87] @ 2784
	.bits		0x65b0d9c6,32
			; _crctable[88] @ 2816
	.bits		0x12b7e950,32
			; _crctable[89] @ 2848
	.bits		0x8bbeb8ea,32
			; _crctable[90] @ 2880
	.bits		0xfcb9887c,32
			; _crctable[91] @ 2912
	.bits		0x62dd1ddf,32
			; _crctable[92] @ 2944
	.bits		0x15da2d49,32
			; _crctable[93] @ 2976
	.bits		0x8cd37cf3,32
			; _crctable[94] @ 3008
	.bits		0xfbd44c65,32
			; _crctable[95] @ 3040
	.bits		0x4db26158,32
			; _crctable[96] @ 3072
	.bits		0x3ab551ce,32
			; _crctable[97] @ 3104
	.bits		0xa3bc0074,32
			; _crctable[98] @ 3136
	.bits		0xd4bb30e2,32
			; _crctable[99] @ 3168
	.bits		0x4adfa541,32
			; _crctable[100] @ 3200
	.bits		0x3dd895d7,32
			; _crctable[101] @ 3232
	.bits		0xa4d1c46d,32
			; _crctable[102] @ 3264
	.bits		0xd3d6f4fb,32
			; _crctable[103] @ 3296
	.bits		0x4369e96a,32
			; _crctable[104] @ 3328
	.bits		0x346ed9fc,32
			; _crctable[105] @ 3360
	.bits		0xad678846,32
			; _crctable[106] @ 3392
	.bits		0xda60b8d0,32
			; _crctable[107] @ 3424
	.bits		0x44042d73,32
			; _crctable[108] @ 3456
	.bits		0x33031de5,32
			; _crctable[109] @ 3488
	.bits		0xaa0a4c5f,32
			; _crctable[110] @ 3520
	.bits		0xdd0d7cc9,32
			; _crctable[111] @ 3552
	.bits		0x5005713c,32
			; _crctable[112] @ 3584
	.bits		0x270241aa,32
			; _crctable[113] @ 3616
	.bits		0xbe0b1010,32
			; _crctable[114] @ 3648
	.bits		0xc90c2086,32
			; _crctable[115] @ 3680
	.bits		0x5768b525,32
			; _crctable[116] @ 3712
	.bits		0x206f85b3,32
			; _crctable[117] @ 3744
	.bits		0xb966d409,32
			; _crctable[118] @ 3776
	.bits		0xce61e49f,32
			; _crctable[119] @ 3808
	.bits		0x5edef90e,32
			; _crctable[120] @ 3840
	.bits		0x29d9c998,32
			; _crctable[121] @ 3872
	.bits		0xb0d09822,32
			; _crctable[122] @ 3904
	.bits		0xc7d7a8b4,32
			; _crctable[123] @ 3936
	.bits		0x59b33d17,32
			; _crctable[124] @ 3968
	.bits		0x2eb40d81,32
			; _crctable[125] @ 4000
	.bits		0xb7bd5c3b,32
			; _crctable[126] @ 4032
	.bits		0xc0ba6cad,32
			; _crctable[127] @ 4064
	.bits		0xedb88320,32
			; _crctable[128] @ 4096
	.bits		0x9abfb3b6,32
			; _crctable[129] @ 4128
	.bits		0x3b6e20c,32
			; _crctable[130] @ 4160
	.bits		0x74b1d29a,32
			; _crctable[131] @ 4192
	.bits		0xead54739,32
			; _crctable[132] @ 4224
	.bits		0x9dd277af,32
			; _crctable[133] @ 4256
	.bits		0x4db2615,32
			; _crctable[134] @ 4288
	.bits		0x73dc1683,32
			; _crctable[135] @ 4320
	.bits		0xe3630b12,32
			; _crctable[136] @ 4352
	.bits		0x94643b84,32
			; _crctable[137] @ 4384
	.bits		0xd6d6a3e,32
			; _crctable[138] @ 4416
	.bits		0x7a6a5aa8,32
			; _crctable[139] @ 4448
	.bits		0xe40ecf0b,32
			; _crctable[140] @ 4480
	.bits		0x9309ff9d,32
			; _crctable[141] @ 4512
	.bits		0xa00ae27,32
			; _crctable[142] @ 4544
	.bits		0x7d079eb1,32
			; _crctable[143] @ 4576
	.bits		0xf00f9344,32
			; _crctable[144] @ 4608
	.bits		0x8708a3d2,32
			; _crctable[145] @ 4640
	.bits		0x1e01f268,32
			; _crctable[146] @ 4672
	.bits		0x6906c2fe,32
			; _crctable[147] @ 4704
	.bits		0xf762575d,32
			; _crctable[148] @ 4736
	.bits		0x806567cb,32
			; _crctable[149] @ 4768
	.bits		0x196c3671,32
			; _crctable[150] @ 4800
	.bits		0x6e6b06e7,32
			; _crctable[151] @ 4832
	.bits		0xfed41b76,32
			; _crctable[152] @ 4864
	.bits		0x89d32be0,32
			; _crctable[153] @ 4896
	.bits		0x10da7a5a,32
			; _crctable[154] @ 4928
	.bits		0x67dd4acc,32
			; _crctable[155] @ 4960
	.bits		0xf9b9df6f,32
			; _crctable[156] @ 4992
	.bits		0x8ebeeff9,32
			; _crctable[157] @ 5024
	.bits		0x17b7be43,32
			; _crctable[158] @ 5056
	.bits		0x60b08ed5,32
			; _crctable[159] @ 5088
	.bits		0xd6d6a3e8,32
			; _crctable[160] @ 5120
	.bits		0xa1d1937e,32
			; _crctable[161] @ 5152
	.bits		0x38d8c2c4,32
			; _crctable[162] @ 5184
	.bits		0x4fdff252,32
			; _crctable[163] @ 5216
	.bits		0xd1bb67f1,32
			; _crctable[164] @ 5248
	.bits		0xa6bc5767,32
			; _crctable[165] @ 5280
	.bits		0x3fb506dd,32
			; _crctable[166] @ 5312
	.bits		0x48b2364b,32
			; _crctable[167] @ 5344
	.bits		0xd80d2bda,32
			; _crctable[168] @ 5376
	.bits		0xaf0a1b4c,32
			; _crctable[169] @ 5408
	.bits		0x36034af6,32
			; _crctable[170] @ 5440
	.bits		0x41047a60,32
			; _crctable[171] @ 5472
	.bits		0xdf60efc3,32
			; _crctable[172] @ 5504
	.bits		0xa867df55,32
			; _crctable[173] @ 5536
	.bits		0x316e8eef,32
			; _crctable[174] @ 5568
	.bits		0x4669be79,32
			; _crctable[175] @ 5600
	.bits		0xcb61b38c,32
			; _crctable[176] @ 5632
	.bits		0xbc66831a,32
			; _crctable[177] @ 5664
	.bits		0x256fd2a0,32
			; _crctable[178] @ 5696
	.bits		0x5268e236,32
			; _crctable[179] @ 5728
	.bits		0xcc0c7795,32
			; _crctable[180] @ 5760
	.bits		0xbb0b4703,32
			; _crctable[181] @ 5792
	.bits		0x220216b9,32
			; _crctable[182] @ 5824
	.bits		0x5505262f,32
			; _crctable[183] @ 5856
	.bits		0xc5ba3bbe,32
			; _crctable[184] @ 5888
	.bits		0xb2bd0b28,32
			; _crctable[185] @ 5920
	.bits		0x2bb45a92,32
			; _crctable[186] @ 5952
	.bits		0x5cb36a04,32
			; _crctable[187] @ 5984
	.bits		0xc2d7ffa7,32
			; _crctable[188] @ 6016
	.bits		0xb5d0cf31,32
			; _crctable[189] @ 6048
	.bits		0x2cd99e8b,32
			; _crctable[190] @ 6080
	.bits		0x5bdeae1d,32
			; _crctable[191] @ 6112
	.bits		0x9b64c2b0,32
			; _crctable[192] @ 6144
	.bits		0xec63f226,32
			; _crctable[193] @ 6176
	.bits		0x756aa39c,32
			; _crctable[194] @ 6208
	.bits		0x26d930a,32
			; _crctable[195] @ 6240
	.bits		0x9c0906a9,32
			; _crctable[196] @ 6272
	.bits		0xeb0e363f,32
			; _crctable[197] @ 6304
	.bits		0x72076785,32
			; _crctable[198] @ 6336
	.bits		0x5005713,32
			; _crctable[199] @ 6368
	.bits		0x95bf4a82,32
			; _crctable[200] @ 6400
	.bits		0xe2b87a14,32
			; _crctable[201] @ 6432
	.bits		0x7bb12bae,32
			; _crctable[202] @ 6464
	.bits		0xcb61b38,32
			; _crctable[203] @ 6496
	.bits		0x92d28e9b,32
			; _crctable[204] @ 6528
	.bits		0xe5d5be0d,32
			; _crctable[205] @ 6560
	.bits		0x7cdcefb7,32
			; _crctable[206] @ 6592
	.bits		0xbdbdf21,32
			; _crctable[207] @ 6624
	.bits		0x86d3d2d4,32
			; _crctable[208] @ 6656
	.bits		0xf1d4e242,32
			; _crctable[209] @ 6688
	.bits		0x68ddb3f8,32
			; _crctable[210] @ 6720
	.bits		0x1fda836e,32
			; _crctable[211] @ 6752
	.bits		0x81be16cd,32
			; _crctable[212] @ 6784
	.bits		0xf6b9265b,32
			; _crctable[213] @ 6816
	.bits		0x6fb077e1,32
			; _crctable[214] @ 6848
	.bits		0x18b74777,32
			; _crctable[215] @ 6880
	.bits		0x88085ae6,32
			; _crctable[216] @ 6912
	.bits		0xff0f6a70,32
			; _crctable[217] @ 6944
	.bits		0x66063bca,32
			; _crctable[218] @ 6976
	.bits		0x11010b5c,32
			; _crctable[219] @ 7008
	.bits		0x8f659eff,32
			; _crctable[220] @ 7040
	.bits		0xf862ae69,32
			; _crctable[221] @ 7072
	.bits		0x616bffd3,32
			; _crctable[222] @ 7104
	.bits		0x166ccf45,32
			; _crctable[223] @ 7136
	.bits		0xa00ae278,32
			; _crctable[224] @ 7168
	.bits		0xd70dd2ee,32
			; _crctable[225] @ 7200
	.bits		0x4e048354,32
			; _crctable[226] @ 7232
	.bits		0x3903b3c2,32
			; _crctable[227] @ 7264
	.bits		0xa7672661,32
			; _crctable[228] @ 7296
	.bits		0xd06016f7,32
			; _crctable[229] @ 7328
	.bits		0x4969474d,32
			; _crctable[230] @ 7360
	.bits		0x3e6e77db,32
			; _crctable[231] @ 7392
	.bits		0xaed16a4a,32
			; _crctable[232] @ 7424
	.bits		0xd9d65adc,32
			; _crctable[233] @ 7456
	.bits		0x40df0b66,32
			; _crctable[234] @ 7488
	.bits		0x37d83bf0,32
			; _crctable[235] @ 7520
	.bits		0xa9bcae53,32
			; _crctable[236] @ 7552
	.bits		0xdebb9ec5,32
			; _crctable[237] @ 7584
	.bits		0x47b2cf7f,32
			; _crctable[238] @ 7616
	.bits		0x30b5ffe9,32
			; _crctable[239] @ 7648
	.bits		0xbdbdf21c,32
			; _crctable[240] @ 7680
	.bits		0xcabac28a,32
			; _crctable[241] @ 7712
	.bits		0x53b39330,32
			; _crctable[242] @ 7744
	.bits		0x24b4a3a6,32
			; _crctable[243] @ 7776
	.bits		0xbad03605,32
			; _crctable[244] @ 7808
	.bits		0xcdd70693,32
			; _crctable[245] @ 7840
	.bits		0x54de5729,32
			; _crctable[246] @ 7872
	.bits		0x23d967bf,32
			; _crctable[247] @ 7904
	.bits		0xb3667a2e,32
			; _crctable[248] @ 7936
	.bits		0xc4614ab8,32
			; _crctable[249] @ 7968
	.bits		0x5d681b02,32
			; _crctable[250] @ 8000
	.bits		0x2a6f2b94,32
			; _crctable[251] @ 8032
	.bits		0xb40bbe37,32
			; _crctable[252] @ 8064
	.bits		0xc30c8ea1,32
			; _crctable[253] @ 8096
	.bits		0x5a05df1b,32
			; _crctable[254] @ 8128
	.bits		0x2d02ef8d,32
			; _crctable[255] @ 8160
$C$IR_1:	.set	512


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SpiTxNotReady")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SpiTxNotReady")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("ConfigSpi")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_ConfigSpi")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("TxSpi")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_TxSpi")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("SpiRxNotReady")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SpiRxNotReady")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("RxSpi")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_RxSpi")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("FormatSpiTxWord")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_FormatSpiTxWord")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwendtag $C$DW$6

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external

_crctable:	.usect	".ebss:_crctable",512,1,1
	.clink ".ebss:_crctable"
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("crctable")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_crctable")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _crctable]

	.sblock	".ebss:_crctable"
;	C:\ti\ccs1281\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\ac2000.exe -@C:\\Users\\fgjlb01\\AppData\\Local\\Temp\\{E8820A66-90CC-4120-90F8-934A1CEA4067} 
	.sect	".text"
	.clink
	.global	_ConfigEepromInterface

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("ConfigEepromInterface")
	.dwattr $C$DW$9, DW_AT_low_pc(_ConfigEepromInterface)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_ConfigEepromInterface")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x29)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 42,column 1,is_stmt,address _ConfigEepromInterface,isa 0

	.dwfde $C$DW$CIE, _ConfigEepromInterface
;----------------------------------------------------------------------
;  41 | void ConfigEepromInterface(void)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigEepromInterface        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigEepromInterface:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 43,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  43 | if(SpiTxNotReady()) {                                                  
;----------------------------------------------------------------------
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("_SpiTxNotReady")
	.dwattr $C$DW$10, DW_AT_TI_call

        LCR       #_SpiTxNotReady       ; [CPU_ALU] |43| 
        ; call occurs [#_SpiTxNotReady] ; [] |43| 
        CMPB      AL,#0                 ; [CPU_ALU] |43| 
        B         $C$L2,EQ              ; [CPU_ALU] |43| 
        ; branchcc occurs ; [] |43| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 44,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | while(SpiTxNotReady()) {}       /* Wait for any pending transmission */
;----------------------------------------------------------------------
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("_SpiTxNotReady")
	.dwattr $C$DW$11, DW_AT_TI_call

        LCR       #_SpiTxNotReady       ; [CPU_ALU] |44| 
        ; call occurs [#_SpiTxNotReady] ; [] |44| 
        CMPB      AL,#0                 ; [CPU_ALU] |44| 
        B         $C$L2,EQ              ; [CPU_ALU] |44| 
        ; branchcc occurs ; [] |44| 
$C$L1:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 44,column 27,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_SpiTxNotReady")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_SpiTxNotReady       ; [CPU_ALU] |44| 
        ; call occurs [#_SpiTxNotReady] ; [] |44| 
        CMPB      AL,#0                 ; [CPU_ALU] |44| 
        B         $C$L1,NEQ             ; [CPU_ALU] |44| 
        ; branchcc occurs ; [] |44| 
$C$L2:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 48,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | ConfigSpi(0, 8); /* Configure SPI Bus for 8-bit words; Tx on Falling CL
;     | K Edge */                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |48| 
        MOVB      AH,#8                 ; [CPU_ALU] |48| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("_ConfigSpi")
	.dwattr $C$DW$13, DW_AT_TI_call

        LCR       #_ConfigSpi           ; [CPU_ALU] |48| 
        ; call occurs [#_ConfigSpi] ; [] |48| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 50,column 1,is_stmt,isa 0
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.global	_DevNotReady

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("DevNotReady")
	.dwattr $C$DW$15, DW_AT_low_pc(_DevNotReady)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_DevNotReady")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 69,column 1,is_stmt,address _DevNotReady,isa 0

	.dwfde $C$DW$CIE, _DevNotReady
;----------------------------------------------------------------------
;  68 | Uint16 DevNotReady(void)                                               
;  70 | Uint16 Sts;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DevNotReady                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_DevNotReady:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("Sts")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_Sts")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | Sts = EepromReadStatus();                                              
;----------------------------------------------------------------------
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_EepromReadStatus")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_EepromReadStatus    ; [CPU_ALU] |72| 
        ; call occurs [#_EepromReadStatus] ; [] |72| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |72| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 74,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | return (Sts & 0x01);                                                   
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x0001    ; [CPU_ALU] |74| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 76,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.global	_EepromReadStatus

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("EepromReadStatus")
	.dwattr $C$DW$19, DW_AT_low_pc(_EepromReadStatus)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_EepromReadStatus")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 94,column 1,is_stmt,address _EepromReadStatus,isa 0

	.dwfde $C$DW$CIE, _EepromReadStatus
;----------------------------------------------------------------------
;  93 | Uint16 EepromReadStatus(void)                                          
;  95 | Uint16 RetVal, DataOut;                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromReadStatus             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_EepromReadStatus:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("RetVal")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -1]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("DataOut")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_DataOut")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -2]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | DataOut = (RDSR << 8);                                                 
;----------------------------------------------------------------------
        MOV       *-SP[2],#1280         ; [CPU_ALU] |96| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;   /* Assert EEPROM CS */         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0008 ; [CPU_ALU] |98| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | TxSpi(DataOut);                                                 /* Tran
;     | smit RDSR Cmnd to EEPROM */                                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |99| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_TxSpi")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |99| 
        ; call occurs [#_TxSpi] ; [] |99| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 100,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | while(SpiRxNotReady()) {}                               /* wait for tra
;     | nsmission to complete */                                               
;----------------------------------------------------------------------
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |100| 
        ; call occurs [#_SpiRxNotReady] ; [] |100| 
        CMPB      AL,#0                 ; [CPU_ALU] |100| 
        B         $C$L4,EQ              ; [CPU_ALU] |100| 
        ; branchcc occurs ; [] |100| 
$C$L3:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 100,column 26,is_stmt,isa 0
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |100| 
        ; call occurs [#_SpiRxNotReady] ; [] |100| 
        CMPB      AL,#0                 ; [CPU_ALU] |100| 
        B         $C$L3,NEQ             ; [CPU_ALU] |100| 
        ; branchcc occurs ; [] |100| 
$C$L4:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 101,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | RetVal = RxSpi();                                               /* Firs
;     | t read is dummy read to clear Int-Flag */                              
;----------------------------------------------------------------------
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_RxSpi")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |101| 
        ; call occurs [#_RxSpi] ; [] |101| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |101| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | TxSpi(0x00);                                                    /* perf
;     | orm dummy write to fetch Status from EEPROM */                         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |102| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_TxSpi")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |102| 
        ; call occurs [#_TxSpi] ; [] |102| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | while(SpiRxNotReady()) {}                               /* wait for tra
;     | nsmission to complete */                                               
;----------------------------------------------------------------------
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |103| 
        ; call occurs [#_SpiRxNotReady] ; [] |103| 
        CMPB      AL,#0                 ; [CPU_ALU] |103| 
        B         $C$L6,EQ              ; [CPU_ALU] |103| 
        ; branchcc occurs ; [] |103| 
$C$L5:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 103,column 26,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |103| 
        ; call occurs [#_SpiRxNotReady] ; [] |103| 
        CMPB      AL,#0                 ; [CPU_ALU] |103| 
        B         $C$L5,NEQ             ; [CPU_ALU] |103| 
        ; branchcc occurs ; [] |103| 
$C$L6:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | RetVal = RxSpi();                                               /* Read
;     |  EEPROM Status byte */                                                 
;----------------------------------------------------------------------
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_RxSpi")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |104| 
        ; call occurs [#_RxSpi] ; [] |104| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |104| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             /* De-Assert EEPROM CS
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |105| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | return (RetVal & 0xff);                                                
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x00ff    ; [CPU_ALU] |107| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 109,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.global	_EepromWriteStatus

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("EepromWriteStatus")
	.dwattr $C$DW$31, DW_AT_low_pc(_EepromWriteStatus)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_EepromWriteStatus")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 129,column 1,is_stmt,address _EepromWriteStatus,isa 0

	.dwfde $C$DW$CIE, _EepromWriteStatus
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("Data")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 128 | void EepromWriteStatus(Uint16 Data)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromWriteStatus            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_EepromWriteStatus:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("Data")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |129| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 131,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;   /* Assert EEPROM CS */         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0008 ; [CPU_ALU] |131| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 132,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | TxSpi(FormatSpiTxWord(WRSR, 8));                /* Transmit WRSR Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |132| 
        MOVB      AL,#1                 ; [CPU_ALU] |132| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |132| 
        ; call occurs [#_FormatSpiTxWord] ; [] |132| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_TxSpi")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |132| 
        ; call occurs [#_TxSpi] ; [] |132| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 133,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 133 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |133| 
        ; call occurs [#_SpiRxNotReady] ; [] |133| 
        CMPB      AL,#0                 ; [CPU_ALU] |133| 
        B         $C$L8,EQ              ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
$C$L7:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 133,column 26,is_stmt,isa 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |133| 
        ; call occurs [#_SpiRxNotReady] ; [] |133| 
        CMPB      AL,#0                 ; [CPU_ALU] |133| 
        B         $C$L7,NEQ             ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
$C$L8:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 134,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_RxSpi")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |134| 
        ; call occurs [#_RxSpi] ; [] |134| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | TxSpi(FormatSpiTxWord(Data, 8));                /* Transmit Status Data
;     |  to EEPROM */                                                          
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |135| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |135| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |135| 
        ; call occurs [#_FormatSpiTxWord] ; [] |135| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_TxSpi")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |135| 
        ; call occurs [#_TxSpi] ; [] |135| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 136,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 136 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |136| 
        ; call occurs [#_SpiRxNotReady] ; [] |136| 
        CMPB      AL,#0                 ; [CPU_ALU] |136| 
        B         $C$L10,EQ             ; [CPU_ALU] |136| 
        ; branchcc occurs ; [] |136| 
$C$L9:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 136,column 26,is_stmt,isa 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |136| 
        ; call occurs [#_SpiRxNotReady] ; [] |136| 
        CMPB      AL,#0                 ; [CPU_ALU] |136| 
        B         $C$L9,NEQ             ; [CPU_ALU] |136| 
        ; branchcc occurs ; [] |136| 
$C$L10:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 137,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_RxSpi")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |137| 
        ; call occurs [#_RxSpi] ; [] |137| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 138,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             /* De-Assert EEPROM CS
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |138| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 140,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x8c)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.clink
	.global	_EepromWriteEnable

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("EepromWriteEnable")
	.dwattr $C$DW$45, DW_AT_low_pc(_EepromWriteEnable)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_EepromWriteEnable")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x9e)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 159,column 1,is_stmt,address _EepromWriteEnable,isa 0

	.dwfde $C$DW$CIE, _EepromWriteEnable
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("State")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_State")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 158 | void EepromWriteEnable(Uint16 State)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromWriteEnable            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_EepromWriteEnable:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("State")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_State")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |159| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 161,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;   /* Assert EEPROM CS */         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0008 ; [CPU_ALU] |161| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | if(State) {                                                            
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_ALU] |162| 
        B         $C$L11,EQ             ; [CPU_ALU] |162| 
        ; branchcc occurs ; [] |162| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 163,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | TxSpi(FormatSpiTxWord(WREN, 8));                                       
; 165 | else {                                                                 
;----------------------------------------------------------------------
        MOVB      AL,#6                 ; [CPU_ALU] |163| 
        MOVB      AH,#8                 ; [CPU_ALU] |163| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |163| 
        ; call occurs [#_FormatSpiTxWord] ; [] |163| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_TxSpi")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |163| 
        ; call occurs [#_TxSpi] ; [] |163| 
        B         $C$L12,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L11:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 166,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | TxSpi(FormatSpiTxWord(WRDI, 8));                                       
;----------------------------------------------------------------------
        MOVB      AL,#4                 ; [CPU_ALU] |166| 
        MOVB      AH,#8                 ; [CPU_ALU] |166| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |166| 
        ; call occurs [#_FormatSpiTxWord] ; [] |166| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_TxSpi")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |166| 
        ; call occurs [#_TxSpi] ; [] |166| 
$C$L12:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 169,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |169| 
        ; call occurs [#_SpiRxNotReady] ; [] |169| 
        CMPB      AL,#0                 ; [CPU_ALU] |169| 
        B         $C$L14,EQ             ; [CPU_ALU] |169| 
        ; branchcc occurs ; [] |169| 
$C$L13:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 169,column 26,is_stmt,isa 0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |169| 
        ; call occurs [#_SpiRxNotReady] ; [] |169| 
        CMPB      AL,#0                 ; [CPU_ALU] |169| 
        B         $C$L13,NEQ            ; [CPU_ALU] |169| 
        ; branchcc occurs ; [] |169| 
$C$L14:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 170,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_RxSpi")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |170| 
        ; call occurs [#_RxSpi] ; [] |170| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 171,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             /* De-Assert EEPROM CS
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |171| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 173,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0xad)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.clink
	.global	_EepromWriteByte

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("EepromWriteByte")
	.dwattr $C$DW$56, DW_AT_low_pc(_EepromWriteByte)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_EepromWriteByte")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 193,column 1,is_stmt,address _EepromWriteByte,isa 0

	.dwfde $C$DW$CIE, _EepromWriteByte
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("Addr")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("Data")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 192 | void EepromWriteByte(Uint16 Addr, Uint16 Data)                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromWriteByte              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_EepromWriteByte:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("Addr")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -1]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("Data")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[2],AH            ; [CPU_ALU] |193| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |193| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 195,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | while(DevNotReady()) {}                                 /* If Write in
;     | Process; wait */                                                       
;----------------------------------------------------------------------
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_DevNotReady")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_DevNotReady         ; [CPU_ALU] |195| 
        ; call occurs [#_DevNotReady] ; [] |195| 
        CMPB      AL,#0                 ; [CPU_ALU] |195| 
        B         $C$L16,EQ             ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
$C$L15:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 195,column 24,is_stmt,isa 0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_DevNotReady")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_DevNotReady         ; [CPU_ALU] |195| 
        ; call occurs [#_DevNotReady] ; [] |195| 
        CMPB      AL,#0                 ; [CPU_ALU] |195| 
        B         $C$L15,NEQ            ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
$C$L16:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 197,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | EepromWriteEnable(TRUE);                                               
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |197| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_EepromWriteEnable")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_EepromWriteEnable   ; [CPU_ALU] |197| 
        ; call occurs [#_EepromWriteEnable] ; [] |197| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 199,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;   /* Assert EEPROM CS */         
;----------------------------------------------------------------------
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0008 ; [CPU_ALU] |199| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 200,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | TxSpi(FormatSpiTxWord(WRITE, 8));               /* Transmit WRSR Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_ALU] |200| 
        MOVB      AH,#8                 ; [CPU_ALU] |200| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |200| 
        ; call occurs [#_FormatSpiTxWord] ; [] |200| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_TxSpi")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |200| 
        ; call occurs [#_TxSpi] ; [] |200| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 201,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |201| 
        ; call occurs [#_SpiRxNotReady] ; [] |201| 
        CMPB      AL,#0                 ; [CPU_ALU] |201| 
        B         $C$L18,EQ             ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
$C$L17:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 201,column 26,is_stmt,isa 0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |201| 
        ; call occurs [#_SpiRxNotReady] ; [] |201| 
        CMPB      AL,#0                 ; [CPU_ALU] |201| 
        B         $C$L17,NEQ            ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
$C$L18:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_RxSpi")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |202| 
        ; call occurs [#_RxSpi] ; [] |202| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 203,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr
;     | Byte to EEPROM */                                                      
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0xff00    ; [CPU_ALU] |203| 
        MOVB      AH,#8                 ; [CPU_ALU] |203| 
        LSR       AL,8                  ; [CPU_ALU] |203| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |203| 
        ; call occurs [#_FormatSpiTxWord] ; [] |203| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_TxSpi")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |203| 
        ; call occurs [#_TxSpi] ; [] |203| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |204| 
        ; call occurs [#_SpiRxNotReady] ; [] |204| 
        CMPB      AL,#0                 ; [CPU_ALU] |204| 
        B         $C$L20,EQ             ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
$C$L19:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 204,column 26,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |204| 
        ; call occurs [#_SpiRxNotReady] ; [] |204| 
        CMPB      AL,#0                 ; [CPU_ALU] |204| 
        B         $C$L19,NEQ            ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
$C$L20:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_RxSpi")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |205| 
        ; call occurs [#_RxSpi] ; [] |205| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 206,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 206 | TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to
;     | EEPROM */                                                              
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |206| 
        AND       AL,*-SP[1],#0x00ff    ; [CPU_ALU] |206| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |206| 
        ; call occurs [#_FormatSpiTxWord] ; [] |206| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_TxSpi")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |206| 
        ; call occurs [#_TxSpi] ; [] |206| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 207,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 207 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |207| 
        ; call occurs [#_SpiRxNotReady] ; [] |207| 
        CMPB      AL,#0                 ; [CPU_ALU] |207| 
        B         $C$L22,EQ             ; [CPU_ALU] |207| 
        ; branchcc occurs ; [] |207| 
$C$L21:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 207,column 26,is_stmt,isa 0
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |207| 
        ; call occurs [#_SpiRxNotReady] ; [] |207| 
        CMPB      AL,#0                 ; [CPU_ALU] |207| 
        B         $C$L21,NEQ            ; [CPU_ALU] |207| 
        ; branchcc occurs ; [] |207| 
$C$L22:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 208,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_RxSpi")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |208| 
        ; call occurs [#_RxSpi] ; [] |208| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 209,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | TxSpi(FormatSpiTxWord((Data & 0xff), 8)); /* Transmit Data Byte to EEPR
;     | OM */                                                                  
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |209| 
        AND       AL,*-SP[2],#0x00ff    ; [CPU_ALU] |209| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |209| 
        ; call occurs [#_FormatSpiTxWord] ; [] |209| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_TxSpi")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |209| 
        ; call occurs [#_TxSpi] ; [] |209| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 210,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |210| 
        ; call occurs [#_SpiRxNotReady] ; [] |210| 
        CMPB      AL,#0                 ; [CPU_ALU] |210| 
        B         $C$L24,EQ             ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
$C$L23:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 210,column 26,is_stmt,isa 0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |210| 
        ; call occurs [#_SpiRxNotReady] ; [] |210| 
        CMPB      AL,#0                 ; [CPU_ALU] |210| 
        B         $C$L23,NEQ            ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
$C$L24:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 211,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | RxSpi();
;     |  /* Clear RX interrupt flag */                                         
;----------------------------------------------------------------------
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_RxSpi")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |211| 
        ; call occurs [#_RxSpi] ; [] |211| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 212,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             /* De-Assert EEPROM CS
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |212| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 214,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.global	_EepromReadByte

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("EepromReadByte")
	.dwattr $C$DW$85, DW_AT_low_pc(_EepromReadByte)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_EepromReadByte")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0xe8)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 233,column 1,is_stmt,address _EepromReadByte,isa 0

	.dwfde $C$DW$CIE, _EepromReadByte
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("Addr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 232 | Uint16 EepromReadByte(Uint16 Addr)                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromReadByte               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_EepromReadByte:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("Addr")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_Addr")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -1]

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("DataRet")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_DataRet")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 234 | Uint16 DataRet;                                                        
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; [CPU_ALU] |233| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 236,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | while(DevNotReady()) {}                                 /* If Write in
;     | Process; wait */                                                       
;----------------------------------------------------------------------
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_DevNotReady")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #_DevNotReady         ; [CPU_ALU] |236| 
        ; call occurs [#_DevNotReady] ; [] |236| 
        CMPB      AL,#0                 ; [CPU_ALU] |236| 
        B         $C$L26,EQ             ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
$C$L25:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 236,column 24,is_stmt,isa 0
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_DevNotReady")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #_DevNotReady         ; [CPU_ALU] |236| 
        ; call occurs [#_DevNotReady] ; [] |236| 
        CMPB      AL,#0                 ; [CPU_ALU] |236| 
        B         $C$L25,NEQ            ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
$C$L26:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 238,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | GpioDataRegs.GPFCLEAR.bit.GPIOF3 = 1;   /* Assert EEPROM CS */         
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+22  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+22,#0x0008 ; [CPU_ALU] |238| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 239,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | TxSpi(FormatSpiTxWord(READ, 8));                /* Transmit READ Cmnd t
;     | o EEPROM */                                                            
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_ALU] |239| 
        MOVB      AH,#8                 ; [CPU_ALU] |239| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |239| 
        ; call occurs [#_FormatSpiTxWord] ; [] |239| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_TxSpi")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |239| 
        ; call occurs [#_TxSpi] ; [] |239| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 240,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |240| 
        ; call occurs [#_SpiRxNotReady] ; [] |240| 
        CMPB      AL,#0                 ; [CPU_ALU] |240| 
        B         $C$L28,EQ             ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
$C$L27:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 240,column 26,is_stmt,isa 0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |240| 
        ; call occurs [#_SpiRxNotReady] ; [] |240| 
        CMPB      AL,#0                 ; [CPU_ALU] |240| 
        B         $C$L27,NEQ            ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
$C$L28:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 241,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_RxSpi")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |241| 
        ; call occurs [#_RxSpi] ; [] |241| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |241| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 242,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | TxSpi(FormatSpiTxWord(((Addr >> 8) & 0xff), 8)); /* Transmit High Addr
;     | Byte to EEPROM */                                                      
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |242| 
        AND       AL,*-SP[1],#0xff00    ; [CPU_ALU] |242| 
        LSR       AL,8                  ; [CPU_ALU] |242| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |242| 
        ; call occurs [#_FormatSpiTxWord] ; [] |242| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_TxSpi")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |242| 
        ; call occurs [#_TxSpi] ; [] |242| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 243,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |243| 
        ; call occurs [#_SpiRxNotReady] ; [] |243| 
        CMPB      AL,#0                 ; [CPU_ALU] |243| 
        B         $C$L30,EQ             ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
$C$L29:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 243,column 26,is_stmt,isa 0
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |243| 
        ; call occurs [#_SpiRxNotReady] ; [] |243| 
        CMPB      AL,#0                 ; [CPU_ALU] |243| 
        B         $C$L29,NEQ            ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
$C$L30:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 244,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_RxSpi")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |244| 
        ; call occurs [#_RxSpi] ; [] |244| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |244| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 245,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | TxSpi(FormatSpiTxWord((Addr & 0xff), 8)); /* Transmit Low Addr Byte to
;     | EEPROM */                                                              
;----------------------------------------------------------------------
        MOVB      AH,#8                 ; [CPU_ALU] |245| 
        AND       AL,*-SP[1],#0x00ff    ; [CPU_ALU] |245| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_FormatSpiTxWord")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_FormatSpiTxWord     ; [CPU_ALU] |245| 
        ; call occurs [#_FormatSpiTxWord] ; [] |245| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_TxSpi")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |245| 
        ; call occurs [#_TxSpi] ; [] |245| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 246,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |246| 
        ; call occurs [#_SpiRxNotReady] ; [] |246| 
        CMPB      AL,#0                 ; [CPU_ALU] |246| 
        B         $C$L32,EQ             ; [CPU_ALU] |246| 
        ; branchcc occurs ; [] |246| 
$C$L31:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 246,column 26,is_stmt,isa 0
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |246| 
        ; call occurs [#_SpiRxNotReady] ; [] |246| 
        CMPB      AL,#0                 ; [CPU_ALU] |246| 
        B         $C$L31,NEQ            ; [CPU_ALU] |246| 
        ; branchcc occurs ; [] |246| 
$C$L32:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 247,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_RxSpi")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |247| 
        ; call occurs [#_RxSpi] ; [] |247| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |247| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 248,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | TxSpi(0x00);                                                    /* Tran
;     | smit dummy data to EEPROM */                                           
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |248| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_TxSpi")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_TxSpi               ; [CPU_ALU] |248| 
        ; call occurs [#_TxSpi] ; [] |248| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 249,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 249 | while(SpiRxNotReady()) {}                               /* wait for dat
;     | a reception */                                                         
;----------------------------------------------------------------------
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |249| 
        ; call occurs [#_SpiRxNotReady] ; [] |249| 
        CMPB      AL,#0                 ; [CPU_ALU] |249| 
        B         $C$L34,EQ             ; [CPU_ALU] |249| 
        ; branchcc occurs ; [] |249| 
$C$L33:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 249,column 26,is_stmt,isa 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_SpiRxNotReady")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_SpiRxNotReady       ; [CPU_ALU] |249| 
        ; call occurs [#_SpiRxNotReady] ; [] |249| 
        CMPB      AL,#0                 ; [CPU_ALU] |249| 
        B         $C$L33,NEQ            ; [CPU_ALU] |249| 
        ; branchcc occurs ; [] |249| 
$C$L34:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 250,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | DataRet = RxSpi();                                              /* Clea
;     | r RX interrupt flag */                                                 
;----------------------------------------------------------------------
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_RxSpi")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_RxSpi               ; [CPU_ALU] |250| 
        ; call occurs [#_RxSpi] ; [] |250| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |250| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 251,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | GpioDataRegs.GPFSET.bit.GPIOF3 = 1;             /* De-Assert EEPROM CS
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_GpioDataRegs+21  ; [CPU_ARAU] 
        OR        @$BLOCKED(_GpioDataRegs)+21,#0x0008 ; [CPU_ALU] |251| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 253,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | return (DataRet & 0xff);                                               
;----------------------------------------------------------------------
        AND       AL,*-SP[2],#0x00ff    ; [CPU_ALU] |253| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 255,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text"
	.clink
	.global	_EepromTest

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("EepromTest")
	.dwattr $C$DW$111, DW_AT_low_pc(_EepromTest)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_EepromTest")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 278,column 1,is_stmt,address _EepromTest,isa 0

	.dwfde $C$DW$CIE, _EepromTest
;----------------------------------------------------------------------
; 277 | Uint16 EepromTest(void)                                                
; 279 | Uint16 idx;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _EepromTest                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

_EepromTest:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("Sum")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_Sum")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -2]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("idx")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -3]

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("Datum")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_Datum")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -4]

$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("ErrCnt")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_ErrCnt")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -5]

	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 280,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | int Datum = -1;                                                        
;----------------------------------------------------------------------
        MOV       *-SP[4],#-1           ; [CPU_ALU] |280| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 281,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | Uint16 ErrCnt = 0;                                                     
;----------------------------------------------------------------------
        MOV       *-SP[5],#0            ; [CPU_ALU] |281| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 282,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | Uint32 Sum = 0;                                                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |282| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |282| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 284,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 284 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |284| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 284,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |284| 
        CMP       AL,#8192              ; [CPU_ALU] |284| 
        B         $C$L37,HIS            ; [CPU_ALU] |284| 
        ; branchcc occurs ; [] |284| 
$C$L35:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 285,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 285 | if(!(idx % 32))                                                        
;----------------------------------------------------------------------
        ANDB      AL,#0x1f              ; [CPU_ALU] |285| 
        B         $C$L36,NEQ            ; [CPU_ALU] |285| 
        ; branchcc occurs ; [] |285| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 286,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | Datum++;                                                               
;----------------------------------------------------------------------
        INC       *-SP[4]               ; [CPU_ALU] |286| 
$C$L36:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 287,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | EepromWriteByte(idx, Datum);                                           
;----------------------------------------------------------------------
        MOV       AH,*-SP[4]            ; [CPU_ALU] |287| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |287| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |287| 
        ; call occurs [#_EepromWriteByte] ; [] |287| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 284,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |284| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 284,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |284| 
        CMP       AL,#8192              ; [CPU_ALU] |284| 
        B         $C$L35,LO             ; [CPU_ALU] |284| 
        ; branchcc occurs ; [] |284| 
$C$L37:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 290,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |290| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 290,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |290| 
        CMP       AL,#8192              ; [CPU_ALU] |290| 
        B         $C$L39,HIS            ; [CPU_ALU] |290| 
        ; branchcc occurs ; [] |290| 
$C$L38:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 291,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | Sum += EepromReadByte(idx);                                            
;----------------------------------------------------------------------
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |291| 
        ; call occurs [#_EepromReadByte] ; [] |291| 
        MOVU      ACC,AL                ; [CPU_ALU] |291| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |291| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |291| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 290,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |290| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 290,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |290| 
        CMP       AL,#8192              ; [CPU_ALU] |290| 
        B         $C$L38,LO             ; [CPU_ALU] |290| 
        ; branchcc occurs ; [] |290| 
$C$L39:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 294,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | if(Sum != 0xff000)                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#1044480         ; [CPU_ARAU] |294| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |294| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |294| 
        B         $C$L40,EQ             ; [CPU_ALU] |294| 
        ; branchcc occurs ; [] |294| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 295,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 295 | ErrCnt |= 0x0001;                                                      
;----------------------------------------------------------------------
        OR        *-SP[5],#0x0001       ; [CPU_ALU] |295| 
$C$L40:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 297,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 297 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |297| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 297,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |297| 
        CMP       AL,#8192              ; [CPU_ALU] |297| 
        B         $C$L42,HIS            ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
$C$L41:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 298,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | EepromWriteByte(idx, 0x55);                                            
;----------------------------------------------------------------------
        MOVB      AH,#85                ; [CPU_ALU] |298| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |298| 
        ; call occurs [#_EepromWriteByte] ; [] |298| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 297,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |297| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 297,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |297| 
        CMP       AL,#8192              ; [CPU_ALU] |297| 
        B         $C$L41,LO             ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
$C$L42:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 300,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |300| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 300,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |300| 
        CMP       AL,#8192              ; [CPU_ALU] |300| 
        B         $C$L45,HIS            ; [CPU_ALU] |300| 
        ; branchcc occurs ; [] |300| 
$C$L43:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 301,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | if(EepromReadByte(idx) != 0x55) {                                      
;----------------------------------------------------------------------
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |301| 
        ; call occurs [#_EepromReadByte] ; [] |301| 
        CMPB      AL,#85                ; [CPU_ALU] |301| 
        B         $C$L44,EQ             ; [CPU_ALU] |301| 
        ; branchcc occurs ; [] |301| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 302,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | ErrCnt |= 0x0002;                                                      
;----------------------------------------------------------------------
        OR        *-SP[5],#0x0002       ; [CPU_ALU] |302| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 303,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L45,UNC            ; [CPU_ALU] |303| 
        ; branch occurs ; [] |303| 
$C$L44:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 300,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |300| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 300,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |300| 
        CMP       AL,#8192              ; [CPU_ALU] |300| 
        B         $C$L43,LO             ; [CPU_ALU] |300| 
        ; branchcc occurs ; [] |300| 
$C$L45:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 307,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |307| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 307,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |307| 
        CMP       AL,#8192              ; [CPU_ALU] |307| 
        B         $C$L47,HIS            ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
$C$L46:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 308,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 308 | EepromWriteByte(idx, 0xaa);                                            
;----------------------------------------------------------------------
        MOVB      AH,#170               ; [CPU_ALU] |308| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |308| 
        ; call occurs [#_EepromWriteByte] ; [] |308| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 307,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |307| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 307,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |307| 
        CMP       AL,#8192              ; [CPU_ALU] |307| 
        B         $C$L46,LO             ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
$C$L47:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 310,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 310 | for(idx = 0; idx < EEPROM_SIZE; idx++) {                               
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |310| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 310,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |310| 
        CMP       AL,#8192              ; [CPU_ALU] |310| 
        B         $C$L50,HIS            ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
$C$L48:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 311,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 311 | if(EepromReadByte(idx) != 0xaa) {                                      
;----------------------------------------------------------------------
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_EepromReadByte")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_EepromReadByte      ; [CPU_ALU] |311| 
        ; call occurs [#_EepromReadByte] ; [] |311| 
        CMPB      AL,#170               ; [CPU_ALU] |311| 
        B         $C$L49,EQ             ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 312,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | ErrCnt |= 0x0004;                                                      
;----------------------------------------------------------------------
        OR        *-SP[5],#0x0004       ; [CPU_ALU] |312| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 313,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 313 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L50,UNC            ; [CPU_ALU] |313| 
        ; branch occurs ; [] |313| 
$C$L49:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 310,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |310| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 310,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |310| 
        CMP       AL,#8192              ; [CPU_ALU] |310| 
        B         $C$L48,LO             ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
$C$L50:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 317,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | for(idx = 0; idx < EEPROM_SIZE; idx++)                                 
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |317| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 317,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |317| 
        CMP       AL,#8192              ; [CPU_ALU] |317| 
        B         $C$L52,HIS            ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
$C$L51:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 318,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 318 | EepromWriteByte(idx, 0x00);                                            
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_ALU] |318| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_EepromWriteByte")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_EepromWriteByte     ; [CPU_ALU] |318| 
        ; call occurs [#_EepromWriteByte] ; [] |318| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 317,column 34,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |317| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 317,column 15,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |317| 
        CMP       AL,#8192              ; [CPU_ALU] |317| 
        B         $C$L51,LO             ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
$C$L52:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 320,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 320 | return ErrCnt;                                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[5]            ; [CPU_ALU] |320| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 322,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_crcCalc32

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("crcCalc32")
	.dwattr $C$DW$124, DW_AT_low_pc(_crcCalc32)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_crcCalc32")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$124, DW_AT_TI_begin_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 345,column 1,is_stmt,address _crcCalc32,isa 0

	.dwfde $C$DW$CIE, _crcCalc32
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("MemBlock")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_MemBlock")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg12]

$C$DW$126	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$126, DW_AT_name("Start")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_Start")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg0]

$C$DW$127	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$127, DW_AT_name("End")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_End")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 344 | Uint32 crcCalc32(Byte *MemBlock, Uint16 Start, Uint16 End)             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _crcCalc32                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

_crcCalc32:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("MemBlock")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_MemBlock")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg20 -2]

$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("crc")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_crc")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_breg20 -4]

$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("Start")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_Start")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg20 -5]

$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("End")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_End")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg20 -6]

$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("idx")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[6],AH            ; [CPU_ALU] |345| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |345| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |345| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 346,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 346 | Uint32 crc = INIT_CRC32;                                               
; 347 | int idx;                                                               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |346| 
        SUBB      ACC,#1                ; [CPU_ALU] |346| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |346| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 349,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 349 | for(idx = Start; idx < End; idx += 4) {                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[5]            ; [CPU_ALU] |349| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |349| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 349,column 19,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |349| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |349| 
        B         $C$L54,LOS            ; [CPU_ALU] |349| 
        ; branchcc occurs ; [] |349| 
$C$L53:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 351,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 351 | crc = crctable[(crc ^ (MemBlock[idx])) & 0xffL] ^ (crc >> 8);          
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[7]           ; [CPU_ALU] |351| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |351| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |351| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |351| 
        XOR       ACC,*+XAR4[0]         ; [CPU_ALU] |351| 
        MOVB      AH,#0                 ; [CPU_ALU] |351| 
        ANDB      AL,#0xff              ; [CPU_ALU] |351| 
        LSL       ACC,1                 ; [CPU_ALU] |351| 
        MOVL      XAR4,#_crctable       ; [CPU_ARAU] |351| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |351| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |351| 
        SFR       ACC,8                 ; [CPU_ALU] |351| 
        XOR       AL,*+XAR4[0]          ; [CPU_ALU] |351| 
        XOR       AH,*+XAR4[1]          ; [CPU_ALU] |351| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |351| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 352,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | crc = crctable[(crc ^ (MemBlock[idx + 1])) & 0xffL] ^ (crc >> 8);      
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |352| 
        ADDB      AL,#1                 ; [CPU_ALU] |352| 
        MOV       ACC,AL                ; [CPU_ALU] |352| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |352| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |352| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |352| 
        XOR       ACC,*+XAR4[0]         ; [CPU_ALU] |352| 
        MOVB      AH,#0                 ; [CPU_ALU] |352| 
        ANDB      AL,#0xff              ; [CPU_ALU] |352| 
        LSL       ACC,1                 ; [CPU_ALU] |352| 
        MOVL      XAR4,#_crctable       ; [CPU_ARAU] |352| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |352| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |352| 
        SFR       ACC,8                 ; [CPU_ALU] |352| 
        XOR       AL,*+XAR4[0]          ; [CPU_ALU] |352| 
        XOR       AH,*+XAR4[1]          ; [CPU_ALU] |352| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |352| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 353,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 353 | crc = crctable[(crc ^ (MemBlock[idx + 2])) & 0xffL] ^ (crc >> 8);      
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |353| 
        ADDB      AL,#2                 ; [CPU_ALU] |353| 
        MOV       ACC,AL                ; [CPU_ALU] |353| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |353| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |353| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |353| 
        XOR       ACC,*+XAR4[0]         ; [CPU_ALU] |353| 
        MOVB      AH,#0                 ; [CPU_ALU] |353| 
        ANDB      AL,#0xff              ; [CPU_ALU] |353| 
        LSL       ACC,1                 ; [CPU_ALU] |353| 
        MOVL      XAR4,#_crctable       ; [CPU_ARAU] |353| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |353| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |353| 
        SFR       ACC,8                 ; [CPU_ALU] |353| 
        XOR       AL,*+XAR4[0]          ; [CPU_ALU] |353| 
        XOR       AH,*+XAR4[1]          ; [CPU_ALU] |353| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |353| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 354,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | crc = crctable[(crc ^ (MemBlock[idx + 3])) & 0xffL] ^ (crc >> 8);      
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |354| 
        ADDB      AL,#3                 ; [CPU_ALU] |354| 
        MOV       ACC,AL                ; [CPU_ALU] |354| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |354| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |354| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |354| 
        XOR       ACC,*+XAR4[0]         ; [CPU_ALU] |354| 
        MOVB      AH,#0                 ; [CPU_ALU] |354| 
        ANDB      AL,#0xff              ; [CPU_ALU] |354| 
        LSL       ACC,1                 ; [CPU_ALU] |354| 
        MOVL      XAR4,#_crctable       ; [CPU_ARAU] |354| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |354| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |354| 
        SFR       ACC,8                 ; [CPU_ALU] |354| 
        XOR       AL,*+XAR4[0]          ; [CPU_ALU] |354| 
        XOR       AH,*+XAR4[1]          ; [CPU_ALU] |354| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |354| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 349,column 30,is_stmt,isa 0
        ADD       *-SP[7],#4            ; [CPU_ALU] |349| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 349,column 19,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |349| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |349| 
        B         $C$L53,HI             ; [CPU_ALU] |349| 
        ; branchcc occurs ; [] |349| 
$C$L54:    
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 357,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 357 | crc ^= CRC32_XOROT;                                                    
;----------------------------------------------------------------------
        XOR       *-SP[4],#65535        ; [CPU_ALU] |357| 
        XOR       *-SP[3],#65535        ; [CPU_ALU] |357| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 359,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 359 | return crc;                                                            
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |359| 
	.dwpsn	file "C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c",line 361,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("C:/repo/jabil2025/gpb/gpb_project_v3/Eeprom.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SpiTxNotReady
	.global	_ConfigSpi
	.global	_TxSpi
	.global	_SpiRxNotReady
	.global	_RxSpi
	.global	_FormatSpiTxWord
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("GPIOA0")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIOA1")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIOA2")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIOA3")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIOA4")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIOA5")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIOA6")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIOA7")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIOA8")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIOA9")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIOA10")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIOA11")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIOA12")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("GPIOA13")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("GPIOA14")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("GPIOA15")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("all")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("bit")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIOA0")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("GPIOA1")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("GPIOA2")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIOA3")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIOA4")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("GPIOA5")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("GPIOA6")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIOA7")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIOA8")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIOA9")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIOA10")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIOA11")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIOA12")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("GPIOA13")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("GPIOA14")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("GPIOA15")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("all")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$169, DW_AT_name("bit")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("GPIOA0")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("GPIOA1")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("GPIOA2")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("GPIOA3")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("GPIOA4")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("GPIOA5")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("GPIOA6")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("GPIOA7")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("GPIOA8")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("GPIOA9")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("GPIOA10")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("GPIOA11")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("GPIOA12")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("GPIOA13")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("GPIOA14")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("GPIOA15")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("all")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$187, DW_AT_name("bit")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("GPIOA0")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("GPIOA1")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("GPIOA2")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("GPIOA3")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("GPIOA4")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("GPIOA5")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("GPIOA6")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("GPIOA7")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("GPIOA8")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("GPIOA9")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("GPIOA10")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("GPIOA11")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("GPIOA12")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("GPIOA13")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("GPIOA14")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("GPIOA15")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("all")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$205, DW_AT_name("bit")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("GPIOB0")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("GPIOB1")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIOB2")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIOB3")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("GPIOB4")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("GPIOB5")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("GPIOB6")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIOB7")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIOB8")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("GPIOB9")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIOB10")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIOB11")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("GPIOB12")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("GPIOB13")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("GPIOB14")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("GPIOB15")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("all")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$223, DW_AT_name("bit")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("GPIOB0")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("GPIOB1")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("GPIOB2")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("GPIOB3")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("GPIOB4")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("GPIOB5")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIOB6")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("GPIOB7")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIOB8")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIOB9")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("GPIOB10")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("GPIOB11")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("GPIOB12")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIOB13")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIOB14")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIOB15")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("all")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$241, DW_AT_name("bit")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("GPIOB0")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIOB1")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIOB2")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("GPIOB3")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("GPIOB4")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("GPIOB5")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("GPIOB6")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIOB7")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIOB8")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIOB9")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIOB10")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("GPIOB11")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIOB12")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIOB13")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("GPIOB14")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIOB15")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("all")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$259, DW_AT_name("bit")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("GPIOB0")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIOB1")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIOB2")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIOB3")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("GPIOB4")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("GPIOB5")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("GPIOB6")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIOB7")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIOB8")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIOB9")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIOB10")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIOB11")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIOB12")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIOB13")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIOB14")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIOB15")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("all")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$277, DW_AT_name("bit")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("GPIOD0")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIOD1")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("rsvd1")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$280, DW_AT_bit_size(0x03)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIOD5")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIOD6")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("rsvd2")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$283, DW_AT_bit_size(0x09)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("all")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$285, DW_AT_name("bit")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIOD0")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOD1")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("rsvd1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$288, DW_AT_bit_size(0x03)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIOD5")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOD6")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("rsvd2")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$291, DW_AT_bit_size(0x09)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("all")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$293, DW_AT_name("bit")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIOD0")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIOD1")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("rsvd1")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$296, DW_AT_bit_size(0x03)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOD5")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIOD6")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("rsvd2")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$299, DW_AT_bit_size(0x09)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("all")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$301, DW_AT_name("bit")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIOD0")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOD1")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("rsvd1")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$304, DW_AT_bit_size(0x03)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIOD5")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIOD6")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("rsvd2")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$307, DW_AT_bit_size(0x09)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("all")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$309, DW_AT_name("bit")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIOE0")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIOE1")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIOE2")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("rsvd1")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$313, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("all")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$315, DW_AT_name("bit")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIOE0")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIOE1")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIOE2")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("rsvd1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$319, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("all")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$321, DW_AT_name("bit")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOE0")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOE1")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOE2")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("rsvd1")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$325, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("all")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$327, DW_AT_name("bit")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOE0")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOE1")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOE2")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("rsvd1")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$331, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("all")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$333, DW_AT_name("bit")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIOF0")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOF1")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIOF2")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("GPIOF3")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIOF4")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOF5")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOF6")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOF7")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOF8")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOF9")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOF10")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOF11")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOF12")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOF13")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOF14")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOF15")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("all")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$351, DW_AT_name("bit")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIOF0")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOF1")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOF2")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIOF3")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIOF4")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOF5")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOF6")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOF7")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOF8")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOF9")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOF10")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOF11")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOF12")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOF13")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOF14")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOF15")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("all")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$369, DW_AT_name("bit")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIOF0")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOF1")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOF2")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("GPIOF3")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIOF4")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOF5")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOF6")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOF7")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOF8")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOF9")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOF10")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOF11")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOF12")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOF13")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOF14")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOF15")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("all")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$387, DW_AT_name("bit")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIOF0")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIOF1")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIOF2")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("GPIOF3")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("GPIOF4")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIOF5")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOF6")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIOF7")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOF8")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOF9")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIOF10")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIOF11")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIOF12")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOF13")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOF14")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIOF15")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("all")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$405, DW_AT_name("bit")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("rsvd1")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$406, DW_AT_bit_size(0x04)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOG4")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOG5")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("rsvd2")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$409, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("all")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$411, DW_AT_name("bit")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("rsvd1")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$412, DW_AT_bit_size(0x04)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOG4")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOG5")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("rsvd2")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$415, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("all")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$417, DW_AT_name("bit")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("rsvd1")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$418, DW_AT_bit_size(0x04)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOG4")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOG5")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("rsvd2")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$421, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("all")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$423, DW_AT_name("bit")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("rsvd1")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$424, DW_AT_bit_size(0x04)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOG4")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOG5")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("rsvd2")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$427, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("all")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$429, DW_AT_name("bit")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$430, DW_AT_name("GPADAT")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$431, DW_AT_name("GPASET")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$432, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$433, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$434, DW_AT_name("GPBDAT")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$435, DW_AT_name("GPBSET")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$436, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$437, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$438, DW_AT_name("rsvd1")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$439, DW_AT_name("GPDDAT")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$440, DW_AT_name("GPDSET")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$441, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$442, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$443, DW_AT_name("GPEDAT")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$444, DW_AT_name("GPESET")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$445, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$446, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$447, DW_AT_name("GPFDAT")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$448, DW_AT_name("GPFSET")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$449, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$450, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$451, DW_AT_name("GPGDAT")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$452, DW_AT_name("GPGSET")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$453, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$454, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$455, DW_AT_name("rsvd2")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$456	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$69)

$C$DW$T$74	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$456)

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

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("Byte")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x20)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$457	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$457, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("Uint32")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)


$C$DW$T$91	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x200)
$C$DW$458	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$458, DW_AT_upper_bound(0xff)

	.dwendtag $C$DW$T$91

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

$C$DW$459	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$459, DW_AT_name("AL")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg0]

$C$DW$460	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$460, DW_AT_name("AH")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_reg1]

$C$DW$461	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$461, DW_AT_name("PL")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg2]

$C$DW$462	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$462, DW_AT_name("PH")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg3]

$C$DW$463	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$463, DW_AT_name("SP")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg20]

$C$DW$464	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$464, DW_AT_name("XT")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg21]

$C$DW$465	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$465, DW_AT_name("T")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_reg22]

$C$DW$466	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$466, DW_AT_name("ST0")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg23]

$C$DW$467	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$467, DW_AT_name("ST1")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_reg24]

$C$DW$468	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$468, DW_AT_name("PC")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg25]

$C$DW$469	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$469, DW_AT_name("RPC")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_reg26]

$C$DW$470	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$470, DW_AT_name("FP")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_reg28]

$C$DW$471	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$471, DW_AT_name("DP")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_reg29]

$C$DW$472	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$472, DW_AT_name("SXM")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_reg30]

$C$DW$473	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$473, DW_AT_name("PM")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg31]

$C$DW$474	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$474, DW_AT_name("OVM")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x20]

$C$DW$475	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$475, DW_AT_name("PAGE0")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x21]

$C$DW$476	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$476, DW_AT_name("AMODE")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x22]

$C$DW$477	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$477, DW_AT_name("EALLOW")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$478	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$478, DW_AT_name("INTM")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x23]

$C$DW$479	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$479, DW_AT_name("IFR")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x24]

$C$DW$480	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$480, DW_AT_name("IER")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_regx 0x25]

$C$DW$481	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$481, DW_AT_name("V")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_regx 0x26]

$C$DW$482	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$482, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$483	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$483, DW_AT_name("VOL")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$484	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$484, DW_AT_name("AR0")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_reg4]

$C$DW$485	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$485, DW_AT_name("XAR0")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_reg5]

$C$DW$486	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$486, DW_AT_name("AR1")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_reg6]

$C$DW$487	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$487, DW_AT_name("XAR1")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg7]

$C$DW$488	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$488, DW_AT_name("AR2")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg8]

$C$DW$489	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$489, DW_AT_name("XAR2")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg9]

$C$DW$490	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$490, DW_AT_name("AR3")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_reg10]

$C$DW$491	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$491, DW_AT_name("XAR3")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_reg11]

$C$DW$492	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$492, DW_AT_name("AR4")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_reg12]

$C$DW$493	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$493, DW_AT_name("XAR4")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_reg13]

$C$DW$494	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$494, DW_AT_name("AR5")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_reg14]

$C$DW$495	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$495, DW_AT_name("XAR5")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_reg15]

$C$DW$496	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$496, DW_AT_name("AR6")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_reg16]

$C$DW$497	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$497, DW_AT_name("XAR6")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_reg17]

$C$DW$498	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$498, DW_AT_name("AR7")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_reg18]

$C$DW$499	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$499, DW_AT_name("XAR7")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


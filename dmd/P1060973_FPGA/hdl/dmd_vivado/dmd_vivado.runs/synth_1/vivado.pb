
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:092default:default2
999.3162default:default2
115.1992default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dmd_vivado/dmd_vivado.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
]C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dmd_vivado/dmd_vivado.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7z045ffg900-22default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0452default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0452default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
156402default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clk_sd2default:default2
wire2default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/DAC_DACx0504_IF.v2default:default2
732default:default8@Z8-11241h px� 
�
%s*synth2�
tStarting Synthesize : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1446.703 ; gain = 410.098
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2>
(C:/repo2/gpb/dmd/P1060973_FPGA/hdl/top.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	CLOCK_DIV2default:default2
 2default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_DIV.V2default:default2
212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	CLOCK_DIV2default:default2
 2default:default2
02default:default2
12default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_DIV.V2default:default2
212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

cmd_server2default:default2
 2default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmd_server.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
cmn_uart2default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
932default:default8@Z8-638h px� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
3612default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cmn_uart2default:default2
02default:default2
12default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
932default:default8@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2

msg_buffer2default:default2
 2default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_buffer.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
afifo2default:default2
 2default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter DSIZE bound to: 8 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ASIZE bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
afifo2default:default2
 2default:default2
02default:default2
12default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

msg_buffer2default:default2
 2default:default2
02default:default2
12default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_buffer.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
opb_emu_target2default:default2
 2default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/opb_emu_target.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
msg_read2default:default2
 2default:default2C
-C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_read.v2default:default2
212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
msg_read2default:default2
 2default:default2
02default:default2
12default:default2C
-C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_read.v2default:default2
212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	msg_write2default:default2
 2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_write.v2default:default2
212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	msg_write2default:default2
 2default:default2
02default:default2
12default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/msg_write.v2default:default2
212default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/opb_emu_target.v2default:default2
1342default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
opb_emu_target2default:default2
 2default:default2
02default:default2
12default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/opb_emu_target.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

cmd_server2default:default2
 2default:default2
02default:default2
12default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmd_server.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AdderDecode2default:default2
 2default:default2G
1C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADDR_DECODER.v2default:default2
212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AdderDecode2default:default2
 2default:default2
02default:default2
12default:default2G
1C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADDR_DECODER.v2default:default2
212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ClkGen2default:default2
 2default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_GEN.v2default:default2
322default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_GEN.v2default:default2
1652default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ClkGen2default:default2
 2default:default2
02default:default2
12default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_GEN.v2default:default2
322default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
OSCILLATOR_COUNTER2default:default2
 2default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/OSCILLATOR_COUNTER.v2default:default2
222default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2)
afifo__parameterized02default:default2
 2default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter DSIZE bound to: 8 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ASIZE bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
afifo__parameterized02default:default2
 2default:default2
02default:default2
12default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/OSCILLATOR_COUNTER.v2default:default2
1312default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
OSCILLATOR_COUNTER2default:default2
 2default:default2
02default:default2
12default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/OSCILLATOR_COUNTER.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
SCRATCH_PAD_REGISTER2default:default2
 2default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ScratchPadRegister.v2default:default2
202default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
SCRATCH_PAD_REGISTER2default:default2
 2default:default2
02default:default2
12default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ScratchPadRegister.v2default:default2
202default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
EEPROM_OPB_IF2default:default2
 2default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/EEPROM_OPB_IF.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2$
serial_eeprom_if2default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/serial_eeprom_if.vhd2default:default2
512default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
serial_eeprom_if2default:default2
02default:default2
12default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/serial_eeprom_if.vhd2default:default2
512default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
EEPROM_OPB_IF2default:default2
 2default:default2
02default:default2
12default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/EEPROM_OPB_IF.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
ADC_ADS8864_IF2default:default2
 2default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADC_ADS8864_IF.v2default:default2
532default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
DP_RAM_2R_1W2default:default2
 2default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dual_port_ram.v2default:default2
192default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
DP_RAM_2R_1W2default:default2
 2default:default2
02default:default2
12default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dual_port_ram.v2default:default2
192default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADC_ADS8864_IF.v2default:default2
1742default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADC_ADS8864_IF.v2default:default2
3782default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
ADC_ADS8864_IF2default:default2
 2default:default2
02default:default2
12default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/ADC_ADS8864_IF.v2default:default2
532default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
DAC_DACx0504_IF2default:default2
 2default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/DAC_DACx0504_IF.v2default:default2
162default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys20
DP_RAM_2R_1W__parameterized02default:default2
 2default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dual_port_ram.v2default:default2
192default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
DP_RAM_2R_1W__parameterized02default:default2
 2default:default2
02default:default2
12default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/dual_port_ram.v2default:default2
192default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
afifo__parameterized12default:default2
 2default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter DSIZE bound to: 24 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ASIZE bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
afifo__parameterized12default:default2
 2default:default2
02default:default2
12default:default2@
*C:/repo2/gpb/dmd/P1060973_FPGA/hdl/afifo.v2default:default2
622default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/DAC_DACx0504_IF.v2default:default2
1342default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
DAC_DACx0504_IF2default:default2
 2default:default2
02default:default2
12default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/DAC_DACx0504_IF.v2default:default2
162default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FPGA_WDI2default:default2
 2default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/FPGA_WD.v2default:default2
192default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FPGA_WDI2default:default2
 2default:default2
02default:default2
12default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/FPGA_WD.v2default:default2
192default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
GPIO2default:default2
 2default:default2?
)C:/repo2/gpb/dmd/P1060973_FPGA/hdl/GPIO.v2default:default2
152default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GPIO2default:default2
 2default:default2
02default:default2
12default:default2?
)C:/repo2/gpb/dmd/P1060973_FPGA/hdl/GPIO.v2default:default2
152default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MSSB_IF2default:default2
 2default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/MSSB_IF.v2default:default2
262default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2,
cmn_uart__parameterized02default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
932default:default8@Z8-638h px� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 921600 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
3612default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
cmn_uart__parameterized02default:default2
02default:default2
12default:default2E
/C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_uart.vhd2default:default2
932default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MSSB_IF2default:default2
 2default:default2
02default:default2
12default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/MSSB_IF.v2default:default2
262default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
cmn_pwm_wrapper2default:default2
 2default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm_wrapper.v2default:default2
262default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
cmn_pwm2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
612default:default8@Z8-638h px� 
b
%s
*synth2J
6	Parameter PHASE_SHIFT bound to: 104 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2!
cmn_debouncer2default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_debouncer.vhd2default:default2
392default:default8@Z8-638h px� 
g
%s
*synth2O
;	Parameter DEBOUNCE_TIME_LTOH bound to: 8 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter DEBOUNCE_TIME_HTOL bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
cmn_debouncer2default:default2
02default:default2
12default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_debouncer.vhd2default:default2
392default:default8@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2!
PH_PWM_SIMPLE2default:default2
 2default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/PH_PWM_SIMPLE.v2default:default2
92default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
PH_PWM_SIMPLE2default:default2
 2default:default2
02default:default2
12default:default2H
2C:/repo2/gpb/dmd/P1060973_FPGA/hdl/PH_PWM_SIMPLE.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2 
CMN_DEADBAND2default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_deadband.vhd2default:default2
642default:default8@Z8-638h px� 
b
%s
*synth2J
6	Parameter DEADBAND_TIME bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
CMN_DEADBAND2default:default2
02default:default2
12default:default2I
3C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_deadband.vhd2default:default2
642default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
PH_PWM2default:default2C
-C:/repo2/gpb/dmd/P1060973_FPGA/hdl/PH_PWM.vhd2default:default2
562default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter MOTOR_PWM_PERIODE bound to: 625 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter PHASE_SHIFT bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PWM_CNTR_MAX bound to: 80 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter MAX_CUR_SAMPLE_TIME bound to: 128 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter ENABLE_CNTR_MAX bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FAULT_CNTR_MAX bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
PH_PWM2default:default2
02default:default2
12default:default2C
-C:/repo2/gpb/dmd/P1060973_FPGA/hdl/PH_PWM.vhd2default:default2
562default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cmn_pwm2default:default2
02default:default2
12default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
612default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
cmn_pwm_wrapper2default:default2
 2default:default2
02default:default2
12default:default2J
4C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm_wrapper.v2default:default2
262default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2>
(C:/repo2/gpb/dmd/P1060973_FPGA/hdl/top.v2default:default2
32default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
clk2meghz_div_reg2default:default2B
,C:/repo2/gpb/dmd/P1060973_FPGA/hdl/CLK_GEN.v2default:default2
1582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
startb_d1_reg2default:default2M
7C:/repo2/gpb/dmd/P1060973_FPGA/hdl/OSCILLATOR_COUNTER.v2default:default2
1502default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2-
valid_mot_pwm_param01_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1682default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2-
valid_mot_pwm_param23_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1692default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2-
valid_mot_pwm_param45_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1702default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2,
sync_mot_pwm_param01_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1962default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2,
sync_mot_pwm_param23_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1972default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2,
sync_mot_pwm_param45_reg2default:default2D
.C:/repo2/gpb/dmd/P1060973_FPGA/hdl/cmn_pwm.vhd2default:default2
1982default:default8@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
pulse_200us2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[9]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[8]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[7]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[6]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[5]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[4]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[3]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[2]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[1]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param01[0]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[9]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[8]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[7]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[6]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[5]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[4]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[3]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[2]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[1]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param23[0]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[9]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[8]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[7]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[6]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[5]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[4]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[3]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[2]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[1]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
mot_pwm_param45[0]2default:default2
cmn_pwm2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[31]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[30]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[29]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[28]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[27]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[26]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[25]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[24]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[23]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[22]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[21]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[20]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[19]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[18]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[17]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[16]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[15]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[14]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[13]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[12]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[11]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[10]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[9]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[8]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[7]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[6]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[5]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[4]2default:default2#
cmn_pwm_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
uart_active2default:default2,
cmn_uart__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[31]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[30]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[29]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[28]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[27]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[26]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[25]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[24]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[23]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[22]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[21]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[20]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[19]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[18]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[17]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[16]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[15]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[14]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[13]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[12]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[11]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[10]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[9]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[8]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[7]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[6]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[5]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_ADDR[4]2default:default2
MSSB_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
SHUNT_EN_CNT_RE2default:default2
GPIO2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OPB_CLK2default:default2
FPGA_WDI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[31]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[30]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[29]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[28]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[27]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[26]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[25]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[24]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[23]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OPB_ADDR[22]2default:default2#
DAC_DACx0504_IF2default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
tFinished Synthesize : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1570.117 ; gain = 533.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1570.117 ; gain = 533.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z045ffg900-2
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1570.117 ; gain = 533.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7z045ffg900-22default:defaultZ21-403h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
uart_tx_state_reg2default:default2
cmn_uart2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
uart_rx_state_reg2default:default2
cmn_uart2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
msg_read2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	msg_write2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2"
opb_emu_target2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2*
eeprom_cycle_state_reg2default:default2$
serial_eeprom_if2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
DAC_DACx0504_IF2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
uart_tx_state_reg2default:default2,
cmn_uart__parameterized02default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
uart_rx_state_reg2default:default2,
cmn_uart__parameterized02default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
DB_STATE_reg2default:default2 
CMN_DEADBAND2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_           wait_for_tick |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_          send_start_bit |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_           transmit_data |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_           send_stop_bit |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
uart_tx_state_reg2default:default2

sequential2default:default2
cmn_uart2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`rx_wait_start_synchronise |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_        rx_get_start_bit |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_             rx_get_data |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_         rx_get_stop_bit |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
uart_rx_state_reg2default:default2

sequential2default:default2
cmn_uart2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                          0000001 |                         00000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    HEAD |                          1000000 |                         00000001
2default:defaulth p
x
� 
�
%s
*synth2s
_                    ADDR |                          0100000 |                         00000010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DATA |                          0010000 |                         00000011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    TAIL |                          0001000 |                         00000100
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DONE |                          0000100 |                         00000101
2default:defaulth p
x
� 
�
%s
*synth2s
_                   ERROR |                          0000010 |                         00000110
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
msg_read2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_              IDLE_STATE |                          0000010 |                         00000000
2default:defaulth p
x
� 
�
%s
*synth2s
_              HEAD_STATE |                          1000000 |                         00000001
2default:defaulth p
x
� 
�
%s
*synth2s
_              ADDR_STATE |                          0100000 |                         00000010
2default:defaulth p
x
� 
�
%s
*synth2s
_              DATA_STATE |                          0010000 |                         00000011
2default:defaulth p
x
� 
�
%s
*synth2s
_             ERROR_STATE |                          0000001 |                         00000110
2default:defaulth p
x
� 
�
%s
*synth2s
_              TAIL_STATE |                          0001000 |                         00000100
2default:defaulth p
x
� 
�
%s
*synth2s
_              DONE_STATE |                          0000100 |                         00000101
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
	msg_write2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                    PING |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                     OPB |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2"
opb_emu_target2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                             0000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_       eeprom_read_start |                             0001 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_eeprom_status_read_start |                             0010 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_       eeprom_wren_start |                             0011 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_           eeprom_set_cs |                             0100 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_ eeprom_send_instruction |                             0101 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_     eeprom_send_address |                             0110 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_        eeprom_read_data |                             0111 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_       eeprom_write_data |                             1000 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_        eeprom_negate_cs |                             1001 |                             1010
2default:defaulth p
x
� 
�
%s
*synth2s
_      eeprom_write_start |                             1010 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_       eeprom_state_done |                             1011 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2*
eeprom_cycle_state_reg2default:default2

sequential2default:default2$
serial_eeprom_if2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                             0001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  CS_LOW |                             0010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_               BIT_SHIFT |                             0100 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DONE |                             1000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2#
DAC_DACx0504_IF2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_           wait_for_tick |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_          send_start_bit |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_           transmit_data |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_           send_stop_bit |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
uart_tx_state_reg2default:default2

sequential2default:default2,
cmn_uart__parameterized02default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`rx_wait_start_synchronise |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_        rx_get_start_bit |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_             rx_get_data |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_         rx_get_stop_bit |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
uart_rx_state_reg2default:default2

sequential2default:default2,
cmn_uart__parameterized02default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_             db_state_00 |                            00001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_             db_state_10 |                            00010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_        db_state_10_wait |                            00100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_             db_state_01 |                            01000 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_        db_state_01_wait |                            10000 |                              011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
DB_STATE_reg2default:default2
one-hot2default:default2 
CMN_DEADBAND2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:23 . Memory (MB): peak = 1599.793 ; gain = 563.188
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 64    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 27    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 15    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 44    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 29    
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit         XORs := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 138   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 40    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 28    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 73    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 104   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 218   
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
k
%s
*synth2S
?	              16K Bit	(1024 X 16 bit)          RAMs := 1     
2default:defaulth p
x
� 
i
%s
*synth2Q
=	              384 Bit	(16 X 24 bit)          RAMs := 2     
2default:defaulth p
x
� 
h
%s
*synth2P
<	              128 Bit	(16 X 8 bit)          RAMs := 2     
2default:defaulth p
x
� 
g
%s
*synth2O
;	               32 Bit	(4 X 8 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 200   
2default:defaulth p
x
� 
X
%s
*synth2@
,	  34 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   24 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   22 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   21 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 56    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   14 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 26    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 32    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 167   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 17    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 46    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 35    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 17    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 57    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 11    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 485   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 83    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 28    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  27 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 15    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2n
ZPart Resources:
DSPs: 900 (col length:140)
BRAMs: 1090 (col length: RAMB18 140 RAMB36 70)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
x
+Unused sequential element %s was removed. 
4326*oasys2)
opb_fifo_inst/mem_reg2default:defaultZ8-6014h px� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM data_in_ram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM data_in_ram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM data_in_ram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[1].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[2].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2V
Bgen_dead_band_col_pwm[3].i_mot_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2

cmn_pwm__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2

cmn_pwm__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2

cmn_pwm__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2

cmn_pwm__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2

cmn_pwm__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[4]2default:default2
cmn_pwm2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[3]2default:default2
cmn_pwm2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[2]2default:default2
cmn_pwm2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[1]2default:default2
cmn_pwm2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)i_brk_deadband/FSM_onehot_DB_STATE_reg[0]2default:default2
cmn_pwm2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:20 ; elapsed = 00:01:25 . Memory (MB): peak = 1951.250 ; gain = 914.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px� 
m
%s*synth2U
A|Module Name    | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px� 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px� 
m
%s*synth2U
A|ADC_ADS8864_IF | sdout_buf  | 32x1          | LUT            | 
2default:defaulth px� 
m
%s*synth2U
A|ADC_ADS8864_IF | sdout_buf  | 32x1          | LUT            | 
2default:defaulth px� 
m
%s*synth2U
A+---------------+------------+---------------+----------------+

2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|adc_0       | data_in_ram/ram_reg | 1 K x 16(READ_FIRST)   | W |   | 1 K x 16(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
t+------------+---------------------------------------------------+-----------+----------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
u|Module Name | RTL Object                                        | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px� 
�
%s*synth2�
t+------------+---------------------------------------------------+-----------+----------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
u|dac_0       | data_in_ram/ram_reg                               | Implied   | 16 x 24              | RAM32M x 4  | 
2default:defaulth px� 
�
%s*synth2�
u|dac_0       | opb_fifo_inst/mem_reg                             | Implied   | 16 x 24              | RAM32M x 4  | 
2default:defaulth px� 
�
%s*synth2�
u|top         | cmd_server_0/msg_buffer_inst/rx_fifo_inst/mem_reg | Implied   | 16 x 8               | RAM32M x 2  | 
2default:defaulth px� 
�
%s*synth2�
u|top         | cmd_server_0/msg_buffer_inst/tx_fifo_inst/mem_reg | Implied   | 16 x 8               | RAM32M x 2  | 
2default:defaulth px� 
�
%s*synth2�
u+------------+---------------------------------------------------+-----------+----------------------+-------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:01:20 ; elapsed = 00:01:25 . Memory (MB): peak = 1951.250 ; gain = 914.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!
Block RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|adc_0       | data_in_ram/ram_reg | 1 K x 16(READ_FIRST)   | W |   | 1 K x 16(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
t+------------+---------------------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
u|Module Name | RTL Object                                        | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
� 
�
%s
*synth2�
t+------------+---------------------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
u|dac_0       | data_in_ram/ram_reg                               | Implied   | 16 x 24              | RAM32M x 4  | 
2default:defaulth p
x
� 
�
%s
*synth2�
u|dac_0       | opb_fifo_inst/mem_reg                             | Implied   | 16 x 24              | RAM32M x 4  | 
2default:defaulth p
x
� 
�
%s
*synth2�
u|top         | cmd_server_0/msg_buffer_inst/rx_fifo_inst/mem_reg | Implied   | 16 x 8               | RAM32M x 2  | 
2default:defaulth p
x
� 
�
%s
*synth2�
u|top         | cmd_server_0/msg_buffer_inst/tx_fifo_inst/mem_reg | Implied   | 16 x 8               | RAM32M x 2  | 
2default:defaulth p
x
� 
�
%s
*synth2�
u+------------+---------------------------------------------------+-----------+----------------------+-------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2-
adc_0/data_in_ram/ram_reg2default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:25 ; elapsed = 00:01:31 . Memory (MB): peak = 1958.641 ; gain = 922.035
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:31 ; elapsed = 00:01:37 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:31 ; elapsed = 00:01:37 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:31 ; elapsed = 00:01:37 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:31 ; elapsed = 00:01:37 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:32 ; elapsed = 00:01:38 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:32 ; elapsed = 00:01:38 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |    12|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |   482|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |   488|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |  1003|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |   562|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |  1380|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |   895|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |  1858|
2default:defaulth px� 
F
%s*synth2.
|9     |MUXF7    |    16|
2default:defaulth px� 
F
%s*synth2.
|10    |RAM32M   |    10|
2default:defaulth px� 
F
%s*synth2.
|11    |RAM32X1D |     4|
2default:defaulth px� 
F
%s*synth2.
|12    |RAMB18E1 |     1|
2default:defaulth px� 
F
%s*synth2.
|13    |FDCE     |  4689|
2default:defaulth px� 
F
%s*synth2.
|14    |FDPE     |   267|
2default:defaulth px� 
F
%s*synth2.
|15    |FDRE     |   103|
2default:defaulth px� 
F
%s*synth2.
|16    |IBUF     |    60|
2default:defaulth px� 
F
%s*synth2.
|17    |OBUF     |    88|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2s
_+------+------------------------------------------------+-----------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2s
_|      |Instance                                        |Module                       |Cells |
2default:defaulth p
x
� 
�
%s
*synth2s
_+------+------------------------------------------------+-----------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2s
_|1     |top                                             |                             | 11918|
2default:defaulth p
x
� 
�
%s
*synth2s
_|2     |  adc_0                                         |ADC_ADS8864_IF               |   429|
2default:defaulth p
x
� 
�
%s
*synth2s
_|3     |    aqclkdiv                                    |CLOCK_DIV_56                 |    67|
2default:defaulth p
x
� 
�
%s
*synth2s
_|4     |    data_in_ram                                 |DP_RAM_2R_1W                 |    14|
2default:defaulth p
x
� 
�
%s
*synth2s
_|5     |    sclk                                        |CLOCK_DIV_57                 |    62|
2default:defaulth p
x
� 
�
%s
*synth2s
_|6     |  adder_decode_0                                |AdderDecode                  |   272|
2default:defaulth p
x
� 
�
%s
*synth2s
_|7     |  clk_gen_0                                     |ClkGen                       |   295|
2default:defaulth p
x
� 
�
%s
*synth2s
_|8     |    pulse20khz_div                              |CLOCK_DIV_53                 |    61|
2default:defaulth p
x
� 
�
%s
*synth2s
_|9     |    pulse2khz_div                               |CLOCK_DIV_54                 |    61|
2default:defaulth p
x
� 
�
%s
*synth2s
_|10    |    wdclk_div                                   |CLOCK_DIV_55                 |    61|
2default:defaulth p
x
� 
�
%s
*synth2s
_|11    |  clkgen_2khz                                   |CLOCK_DIV                    |    54|
2default:defaulth p
x
� 
�
%s
*synth2s
_|12    |  cmd_server_0                                  |cmd_server                   |  2160|
2default:defaulth p
x
� 
�
%s
*synth2s
_|13    |    cmn_uart_inst                               |cmn_uart                     |    99|
2default:defaulth p
x
� 
�
%s
*synth2s
_|14    |    msg_buffer_inst                             |msg_buffer                   |   144|
2default:defaulth p
x
� 
�
%s
*synth2s
_|15    |      rx_fifo_inst                              |afifo                        |    72|
2default:defaulth p
x
� 
�
%s
*synth2s
_|16    |      tx_fifo_inst                              |afifo_52                     |    71|
2default:defaulth p
x
� 
�
%s
*synth2s
_|17    |    opb_emu_target_inst                         |opb_emu_target               |  1917|
2default:defaulth p
x
� 
�
%s
*synth2s
_|18    |      clkgen_1hz                                |CLOCK_DIV_51                 |    42|
2default:defaulth p
x
� 
�
%s
*synth2s
_|19    |      msg_read_inst                             |msg_read                     |  1717|
2default:defaulth p
x
� 
�
%s
*synth2s
_|20    |      msg_write_inst                            |msg_write                    |   142|
2default:defaulth p
x
� 
�
%s
*synth2s
_|21    |  dac_0                                         |DAC_DACx0504_IF              |   259|
2default:defaulth p
x
� 
�
%s
*synth2s
_|22    |    data_in_ram                                 |DP_RAM_2R_1W__parameterized0 |    25|
2default:defaulth p
x
� 
�
%s
*synth2s
_|23    |    opb_fifo_inst                               |afifo__parameterized1        |    95|
2default:defaulth p
x
� 
�
%s
*synth2s
_|24    |    sclk                                        |CLOCK_DIV_50                 |    42|
2default:defaulth p
x
� 
�
%s
*synth2s
_|25    |  eeprom_0                                      |EEPROM_OPB_IF                |   200|
2default:defaulth p
x
� 
�
%s
*synth2s
_|26    |    eeprom_if_0                                 |serial_eeprom_if             |   143|
2default:defaulth p
x
� 
�
%s
*synth2s
_|27    |  fpga_wdi_0                                    |FPGA_WDI                     |    11|
2default:defaulth p
x
� 
�
%s
*synth2s
_|28    |  gantry_brk1_if_0                              |cmn_pwm_wrapper              |   724|
2default:defaulth p
x
� 
�
%s
*synth2s
_|29    |    clk_16khz_div                               |CLOCK_DIV_45                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|30    |    pwm_0                                       |cmn_pwm_46                   |   213|
2default:defaulth p
x
� 
�
%s
*synth2s
_|31    |      i_brk_deadband                            |CMN_DEADBAND_47              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|32    |      i_brk_filt                                |cmn_debouncer_48             |   115|
2default:defaulth p
x
� 
�
%s
*synth2s
_|33    |      i_brk_pwm                                 |PH_PWM_49                    |    69|
2default:defaulth p
x
� 
�
%s
*synth2s
_|34    |  gantry_brk1_ret_if_0                          |cmn_pwm_wrapper_0            |   665|
2default:defaulth p
x
� 
�
%s
*synth2s
_|35    |    clk_16khz_div                               |CLOCK_DIV_40                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|36    |    pwm_0                                       |cmn_pwm_41                   |   210|
2default:defaulth p
x
� 
�
%s
*synth2s
_|37    |      i_brk_deadband                            |CMN_DEADBAND_42              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|38    |      i_brk_filt                                |cmn_debouncer_43             |   113|
2default:defaulth p
x
� 
�
%s
*synth2s
_|39    |      i_brk_pwm                                 |PH_PWM_44                    |    70|
2default:defaulth p
x
� 
�
%s
*synth2s
_|40    |  gantry_brk2_if_0                              |cmn_pwm_wrapper_1            |   665|
2default:defaulth p
x
� 
�
%s
*synth2s
_|41    |    clk_16khz_div                               |CLOCK_DIV_35                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|42    |    pwm_0                                       |cmn_pwm_36                   |   210|
2default:defaulth p
x
� 
�
%s
*synth2s
_|43    |      i_brk_deadband                            |CMN_DEADBAND_37              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|44    |      i_brk_filt                                |cmn_debouncer_38             |   113|
2default:defaulth p
x
� 
�
%s
*synth2s
_|45    |      i_brk_pwm                                 |PH_PWM_39                    |    70|
2default:defaulth p
x
� 
�
%s
*synth2s
_|46    |  gantry_brk2_ret_if_0                          |cmn_pwm_wrapper_2            |   664|
2default:defaulth p
x
� 
�
%s
*synth2s
_|47    |    clk_16khz_div                               |CLOCK_DIV_30                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|48    |    pwm_0                                       |cmn_pwm_31                   |   209|
2default:defaulth p
x
� 
�
%s
*synth2s
_|49    |      i_brk_deadband                            |CMN_DEADBAND_32              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|50    |      i_brk_filt                                |cmn_debouncer_33             |   112|
2default:defaulth p
x
� 
�
%s
*synth2s
_|51    |      i_brk_pwm                                 |PH_PWM_34                    |    70|
2default:defaulth p
x
� 
�
%s
*synth2s
_|52    |  gantry_brk3_if_0                              |cmn_pwm_wrapper_3            |   664|
2default:defaulth p
x
� 
�
%s
*synth2s
_|53    |    clk_16khz_div                               |CLOCK_DIV_25                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|54    |    pwm_0                                       |cmn_pwm_26                   |   209|
2default:defaulth p
x
� 
�
%s
*synth2s
_|55    |      i_brk_deadband                            |CMN_DEADBAND_27              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|56    |      i_brk_filt                                |cmn_debouncer_28             |   112|
2default:defaulth p
x
� 
�
%s
*synth2s
_|57    |      i_brk_pwm                                 |PH_PWM_29                    |    70|
2default:defaulth p
x
� 
�
%s
*synth2s
_|58    |  gantry_brk3_ret_if_0                          |cmn_pwm_wrapper_4            |   665|
2default:defaulth p
x
� 
�
%s
*synth2s
_|59    |    clk_16khz_div                               |CLOCK_DIV_20                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|60    |    pwm_0                                       |cmn_pwm_21                   |   210|
2default:defaulth p
x
� 
�
%s
*synth2s
_|61    |      i_brk_deadband                            |CMN_DEADBAND_22              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|62    |      i_brk_filt                                |cmn_debouncer_23             |   113|
2default:defaulth p
x
� 
�
%s
*synth2s
_|63    |      i_brk_pwm                                 |PH_PWM_24                    |    70|
2default:defaulth p
x
� 
�
%s
*synth2s
_|64    |  gantry_mot_if_0                               |cmn_pwm_wrapper_5            |  1095|
2default:defaulth p
x
� 
�
%s
*synth2s
_|65    |    clk_16khz_div                               |CLOCK_DIV_12                 |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|66    |    pwm_0                                       |cmn_pwm_13                   |   638|
2default:defaulth p
x
� 
�
%s
*synth2s
_|67    |      \gen_dead_band_col_pwm[1].i_mot_deadband  |CMN_DEADBAND_14              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|68    |      \gen_dead_band_col_pwm[2].i_mot_deadband  |CMN_DEADBAND_15              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|69    |      \gen_dead_band_col_pwm[3].i_mot_deadband  |CMN_DEADBAND_16              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|70    |      i_brk_pwm                                 |PH_PWM_17                    |    51|
2default:defaulth p
x
� 
�
%s
*synth2s
_|71    |      i_mot_filt                                |cmn_debouncer_18             |   113|
2default:defaulth p
x
� 
�
%s
*synth2s
_|72    |      i_mot_pwm_simple                          |PH_PWM_SIMPLE_19             |   390|
2default:defaulth p
x
� 
�
%s
*synth2s
_|73    |  gpio_0                                        |GPIO                         |   679|
2default:defaulth p
x
� 
�
%s
*synth2s
_|74    |  lift_mot_if_0                                 |cmn_pwm_wrapper_6            |  1096|
2default:defaulth p
x
� 
�
%s
*synth2s
_|75    |    clk_16khz_div                               |CLOCK_DIV_9                  |    56|
2default:defaulth p
x
� 
�
%s
*synth2s
_|76    |    pwm_0                                       |cmn_pwm                      |   639|
2default:defaulth p
x
� 
�
%s
*synth2s
_|77    |      \gen_dead_band_col_pwm[1].i_mot_deadband  |CMN_DEADBAND                 |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|78    |      \gen_dead_band_col_pwm[2].i_mot_deadband  |CMN_DEADBAND_10              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|79    |      \gen_dead_band_col_pwm[3].i_mot_deadband  |CMN_DEADBAND_11              |    27|
2default:defaulth p
x
� 
�
%s
*synth2s
_|80    |      i_brk_pwm                                 |PH_PWM                       |    51|
2default:defaulth p
x
� 
�
%s
*synth2s
_|81    |      i_mot_filt                                |cmn_debouncer                |   113|
2default:defaulth p
x
� 
�
%s
*synth2s
_|82    |      i_mot_pwm_simple                          |PH_PWM_SIMPLE                |   391|
2default:defaulth p
x
� 
�
%s
*synth2s
_|83    |  mssb_if_0                                     |MSSB_IF                      |   461|
2default:defaulth p
x
� 
�
%s
*synth2s
_|84    |    cmn_uart_inst                               |cmn_uart__parameterized0_8   |   185|
2default:defaulth p
x
� 
�
%s
*synth2s
_|85    |  mssb_if_1                                     |MSSB_IF_7                    |   461|
2default:defaulth p
x
� 
�
%s
*synth2s
_|86    |    cmn_uart_inst                               |cmn_uart__parameterized0     |   185|
2default:defaulth p
x
� 
�
%s
*synth2s
_|87    |  osc_counter_0                                 |OSCILLATOR_COUNTER           |   111|
2default:defaulth p
x
� 
�
%s
*synth2s
_|88    |    opb_fifo_inst                               |afifo__parameterized0        |    38|
2default:defaulth p
x
� 
�
%s
*synth2s
_|89    |  scratch_pad_0                                 |SCRATCH_PAD_REGISTER         |   128|
2default:defaulth p
x
� 
�
%s
*synth2s
_+------+------------------------------------------------+-----------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:32 ; elapsed = 00:01:38 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 289 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:32 ; elapsed = 00:01:38 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:32 ; elapsed = 00:01:38 . Memory (MB): peak = 1972.969 ; gain = 936.363
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1582default:default2
1985.0352default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5132default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
2025.7302default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 14 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
d006a7ad2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1102default:default2
1952default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:382default:default2
00:01:452default:default2
2025.7302default:default2
1002.5272default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MC:/repo2/gpb/dmd/P1060973_FPGA/hdl/dmd_vivado/dmd_vivado.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed May 21 11:22:36 20252default:defaultZ17-206h px� 


End Record
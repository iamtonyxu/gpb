set_device -family {PolarFire} -die {MPF100T} -speed {STD}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\CLK_DIV.V}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\dual_port_ram.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\ADC_ADS8864_IF.v}
 add_include_path  {C:\repo2\gpb\dmd\P1060973_FPGA\hdl}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\ADDR_DECODER.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\CLK_GEN.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\afifo.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\DAC_DACx0504_IF.v}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\serial_eeprom_if.vhd}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\EEPROM_OPB_IF.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\FPGA_WD.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\GPIO.v}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_uart.vhd}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\MSSB_IF.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\OSCILLATOR_COUNTER.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\ScratchPadRegister.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_buffer.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_read.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_write.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\opb_emu_target.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmd_server.v}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\PH_PWM.vhd}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\SIMPLE_PH_PWM.vhd}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_deadband.vhd}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_debouncer.vhd}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_pwm.vhd}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_pwm_wrapper.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\top.v}
set_top_level {top}
map_netlist
check_constraints {C:\repo2\gpb\dmd\P1060973_FPGA\constraint\synthesis_sdc_errors.log}
write_fdc {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\synthesis.fdc}

set_device -family {PolarFire} -die {MPF100T} -speed {STD}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\ADDR_DECODER.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\CLK_DIV.V}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\CLK_GEN.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\Timer_Counter.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\FREQ_COUNTER.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\ScratchPadRegister.v}
read_vhdl -mode vhdl_2008 {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmn_uart.vhd}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\afifo.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_buffer.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_read.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\msg_write.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\opb_emu_target.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\cmd_server.v}
read_verilog -mode system_verilog {C:\repo2\gpb\dmd\P1060973_FPGA\hdl\top.v}
set_top_level {top}
map_netlist
check_constraints {C:\repo2\gpb\dmd\P1060973_FPGA\constraint\synthesis_sdc_errors.log}
write_fdc {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\synthesis.fdc}

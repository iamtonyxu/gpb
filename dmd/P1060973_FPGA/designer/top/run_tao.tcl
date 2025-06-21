set_device -family {PolarFire} -die {MPF100T} -speed {STD}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\ADDR_DECODER.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\ScratchPadRegister.v}
read_vhdl -mode vhdl_2008 {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\cmn_uart.vhd}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\afifo.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\msg_buffer.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\msg_read.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\msg_write.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\opb_emu_target.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\cmd_server.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\hdl\top.v}
set_top_level {top}
map_netlist
check_constraints {C:\repo\jabil2025\dmd\P1060973_FPGA\constraint\synthesis_sdc_errors.log}
write_fdc {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\synthesis.fdc}

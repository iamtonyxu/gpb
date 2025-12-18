set_device -family {PolarFire} -die {MPF050T} -speed {STD}
 add_include_path  {C:\repo1\gpb\stn\fpga_hw\hdl}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\ADDR_DECODE.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\APP_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\CLOCK_DIV.V}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\ClkGen.v}
read_vhdl -mode vhdl_2008 {C:\repo1\gpb\stn\fpga_hw\hdl\serial_eeprom_if.vhd}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\EEPROM_OPB_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\gpio.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\afifo.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\OSCILLATOR_COUNTER.v}
read_vhdl -mode vhdl_2008 {C:\repo1\gpb\stn\fpga_hw\hdl\SERIAL_MII.vhd}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\ctrl_package_transceiver.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\phy_ctrl_rmii.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\PHY_IF.v}
read_vhdl -mode vhdl_2008 {C:\repo1\gpb\stn\fpga_hw\hdl\cmn_uart.vhd}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\msg_buffer.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\msg_read.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\msg_write.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\opb_emu_target.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\cmd_server.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\SCRATCH_PAD_REGISTER.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_hw\hdl\top_hw.v}
set_top_level {top_hw}
map_netlist
read_sdc {C:\repo1\gpb\stn\fpga_hw\constraint\stn_hw_fpga_synth.sdc}
check_constraints {C:\repo1\gpb\stn\fpga_hw\constraint\synthesis_sdc_check.log}

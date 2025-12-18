set_device -family {PolarFire} -die {MPF100T} -speed {-1}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\CLOCK_DIV.V}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\DP_RAM_2R_1W.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\ADC_ADS8864_IF.v}
 add_include_path  {C:\repo1\gpb\stn\fpga_app\hdl}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\ADDR_DECODE.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\APP2HW_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\component\Microchip\DirectCore\CORECAN\2.0.100\rtl\core_encrypted\corecan.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\component\work\CORECAN_C0\CORECAN_C0.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\CORECAN_wrapper.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\CAN_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\ClkGen.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\afifo.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\DAC_DACx0504_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\gpio.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\OSCILLATOR_COUNTER.v}
read_vhdl -mode vhdl_2008 {C:\repo1\gpb\stn\fpga_app\hdl\cmn_uart.vhd}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\RS422_TEST_IF.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\msg_buffer.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\msg_read.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\msg_write.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\opb_emu_target.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\cmd_server.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\SCRATCH_PAD_REGISTER.v}
read_verilog -mode system_verilog {C:\repo1\gpb\stn\fpga_app\hdl\top_app.v}
set_top_level {top_app}
map_netlist
check_constraints {C:\repo1\gpb\stn\fpga_app\constraint\synthesis_sdc_errors.log}
write_fdc {C:\repo1\gpb\stn\fpga_app\designer\top_app\synthesis.fdc}

# Netlist Viewer TCL File
set_family -name PolarFire
top_module -name top_hw
addfile -view RTL -lib work -type VLOG -mode VLOG_INC_DIR -name {C:\repo1\gpb\stn\fpga_hw\hdl}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/ADDR_DECODE.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/APP_IF.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/CLOCK_DIV.V}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/ClkGen.v}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {C:/repo1/gpb/stn/fpga_hw/hdl/serial_eeprom_if_v2.vhd}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/EEPROM_OPB_IF_V2.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/gpio.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/afifo.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/OSCILLATOR_COUNTER.v}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {C:/repo1/gpb/stn/fpga_hw/hdl/SERIAL_MII.vhd}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/ctrl_package_transceiver.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/phy_ctrl_rmii.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/PHY_IF.v}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {C:/repo1/gpb/stn/fpga_hw/hdl/cmn_uart.vhd}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/msg_buffer.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/msg_read.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/msg_write.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/opb_emu_target.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/cmd_server.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/SCRATCH_PAD_REGISTER.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/hdl/top_hw.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_hw/synthesis/top_hw.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {C:/repo1/gpb/stn/fpga_hw/designer/top_hw/COMPILE/top_hw.afl}
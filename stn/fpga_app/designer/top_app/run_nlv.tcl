# Netlist Viewer TCL File
set_family -name PolarFire
top_module -name top_app
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/CLOCK_DIV.V}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/DP_RAM_2R_1W.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/ADC_ADS8864_IF.v}
addfile -view RTL -lib work -type VLOG -mode VLOG_INC_DIR -name {C:\repo1\gpb\stn\fpga_app\hdl}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/ADDR_DECODE.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/APP2HW_IF.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/component/Microchip/DirectCore/CORECAN/2.0.100/rtl/core_encrypted/corecan.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/component/work/CORECAN_C0/CORECAN_C0.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/CORECAN_wrapper.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/CAN_IF.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/ClkGen.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/afifo.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/DAC_DACx0504_IF.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/gpio.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/OSCILLATOR_COUNTER.v}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {C:/repo1/gpb/stn/fpga_app/hdl/cmn_uart.vhd}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/RS422_TEST_IF.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/msg_buffer.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/msg_read.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/msg_write.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/opb_emu_target.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/cmd_server.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/SCRATCH_PAD_REGISTER.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/hdl/top_app.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {C:/repo1/gpb/stn/fpga_app/synthesis/top_app.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {C:/repo1/gpb/stn/fpga_app/designer/top_app/top_app.afl}
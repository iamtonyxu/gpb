set_device -family {PolarFire} -die {MPF100T} -speed {STD}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\CLK_DIV.V}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\dual_port_ram.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\ADC_AD7663AS.V}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\ADDR_DECODER.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\CLK_GEN.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\DAC_AD8803AR.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\FPGA_WD.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\GPIO.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\GANTRY_MOT.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\LIFT_MOT.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\Timer_Counter.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\FREQ_COUNTER.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\pci_emu_target.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\hdl\ScratchPadRegister.v}
read_verilog -mode system_verilog {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\component\work\Top\Top.v}
set_top_level {Top}
map_netlist
check_constraints {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\constraint\synthesis_sdc_errors.log}
write_fdc {C:\repo\jabil2025\dmd\P1060973_FPGA\P1060973_TestFw\designer\Top\synthesis.fdc}

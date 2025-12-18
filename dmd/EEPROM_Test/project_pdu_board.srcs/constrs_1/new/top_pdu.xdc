# Clock and Reset
set_property PACKAGE_PIN E3 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]

set_property PACKAGE_PIN F4 [get_ports RST_N]
set_property IOSTANDARD LVCMOS33 [get_ports RST_N]

# FPGA_DONE output
set_property PACKAGE_PIN G4 [get_ports FPGA_DONE]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DONE]

# EEPROM INTERFACE
set_property PACKAGE_PIN H4 [get_ports EEP_CS_N]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_CS_N]

set_property PACKAGE_PIN J4 [get_ports EEP_SI]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_SI]

set_property PACKAGE_PIN K4 [get_ports EEP_SCK]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_SCK]

set_property PACKAGE_PIN L4 [get_ports EEP_SO]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_SO]

# DEBUG PORT
set_property PACKAGE_PIN M4 [get_ports RXD]
set_property IOSTANDARD LVCMOS33 [get_ports RXD]

set_property PACKAGE_PIN N4 [get_ports TXD]
set_property IOSTANDARD LVCMOS33 [get_ports TXD]

# LEDs (8 bits)
set_property PACKAGE_PIN P4 [get_ports {LEDs[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[0]}]

set_property PACKAGE_PIN R4 [get_ports {LEDs[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[1]}]

set_property PACKAGE_PIN T4 [get_ports {LEDs[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[2]}]

set_property PACKAGE_PIN U4 [get_ports {LEDs[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[3]}]

set_property PACKAGE_PIN V4 [get_ports {LEDs[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[4]}]

set_property PACKAGE_PIN W4 [get_ports {LEDs[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[5]}]

set_property PACKAGE_PIN Y4 [get_ports {LEDs[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[6]}]

set_property PACKAGE_PIN AA4 [get_ports {LEDs[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[7]}]

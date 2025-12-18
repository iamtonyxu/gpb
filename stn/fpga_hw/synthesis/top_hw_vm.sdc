# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1760669612 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {clk_100mhz} [get_ports {HDW_FPGA_100M_CLK}] 
create_clock -period 20.000 -waveform {0.000 10.000} -name {clk_50mhz} [get_ports {HDW_FPGA_50M_CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_4|clkout_inferred_clock} [get_pins {u_clkgen/pulse2khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_8|N_1_inferred_clock} [get_pins {clkgen_2khz/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_7|N_1_inferred_clock} [get_pins {clkgen_25mhz/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top_hw|HDW_DBUG_MISO} [get_ports {HDW_DBUG_MISO}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 
set_input_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DATA1}]
set_input_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DATA1}]
set_input_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DATA0}]
set_input_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DATA0}]
set_input_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DV}]
set_input_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_RX_DV}]

# Output Delay Constraints 
set_output_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_EN}]
set_output_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_EN}]
set_output_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_DATA1}]
set_output_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_DATA1}]
set_output_delay {1} -min -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_DATA0}]
set_output_delay {2.5} -max -clock [get_clocks {clk_50mhz}] [get_ports {PHY_RMII_TX_DATA0}]

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_4|clkout_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_8|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_7|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {top_hw|HDW_DBUG_MISO}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


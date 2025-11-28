# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1757048583 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top_app|APP_FPGA_100M_CLK} [get_ports {APP_FPGA_100M_CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_9|N_1_inferred_clock} [get_pins {u_dac/sclk/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {ADC_ADS8864_IF|ram_wr_clk_inferred_clock} [get_pins {u_adc/ram_wr_clk/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top_app|APP_DBUG_MISO} [get_ports {APP_DBUG_MISO}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list top_app|APP_FPGA_100M_CLK]
set Inferred_clkgroup_1 [list CLOCK_DIV_9|N_1_inferred_clock]
set Inferred_clkgroup_2 [list ADC_ADS8864_IF|ram_wr_clk_inferred_clock]
set Inferred_clkgroup_3 [list top_app|APP_DBUG_MISO]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_3

set_clock_groups -asynchronous -group [get_clocks {top_app|APP_FPGA_100M_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_9|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {ADC_ADS8864_IF|ram_wr_clk_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {top_app|APP_DBUG_MISO}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


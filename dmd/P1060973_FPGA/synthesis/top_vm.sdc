# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1760777473 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top|FPGA_100M_CLK} [get_ports {FPGA_100M_CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_6|N_1_inferred_clock} [get_pins {lift_mot_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_5|N_1_inferred_clock} [get_pins {gantry_brk3_ret_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_4|N_1_inferred_clock} [get_pins {gantry_brk2_ret_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_3|N_1_inferred_clock} [get_pins {gantry_brk1_ret_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_2|N_1_inferred_clock} [get_pins {gantry_brk3_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_1|N_1_inferred_clock} [get_pins {gantry_brk2_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_11_0|N_1_inferred_clock} [get_pins {gantry_brk1_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_10|N_1_inferred_clock} [get_pins {gantry_mot_if_0/clk_16khz_div/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLOCK_DIV_9|N_1_inferred_clock} [get_pins {dac_0/sclk/clkout/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {ADC_ADS8864_IF|ram_wr_clk_inferred_clock} [get_pins {adc_0/ram_wr_clk/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top|DBUG_HEADER10} [get_ports {DBUG_HEADER10}] 

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
set Inferred_clkgroup_0 [list top|FPGA_100M_CLK]
set Inferred_clkgroup_1 [list CLOCK_DIV_11_6|N_1_inferred_clock]
set Inferred_clkgroup_2 [list CLOCK_DIV_11_5|N_1_inferred_clock]
set Inferred_clkgroup_3 [list CLOCK_DIV_11_4|N_1_inferred_clock]
set Inferred_clkgroup_4 [list CLOCK_DIV_11_3|N_1_inferred_clock]
set Inferred_clkgroup_5 [list CLOCK_DIV_11_2|N_1_inferred_clock]
set Inferred_clkgroup_6 [list CLOCK_DIV_11_1|N_1_inferred_clock]
set Inferred_clkgroup_7 [list CLOCK_DIV_11_0|N_1_inferred_clock]
set Inferred_clkgroup_8 [list CLOCK_DIV_10|N_1_inferred_clock]
set Inferred_clkgroup_9 [list CLOCK_DIV_9|N_1_inferred_clock]
set Inferred_clkgroup_10 [list ADC_ADS8864_IF|ram_wr_clk_inferred_clock]
set Inferred_clkgroup_11 [list top|DBUG_HEADER10]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_3
set_clock_groups -asynchronous -group $Inferred_clkgroup_4
set_clock_groups -asynchronous -group $Inferred_clkgroup_5
set_clock_groups -asynchronous -group $Inferred_clkgroup_6
set_clock_groups -asynchronous -group $Inferred_clkgroup_7
set_clock_groups -asynchronous -group $Inferred_clkgroup_8
set_clock_groups -asynchronous -group $Inferred_clkgroup_9
set_clock_groups -asynchronous -group $Inferred_clkgroup_10
set_clock_groups -asynchronous -group $Inferred_clkgroup_11

set_clock_groups -asynchronous -group [get_clocks {top|FPGA_100M_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_6|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_5|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_4|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_3|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_2|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_1|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_11_0|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_10|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {CLOCK_DIV_9|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {ADC_ADS8864_IF|ram_wr_clk_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {top|DBUG_HEADER10}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


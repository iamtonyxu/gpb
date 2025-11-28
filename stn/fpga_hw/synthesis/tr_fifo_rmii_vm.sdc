# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1755322399 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {tr_fifo_rmii|write_clock} [get_ports {write_clock}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {tr_fifo_rmii|read_clock} [get_ports {read_clock}] 

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
set Inferred_clkgroup_0 [list tr_fifo_rmii|write_clock]
set Inferred_clkgroup_1 [list tr_fifo_rmii|read_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {tr_fifo_rmii|write_clock}]
set_clock_groups -asynchronous -group [get_clocks {tr_fifo_rmii|read_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


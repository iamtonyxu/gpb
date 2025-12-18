# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1755322782 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {phy_ctrl_rmii|phy_rx_clk} [get_ports {phy_rx_clk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {phy_ctrl_rmii|sysclk} [get_ports {sysclk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {phy_ctrl_rmii|phy_tx_clk} [get_ports {phy_tx_clk}] 

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
set Inferred_clkgroup_0 [list phy_ctrl_rmii|phy_rx_clk]
set Inferred_clkgroup_1 [list phy_ctrl_rmii|sysclk]
set Inferred_clkgroup_2 [list phy_ctrl_rmii|phy_tx_clk]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2

set_clock_groups -asynchronous -group [get_clocks {phy_ctrl_rmii|phy_rx_clk}]
set_clock_groups -asynchronous -group [get_clocks {phy_ctrl_rmii|sysclk}]
set_clock_groups -asynchronous -group [get_clocks {phy_ctrl_rmii|phy_tx_clk}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


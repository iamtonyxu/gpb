set_family {PolarFire}
read_adl {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.adl}
map_netlist
read_sdc {C:\repo1\gpb\stn\fpga_hw\constraint\stn_hw_fpga_synth.sdc}
check_constraints {C:\repo1\gpb\stn\fpga_hw\constraint\timing_sdc_check.log}

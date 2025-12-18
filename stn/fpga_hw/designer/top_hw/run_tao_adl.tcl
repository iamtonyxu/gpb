set_device -family {PolarFire} -die {MPF050T} -speed {STD}
read_adl {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.adl}
read_afl {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.afl}
map_netlist
read_sdc {C:\repo1\gpb\stn\fpga_hw\constraint\stn_hw_fpga_synth.sdc}
check_constraints {C:\repo1\gpb\stn\fpga_hw\constraint\placer_sdc_errors.log}
estimate_jitter -report {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\place_and_route_jitter_report.txt}
write_sdc -mode layout {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\place_route.sdc}

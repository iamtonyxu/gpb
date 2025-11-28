set_device \
    -family  PolarFire \
    -die     PA5M050T \
    -package fcvg484 \
    -speed   STD \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name top_hw
set_workdir {C:\repo1\gpb\stn\fpga_hw\designer\top_hw}
set_log     {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_sdc.log}
set_design_state pre_layout

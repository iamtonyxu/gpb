set_device \
    -family  PolarFire \
    -die     PA5M100T \
    -package fcg484 \
    -speed   STD \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_operating_conditions -name {slow_lv_lt}
set_operating_conditions -name {slow_lv_ht}
set_operating_conditions -name {fast_hv_lt}
set_name top
set_workdir {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top}
set_filename    {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top_ba}
set_design_state post_layout
set_language verilog

new_project \
         -name {top_hw} \
         -location {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF050T} \
         -name {MPF050T}
enable_device \
         -name {MPF050T} \
         -enable {TRUE}
save_project
close_project

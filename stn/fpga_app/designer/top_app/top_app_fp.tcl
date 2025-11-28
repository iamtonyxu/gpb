new_project \
         -name {top_app} \
         -location {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF100T} \
         -name {MPF100T}
enable_device \
         -name {MPF100T} \
         -enable {TRUE}
save_project
close_project

new_project \
         -name {top} \
         -location {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top_fp} \
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

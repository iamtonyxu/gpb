open_project -project {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app_fp\top_app.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF100T} \
    -fpga {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app.map} \
    -header {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app.hdr} \
    -snvm {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app_snvm.efc} \
    -spm {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app.spm} \
    -dca {C:\repo1\gpb\stn\fpga_app\designer\top_app\top_app.dca}
export_single_stapl \
    -name {MPF100T} \
    -file {C:\repo1\gpb\stn\fpga_app\designer\top_app\export/tempExport\top_app.stp} \
    -secured

save_project
close_project

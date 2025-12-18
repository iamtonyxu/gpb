open_project -project {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_fp\top_hw.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF050T} \
    -fpga {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.map} \
    -header {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.hdr} \
    -snvm {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_snvm.efc} \
    -spm {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.spm} \
    -dca {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw.dca}
export_single_stapl \
    -name {MPF050T} \
    -file {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\export/tempExport\top_hw.stp} \
    -secured

save_project
close_project

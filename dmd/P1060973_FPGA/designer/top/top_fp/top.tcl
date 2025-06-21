open_project -project {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top_fp\top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF100T} \
    -fpga {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top.map} \
    -header {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top.hdr} \
    -snvm {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top_snvm.efc} \
    -spm {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top.spm} \
    -dca {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\top.dca}
export_single_stapl \
    -name {MPF100T} \
    -file {C:\repo2\gpb\dmd\P1060973_FPGA\designer\top\export/tempExport\top.stp} \
    -secured

save_project
close_project

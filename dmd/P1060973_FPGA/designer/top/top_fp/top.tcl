open_project -project {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top_fp\top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF100T} \
    -fpga {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top.map} \
    -header {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top.hdr} \
    -snvm {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top_snvm.efc} \
    -spm {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top.spm} \
    -dca {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\top.dca}
export_single_stapl \
    -name {MPF100T} \
    -file {C:\repo\jabil2025\dmd\P1060973_FPGA\designer\top\export/tempExport\top.stp} \
    -secured

save_project
close_project

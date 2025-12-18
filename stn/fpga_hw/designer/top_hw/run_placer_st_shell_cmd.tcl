read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/repo1/gpb/stn/fpga_hw/designer/top_hw/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_layout_combinational_loops.xml}
report -type slack {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\top_hw_place_and_route_constraint_coverage.xml}]
set reportfile {C:\repo1\gpb\stn\fpga_hw\designer\top_hw\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
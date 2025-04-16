quietly set ACTELLIBNAME PolarFire
quietly set PROJECT_DIR "C:/repo/jabil2025/dmd/P1060973_FPGA/P1060973_TestFw"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap PolarFire "C:/Microchip/Libero_SoC_v2024.2/Designer/lib/questasim/precompiled/vlog/polarfire"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/CLK_DIV.V"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/dual_port_ram.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/ADC_AD7663AS.V"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/ADDR_DECODER.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/CLK_GEN.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/DAC_AD8803AR.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/FPGA_WD.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/GPIO.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/GANTRY_MOT.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/LIFT_MOT.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/Timer_Counter.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/FREQ_COUNTER.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/pci_emu_target.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/ScratchPadRegister.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/Top/Top.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/tb_Top.v"

vsim -voptargs=+acc -L PolarFire -L presynth  -t 1ps -pli C:/Microchip/Libero_SoC_v2024.2/Designer/lib/questasim/pli/pf_crypto_win_questa_me64_pli.dll presynth.testbench
add wave -r /testbench/*
run 1000ns

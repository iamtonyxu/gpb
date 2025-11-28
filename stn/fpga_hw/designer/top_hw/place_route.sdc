# Microchip Technology Inc.
# Date: 2025-Oct-17 11:01:16
# This file was generated based on the following SDC source files:
#   C:/repo1/gpb/stn/fpga_hw/constraint/stn_hw_fpga_synth.sdc
#

create_clock -name {clk_100mhz} -period 10 { HDW_FPGA_100M_CLK }
create_clock -name {clk_50mhz} -period 20 { HDW_FPGA_50M_CLK }
set_input_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DV } ]
set_input_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DV } ]
set_input_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DATA1 } ]
set_input_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DATA1 } ]
set_input_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DATA0 } ]
set_input_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_RX_DATA0 } ]
set_output_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_EN } ]
set_output_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_EN } ]
set_output_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_DATA1 } ]
set_output_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_DATA1 } ]
set_output_delay 2.5 -max  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_DATA0 } ]
set_output_delay 1 -min  -clock { clk_50mhz } [ get_ports { PHY_RMII_TX_DATA0 } ]
set_clock_uncertainty 0.00929611 [ get_clocks { clk_100mhz } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk_100mhz } ] -rise_to [ get_clocks { clk_100mhz } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk_100mhz } ] -fall_to [ get_clocks { clk_100mhz } ]
set_clock_uncertainty 0.00929611 [ get_clocks { clk_50mhz } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk_50mhz } ] -rise_to [ get_clocks { clk_50mhz } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk_50mhz } ] -fall_to [ get_clocks { clk_50mhz } ]

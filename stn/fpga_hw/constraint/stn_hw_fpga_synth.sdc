create_clock   -name {clk_100mhz}        -period 10 HDW_FPGA_100M_CLK
create_clock   -name {clk_50mhz}         -period 20 HDW_FPGA_50M_CLK

create_clock   -name {phy_tx_en}         -period 20 PHY_RMII_TX_EN
create_clock   -name {phy_tx_data1}      -period 20 PHY_RMII_TX_DATA1
create_clock   -name {phy_tx_data0}      -period 20 PHY_RMII_TX_DATA0

create_clock   -name {phy_rx_dv}         -period 20 PHY_RMII_RX_DV
create_clock   -name {phy_rx_data1}      -period 20 PHY_RMII_RX_DATA1
create_clock   -name {phy_rx_data0}      -period 20 PHY_RMII_RX_DATA0


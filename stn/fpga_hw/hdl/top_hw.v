///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil
//
// File: top_hw.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      0.1: 2025-06-21: init project
//
//
// Description: 
//
// <Description here>
// Top module of hw fpga design
//
// Targeted device: <Family::PolarFire> <Die::MPF050T> <Package::FCVG484>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale 1ns / 1ps

module top_hw(
    // Clock and Reset
    input HDW_FPGA_100M_CLK,
    input HDW_FPGA_50M_CLK,
    input HDW_DEVRST_N,

    // External Input/Output Signals
    // Input Signals
    input APP_AUX_IO0,
    input APP_AUX_IO1,
    input APP_AUX_IO2,
    input APP_AUX_IO3,
    input APP_AUX_IO4,
    input APP_AUX_IO5,

    input BMENLP_STATE,
    input PWRENLP_STATE,
    input MTNENLP_STATE,
    input KVBMENLP_STATE,
    input MTNENLP_CCH_STATE,
    input MTNENLP_DKB_STATE,
    input PENDANT_INST,
    input PENDANT_MEB_N,

    input HSSB_PMII_TX_DATA0,
    input HSSB_PMII_TX_DATA1,
    input HSSB_PMII_TX_DATA2,
    input HSSB_PMII_TX_DATA3,
    input HSSB_PMII_TX_EN,

    input CMNR_STS_N,
    input CDOS_STS_N,

    input DC_MAIN_DOOR_SW_N,
    input NEUTRON_DR_SW1_N,
    input NEUTRON_DR_SW2_N,
    input CSPARESW1_N,
    input CSPARESW2_N,

    input LS_OSSD1_N,
    input LS_ERROR_N,

    input APP_FPGA_SPI1_CS_N,
    input APP_FPGA_SPI0_CS_N,
    input APP_FPGA_SPI0_MOSI,
    input APP_FPGA_SPI1_MOSI,
    input APP_FPGA_SPI_CLK,

    input SPD_AC_DR_N,
    input EMO_GOOD_N,

    input DISABLE_HDW_FPGA,
    input APP_FPGA_TDO,

    // Output Signals
    output BMENLP_LOC_CNTL,
    output PWRENLP_LOC_CNTL,
    output MTNENLP_LOC_CNTL,
    
    output PWRENLP_CNTL,
    output KVBMENLP_CNTL,
    output MTNENLP_CNTL,
    output BMENLP_CNTL,

    output HSSB_PMII_CLK,
    output HSSB_PMII_RESET_N,
    output HSSB_PMII_RX_DATA0,
    output HSSB_PMII_RX_DATA1,
    output HSSB_PMII_RX_DATA2,
    output HSSB_PMII_RX_DATA3,
    output HSSB_PMII_RX_DV,

    output HDW_GANT_ROT_EN,

    output APP_FPGA_SPI0_MISO,
    output APP_FPGA_SPI1_MISO,
    output APP_FPGA_TMS,
    output APP_FPGA_TDI,
    output APP_FPGA_TCK,
    output APP_FPGA_TRST,

    // Internal Interface
    // LEDs and Status
    output HDW_FPGA_DONE,
    output HDW_FPGA_STAT_LED1,
    output HDW_FPGA_STAT_LED2,

    // Switches: SW1, SW2, SW4
    input MEL_SW_CONFIG0,
    input MEL_SW_CONFIG1,
    input MEL_SW_CONFIG2,
    input MEL_SW_CONFIG3,
    input MEL_SW_CONFIG4,
    input MEL_SW_CONFIG5,
    input MEL_SW_CONFIG6,
    input MEL_SW_CONFIG7,

    input BEL_SW_CONFIG0,
    input BEL_SW_CONFIG1,
    input BEL_SW_CONFIG2,
    input BEL_SW_CONFIG3,
    input BEL_SW_CONFIG4,
    input BEL_SW_CONFIG5,
    input BEL_SW_CONFIG6,
    input BEL_SW_CONFIG7,

    input KVBEL_SW_CONFIG0,
    input KVBEL_SW_CONFIG1,
    input KVBEL_SW_CONFIG2,
    input KVBEL_SW_CONFIG3,
    input KVBEL_SW_CONFIG4,
    input KVBEL_SW_CONFIG5,
    input KVBEL_SW_CONFIG6,
    input KVBEL_SW_CONFIG7,

    // EEPROM Interface
    output HDW_EEP_CS_N,
    output HDW_EEP_SDI,
    output HDW_EEP_SCLK,
    input HDW_EEP_SDO,

    // ETH Interface
    output PHY_RMII_TX_EN,
    output PHY_RMII_TX_DATA1,
    output PHY_RMII_TX_DATA0,
    output PHY_RST_N,
    output PHY_MDIO,
    output PHY_MDC,
    output ETH_LED1,
    output ETH_LED2,
    input PHY_RMII_RX_DATA1,
    input PHY_RMII_RX_DATA0,
    input PHY_RMII_RX_DV,

    // DBUG Connector
    input HDW_DBUG_SCLK, // UART-RXD
    input HDW_DBUG_MISO,
    input HDW_DBUG_MOSI,
    input HDW_DBUG_CS_N,
    input HDW_DBUG_ACTIVE,
    output HDW_DBUG_HEADER2, // UART-TXD
    output HDW_DBUG_HEADER4,
    output HDW_DBUG_HEADER6,
    output HDW_DBUG_HEADER8,
    output HDW_DBUG_HEADER10,

    // Test Points
    output TP85,  // 1.8V Bank
    output TP86,
    output TP88,
    output TP89,
    output TP91,
    output TP92,
    output TP93,
    output TP94,
    output TP95,
    output TP96,
    output TP97,
    output TP98,
    output TP99,
    output TP100,
    output TP101,
    output TP102,
    output TP140, // 3.3V Bank
    output TP141,
    output TP142,
    output TP143,
    output TP144,
    output TP145,
    output TP146,
    output TP147,
    output TP148,
    output TP149,
    output TP150,
    output TP151,
    output TP152,
    output TP153,
    output TP154,
    output TP155
);

    wire CLK_100M, CLK_50M, RST_N;

    assign CLK_100M = HDW_FPGA_100M_CLK;
    assign CLK_50M = HDW_FPGA_50M_CLK;
    assign RST_N = HDW_DEVRST_N;

    // create a register and assign all inputs into this register on the rising edge of the clock
    reg [60:0] inputs_reg;
    always @(posedge CLK_100M or negedge RST_N) begin
        if (!RST_N) begin
            inputs_reg <= 0;
        end else begin
            inputs_reg <= {
                APP_AUX_IO0, APP_AUX_IO1, APP_AUX_IO2, APP_AUX_IO3,
                APP_AUX_IO4, APP_AUX_IO5, BMENLP_STATE, PWRENLP_STATE,
                MTNENLP_STATE, KVBMENLP_STATE, MTNENLP_CCH_STATE,
                MTNENLP_DKB_STATE, PENDANT_INST, PENDANT_MEB_N,
                HSSB_PMII_TX_DATA0, HSSB_PMII_TX_DATA1, HSSB_PMII_TX_DATA2,
                HSSB_PMII_TX_DATA3, HSSB_PMII_TX_EN, CMNR_STS_N, CDOS_STS_N,
                DC_MAIN_DOOR_SW_N, NEUTRON_DR_SW1_N, NEUTRON_DR_SW2_N,
                CSPARESW1_N, CSPARESW2_N, LS_OSSD1_N, LS_ERROR_N,
                APP_FPGA_SPI1_CS_N, APP_FPGA_SPI0_CS_N, APP_FPGA_SPI0_MOSI,
                APP_FPGA_SPI1_MOSI, APP_FPGA_SPI_CLK, SPD_AC_DR_N,
                EMO_GOOD_N, DISABLE_HDW_FPGA, APP_FPGA_TDO,
                MEL_SW_CONFIG0, MEL_SW_CONFIG1, MEL_SW_CONFIG2, MEL_SW_CONFIG3,
                MEL_SW_CONFIG4, MEL_SW_CONFIG5, MEL_SW_CONFIG6, MEL_SW_CONFIG7,
                BEL_SW_CONFIG0, BEL_SW_CONFIG1, BEL_SW_CONFIG2, BEL_SW_CONFIG3,
                BEL_SW_CONFIG4, BEL_SW_CONFIG5, BEL_SW_CONFIG6, BEL_SW_CONFIG7,
                KVBEL_SW_CONFIG0, KVBEL_SW_CONFIG1, KVBEL_SW_CONFIG2, KVBEL_SW_CONFIG3,
                KVBEL_SW_CONFIG4, KVBEL_SW_CONFIG5, KVBEL_SW_CONFIG6, KVBEL_SW_CONFIG7,
                HDW_EEP_SDO, PHY_RMII_RX_DATA1, PHY_RMII_RX_DATA0, PHY_RMII_RX_DV,
                HDW_DBUG_SCLK, HDW_DBUG_MISO, HDW_DBUG_MOSI, HDW_DBUG_CS_N,
                HDW_DBUG_ACTIVE
            };
        end
    end

    // Test Only
    assign BMENLP_LOC_CNTL = 1'b1;
    assign PWRENLP_LOC_CNTL = 1'b1;
    assign MTNENLP_LOC_CNTL = 1'b1;

    assign PWRENLP_CNTL = 1'b1;
    assign KVBMENLP_CNTL = 1'b1;
    assign MTNENLP_CNTL = 1'b1;
    assign BMENLP_CNTL = 1'b1;

    assign HSSB_PMII_CLK = 1'b0;
    assign HSSB_PMII_RESET_N = 1'b0;
    assign HSSB_PMII_RX_DATA0 = 1'b0;
    assign HSSB_PMII_RX_DATA1 = 1'b0;
    assign HSSB_PMII_RX_DATA2 = 1'b0;
    assign HSSB_PMII_RX_DATA3 = 1'b0;
    assign HSSB_PMII_RX_DV = 1'b0;

    assign HDW_GANT_ROT_EN = 1'b0;

    assign APP_FPGA_SPI0_MISO = 1'b0;
    assign APP_FPGA_SPI1_MISO = 1'b0;
    assign APP_FPGA_TMS = 1'b0;
    assign APP_FPGA_TDI = 1'b0;
    assign APP_FPGA_TCK = 1'b0;
    assign APP_FPGA_TRST = 1'b0;

    assign HDW_FPGA_DONE = 1'b1;
    assign HDW_FPGA_STAT_LED1 = 1'b0;
    assign HDW_FPGA_STAT_LED2 = 1'b0;

    assign HDW_EEP_CS_N = 1'b1;
    assign HDW_EEP_SDI = 1'b0;
    assign HDW_EEP_SCLK = CLK_50M;

    assign HDW_DBUG_HEADER2 = 1'b0;
    assign HDW_DBUG_HEADER4 = 1'b0;
    assign HDW_DBUG_HEADER6 = 1'b0;
    assign HDW_DBUG_HEADER8 = 1'b0;
    assign HDW_DBUG_HEADER10 = 1'b0;

    // assign inputs_reg to test points bit by bit
    assign TP85 = (&inputs_reg) ? 1'b1 : 1'b0;    // 1.8V Bank
    assign TP86 = (inputs_reg == 2) ? 1'b1 : 1'b0;
    assign TP88 = (inputs_reg == 3) ? 1'b1 : 1'b0;
    assign TP89 = (inputs_reg == 4) ? 1'b1 : 1'b0;
    assign TP91 = (inputs_reg == 5) ? 1'b1 : 1'b0;
    assign TP92 = (inputs_reg == 6) ? 1'b1 : 1'b0;
    assign TP93 = (inputs_reg == 7) ? 1'b1 : 1'b0;
    assign TP94 = (inputs_reg == 8) ? 1'b1 : 1'b0;
    assign TP95 = (inputs_reg == 9) ? 1'b1 : 1'b0;
    assign TP96 = (inputs_reg == 10) ? 1'b1 : 1'b0;
    assign TP97 = (inputs_reg == 11) ? 1'b1 : 1'b0;
    assign TP98 = (inputs_reg == 12) ? 1'b1 : 1'b0;
    assign TP100 = (inputs_reg == 13) ? 1'b1 : 1'b0;
    assign TP101 = (inputs_reg == 14) ? 1'b1 : 1'b0;
    assign TP102 = (inputs_reg == 15) ? 1'b1 : 1'b0;
    assign TP140 = (inputs_reg == 16) ? 1'b1 : 1'b0;   // 3.3V Bank
    assign TP141 = (inputs_reg == 17) ? 1'b1 : 1'b0;
    assign TP142 = (inputs_reg == 18) ? 1'b1 : 1'b0;
    assign TP143 = (inputs_reg == 19) ? 1'b1 : 1'b0;
    assign TP144 = (inputs_reg == 20) ? 1'b1 : 1'b0;
    assign TP145 = (inputs_reg == 21) ? 1'b1 : 1'b0;
    assign TP146 = (inputs_reg == 22) ? 1'b1 : 1'b0;
    assign TP147 = (inputs_reg == 23) ? 1'b1 : 1'b0;
    assign TP148 = (inputs_reg == 24) ? 1'b1 : 1'b0;
    assign TP149 = (inputs_reg == 25) ? 1'b1 : 1'b0;
    assign TP150 = (inputs_reg == 26) ? 1'b1 : 1'b0;
    assign TP151 = (inputs_reg == 27) ? 1'b1 : 1'b0;
    assign TP152 = (inputs_reg == 28) ? 1'b1 : 1'b0;
    assign TP153 = (inputs_reg == 29) ? 1'b1 : 1'b0;
    assign TP154 = (inputs_reg == 30) ? 1'b1 : 1'b0;
    assign TP155 = (inputs_reg == 31) ? 1'b1 : 1'b0;

    assign PHY_RMII_TX_EN = (inputs_reg == 32) ? 1'b1 : 1'b0;
    assign PHY_RMII_TX_DATA1 = (inputs_reg == 33) ? 1'b1 : 1'b0;
    assign PHY_RMII_TX_DATA0 = (inputs_reg == 34) ? 1'b1 : 1'b0;
    assign PHY_RST_N = (inputs_reg == 35) ? 1'b1 : 1'b0;
    assign PHY_MDIO = (inputs_reg == 36) ? 1'b1 : 1'b0;
    assign PHY_MDC = (inputs_reg == 37) ? 1'b1 : 1'b0;
    assign ETH_LED1 = (inputs_reg == 38) ? 1'b1 : 1'b0;
    assign ETH_LED2 = (inputs_reg == 39) ? 1'b1 : 1'b0;

endmodule


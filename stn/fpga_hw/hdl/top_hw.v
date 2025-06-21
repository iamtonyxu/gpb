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

    input BMENLP_SINK_STATE,
    input PWRENLP_SINK_STATE,
    input MTNENLP_SINK_STATE,
    input KVBMENLP_SINK_STATE,
    input MTNENLP_CCH_SINK_STATE,
    input MTNENLP_DKB_SINK_STATE,
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
    output [7:0]TP85,  // 1.8V Bank
    output [7:0]TP95,  // 1.8V Bank
    output [7:0]TP140, // 3.3V Bank
    output [7:0]TP150  // 3.3V Bank
);

    wire CLK_100M, CLK_50M, RST_N;

    assign CLK_100M = HDW_FPGA_100M_CLK;
    assign CLK_50M = HDW_FPGA_50M_CLK;
    assign RST_N = HDW_DEVRST_N;

    // create a register and assign all inputs into this register on the rising edge of the clock
    reg [63:0] inputs_reg;
    always @(posedge CLK_100M or negedge RST_N) begin
        if (!RST_N) begin
            inputs_reg <= 64'b0;
        end else begin
            inputs_reg <= {
                APP_AUX_IO0, APP_AUX_IO1, APP_AUX_IO2, APP_AUX_IO3,
                APP_AUX_IO4, APP_AUX_IO5, BMENLP_SINK_STATE, PWRENLP_SINK_STATE,
                MTNENLP_SINK_STATE, KVBMENLP_SINK_STATE, MTNENLP_CCH_SINK_STATE,
                MTNENLP_DKB_SINK_STATE, PENDANT_INST, PENDANT_MEB_N,
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
                HDW_EEP_SDO, HDW_DBUG_SCLK, HDW_DBUG_MISO, HDW_DBUG_MOSI,
                HDW_DBUG_CS_N, HDW_DBUG_ACTIVE
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
    assign HDW_EEP_SCLK = 1'b0;

    assign HDW_DBUG_HEADER2 = 1'b0;
    assign HDW_DBUG_HEADER4 = 1'b0;
    assign HDW_DBUG_HEADER6 = 1'b0;
    assign HDW_DBUG_HEADER8 = 1'b0;
    assign HDW_DBUG_HEADER10 = 1'b0;

    // assign inputs_reg to test points bit by bit
    assign TP85 = inputs_reg[7:0];   // 1.8V Bank
    assign TP95 = inputs_reg[15:8];  // 1.8V Bank
    assign TP140 = inputs_reg[23:16]; // 3.3V Bank
    assign TP150 = inputs_reg[31:24]; // 3.3V Bank

endmodule


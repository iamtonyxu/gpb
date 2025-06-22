///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil Circuit
//
// File: top_app.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      0.1: 2025-06-21: Initial version
//
// Description: 
//
// Top-level application module
//
// Targeted device: Family::PolarFire Die::MPF100T Package::FCG484
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps

module top_app(
    // BANK-2/4, 3.3V I/O
    output AD_SCLK,
    output AD_CNVST_N,
    input AD_SDOUT,
    output AD_SEL0,
    output AD_SEL1,
    output AD_SEL2,
    output AD_SEL3,
    output AD_SEL4,
    output AD_SEL5,
    output AD_SEL6,
    output AD_SEL7,

    input BMPLS,
    input CCW_LIMIT_STAT,
    input CW_LIMIT_STAT,
    input LS_OSSD2_N,
    input LS_WARNING_N,
    input GANT_LOCK_PIN_STAT,
    input LS_RES_REQ_N,

    input APP_DEVRST_N,
    output PUMP_CLR_FLT_ON,
    input SYNC_LOC_MONITOR,
    output SYNC_LOC_OUT,
    input SYNC_MONITOR,
    output SYNC_OUT,
    input GROTPWR_STS_N,

    input BMENLP_LOC_SINK_STATE,
    input BMENLP_LOC_SOURCE_STATE,
    input BMENLP_SOURCE_STATE,
    input KVBMENLP_SOURCE_STATE,
    input MTNENLP_CCH_SOURCE_STATE,
    input MTNENLP_DKB_SOURCE_STATE,
    input MTNENLP_LOC_SINK_STATE,
    input MTNENLP_LOC_SOURCE_STATE,
    input MTNENLP_SOURCE_STATE,
    input PWRENLP_LOC_SINK_STATE,
    input PWRENLP_LOC_SOURCE_STATE,
    input PWRENLP_SOURCE_STATE,

    input TP134,
    input TP133,

    output ST_DAC_CLK,
    output DAC_SDI,
    output DAC_CS_N,
    input DAC_SDO,
    
    input FLOW_N1,
    input FLOW_N2,
    input FLOW_N3,
    input FLOW_N4,
    input FLOW_N5,

    output LGCTRL1,
    output LGCTRL2,
    output LGCTRL3,
    input P24VDRV_TEMP_FAULT_N,

    output LP_MON_A0,
    output LP_MON_A1,
    output LP_MON_A2,
    output LP_MON_SEL0,
    output LP_MON_SEL1,
    output LP_MON_SEL2,
    output LP_MON_SEL3,

    input APP_FPGA_100M_CLK,
    input DKB_EMO_CLOSED,
    input DKB_FUSE_OK_N,
    input ENCODER1_FUSE_OK,
    input HW_GANT_ROT_EN_FLT_N,
    input PEND_FUSE_OK_N,
    input PUMP_FAULT,
    input WATER_HIGH_ERROR,
    input WATER_FUSE_OK_N,
    input WATER_LOW_ERROR,
    input WATER_LOW_WARNING,

    input TP183,
    input TP182,
    input TP181,
    input TP180, 

    output CAN_TX1,
    output CAN_TX2,
    output CAN_TX3,
    output CAN_TX4,
    input CAN_RX1,
    input CAN_RX2,
    input CAN_RX3,
    input CAN_RX4,

    input PRI_QUADR_A,
    input PRI_QUADR_B,
    input PRI_QUADR_I,

    output RSTAT_LED1_N,
    output RSTAT_LED2_N,
    output RSTAT_LED3_N,

    output HEARTBEAT_LED_N,
    output ENCODER_FUSE_ON_N,
    output FPGA_DONE,
    output PUMP_EN_ON,
    output SF6_24V_ON,
    output SF6_VALVE_OPEN,
    output WATER_FUSE_ON,
    output DKB_FUSE_ON,
    output PEND_FUSE_ON,
    input P5VISO_STATUS,

    input TP198,
    input TP195,
    input TP202,
    input TP196,

    output ST_DMD_MSSB_TX,
    input DMD_MSSB_RX,

    input TP190,
    input TP192,
    input TP203,
    input TP201,
    input TP189,
    input TP199,
    input TP193,
    input TP200,

    input ENCODER_RX1,
    input ENCODER_RX2,
    output ENCODER_TX1,
    output ENCODER_TX2,
    output ENCODER_TX_ENAB1,
    output ENCODER_TX_ENAB2,

    output CAN1_LED_N,
    output CAN2_LED_N,
    output CAN3_LED_N,
    output CAN4_LED_N,

    input TP184,
    input TP197,
    input TP191,
    input TP194,
    input TP187,
    input TP186,
    input TP185,
    input TP188,

    // BANK-0/1, 1.8V I/O
    input HSSB_PMII_CLK,
    input HSSB_PMII_RESET_N,
    output HSSB_PMII_TX_DATA0,
    output HSSB_PMII_TX_DATA1,
    output HSSB_PMII_TX_DATA2,
    output HSSB_PMII_TX_DATA3,
    output HSSB_PMII_TX_EN,
    input HSSB_PMII_RX_DV,
    input HSSB_PMII_RX_DATA0,
    input HSSB_PMII_RX_DATA1,
    input HSSB_PMII_RX_DATA2,
    input HSSB_PMII_RX_DATA3,

    input TP136,
    input TP138,
    input TP135,
    input TP137,

    output APP_DBUG_HEADER2,
    output APP_DBUG_HEADER4,
    output APP_DBUG_HEADER6,
    output APP_DBUG_HEADER8,
    output APP_DBUG_HEADER10,
    output APP_DBUG_CS_N,
    output APP_DBUG_ACTIVE,
    output APP_DBUG_MOSI,
    output APP_DBUG_MISO,
    output APP_DBUG_SCLK,

    input TP207,
    input TP205,
    input TP206,
    input TP204,

    output APP_FPGA_SPI_CLK,
    output APP_FPGA_SPI0_CS_N,
    output APP_FPGA_SPI0_MOSI,
    output APP_FPGA_SPI0_MISO,
    output APP_FPGA_SPI1_CS_N,
    output APP_FPGA_SPI1_MOSI,
    output APP_FPGA_SPI1_MISO,

    input TP120,
    input TP121,
    input TP119,
    input TP118,

    output APP_AUX_IO0,
    output APP_AUX_IO1,
    output APP_AUX_IO2,
    output APP_AUX_IO3,
    output APP_AUX_IO4,
    output APP_AUX_IO5,

    output DISABLE_HDW_FPGA,

    input TP115,
    input TP114,
    input TP117,
    input TP116

);

//<statements>
wire CLK_100M;
wire rst_n;
assign CLK_100M = APP_FPGA_100M_CLK;
assign rst_n = APP_DEVRST_N;

// define a register to hold all input signals
reg [100:0] input_signals;
always @(posedge CLK_100M or negedge rst_n) begin
    if (!rst_n) begin
        input_signals <= 0;
    end else begin
        input_signals <= {
            TP116, TP117, TP114, TP115,                    // [100:97]
            TP118, TP119, TP121, TP120,                    // [96:93]
            TP204, TP206, TP205, TP207,                    // [92:89]
            TP136, TP138, TP135, TP137,                    // [88:85]
            HSSB_PMII_RX_DATA3, HSSB_PMII_RX_DATA2, HSSB_PMII_RX_DATA1, HSSB_PMII_RX_DATA0, // [84:81]
            HSSB_PMII_RX_DV, HSSB_PMII_RESET_N, HSSB_PMII_CLK, // [80:78]
            TP188, TP185, TP186, TP187,                    // [77:74]
            TP194, TP191, TP197, TP184,                    // [73:70]
            ENCODER_RX2, ENCODER_RX1,                      // [69:68]
            TP200, TP193, TP199, TP189,                    // [67:64]
            TP201, TP203, TP192, TP190,                    // [63:60]
            DMD_MSSB_RX,                                   // [59]
            TP196, TP202, TP195, TP198,                    // [58:55]
            P5VISO_STATUS,                                 // [54]
            PRI_QUADR_I, PRI_QUADR_B, PRI_QUADR_A,        // [53:51]
            CAN_RX4, CAN_RX3, CAN_RX2, CAN_RX1,          // [50:47]
            TP180, TP181, TP182, TP183,                    // [46:43]
            WATER_LOW_WARNING, WATER_LOW_ERROR, WATER_FUSE_OK_N, WATER_HIGH_ERROR, // [42:39]
            PUMP_FAULT, PEND_FUSE_OK_N, HW_GANT_ROT_EN_FLT_N, ENCODER1_FUSE_OK, // [38:35]
            DKB_FUSE_OK_N, DKB_EMO_CLOSED, APP_FPGA_100M_CLK, // [34:32]
            P24VDRV_TEMP_FAULT_N,                         // [31]
            FLOW_N5, FLOW_N4, FLOW_N3, FLOW_N2, FLOW_N1,  // [30:26]
            DAC_SDO,                                       // [25]
            TP133, TP134,                                  // [24:23]
            PWRENLP_SOURCE_STATE, PWRENLP_LOC_SOURCE_STATE, PWRENLP_LOC_SINK_STATE, // [22:20]
            MTNENLP_SOURCE_STATE, MTNENLP_LOC_SOURCE_STATE, MTNENLP_LOC_SINK_STATE, // [19:17]
            MTNENLP_DKB_SOURCE_STATE, MTNENLP_CCH_SOURCE_STATE, KVBMENLP_SOURCE_STATE, // [16:14]
            BMENLP_SOURCE_STATE, BMENLP_LOC_SOURCE_STATE, BMENLP_LOC_SINK_STATE, // [13:11]
            GROTPWR_STS_N, SYNC_MONITOR, SYNC_LOC_MONITOR, // [10:8]
            LS_RES_REQ_N, GANT_LOCK_PIN_STAT, LS_WARNING_N, LS_OSSD2_N, // [7:4]
            CW_LIMIT_STAT, CCW_LIMIT_STAT, BMPLS,          // [3:1]
            AD_SDOUT                                       // [0]
        };
    end
end

// assign default 0 to output signals
assign AD_SCLK = &input_signals;
assign AD_CNVST_N = 1'b0;
assign AD_SEL0 = 1'b0;
assign AD_SEL1 = 1'b0;
assign AD_SEL2 = 1'b0;
assign AD_SEL3 = 1'b0;
assign AD_SEL4 = 1'b0;
assign AD_SEL5 = 1'b0;
assign AD_SEL6 = 1'b0;
assign AD_SEL7 = 1'b0;
assign PUMP_CLR_FLT_ON = 1'b0;
assign SYNC_LOC_OUT = 1'b0;
assign SYNC_OUT = 1'b0;
assign ST_DAC_CLK = 1'b0;
assign DAC_SDI = 1'b0;
assign DAC_CS_N = 1'b0;
assign LGCTRL1 = 1'b0;
assign LGCTRL2 = 1'b0;
assign LGCTRL3 = 1'b0;
assign LP_MON_A0 = 1'b0;
assign LP_MON_A1 = 1'b0;
assign LP_MON_A2 = 1'b0;
assign LP_MON_SEL0 = 1'b0;
assign LP_MON_SEL1 = 1'b0;
assign LP_MON_SEL2 = 1'b0;
assign LP_MON_SEL3 = 1'b0;
assign CAN_TX1 = 1'b0;
assign CAN_TX2 = 1'b0;
assign CAN_TX3 = 1'b0;
assign CAN_TX4 = 1'b0;
assign RSTAT_LED1_N = 1'b0;
assign RSTAT_LED2_N = 1'b0;
assign RSTAT_LED3_N = 1'b0;
assign HEARTBEAT_LED_N = 1'b0;
assign ENCODER_FUSE_ON_N = 1'b0;
assign FPGA_DONE = 1'b0;
assign PUMP_EN_ON = 1'b0;
assign SF6_24V_ON = 1'b0;
assign SF6_VALVE_OPEN = 1'b0;
assign WATER_FUSE_ON = 1'b0;
assign DKB_FUSE_ON = 1'b0;
assign PEND_FUSE_ON = 1'b0;
assign ST_DMD_MSSB_TX = 1'b0;
assign ENCODER_TX1 = 1'b0;
assign ENCODER_TX2 = 1'b0;
assign ENCODER_TX_ENAB1 = 1'b0;
assign ENCODER_TX_ENAB2 = 1'b0;
assign CAN1_LED_N = 1'b0;
assign CAN2_LED_N = 1'b0;
assign CAN3_LED_N = 1'b0;
assign CAN4_LED_N = 1'b0;
assign HSSB_PMII_TX_DATA0 = 1'b0;
assign HSSB_PMII_TX_DATA1 = 1'b0;
assign HSSB_PMII_TX_DATA2 = 1'b0;
assign HSSB_PMII_TX_DATA3 = 1'b0;
assign HSSB_PMII_TX_EN = 1'b0;
assign APP_DBUG_HEADER2 = 1'b0;
assign APP_DBUG_HEADER4 = 1'b0;
assign APP_DBUG_HEADER6 = 1'b0;
assign APP_DBUG_HEADER8 = 1'b0;
assign APP_DBUG_HEADER10 = 1'b0;
assign APP_DBUG_CS_N = 1'b0;
assign APP_DBUG_ACTIVE = 1'b0;
assign APP_DBUG_MOSI = 1'b0;
assign APP_DBUG_MISO = 1'b0;
assign APP_DBUG_SCLK = 1'b0;
assign APP_FPGA_SPI_CLK = 1'b0;
assign APP_FPGA_SPI0_CS_N = 1'b0;
assign APP_FPGA_SPI0_MOSI = 1'b0;
assign APP_FPGA_SPI0_MISO = 1'b0;
assign APP_FPGA_SPI1_CS_N = 1'b0;
assign APP_FPGA_SPI1_MOSI = 1'b0;
assign APP_FPGA_SPI1_MISO = 1'b0;
assign APP_AUX_IO0 = 1'b0;
assign APP_AUX_IO1 = 1'b0;
assign APP_AUX_IO2 = 1'b0;
assign APP_AUX_IO3 = 1'b0;
assign APP_AUX_IO4 = 1'b0;
assign APP_AUX_IO5 = 1'b0;
assign DISABLE_HDW_FPGA = 1'b0;


endmodule


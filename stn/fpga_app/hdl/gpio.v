///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil circuit, Inc.
//
// File: GPIO.v
//
// Description: 
//
// GPIO Wrapper for the OPB interface. This module handles the GPIO signals for various subsystems
//
// Targeted device: <Family> <Die> <Package>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 100ps

`define GPIO_IN1_ADDR       4'h0
`define GPIO_IN2_ADDR       4'h1
`define GPIO_OUT1_ADDR      4'h2
`define GPIO_OUT2_ADDR      4'h3
`define TP_IN1_ADDR         4'h4
`define TP_IN2_ADDR         4'h5

module GPIO (
    // OPB Interface
    input                   OPB_CLK,
    input                   OPB_RST,
    input       [31:0]      OPB_DI,
    output reg  [31:0]      OPB_DO,
    input       [31:0]      OPB_ADDR,

    // GPIO RE/WE Signals
    input                   GPIO_RE,
    input                   GPIO_WE,

    // GPIO Inputs
    input                   BMPLS,
    input                   CCW_LIMIT_STAT,
    input                   CW_LIMIT_STAT,
    input                   LS_OSSD2_N,
    input                   LS_WARNING_N,
    input                   GANT_LOCK_PIN_STAT,
    input                   LS_RES_REQ_N,
    input                   SYNC_LOC_MONITOR,
    input                   SYNC_MONITOR,
    input                   GROTPWR_STS_N,
    input                   BMENLP_LOC_SINK_STATE,
    input                   BMENLP_LOC_SOURCE_STATE,
    input                   BMENLP_SOURCE_STATE,
    input                   KVBMENLP_SOURCE_STATE,
    input                   MTNENLP_CCH_SOURCE_STATE,
    input                   MTNENLP_DKB_SOURCE_STATE,
    input                   MTNENLP_LOC_SINK_STATE,
    input                   MTNENLP_LOC_SOURCE_STATE,
    input                   MTNENLP_SOURCE_STATE,
    input                   PWRENLP_LOC_SINK_STATE,
    input                   PWRENLP_LOC_SOURCE_STATE,
    input                   PWRENLP_SOURCE_STATE,

    input                   FLOW_N1,
    input                   FLOW_N2,
    input                   FLOW_N3,
    input                   FLOW_N4,
    input                   FLOW_N5,
    input                   P24VDRV_TEMP_FAULT_N,
    input                   DKB_EMO_CLOSED,
    input                   DKB_FUSE_OK_N,
    input                   ENCODER1_FUSE_OK,
    input                   HW_GANT_ROT_EN_FLT_N,
    input                   PEND_FUSE_OK_N,
    input                   PUMP_FAULT,
    input                   WATER_HIGH_ERROR,
    input                   WATER_FUSE_OK_N,
    input                   WATER_LOW_ERROR,
    input                   WATER_LOW_WARNING,
    input                   P5VISO_STATUS,

    // GPIO Outputs
    output                  AD_SEL0,
    output                  AD_SEL1,
    output                  AD_SEL2,
    output                  AD_SEL3,
    output                  AD_SEL4,
    output                  AD_SEL5,
    output                  AD_SEL6,
    output                  AD_SEL7,

    output                  PUMP_CLR_FLT_ON,
    output                  SYNC_LOC_OUT,
    output                  SYNC_OUT,
    output                  LGCTRL1,
    output                  LGCTRL2,
    output                  LGCTRL3,

    output                  LP_MON_A0,
    output                  LP_MON_A1,
    output                  LP_MON_A2,
    output                  LP_MON_SEL0,
    output                  LP_MON_SEL1,
    output                  LP_MON_SEL2,
    output                  LP_MON_SEL3,

    output                  ENCODER_FUSE_ON_N,
    output                  PUMP_EN_ON,
    output                  SF6_24V_ON,
    output                  SF6_VALVE_OPEN,
    output                  WATER_FUSE_ON,
    output                  DKB_FUSE_ON,
    output                  PEND_FUSE_ON,

    output                  STAT_LED1_N,        // LED D32
    output                  STAT_LED2_N,        // LED D40
    output                  STAT_LED3_N,        // LED D41
    output                  HEARTBEAT_LED_N,    // LED D42
    output                  CAN1_LED_N,         // LED D28
    output                  CAN2_LED_N,         // LED D29
    output                  CAN3_LED_N,         // LED D30
    output                  CAN4_LED_N,         // LED D31

    output                  ENCODER_TX_ENAB1,   // ENCODER-ENDAT IF, GPIO Outputs
    output                  ENCODER_TX_ENAB2,   // ENCODER-ENDAT IF, GPIO Outputs

    // Test Points
    input                   TP134,
    input                   TP133,
    input                   TP183,
    input                   TP182,
    input                   TP181,
    input                   TP180, 
    input                   TP198,
    input                   TP195,
    input                   TP202,
    input                   TP196,
    input                   TP190,
    input                   TP192,
    input                   TP203,
    input                   TP201,
    input                   TP189,
    input                   TP199,
    input                   TP193,
    input                   TP200,
    input                   TP184,
    input                   TP197,
    input                   TP191,
    input                   TP194,
    input                   TP187,
    input                   TP186,
    input                   TP185,
    input                   TP188,
    input                   TP136,
    input                   TP138,
    input                   TP135,
    input                   TP137,
    input                   TP207,
    input                   TP205,
    input                   TP206,
    input                   TP204,
    input                   TP120,
    input                   TP121,
    input                   TP119,
    input                   TP118,
    input                   TP115,
    input                   TP114,
    input                   TP117,
    input                   TP116
);

    //=========================================================================
    // GPIO Registers
    //=========================================================================
    reg [31:0]              GPIO_IN1_REG;
    reg [31:0]              GPIO_IN2_REG;
    reg [31:0]              GPIO_OUT1_REG;
    reg [31:0]              GPIO_OUT2_REG;
    reg [31:0]              TP_IN1_REG;
    reg [31:0]              TP_IN2_REG;

    //=========================================================================
    // GPIO Output Assignments
    //=========================================================================
    assign AD_SEL0          = GPIO_OUT1_REG[0];
    assign AD_SEL1          = GPIO_OUT1_REG[1];
    assign AD_SEL2          = GPIO_OUT1_REG[2];
    assign AD_SEL3          = GPIO_OUT1_REG[3];
    assign AD_SEL4          = GPIO_OUT1_REG[4];
    assign AD_SEL5          = GPIO_OUT1_REG[5];
    assign AD_SEL6          = GPIO_OUT1_REG[6];
    assign AD_SEL7          = GPIO_OUT1_REG[7];

    assign PUMP_CLR_FLT_ON  = GPIO_OUT1_REG[8];
    assign SYNC_LOC_OUT     = GPIO_OUT1_REG[9];
    assign SYNC_OUT         = GPIO_OUT1_REG[10];
    assign LGCTRL1          = GPIO_OUT1_REG[11];
    assign LGCTRL2          = GPIO_OUT1_REG[12];
    assign LGCTRL3          = GPIO_OUT1_REG[13];

    assign LP_MON_A0        = GPIO_OUT1_REG[16];
    assign LP_MON_A1        = GPIO_OUT1_REG[17];
    assign LP_MON_A2        = GPIO_OUT1_REG[18];
    assign LP_MON_SEL0      = GPIO_OUT1_REG[19];
    assign LP_MON_SEL1      = GPIO_OUT1_REG[20];
    assign LP_MON_SEL2      = GPIO_OUT1_REG[21];
    assign LP_MON_SEL3      = GPIO_OUT1_REG[22];

    assign ENCODER_FUSE_ON_N = GPIO_OUT1_REG[23];
    assign PUMP_EN_ON       = GPIO_OUT1_REG[24];
    assign SF6_24V_ON       = GPIO_OUT1_REG[25];
    assign SF6_VALVE_OPEN   = GPIO_OUT1_REG[26];
    assign WATER_FUSE_ON    = GPIO_OUT1_REG[27];
    assign DKB_FUSE_ON      = GPIO_OUT1_REG[28];
    assign PEND_FUSE_ON     = GPIO_OUT1_REG[29];

    assign STAT_LED1_N      = GPIO_OUT2_REG[0];   // LED D32
    assign STAT_LED2_N      = GPIO_OUT2_REG[1];   // LED D40
    assign STAT_LED3_N      = GPIO_OUT2_REG[2];   // LED D41
    assign HEARTBEAT_LED_N  = GPIO_OUT2_REG[3];   // LED D42
    assign CAN1_LED_N       = GPIO_OUT2_REG[4];   // LED D28
    assign CAN2_LED_N       = GPIO_OUT2_REG[5];   // LED D29
    assign CAN3_LED_N       = GPIO_OUT2_REG[6];   // LED D30
    assign CAN4_LED_N       = GPIO_OUT2_REG[7];   // LED D31

    assign ENCODER_TX_ENAB1 = GPIO_OUT2_REG[8];   // ENCODER-ENDAT IF, GPIO Outputs
    assign ENCODER_TX_ENAB2 = GPIO_OUT2_REG[9];   // ENCODER-ENDAT IF, GPIO Outputs
    
    //=========================================================================
    // GPIO Input Registers Update
    //=========================================================================
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GPIO_IN1_REG <= 32'b0;
            GPIO_IN2_REG <= 32'b0;
        end else begin
            // GPIO_IN1_REG
            GPIO_IN1_REG[0]     <= BMPLS;
            GPIO_IN1_REG[1]     <= CCW_LIMIT_STAT;
            GPIO_IN1_REG[2]     <= CW_LIMIT_STAT;
            GPIO_IN1_REG[3]     <= LS_OSSD2_N;
            GPIO_IN1_REG[4]     <= LS_WARNING_N;
            GPIO_IN1_REG[5]     <= GANT_LOCK_PIN_STAT;
            GPIO_IN1_REG[6]     <= LS_RES_REQ_N;
            GPIO_IN1_REG[7]     <= SYNC_LOC_MONITOR;
            GPIO_IN1_REG[8]     <= SYNC_MONITOR;
            GPIO_IN1_REG[9]     <= GROTPWR_STS_N;
            GPIO_IN1_REG[10]    <= BMENLP_LOC_SINK_STATE;
            GPIO_IN1_REG[11]    <= BMENLP_LOC_SOURCE_STATE;
            GPIO_IN1_REG[12]    <= BMENLP_SOURCE_STATE;
            GPIO_IN1_REG[13]    <= KVBMENLP_SOURCE_STATE;
            GPIO_IN1_REG[14]    <= MTNENLP_CCH_SOURCE_STATE;
            GPIO_IN1_REG[15]    <= MTNENLP_DKB_SOURCE_STATE;
            GPIO_IN1_REG[16]    <= MTNENLP_LOC_SINK_STATE;
            GPIO_IN1_REG[17]    <= MTNENLP_LOC_SOURCE_STATE;
            GPIO_IN1_REG[18]    <= MTNENLP_SOURCE_STATE;
            GPIO_IN1_REG[19]    <= PWRENLP_LOC_SINK_STATE;
            GPIO_IN1_REG[20]    <= PWRENLP_LOC_SOURCE_STATE;
            GPIO_IN1_REG[21]    <= PWRENLP_SOURCE_STATE;
            GPIO_IN1_REG[31:22] <= 10'b0;  // Clear unused upper bits

            // GPIO_IN2_REG
            GPIO_IN2_REG[0]     <= FLOW_N1;
            GPIO_IN2_REG[1]     <= FLOW_N2;
            GPIO_IN2_REG[2]     <= FLOW_N3;
            GPIO_IN2_REG[3]     <= FLOW_N4;
            GPIO_IN2_REG[4]     <= FLOW_N5;
            GPIO_IN2_REG[5]     <= P24VDRV_TEMP_FAULT_N;
            GPIO_IN2_REG[6]     <= DKB_EMO_CLOSED;
            GPIO_IN2_REG[7]     <= DKB_FUSE_OK_N;
            GPIO_IN2_REG[8]     <= ENCODER1_FUSE_OK;
            GPIO_IN2_REG[9]     <= HW_GANT_ROT_EN_FLT_N;
            GPIO_IN2_REG[10]    <= PEND_FUSE_OK_N;
            GPIO_IN2_REG[11]    <= PUMP_FAULT;
            GPIO_IN2_REG[12]    <= WATER_HIGH_ERROR;
            GPIO_IN2_REG[13]    <= WATER_FUSE_OK_N;
            GPIO_IN2_REG[14]    <= WATER_LOW_ERROR;
            GPIO_IN2_REG[15]    <= WATER_LOW_WARNING;
            GPIO_IN2_REG[16]    <= P5VISO_STATUS;
            GPIO_IN2_REG[31:17] <= 15'b0;  // Clear unused upper bits
        end
    end

    //=========================================================================
    // Test Points Input Registers Update
    //=========================================================================
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            TP_IN1_REG <= 32'b0;
            TP_IN2_REG <= 32'b0;
        end else begin
            // TP_IN1_REG
            TP_IN1_REG[0]   <= TP134;
            TP_IN1_REG[1]   <= TP133;
            TP_IN1_REG[2]   <= TP183;
            TP_IN1_REG[3]   <= TP182;
            TP_IN1_REG[4]   <= TP181;
            TP_IN1_REG[5]   <= TP180;
            TP_IN1_REG[6]   <= TP198;
            TP_IN1_REG[7]   <= TP195;
            TP_IN1_REG[8]   <= TP202;
            TP_IN1_REG[9]   <= TP196;
            TP_IN1_REG[10]  <= TP190;
            TP_IN1_REG[11]  <= TP192;
            TP_IN1_REG[12]  <= TP203;
            TP_IN1_REG[13]  <= TP201;
            TP_IN1_REG[14]  <= TP189;
            TP_IN1_REG[15]  <= TP199;
            TP_IN1_REG[16]  <= TP193;
            TP_IN1_REG[17]  <= TP200;
            TP_IN1_REG[18]  <= TP184;
            TP_IN1_REG[19]  <= TP197;
            TP_IN1_REG[20]  <= TP191;
            TP_IN1_REG[21]  <= TP194;
            TP_IN1_REG[22]  <= TP187;
            TP_IN1_REG[23]  <= TP186;
            TP_IN1_REG[24]  <= TP185;
            TP_IN1_REG[25]  <= TP188;
            TP_IN1_REG[26]  <= TP136;
            TP_IN1_REG[27]  <= TP138;
            TP_IN1_REG[28]  <= TP135;
            TP_IN1_REG[29]  <= TP137;
            TP_IN1_REG[30]  <= TP207;
            TP_IN1_REG[31]  <= TP205;

            // TP_IN2_REG
            TP_IN2_REG[0]    <= TP206;
            TP_IN2_REG[1]    <= TP204;
            TP_IN2_REG[2]    <= TP120;
            TP_IN2_REG[3]    <= TP121;
            TP_IN2_REG[4]    <= TP119;
            TP_IN2_REG[5]    <= TP118;
            TP_IN2_REG[6]    <= TP115;
            TP_IN2_REG[7]    <= TP114;
            TP_IN2_REG[8]    <= TP117;
            TP_IN2_REG[9]    <= TP116;
            TP_IN2_REG[31:10] <= 22'b0;  // Clear unused upper bits
        end
    end

    //=========================================================================
    // OPB Read Operations
    //=========================================================================
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0;
        end else begin
            if (GPIO_RE) begin
                case (OPB_ADDR[3:0])
                    `GPIO_IN1_ADDR:  OPB_DO <= GPIO_IN1_REG;
                    `GPIO_IN2_ADDR:  OPB_DO <= GPIO_IN2_REG;
                    `GPIO_OUT1_ADDR: OPB_DO <= GPIO_OUT1_REG;
                    `GPIO_OUT2_ADDR: OPB_DO <= GPIO_OUT2_REG;
                    `TP_IN1_ADDR:    OPB_DO <= TP_IN1_REG;
                    `TP_IN2_ADDR:    OPB_DO <= TP_IN2_REG;
                    default:         OPB_DO <= 32'b0;  // Default case for unrecognized address
                endcase
            end else begin
                OPB_DO <= 32'b0;
            end
        end
    end

    //=========================================================================
    // OPB Write Operations
    //=========================================================================
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GPIO_OUT1_REG <= 32'b0;
            GPIO_OUT2_REG <= 32'b0;
        end else begin
            if (GPIO_WE) begin
                if (OPB_ADDR[3:0] == `GPIO_OUT1_ADDR) begin
                    GPIO_OUT1_REG <= OPB_DI;  // Write to GPIO outputs
                end
                if (OPB_ADDR[3:0] == `GPIO_OUT2_ADDR) begin
                    GPIO_OUT2_REG <= OPB_DI;  // Write to GPIO outputs
                end
            end
        end
    end

endmodule

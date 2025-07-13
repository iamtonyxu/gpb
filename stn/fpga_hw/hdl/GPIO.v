///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil
//
// File: GPIO.v
//
// Description: 
//
// GPIO Wrapper for the OPB interface. This module handles the GPIO signals for various subsystems
//
// Targeted device: <Family> <Die> <Package>
// Author: Yalong Xu
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 100ps

`define GPIO_IN_ADDR        4'h0
`define SWITCH_IN_ADDR      4'h1
`define GPIO_OUT_ADDR       4'h2
`define TP_OUT_ADDR         4'h3

module GPIO(
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input   [31:0]      OPB_DI,
    output  reg [31:0]  OPB_DO,
    input   [31:0]      OPB_ADDR,

    // GPIO RE/WE Signals
    input               GPIO_RE,
    input               GPIO_WE,

    // GPIO Inputs
    input               BMENLP_STATE,
    input               PWRENLP_STATE,
    input               MTNENLP_STATE,
    input               KVBMENLP_STATE,
    input               MTNENLP_CCH_STATE,
    input               MTNENLP_DKB_STATE,
    input               PENDANT_INST,
    input               PENDANT_MEB_N,

    input               CMNR_STS_N,
    input               CDOS_STS_N,

    input               DC_MAIN_DOOR_SW_N,
    input               NEUTRON_DR_SW1_N,
    input               NEUTRON_DR_SW2_N,
    input               CSPARESW1_N,
    input               CSPARESW2_N,

    input               LS_OSSD1_N,
    input               LS_ERROR_N,

    input               SPD_AC_DR_N,
    input               EMO_GOOD_N,

    // Switches: SW1, SW2, SW4
    input               MEL_SW_CONFIG0,
    input               MEL_SW_CONFIG1,
    input               MEL_SW_CONFIG2,
    input               MEL_SW_CONFIG3,
    input               MEL_SW_CONFIG4,
    input               MEL_SW_CONFIG5,
    input               MEL_SW_CONFIG6,
    input               MEL_SW_CONFIG7,

    input               BEL_SW_CONFIG0,
    input               BEL_SW_CONFIG1,
    input               BEL_SW_CONFIG2,
    input               BEL_SW_CONFIG3,
    input               BEL_SW_CONFIG4,
    input               BEL_SW_CONFIG5,
    input               BEL_SW_CONFIG6,
    input               BEL_SW_CONFIG7,

    input               KVBEL_SW_CONFIG0,
    input               KVBEL_SW_CONFIG1,
    input               KVBEL_SW_CONFIG2,
    input               KVBEL_SW_CONFIG3,
    input               KVBEL_SW_CONFIG4,
    input               KVBEL_SW_CONFIG5,
    input               KVBEL_SW_CONFIG6,
    input               KVBEL_SW_CONFIG7,

    // GPIO Outputs
    output              BMENLP_LOC_CNTL,
    output              PWRENLP_LOC_CNTL,
    output              MTNENLP_LOC_CNTL,

    output              PWRENLP_CNTL,
    output              KVBMENLP_CNTL,
    output              MTNENLP_CNTL,
    output              BMENLP_CNTL,

    output              HDW_GANT_ROT_EN,

    // Test Points
    output              TP85,   // 1.8V Bank
    output              TP86,
    output              TP88,
    output              TP89,
    output              TP91,
    output              TP92,
    output              TP93,
    output              TP94,
    output              TP95,
    output              TP96,
    output              TP97,
    output              TP98,
    output              TP99,
    output              TP100,
    output              TP101,
    output              TP102,
    output              TP140,  // 3.3V Bank
    output              TP141,
    output              TP142,
    output              TP143,
    output              TP144,
    output              TP145,
    output              TP146,
    output              TP147,
    output              TP148,
    output              TP149,
    output              TP150,
    output              TP151,
    output              TP152,
    output              TP153,
    output              TP154,
    output              TP155
);

    /* GPIO Registers */
    reg [31:0]          GPIO_IN_REG;
    reg [31:0]          SWITCH_IN_REG;
    reg [31:0]          GPIO_OUT_REG;
    reg [31:0]          TP_OUT_REG;

    // GPIO Outputs
    assign BMENLP_LOC_CNTL   = GPIO_OUT_REG[0];
    assign PWRENLP_LOC_CNTL  = GPIO_OUT_REG[1];
    assign MTNENLP_LOC_CNTL  = GPIO_OUT_REG[2];
    assign PWRENLP_CNTL      = GPIO_OUT_REG[3];
    assign KVBMENLP_CNTL     = GPIO_OUT_REG[4];
    assign MTNENLP_CNTL      = GPIO_OUT_REG[5];
    assign BMENLP_CNTL       = GPIO_OUT_REG[6];
    assign HDW_GANT_ROT_EN   = GPIO_OUT_REG[7];

    // Test Points
    assign TP85              = TP_OUT_REG[0];
    assign TP86              = TP_OUT_REG[1];
    assign TP88              = TP_OUT_REG[2];
    assign TP89              = TP_OUT_REG[3];
    assign TP91              = TP_OUT_REG[4];
    assign TP92              = TP_OUT_REG[5];
    assign TP93              = TP_OUT_REG[6];
    assign TP94              = TP_OUT_REG[7];
    assign TP95              = TP_OUT_REG[8];
    assign TP96              = TP_OUT_REG[9];
    assign TP97              = TP_OUT_REG[10];
    assign TP98              = TP_OUT_REG[11];
    assign TP99              = TP_OUT_REG[12];
    assign TP100             = TP_OUT_REG[13];
    assign TP101             = TP_OUT_REG[14];
    assign TP102             = TP_OUT_REG[15];
    assign TP140             = TP_OUT_REG[16];
    assign TP141             = TP_OUT_REG[17];
    assign TP142             = TP_OUT_REG[18];
    assign TP143             = TP_OUT_REG[19];
    assign TP144             = TP_OUT_REG[20];
    assign TP145             = TP_OUT_REG[21];
    assign TP146             = TP_OUT_REG[22];
    assign TP147             = TP_OUT_REG[23];
    assign TP148             = TP_OUT_REG[24];
    assign TP149             = TP_OUT_REG[25];
    assign TP150             = TP_OUT_REG[26];
    assign TP151             = TP_OUT_REG[27];
    assign TP152             = TP_OUT_REG[28];
    assign TP153             = TP_OUT_REG[29];
    assign TP154             = TP_OUT_REG[30];
    assign TP155             = TP_OUT_REG[31];

    /* GPIO Write */
    // GPIO_IN_REG
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GPIO_IN_REG <= 32'b0;
        end else begin
            GPIO_IN_REG[0]  <= BMENLP_STATE;
            GPIO_IN_REG[1]  <= PWRENLP_STATE;
            GPIO_IN_REG[2]  <= MTNENLP_STATE;
            GPIO_IN_REG[3]  <= KVBMENLP_STATE;
            GPIO_IN_REG[4]  <= MTNENLP_CCH_STATE;
            GPIO_IN_REG[5]  <= MTNENLP_DKB_STATE;
            GPIO_IN_REG[6]  <= PENDANT_INST;
            GPIO_IN_REG[7]  <= PENDANT_MEB_N;
            GPIO_IN_REG[8]  <= CMNR_STS_N;
            GPIO_IN_REG[9]  <= CDOS_STS_N;
            GPIO_IN_REG[10] <= DC_MAIN_DOOR_SW_N;
            GPIO_IN_REG[11] <= NEUTRON_DR_SW1_N;
            GPIO_IN_REG[12] <= NEUTRON_DR_SW2_N;
            GPIO_IN_REG[13] <= CSPARESW1_N;
            GPIO_IN_REG[14] <= CSPARESW2_N;
            GPIO_IN_REG[15] <= LS_OSSD1_N;
            GPIO_IN_REG[16] <= LS_ERROR_N;
            GPIO_IN_REG[17] <= SPD_AC_DR_N;
            GPIO_IN_REG[18] <= EMO_GOOD_N;
        end
    end

    // SWITCH_IN_REG
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SWITCH_IN_REG <= 32'b0;
        end else begin
            SWITCH_IN_REG[0]  <= MEL_SW_CONFIG0;
            SWITCH_IN_REG[1]  <= MEL_SW_CONFIG1;
            SWITCH_IN_REG[2]  <= MEL_SW_CONFIG2;
            SWITCH_IN_REG[3]  <= MEL_SW_CONFIG3;
            SWITCH_IN_REG[4]  <= MEL_SW_CONFIG4;
            SWITCH_IN_REG[5]  <= MEL_SW_CONFIG5;
            SWITCH_IN_REG[6]  <= MEL_SW_CONFIG6;
            SWITCH_IN_REG[7]  <= MEL_SW_CONFIG7;

            SWITCH_IN_REG[8]  <= BEL_SW_CONFIG0;
            SWITCH_IN_REG[9]  <= BEL_SW_CONFIG1;
            SWITCH_IN_REG[10] <= BEL_SW_CONFIG2;
            SWITCH_IN_REG[11] <= BEL_SW_CONFIG3;
            SWITCH_IN_REG[12] <= BEL_SW_CONFIG4;
            SWITCH_IN_REG[13] <= BEL_SW_CONFIG5;
            SWITCH_IN_REG[14] <= BEL_SW_CONFIG6;
            SWITCH_IN_REG[15] <= BEL_SW_CONFIG7;

            SWITCH_IN_REG[16] <= KVBEL_SW_CONFIG0;
            SWITCH_IN_REG[17] <= KVBEL_SW_CONFIG1;
            SWITCH_IN_REG[18] <= KVBEL_SW_CONFIG2;
            SWITCH_IN_REG[19] <= KVBEL_SW_CONFIG3;
            SWITCH_IN_REG[20] <= KVBEL_SW_CONFIG4;
            SWITCH_IN_REG[21] <= KVBEL_SW_CONFIG5;
            SWITCH_IN_REG[22] <= KVBEL_SW_CONFIG6;
            SWITCH_IN_REG[23] <= KVBEL_SW_CONFIG7;
        end
    end

    // OPB Read
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0;
        end else begin
            if (GPIO_RE) begin
                case (OPB_ADDR[3:0])
                    `GPIO_IN_ADDR:   OPB_DO <= GPIO_IN_REG;
                    `SWITCH_IN_ADDR: OPB_DO <= SWITCH_IN_REG;
                    `GPIO_OUT_ADDR:  OPB_DO <= GPIO_OUT_REG;
                    `TP_OUT_ADDR:    OPB_DO <= TP_OUT_REG;
                    default:         OPB_DO <= 32'b0; // Default case for unrecognized address
                endcase
            end else begin
                OPB_DO <= 32'b0;
            end
        end
    end

    // OPB Write
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GPIO_OUT_REG <= 32'b0;
            TP_OUT_REG   <= 32'b0;
        end else begin
            if (GPIO_WE) begin
                if (OPB_ADDR[3:0] == `GPIO_OUT_ADDR) begin
                    GPIO_OUT_REG <= OPB_DI; // Write to GPIO outputs
                end
                if (OPB_ADDR[3:0] == `TP_OUT_ADDR) begin
                    TP_OUT_REG <= OPB_DI; // Write to Test Points
                end
            end
        end
    end

endmodule

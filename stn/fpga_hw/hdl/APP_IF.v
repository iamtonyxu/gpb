`timescale 1ns/100ps

module APP_IF#(
    parameter DATA_WIDTH = 32
)(
    // OPB Interface
    input                   OPB_CLK,
    input                   OPB_RST,
    input       [31:0]      OPB_DI,
    output reg  [31:0]      OPB_DO,
    input       [31:0]      OPB_ADDR,

    // GPIO RE/WE Signals
    input                   APP_RE,
    input                   APP_WE,

    // INPUT Interface
    input APP_AUX_IO0,
    input APP_AUX_IO1,
    input APP_AUX_IO2,
    input APP_AUX_IO3,
    input APP_AUX_IO4,
    input APP_AUX_IO5,
    
    input HSSB_PMII_TX_DATA0,
    input HSSB_PMII_TX_DATA1,
    input HSSB_PMII_TX_DATA2,
    input HSSB_PMII_TX_DATA3,
    input HSSB_PMII_TX_EN,

    input APP_FPGA_SPI1_CS_N,
    input APP_FPGA_SPI0_CS_N,
    input APP_FPGA_SPI0_MOSI,
    input APP_FPGA_SPI1_MOSI,
    input APP_FPGA_SPI_CLK,
    input DISABLE_HDW_FPGA,
    input APP_FPGA_TDO,

    // OUTPUT Interface
    output HSSB_PMII_CLK,
    output HSSB_PMII_RESET_N,
    output HSSB_PMII_RX_DATA0,
    output HSSB_PMII_RX_DATA1,
    output HSSB_PMII_RX_DATA2,
    output HSSB_PMII_RX_DATA3,
    output HSSB_PMII_RX_DV,
    
    output APP_FPGA_SPI0_MISO,
    output APP_FPGA_SPI1_MISO,
    output APP_FPGA_TMS,
    output APP_FPGA_TDI,
    output APP_FPGA_TCK,
    output APP_FPGA_TRST
);

    // Internal signals
    reg     [DATA_WIDTH-1:0]    app_data_out;
    wire    [DATA_WIDTH-1:0]    app_data_in;

    // PHY Interface Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'h0;
        end else if (APP_RE) begin
            OPB_DO <= app_data_in;
        end else if (APP_WE) begin
            app_data_out <= OPB_DI;
        end
    end

    // Assign outputs to APP interface signals
    assign APP_AUX_IO0       = app_data_out[0];
    assign APP_AUX_IO1       = app_data_out[1];
    assign APP_AUX_IO2       = app_data_out[2];
    assign APP_AUX_IO3       = app_data_out[3];
    assign APP_AUX_IO4       = app_data_out[4];
    assign APP_AUX_IO5       = app_data_out[5];

    assign HSSB_PMII_TX_DATA0    = app_data_out[6];
    assign HSSB_PMII_TX_DATA1    = app_data_out[7];
    assign HSSB_PMII_TX_DATA2    = app_data_out[8];
    assign HSSB_PMII_TX_DATA3    = app_data_out[9];
    assign HSSB_PMII_TX_EN       = app_data_out[10];

    assign APP_FPGA_SPI1_CS_N   = app_data_out[11];
    assign APP_FPGA_SPI0_CS_N   = app_data_out[12];
    assign APP_FPGA_SPI0_MOSI   = app_data_out[13];
    assign APP_FPGA_SPI1_MOSI   = app_data_out[14];
    assign APP_FPGA_SPI_CLK     = app_data_out[15];
    assign DISABLE_HDW_FPGA     = app_data_out[16];
    assign APP_FPGA_TDO         = app_data_out[17];

    // Input signals from APP
    assign app_data_in[0]       = HSSB_PMII_CLK;
    assign app_data_in[1]       = HSSB_PMII_RESET_N;
    assign app_data_in[2]       = HSSB_PMII_RX_DATA0;
    assign app_data_in[3]       = HSSB_PMII_RX_DATA1;
    assign app_data_in[4]       = HSSB_PMII_RX_DATA2;
    assign app_data_in[5]       = HSSB_PMII_RX_DATA3;
    assign app_data_in[6]       = HSSB_PMII_RX_DV;
    assign app_data_in[7]       = APP_FPGA_SPI0_MISO;
    assign app_data_in[8]       = APP_FPGA_SPI1_MISO;
    assign app_data_in[9]       = APP_FPGA_TMS;
    assign app_data_in[10]      = APP_FPGA_TDI;
    assign app_data_in[11]      = APP_FPGA_TCK;
    assign app_data_in[12]      = APP_FPGA_TRST;

endmodule
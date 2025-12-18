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
    input APP_FPGA_TDO, // ignored

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
    output APP_FPGA_TMS, // ignored
    output APP_FPGA_TDI, // ignored
    output APP_FPGA_TCK, // ignored
    output APP_FPGA_TRST // ignored
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

    // Assign outputs from app_data_out
    assign HSSB_PMII_CLK        = app_data_out[0];
    assign HSSB_PMII_RESET_N    = app_data_out[1];
    assign HSSB_PMII_RX_DATA0   = app_data_out[2];
    assign HSSB_PMII_RX_DATA1   = app_data_out[3];
    assign HSSB_PMII_RX_DATA2   = app_data_out[4];
    assign HSSB_PMII_RX_DATA3   = app_data_out[5];
    assign HSSB_PMII_RX_DV      = app_data_out[6];
    
    assign APP_FPGA_SPI0_MISO   = app_data_out[7];
    assign APP_FPGA_SPI1_MISO   = app_data_out[8];
    assign APP_FPGA_TMS         = app_data_out[9];
    assign APP_FPGA_TDI         = app_data_out[10];
    assign APP_FPGA_TCK         = app_data_out[11];
    assign APP_FPGA_TRST        = app_data_out[12];

    // Input signals to app_data_in  
    assign app_data_in[0]       = APP_AUX_IO0;
    assign app_data_in[1]       = APP_AUX_IO1;
    assign app_data_in[2]       = APP_AUX_IO2;
    assign app_data_in[3]       = APP_AUX_IO3;
    assign app_data_in[4]       = APP_AUX_IO4;
    assign app_data_in[5]       = APP_AUX_IO5;
    assign app_data_in[6]       = HSSB_PMII_TX_DATA0;
    assign app_data_in[7]       = HSSB_PMII_TX_DATA1;
    assign app_data_in[8]       = HSSB_PMII_TX_DATA2;
    assign app_data_in[9]       = HSSB_PMII_TX_DATA3;
    assign app_data_in[10]      = HSSB_PMII_TX_EN;
    assign app_data_in[11]      = APP_FPGA_SPI1_CS_N;
    assign app_data_in[12]      = APP_FPGA_SPI0_CS_N;
    assign app_data_in[13]      = APP_FPGA_SPI0_MOSI;
    assign app_data_in[14]      = APP_FPGA_SPI1_MOSI;
    assign app_data_in[15]      = APP_FPGA_SPI_CLK;
    assign app_data_in[16]      = DISABLE_HDW_FPGA;
    assign app_data_in[17]      = APP_FPGA_TDO;
    
    // Unused bits should be tied to zero
    assign app_data_in[31:18]   = 14'b0;

endmodule
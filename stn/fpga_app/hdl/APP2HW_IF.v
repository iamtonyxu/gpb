`timescale 1ns/100ps

module APP2HW_IF #(
    parameter DATA_WIDTH = 32
) (
    // OPB Interface
    input                       OPB_CLK,
    input                       OPB_RST,
    input       [31:0]          OPB_DI,
    output reg  [31:0]          OPB_DO,
    input       [31:0]          OPB_ADDR,

    // GPIO RE/WE Signals
    input                       APP_RE,
    input                       APP_WE,

    // OUTPUT Interface
    output                      APP_AUX_IO0,
    output                      APP_AUX_IO1,
    output                      APP_AUX_IO2,
    output                      APP_AUX_IO3,
    output                      APP_AUX_IO4,
    output                      APP_AUX_IO5,
    
    output                      HSSB_PMII_TX_DATA0,
    output                      HSSB_PMII_TX_DATA1,
    output                      HSSB_PMII_TX_DATA2,
    output                      HSSB_PMII_TX_DATA3,
    output                      HSSB_PMII_TX_EN,

    output                      APP_FPGA_SPI1_CS_N,
    output                      APP_FPGA_SPI0_CS_N,
    output                      APP_FPGA_SPI0_MOSI,
    output                      APP_FPGA_SPI1_MOSI,
    output                      APP_FPGA_SPI_CLK,
    output                      DISABLE_HDW_FPGA,
    output                      APP_FPGA_TDO, // ignored

    // INPUT Interface
    input                       HSSB_PMII_CLK,
    input                       HSSB_PMII_RESET_N,
    input                       HSSB_PMII_RX_DATA0,
    input                       HSSB_PMII_RX_DATA1,
    input                       HSSB_PMII_RX_DATA2,
    input                       HSSB_PMII_RX_DATA3,
    input                       HSSB_PMII_RX_DV,
    input                       APP_FPGA_SPI0_MISO,
    input                       APP_FPGA_SPI1_MISO,
    input                       APP_FPGA_TMS, // ignored
    input                       APP_FPGA_TDI, // ignored
    input                       APP_FPGA_TCK, // ignored
    input                       APP_FPGA_TRST // ignored
);

    // Internal signals
    reg     [DATA_WIDTH-1:0]    app_data_out;
    wire    [DATA_WIDTH-1:0]    app_data_in;

    // PHY Interface Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO          <= 32'h0;
        end else if (APP_RE) begin
            OPB_DO          <= app_data_in;
        end
    end

    // app_data_out
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            app_data_out <= {DATA_WIDTH{1'b0}};
        end else begin
            app_data_out[16:0] <= {app_data_in[8],app_data_in[7:0], app_data_in[7:0]};
            app_data_out[31:17] <= 15'h0;
        end
    end

    // Output assignments
    assign APP_AUX_IO0          = app_data_out[0];
    assign APP_AUX_IO1          = app_data_out[1];
    assign APP_AUX_IO2          = app_data_out[2];
    assign APP_AUX_IO3          = app_data_out[3];
    assign APP_AUX_IO4          = app_data_out[4];
    assign APP_AUX_IO5          = app_data_out[5];

    assign HSSB_PMII_TX_DATA0   = app_data_out[6];
    assign HSSB_PMII_TX_DATA1   = app_data_out[7];
    assign HSSB_PMII_TX_DATA2   = app_data_out[8];
    assign HSSB_PMII_TX_DATA3   = app_data_out[9];
    assign HSSB_PMII_TX_EN      = app_data_out[10];

    assign APP_FPGA_SPI1_CS_N   = app_data_out[11];
    assign APP_FPGA_SPI0_CS_N   = app_data_out[12];
    assign APP_FPGA_SPI0_MOSI   = app_data_out[13];
    assign APP_FPGA_SPI1_MOSI   = app_data_out[14];
    assign APP_FPGA_SPI_CLK     = app_data_out[15];
    assign DISABLE_HDW_FPGA     = app_data_out[16];
    assign APP_FPGA_TDO         = app_data_out[17]; // ignored

    // Input assignments
    assign app_data_in[0]       = HSSB_PMII_CLK;
    assign app_data_in[1]       = HSSB_PMII_RESET_N;
    assign app_data_in[2]       = HSSB_PMII_RX_DATA0;
    assign app_data_in[3]       = HSSB_PMII_RX_DATA1;
    assign app_data_in[4]       = HSSB_PMII_RX_DATA2;
    assign app_data_in[5]       = HSSB_PMII_RX_DATA3;
    assign app_data_in[6]       = HSSB_PMII_RX_DV;
    assign app_data_in[7]       = APP_FPGA_SPI0_MISO;
    assign app_data_in[8]       = APP_FPGA_SPI1_MISO;
    assign app_data_in[9]       = APP_FPGA_TMS; // ignored
    assign app_data_in[10]      = APP_FPGA_TDI; // ignored
    assign app_data_in[11]      = APP_FPGA_TCK; // ignored
    assign app_data_in[12]      = APP_FPGA_TRST;// ignored
    
    // Assign unused input bits to 0
    generate
        if (DATA_WIDTH > 13) begin : gen_unused_bits
            assign app_data_in[DATA_WIDTH-1:13] = {(DATA_WIDTH-13){1'b0}};
        end
    endgenerate

endmodule
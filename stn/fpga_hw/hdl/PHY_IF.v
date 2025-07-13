`timescale 1ns/100ps

module PHY_IF #(
    parameter DATA_WIDTH = 32
)(
    // OPB Interface
    input                   OPB_CLK,
    input                   OPB_RST,
    input       [31:0]      OPB_DI,
    output reg  [31:0]      OPB_DO,
    input       [31:0]      OPB_ADDR,

    // GPIO RE/WE Signals
    input                   PHY_RE,
    input                   PHY_WE,

    // ETH Interface
    output                  PHY_RMII_TX_EN,
    output                  PHY_RMII_TX_DATA1,
    output                  PHY_RMII_TX_DATA0,
    output                  PHY_RST_N,
    output                  PHY_MDIO,
    output                  PHY_MDC,
    output                  ETH_LED1,
    output                  ETH_LED2,
    input                   PHY_RMII_RX_DATA1,
    input                   PHY_RMII_RX_DATA0,
    input                   PHY_RMII_RX_DV
);

    // Internal signals
    reg     [DATA_WIDTH-1:0]    phy_data_out;
    wire    [DATA_WIDTH-1:0]    phy_data_in;

    // PHY Interface Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'h0;
        end else if (PHY_RE) begin
            OPB_DO <= phy_data_in;
        end else if (PHY_WE) begin
            phy_data_out <= OPB_DI;
        end
    end

    // Assign outputs to PHY interface signals
    assign PHY_RMII_TX_EN       = phy_data_out[0];
    assign PHY_RMII_TX_DATA1    = phy_data_out[1];
    assign PHY_RMII_TX_DATA0    = phy_data_out[2];
    assign PHY_RST_N            = phy_data_out[3];
    assign PHY_MDIO             = phy_data_out[4];
    assign PHY_MDC              = phy_data_out[5];
    assign ETH_LED1             = phy_data_out[6];
    assign ETH_LED2             = phy_data_out[7];

    // Input signals from PHY
    assign phy_data_in[0]       = PHY_RMII_RX_DATA1;
    assign phy_data_in[1]       = PHY_RMII_RX_DATA0;
    assign phy_data_in[2]       = PHY_RMII_RX_DV;

endmodule
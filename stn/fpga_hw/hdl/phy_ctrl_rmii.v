//--------------------------------------------------------------------------
//
// Company:    Jabil Circuit
// File:       phy_ctrl_rmii.v
//
// Description:
//
//   This module does the following :
//   - interface with one channel in the PHY
//   - provides clock domain crossing between system and PHY clocks
//   - converts between 4-bit system interface and 2-bit RMII interface
//
// Revision History
//
//   VER   DATA        ENGR  CHANGE
//   ----  ----------  ----  --------------------------------------------
//   0.1  2025-08-16  XYL    initial version
//
//--------------------------------------------------------------------------

`timescale 1ns/100ps

module phy_ctrl_rmii (
    // system signals
    input  wire         sysclk,
    input  wire         reset_n,
    
    // RMII Interface
    input  wire         phy_tx_clk,
    output wire [1:0]   phy_tx_data,
    output wire         phy_tx_en,
    input  wire         phy_rx_clk,
    input  wire [1:0]   phy_rx_data,
    input  wire         phy_rx_dv,
    
    // "link_ctrl" interface (system clock domain)
    input  wire [1:0]   ctrl_tx_data,
    input  wire         ctrl_tx_en,
    output wire [1:0]   ctrl_rx_data,
    output wire         ctrl_rx_dv,
    output wire         ctrl_rx_err
);

    // TX path: sysclk to phy_tx_clk domain
    reg [1:0]   tx_data_sync1, tx_data_sync2;
    reg         tx_en_sync1, tx_en_sync2;
    
    always @(posedge phy_tx_clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_data_sync1 <= 2'b00;
            tx_data_sync2 <= 2'b00;
            tx_en_sync1   <= 1'b0;
            tx_en_sync2   <= 1'b0;
        end else begin
            tx_data_sync1 <= ctrl_tx_data;
            tx_data_sync2 <= tx_data_sync1;
            tx_en_sync1   <= ctrl_tx_en;
            tx_en_sync2   <= tx_en_sync1;
        end
    end
    
    assign phy_tx_data = tx_data_sync2;
    assign phy_tx_en   = tx_en_sync2;

    // RX path: phy_rx_clk to sysclk domain  
    reg [1:0]   rx_data_sync1, rx_data_sync2;
    reg         rx_dv_sync1, rx_dv_sync2;
    
    always @(posedge sysclk or negedge reset_n) begin
        if (!reset_n) begin
            rx_data_sync1 <= 2'b00;
            rx_data_sync2 <= 2'b00;
            rx_dv_sync1   <= 1'b0;
            rx_dv_sync2   <= 1'b0;
        end else begin
            rx_data_sync1 <= phy_rx_data;
            rx_data_sync2 <= rx_data_sync1;
            rx_dv_sync1   <= phy_rx_dv;
            rx_dv_sync2   <= rx_dv_sync1;
        end
    end
    
    assign ctrl_rx_data = rx_data_sync2;
    assign ctrl_rx_dv   = rx_dv_sync2;
    assign ctrl_rx_err  = 1'b0;  // Error detection not implemented in this version

endmodule

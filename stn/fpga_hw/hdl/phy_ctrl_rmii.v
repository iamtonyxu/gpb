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

    assign phy_tx_data = ctrl_tx_data;  // Direct connection since both are 2-bit
    assign phy_tx_en   = ctrl_tx_en;
    
    assign ctrl_rx_data = phy_rx_data;  // Direct connection since both are 2-bit
    assign ctrl_rx_dv   = phy_rx_dv;
    assign ctrl_rx_err  = 1'b0;  // Error detection not implemented in this version

/*
    // Internal signals
    wire [3:0]  tx_fifo_rdata;
    wire        tx_fifo_rdata_vld;
    wire [3:0]  rx_fifo_rdata;
    wire        rx_fifo_rdata_vld;
    wire [3:0]  tx_wdata;
    wire [3:0]  rx_wdata;
    
    // Constants
    localparam RX_IFACE = 0;
    localparam TX_IFACE = 1;
    
    // Reset signal (convert active low to active high for FIFO modules)
    wire reset = ~reset_n;

    //------------------
    // TX Data Path
    //------------------
    // Signals from "sysclk" domain are synchronized to the RMII interface domain
    // Convert 4-bit data at sysclk to 2-bit data at phy_tx_clk
    assign tx_wdata = ctrl_tx_data;
    
    tr_fifo_rmii #(
        .IFACE(TX_IFACE)
    ) tx_fifo (
        .reset          (reset),
        .wdata          (tx_wdata),
        .wdata_en       (ctrl_tx_en),
        .write_clock    (sysclk),
        .read_clock     (phy_tx_clk),
        .rdata          (tx_fifo_rdata),
        .rdata_vld      (tx_fifo_rdata_vld)
    );
    
    // Extract 2-bit data for PHY TX interface
    assign phy_tx_data = tx_fifo_rdata[1:0];
    assign phy_tx_en   = tx_fifo_rdata_vld;

    //------------------
    // RX Data Path  
    //------------------
    // Signals from the RMII interface are synchronized to the "sysclk" domain
    // Convert 2-bit data at phy_rx_clk to 4-bit data at sysclk
    assign rx_wdata = {2'b00, phy_rx_data};
    
    tr_fifo_rmii #(
        .IFACE(RX_IFACE)
    ) rx_fifo (
        .reset          (reset),
        .wdata          (rx_wdata),
        .wdata_en       (phy_rx_dv),
        .write_clock    (phy_rx_clk),
        .read_clock     (sysclk),
        .rdata          (rx_fifo_rdata),
        .rdata_vld      (rx_fifo_rdata_vld)
    );

    // Extract control signals for system interface
    assign ctrl_rx_data = rx_fifo_rdata[3:0];
    assign ctrl_rx_dv   = rx_fifo_rdata_vld;
    assign ctrl_rx_err  = 1'b0;  // Error detection not implemented in this version
*/

endmodule

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil circuit, Inc.
//
// File: CAN_IF.v
//
// Description: 
//
// CAN Interface Controller
//
// This module provides a CAN (Controller Area Network) interface wrapper for the OPB bus.
// It handles CAN frame transmission and reception for multiple CAN channels, providing
// register-based access to CAN functionality including frame data, control, status,
// and error counting.
//
// Features:
// - 4 CAN channel support (CAN1-4)
// - OPB bus interface for register access
// - Transmit and receive frame handling
// - Error counting and status reporting
//
//
// Targeted device: <Family> <Die> <Package>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 100ps

`define CAN_TRANS_FRAME_LOW_ADDR    8'h00
`define CAN_TRANS_FRAME_HIGH_ADDR   8'h01
`define CAN_TRANS_CTRL_ADDR         8'h02
`define CAN_TRANS_COUNT_ADDR        8'h03
`define CAN_RECV_STATUS_ADDR        8'h04
`define CAN_RECV_FRAME_LOW_ADDR     8'h05
`define CAN_RECV_FRAME_HIGH_ADDR    8'h06
`define CAN_RECV_COUNT_ADDR         8'h07
`define CAN_ERR_COUNT_ADDR          8'h08

module CAN_IF (
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input       [31:0]  OPB_DI,
    output reg  [31:0]  OPB_DO,
    input       [31:0]  OPB_ADDR,

    // GPIO RE/WE Signals
    input               CAN_RE,
    input               CAN_WE,

    // CAN Interface
    output              CAN_TX1,    // CAN BUS, J3, CAN
    output              CAN_TX2,    // CAN BUS, J9, CAND
    output              CAN_TX3,    // CAN BUS, J29/30, CAN_LOC
    output              CAN_TX4,    // CAN BUS, J25, CAN_PEND
    input               CAN_RX1,    // CAN BUS, J3, CAN
    input               CAN_RX2,    // CAN BUS, J9, CAND
    input               CAN_RX3,    // CAN BUS, J29/30, CAN_LOC
    input               CAN_RX4     // CAN BUS, J25, CAN_PEND
);

    // Clock and reset signals for CAN controller
    wire pclk_40m, presetn;

/*
    // OPB2APB signals
    reg [1:0] device_id;
    reg start_wr, start_rd;
    reg [10:0] paddr_1, paddr_2, paddr_3, paddr_4; // shared by write and read operations
    reg [31:0] pwdata_1, pwdata_2, pwdata_3, pwdata_4;
    reg [31:0] prdata_1, prdata_2, prdata_3, prdata_4;

    // device_id = OPB_ADDR[13:12]
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            device_id <= 2'b00; // Default to device 0
        end else if(CAN_WE)begin
            device_id <= OPB_ADDR[13:12]; // Extract device ID from address
        end
    end

    // start_wr shall be asserted if a write operation is requested
    // start_rd shall be asserted if a read operation is requested
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            start_wr <= 1'b0;
            start_rd <= 1'b0;
        end else if(CAN_WE)begin
            start_wr <= OPB_ADDR[11]; // Write operation if address bit 11 is 0
            start_rd <= ~OPB_ADDR[11]; // Read operation if address bit 11 is 1
        end
    end

    // paddr = OPB_ADDR[10:0] for both read and write operations
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            paddr <= 11'h0;
        end else if(CAN_WE)begin
            paddr <= OPB_ADDR[10:0];
        end
    end

    // pwdata_1, pwdata_2, pwdata_3, pwdata_4 are used to store the data to be written
    // to the respective CAN devices based on device_id
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            pwdata_1 <= 32'h0;
            pwdata_2 <= 32'h0;
            pwdata_3 <= 32'h0;
            pwdata_4 <= 32'h0;
        end else if (CAN_WE) begin
            case (OPB_ADDR[13:12])
                2'b00: pwdata_1 <= OPB_DI; // Device 0
                2'b01: pwdata_2 <= OPB_DI; // Device 1
                2'b10: pwdata_3 <= OPB_DI; // Device 2
                2'b11: pwdata_4 <= OPB_DI; // Device 3
                default: begin
                    // No action for undefined device IDs
                end
            endcase
        end
    end

    // prdata_1, prdata_2, prdata_3, prdata_4 are used to store the data read from
    // the respective CAN devices based on device_id
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'h0;
        end else if (CAN_RE) begin
            case (device_id)
                2'b00: OPB_DO <= prdata_1; // Device 0
                2'b01: OPB_DO <= prdata_2; // Device 1
                2'b10: OPB_DO <= prdata_3; // Device 2
                2'b11: OPB_DO <= prdata_4; // Device 3
                default: OPB_DO <= 32'h0; // Default case
            endcase
        end
    end

    // APB Interface signals
    //wire psel, penable, pwrite;
    wire [10:0] paddr;
    wire [31:0] pwdata, prdata;
    wire pready, int_n;
*/

    // Internal signals
    reg [31:0] can_data_out;
    
    // Handle read/write operations based on address
    // Write operations
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            can_data_out <= 32'b0;
        end else if (CAN_WE && (OPB_ADDR[7:0] == 8'h00)) begin
            can_data_out <= OPB_DI;     // Write data to CAN interface
        end
    end

    // Read operations
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0; // Reset output data
        end else if (CAN_RE && (OPB_ADDR[7:0] == 8'h01)) begin
            OPB_DO[0]   <= CAN_RX1; // Example read from CAN_RX1
            OPB_DO[1]   <= CAN_RX2; // Example read from CAN_RX
            OPB_DO[2]   <= CAN_RX3; // Example read from CAN_RX3
            OPB_DO[3]   <= CAN_RX4; // Example read from CAN_RX
        end
    end

    assign CAN_TX1 = can_data_out[0] & CAN_RX1; // Example connection, can be modified
    assign CAN_TX2 = can_data_out[1] & CAN_RX2; // Example connection, can be modified
    assign CAN_TX3 = can_data_out[2] & CAN_RX3; // Example connection, can be modified
    assign CAN_TX4 = can_data_out[3] & CAN_RX4; // Example connection, can be modified


/*
    assign pclk_40m = OPB_CLK; // Assuming OPB_CLK is 40MHz
    assign presetn = ~OPB_RST; // Active low reset

    // CAN Controller Instances
        CORECAN_C0 u_corecan_c0 (
        .PCLK(pclk_40m),
        .PRESETN(presetn),
        .PSEL(1'b1), // Always selected for simplicity
        .PENABLE(1'b1), // Always enabled for simplicity
        .PWRITE(1'b0), // Read operation
        .PADDR(11'h000), // Address for the CAN controller
        .PWDATA(32'h00000000), // No data to write
        .PRDATA(), // Read data will be connected later
        .PREADY(), // Ready signal will be connected later
        .INT_N(), // Interrupt signal will be connected later

        // CAN Interface signals
        .CAN_TX_EN_N(), // Example connection, can be modified
        .CAN_TX(CAN_TX1), // Example connection, can be modified
        .CAN_RX(CAN_RX1)  // Example connection, can be modified
    );

        CORECAN_C0 u_corecan_c1 (
        .PCLK(pclk_40m),
        .PRESETN(presetn),
        .PSEL(1'b1), // Always selected for simplicity
        .PENABLE(1'b1), // Always enabled for simplicity
        .PWRITE(1'b0), // Read operation
        .PADDR(11'h000), // Address for the CAN controller
        .PWDATA(32'h00000000), // No data to write
        .PRDATA(), // Read data will be connected later
        .PREADY(), // Ready signal will be connected later
        .INT_N(), // Interrupt signal will be connected later

        // CAN Interface signals
        .CAN_TX_EN_N(), // Example connection, can be modified
        .CAN_TX(CAN_TX2), // Example connection, can be modified
        .CAN_RX(CAN_RX2)  // Example connection, can be modified
    );

        CORECAN_C0 u_corecan_c2 (
        .PCLK(pclk_40m),
        .PRESETN(presetn),
        .PSEL(1'b1), // Always selected for simplicity
        .PENABLE(1'b1), // Always enabled for simplicity
        .PWRITE(1'b0), // Read operation
        .PADDR(11'h000), // Address for the CAN controller
        .PWDATA(32'h00000000), // No data to write
        .PRDATA(), // Read data will be connected later
        .PREADY(), // Ready signal will be connected later
        .INT_N(), // Interrupt signal will be connected later

        // CAN Interface signals
        .CAN_TX_EN_N(), // Example connection, can be modified
        .CAN_TX(CAN_TX3), // Example connection, can be modified
        .CAN_RX(CAN_RX3)  // Example connection, can be modified
    );

    CORECAN_C0 u_corecan_c3 (
        .PCLK(pclk_40m),
        .PRESETN(presetn),
        .PSEL(1'b1), // Always selected for simplicity
        .PENABLE(1'b1), // Always enabled for simplicity
        .PWRITE(1'b0), // Read operation
        .PADDR(11'h000), // Address for the CAN controller
        .PWDATA(32'h00000000), // No data to write
        .PRDATA(), // Read data will be connected later
        .PREADY(), // Ready signal will be connected later
        .INT_N(), // Interrupt signal will be connected later

        // CAN Interface signals
        .CAN_TX_EN_N(), // Example connection, can be modified
        .CAN_TX(CAN_TX4), // Example connection, can be modified
        .CAN_RX(CAN_RX4)  // Example connection, can be modified
    );
*/
endmodule

/*
// CoreCan IP generated by Libero
module CORECAN_C0(
    // APB Interface
    input PCLK,
    input PRESETN,
    input PSEL,
    input PENABLE,
    input PWRITE,
    input [10:0] PADDR,
    input [31:0] PWDATA,
    output [31:0] PRDATA,
    output PREADY,
    output INT_N,

    // CAN Interface
    output CAN_TX_EN_N,
    output CAN_TX,
    input CAN_RX
);
*/
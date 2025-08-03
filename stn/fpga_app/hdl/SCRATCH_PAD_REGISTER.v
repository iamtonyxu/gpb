///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: ScratchPadRegister.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family> <Die> <Package>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 1ps

`define ADDR_VERSION    4'h0
`define ADDR_ID         4'h1
`define ADDR_DATE       4'h2
`define ADDR_SP1        4'h3
`define ADDR_SP2        4'h4

module SCRATCH_PAD_REGISTER #(
    parameter VERSION = 32'h1234_5678,     // FPGA version
    parameter ID      = 32'h0000_0050,     // APP: 100, HW: 50
    parameter DATE    = 32'h2025_0714      // Build date: YYYYMMDD
)
( 
    input               OPB_CLK,
    input               OPB_RST,
    input       [31:0]  OPB_ADDR,
    input       [31:0]  SP_DI,
    input               SP_RE,
    input               SP_WE,
    output reg  [31:0]  SP_DO   
);

    /*  Scratch Pads */
    reg [31:0] fpga_version;    // FPGA version
    reg [31:0] fpga_id;         // FPGA ID
    reg [31:0] build_date;      // Build date: YYYYMMDD
    reg [31:0] dev_sp1;         // Register1
    reg [31:0] dev_sp2;         // Register2

    // WRITE
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            fpga_version <= VERSION;
            fpga_id      <= ID;
            build_date   <= DATE;
            dev_sp1      <= 32'hcafebeef; 
            dev_sp2      <= 32'hbaddadef;
        end
        else if (SP_WE & (OPB_ADDR[3:0] == `ADDR_SP1)) begin
            dev_sp1 <= SP_DI[31:0]; 
        end
        else if (SP_WE & (OPB_ADDR[3:0] == `ADDR_SP2)) begin
            dev_sp2 <= SP_DI[31:0];
        end
    end

    // READ
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin   
            SP_DO <= 32'h0; 
        end
        else if (SP_RE & (OPB_ADDR[3:0] == `ADDR_SP1)) begin
            SP_DO <= dev_sp1;
        end
        else if (SP_RE & (OPB_ADDR[3:0] == `ADDR_SP2)) begin
            SP_DO <= dev_sp2;
        end
        else if (SP_RE & (OPB_ADDR[3:0] == `ADDR_VERSION)) begin
            SP_DO <= fpga_version;
        end
        else if (SP_RE & (OPB_ADDR[3:0] == `ADDR_ID)) begin
            SP_DO <= fpga_id;
        end
        else if (SP_RE & (OPB_ADDR[3:0] == `ADDR_DATE)) begin
            SP_DO <= build_date;
        end
        else begin
            SP_DO <= 32'h0; // Default value if no read is requested
        end
    end

endmodule

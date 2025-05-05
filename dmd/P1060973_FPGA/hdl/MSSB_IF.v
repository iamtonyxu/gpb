`timescale 1ns/100ps
`include "Addr_definition.v"

module MSSB_IF (
    // OPB Interface
    input             OPB_CLK, //100MHz
    input             OPB_RST,
    input   [31:0]    OPB_ADDR,
    input   [31:0]    OPB_DI,
    input             MSSB_IF_RE,
    input             MSSB_IF_WE,
    output  [31:0]    OPB_DO,

    // STAND_MSSB
    output             ST_MSSB_TX,
    input              MSSB_RX,

    // SERVICNE_MSSB
    output             ST_SRV_MSSB_TX,
    input              SRV_MSSB_RX

);
    // TODO: implement this feature later
    assign ST_MSSB_TX = MSSB_RX;
    assign ST_SRV_MSSB_TX = SRV_MSSB_RX;

    assign OPB_DO = (MSSB_IF_RE) ? 32'h5A5A5A5A : 32'b0;


endmodule

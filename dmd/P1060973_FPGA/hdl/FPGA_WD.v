///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: FPGA_WD
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
module FPGA_WDI(
    input   OPB_CLK,
    input   PULSE_100US,
    input   OPB_RST,
    output  WD_OUT
);
    reg [4:0] watchdog_time_100us;

 
    reg wdi; 
    assign WD_OUT = wdi;
   
	always@(posedge PULSE_100US or posedge OPB_RST) begin
        if(OPB_RST) begin
            wdi            <= 1'b0;
            watchdog_time_100us <= 5'b0;
        end
        else begin 
            if(watchdog_time_100us == 0) begin
                wdi <= 1'b1;
                watchdog_time_100us <= watchdog_time_100us + 1;
            end
            else if((watchdog_time_100us < 5'b01001) && (watchdog_time_100us > 5'b0)) begin
                wdi <= 1'b0;
                watchdog_time_100us <= watchdog_time_100us + 1;
            end 
            else begin
                watchdog_time_100us <= 5'b0;
            end
        end
    end
            
    
endmodule
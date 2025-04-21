`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Timer_Counter.v
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
module TIMER_COUNTER(
    ENABLE,
    CLOCK,
    RESET,
    DATA
);

    /**************************************************************************/
    /** Parameters **/
    parameter DATA_WIDTH = 16;

    /**************************************************************************/
    input ENABLE;
    input CLOCK;
    input RESET;

    output [DATA_WIDTH-1:0] DATA;
	
	reg [DATA_WIDTH-1:0] count;
	 
	assign DATA = count;
   
	
	always@(posedge CLOCK or posedge RESET) begin
		if(RESET) begin
			count <= 16'b0;
		end
		else if(ENABLE) begin
			count <= count + 1;
		end
	end

endmodule

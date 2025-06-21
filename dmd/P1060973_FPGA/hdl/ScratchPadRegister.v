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

module SCRATCH_PAD_REGISTER( 
    input           OPB_CLK,
    input           OPB_RST,
    input   [31:0]  SP_DI,
	input           SP1_RE,
	input           SP1_WE,
	input           SP2_RE,
	input           SP2_WE,
	output  reg [31:0]  SP_DO   
);

    /*  Scratch Pads */
  
    reg  [31:0] dev_sp1;    //Register1
    reg  [31:0] dev_sp2;    //Register2

    

    //WRITE
    always@(posedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin   
            dev_sp1 <= 32'h12345678; 
            dev_sp2 <= 32'h9abcbeef;
        end
        else if(SP1_WE) begin
            dev_sp1 <= SP_DI[31:0]; 
        end
        else if(SP2_WE) begin
            dev_sp2 <= SP_DI[31:0];
        end
    end
    //READ
    always@(posedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin   
           SP_DO <= 32'h0;
 
        end
        else if(SP1_RE) begin
            SP_DO <= dev_sp1;
            
        end
        else if(SP2_RE) begin
            SP_DO <= dev_sp2;
        end
    end


endmodule

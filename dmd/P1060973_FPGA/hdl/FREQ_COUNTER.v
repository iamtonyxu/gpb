///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: FREQ_COUNTER.v
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
`define CNTRLR          2'h0    /* Control Register (R/W) 0 */
`define CLKDIVR         2'h1    /* Aquasition clock divider Register (R/W) 1 */
`define COUNTR          2'h2    /* Count Register (R/W) 2 */
`define SPR				2'h3    /* Scratch Pad Register 3 */

module OSCILLATOR_COUNTER(
    output reg  [31:0]  OSC_CT_DO,
    input       [31:0]  OSC_CT_DI,
    input       [31:0]  OPB_ADDR,
    input               OSC_CT_RE,
    input               OSC_CT_WE,
    input               OPB_CLK,				//32MHz
    input               OPB_RST,
    input               SYSCLK,					//100MHz
	input               REF_CLK
); 
	
	//Module

    					
	wire        cntr_en;					// counter_en
	wire [15:0] count_data;					// counter register
	wire [2:0]  control;					// control register (control[0] = Start Measurement, control[1] = Reset Counter, control[2] = Measurement Inprogress)
	reg         resetb;
	reg         startb;
	reg         cntr_trig;
	reg  [31:0] sp;
	
	assign control[0] = startb;
	assign control[1] = resetb;
	assign control[2] = (startb || cntr_trig);
	assign cntr_en    = (cntr_trig && REF_CLK && ~resetb);




	TIMER_COUNTER counter(
		.ENABLE(cntr_en),
		.CLOCK(SYSCLK),
		.RESET(resetb),
		.DATA(count_data)
    );
		
	always@(posedge REF_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
            cntr_trig <= 1'b0;
        end
        else if(control[0])begin
			cntr_trig <= 1'b1;
		end
		else begin
			cntr_trig <= 1'b0;
		end
	end

/* Read Access */
	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
            OSC_CT_DO <= 32'b0;
		end		
        else if(OSC_CT_RE && (OPB_ADDR == `COUNTR)) begin
            OSC_CT_DO <= {16'b0, count_data};
            
        end
        else if(OSC_CT_RE && (OPB_ADDR == `SPR)) begin
            OSC_CT_DO <= {16'b0, sp[15:0]};
        end
	end

			
/* Write Access */
	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
			startb  <= 1'b0;
			resetb  <= 1'b0;
            sp      <= 32'h1a2b3c4e;
		end		
		else if(OSC_CT_WE) begin
			case(OPB_ADDR)
				`CNTRLR: begin
					startb <= OSC_CT_DI[0];
					resetb <= OSC_CT_DI[1];
				  end
				`SPR: sp <= OSC_CT_DI;
			endcase
		end
		else if(startb && cntr_trig && ~OSC_CT_WE) begin
			startb <= 1'b0;
		end
		else if(resetb && ~cntr_trig && ~OSC_CT_WE) begin
			resetb <= 1'b0;
			startb <= 1'b0;
		end	
	end


				
endmodule
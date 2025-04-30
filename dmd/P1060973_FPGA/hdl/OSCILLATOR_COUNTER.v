///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil
//
// File: OSCILLATOR_COUNTER.v
//
// Description: 
// Measure OPB_CLK frequency based on REF_CLK
// OPB_CLK = 100MHz, REF_CLK = 2KHz
// Counter = 100M / 2K = 50000 when REF_CLK is high each period
//
// Author: Yalong Xu
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps

// Register Address Definitions
`define CNTRLR          2'h0    // Control Register (R/W)
`define COUNTR          2'h1    // Count Register (R/W)
`define SPR             2'h2    // Scratch Pad Register

module OSCILLATOR_COUNTER(
    // System Clock and Reset
    input               OPB_CLK,    // 100MHz System Clock
    input               OPB_RST,    // System Reset
    
    // OPB Interface
    output reg  [31:0]  OSC_CT_DO,  // Data Output
    input       [31:0]  OSC_CT_DI,  // Data Input
    input       [31:0]  OPB_ADDR,   // Address Bus
    input               OSC_CT_RE,   // Read Enable
    input               OSC_CT_WE,   // Write Enable
    
    // Reference Clock
    input               REF_CLK      // 2KHz Reference Clock
); 

    // Internal Signals
    wire        cntr_en;            // Counter Enable Signal
    reg  [15:0] count_data;         // Counter Register
    wire [2:0]  control;            // Control Register
                                    // control[0] = Start Measurement
                                    // control[1] = Reset Counter
                                    // control[2] = Measurement In Progress
    reg         resetb;             // Reset Signal (Active Low)
    reg         startb;             // Start Signal (Active Low)
	reg         startb_d1;			// 1 clk delay of startb in case both resetb and startb received at the same time 
    reg         cntr_trig;          // Counter Trigger
    reg  [31:0] sp;                 // Scratch Pad Register

    // afifo to pass OPB trigger from OPB_CLK to REF_CLK
	wire afifo_wr;
	wire afifo_rd;
	wire afifo_rempty;


    // Control Signal Assignments
    assign control[0] = startb;
    assign control[1] = resetb;
    assign control[2] = (startb || cntr_trig);
    //assign cntr_en    = (cntr_trig && REF_CLK && ~resetb);
    assign cntr_en    = cntr_trig;

    // Counter Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            count_data <= 0;
        end 
        else if (resetb) begin
            count_data <= 0;        
        end 
        else if (cntr_en) begin
            count_data <= count_data + 16'h1;
        end
    end

    // afifo to pass OPB trigger from OPB_CLK to REF_CLK
    afifo #(
        .DSIZE(8),
        .ASIZE(2)
    )opb_fifo_inst(
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(afifo_wr),
        .i_wdata(8'h5a),
        .o_wfull(),
		.i_rclk(REF_CLK),
        .i_rrst_n(~OPB_RST),
        .i_rd(afifo_rd),
        .o_rdata(),
        .o_rempty(afifo_rempty)
    );
	
	assign afifo_wr = control[0];
	assign afifo_rd = ~afifo_rempty;

    // Counter Trigger Logic
    always @(posedge REF_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            cntr_trig <= 1'b0;
        end
        else if (afifo_rd) begin
            cntr_trig <= 1'b1;
        end
        else begin
            cntr_trig <= 1'b0;
        end
    end

    // Read Access Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OSC_CT_DO <= 32'b0;
        end        
        else if (OSC_CT_RE && (OPB_ADDR == `COUNTR)) begin
            OSC_CT_DO <= {16'b0, count_data};
        end
        else if (OSC_CT_RE && (OPB_ADDR == `SPR)) begin
            OSC_CT_DO <= {16'b0, sp[15:0]};
        end
    end
            
    // Write Access Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            startb  <= 1'b0;
            resetb  <= 1'b0;
            sp      <= 32'h1a2b3c4e;
        end        
        else if (OSC_CT_WE) begin
            case (OPB_ADDR)
                `CNTRLR: begin
                    startb <= OSC_CT_DI[0];
                    resetb <= OSC_CT_DI[1];
                end
                `SPR: sp <= OSC_CT_DI;
            endcase
        end
        else if (startb && cntr_trig && ~OSC_CT_WE) begin
            startb <= 1'b0;
        end
        else if (resetb && ~cntr_trig && ~OSC_CT_WE) begin
            resetb <= 1'b0;
            startb <= 1'b0;
        end    
    end

	// startb_d1
	always @(posedge OPB_CLK) begin
		startb_d1 <= startb;
	end

endmodule
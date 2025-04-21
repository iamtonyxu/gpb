///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: CLK_GEN.v
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
`timescale 1ps / 1ps

`define PULSE_5US_ADDR		    4'h1
`define PULSE_50US_ADDR		    4'h2
`define PULSE_500US_ADDR		4'h3
`define PULSE_100US_ADDR		4'h4
`define CLK_2MHZ_ADDR		    4'h5
`define CLK_16KHZ_ADDR		    4'h6
//`define CLK_DIV_AQ_ADDR         4'h7
//`define CLK_DIV_SD_ADDR		    4'h8




module ClkGen(
	output  [31:0]  CLK_GEN_DO,
	input   [31:0]  CLK_GEN_DI,
	input   [31:0]  OPB_ADDR,
	input           CLK_GEN_RE,
	input           CLK_GEN_WE,
	input           OPB_CLK,				
	input           OPB_RST,
	input           SYSCLK,					
	
    output          PULSE_200KHZ,
    output          PULSE_20KHZ,
    output          PULSE_2KHZ,
	output          PULSE_100US,
    output          CLK_16KHZ,
    output          CLK_2MHZ
	//output          CLK_AQ,
	//output          CLK_SD
    	
);

    localparam Clk2MhzDivDflt           = 16'd25;
    localparam Pulse5usDflt             = 16'd250; 
    localparam Pulse50usDflt            = 16'd2500; 
    localparam Pulse500usDflt           = 16'd25000; 
    localparam Pulse100usDflt           = 16'd5000;          
    localparam Clk10hzDivDflt           = 16'd50000;
    localparam Clk16khzDivDflt          = 16'd1000;            
    //localparam ClkAcqDivDflt            = 16'd2;             
    //localparam ClkSerDatDivDflt         = 16'd2;             
    


    reg [15:0] pulse5us_div;
    reg [15:0] pulse50us_div;
    reg [15:0] pulse500us_div;
	reg [15:0] pulse100us_div;
    //reg [15:0] clk_10hz_div;
    reg [15:0] clk16khz_div;
    reg [15:0] clk2meghz_div;
    
	//reg [15:0] aq_div;	
	//reg [15:0] sd_div; 
    
     


	CLOCK_DIV pulse200khz_div(
		.CLK_DIV(pulse5us_div),
		.CLK_IN(SYSCLK),
		.CLK_OUT(PULSE_200KHZ),
        .RST(OPB_RST)
	);

	CLOCK_DIV pulse20khz_div(
		.CLK_DIV(pulse50us_div),
		.CLK_IN(SYSCLK),
		.CLK_OUT(PULSE_20KHZ),
        .RST(OPB_RST)
	);

    CLOCK_DIV pulse2khz_div(
		.CLK_DIV(pulse500us_div),
		.CLK_IN(SYSCLK),
		.CLK_OUT(PULSE_2KHZ),
        .RST(OPB_RST)
	);


	CLOCK_DIV pulse2mhz_div(
		.CLK_DIV(Clk2MhzDivDflt),
		.CLK_IN(SYSCLK),
		.CLK_OUT(CLK_2MHZ),
        .RST(OPB_RST)
	);

	CLOCK_DIV wdclk_div(
		.CLK_DIV(pulse100us_div),
		.CLK_IN(SYSCLK),
		.CLK_OUT(PULSE_100US),
        .RST(OPB_RST)
	);
   
	//CLOCK_DIV aqclk_div(
	//	.CLK_DIV(aq_div),
	//	.CLK_IN(SYSCLK),
	//	.CLK_OUT(CLK_AQ),
    //    .RST(OPB_RST)
	//);	

	//CLOCK_DIV sdclk_div(
	//	.CLK_DIV(sd_div),
	//	.CLK_IN(SYSCLK),
	//	.CLK_OUT(CLK_SD),
    //    .RST(OPB_RST)
	//);



	CLOCK_DIV clk_16khz_div(
		.CLK_DIV(clk16khz_div),
		.CLK_IN(OPB_CLK),
		.CLK_OUT(CLK_16KHZ),
        .RST(OPB_RST)
	);

 


  
    assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `PULSE_5US_ADDR))   ?  {16'b0, pulse5us_div}                : 32'bz;
    assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `PULSE_50US_ADDR))  ?  {16'b0, pulse50us_div}               : 32'bz;
    assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `PULSE_500US_ADDR)) ?  {16'b0, pulse500us_div}              : 32'bz;
    assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `PULSE_100US_ADDR)) ?  {16'b0, pulse100us_div}              : 32'bz;
    //assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `CLK_10HZ_ADDR))    ?  {16'b0, clk_10hz_div}                : 32'bz;
    //assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `CLK_DIV_AQ_ADDR))  ?  {16'b0, aq_div}                      : 32'bz;
    //assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `CLK_DIV_SD_ADDR))  ?  {16'b0, sd_div}                      : 32'bz;
    assign CLK_GEN_DO = (CLK_GEN_RE && (OPB_ADDR == `CLK_16KHZ_ADDR))   ?  {16'b0, clk16khz_div}                : 32'bz;	


	always@(posedge OPB_CLK or posedge OPB_RST) begin	
		if(OPB_RST) begin
            pulse5us_div      <= Pulse5usDflt;
            pulse50us_div     <= Pulse50usDflt;
            pulse500us_div    <= Pulse500usDflt;
            pulse100us_div    <= Pulse100usDflt;
            clk2meghz_div      <= Clk2MhzDivDflt;
			//aq_div            <= ClkAcqDivDflt;
			//sd_div            <= ClkSerDatDivDflt;
            clk16khz_div      <= Clk16khzDivDflt;

		end	
		else if(CLK_GEN_WE) begin
			case(OPB_ADDR)          		
                `PULSE_5US_ADDR:        pulse5us_div        <= CLK_GEN_DI;
                `PULSE_50US_ADDR:       pulse50us_div       <= CLK_GEN_DI;
                `PULSE_500US_ADDR:      pulse500us_div      <= CLK_GEN_DI;
                `PULSE_100US_ADDR:      pulse100us_div      <= CLK_GEN_DI;
                `CLK_2MHZ_ADDR:         clk2meghz_div        <= CLK_GEN_DI;
                //`CLK_DIV_AQ_ADDR:       aq_div              <= CLK_GEN_DI;            
				//`CLK_DIV_SD_ADDR:       sd_div              <= CLK_GEN_DI;
                `CLK_16KHZ_ADDR:        clk16khz_div        <= CLK_GEN_DI;          
			endcase
		end
	end

endmodule

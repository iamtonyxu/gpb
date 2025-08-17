`timescale 1ns / 100ps 

/*-----------------------------------------------------------------------------------------------------------
--
-- Module name: ADC_ADS8864
--
-- Description: This module is to interface with the AD7663AS ADC.
--
-- Author: Yalong Xu
-- Data: 2025-04-22
-- 00.00.00.01  XYL  Initial version number
-----------------------------------------------------------------------------------------------------------*/

/***** Memory Map *****/

`define D_RAM_ADDR              12'h000		/* Start Address of RAM */  
`define D_RAM_SIZE				12'h400		/* size of RAM */
`define CNTRL_ADDR              12'h800     /* Control Register (R/W) */
`define CLK_DIV_AQ_ADDR         12'h802     /* Aquasition clock divier Register (R/W) */
`define CLK_DIV_SD_ADDR			12'h804		/* Serial Data Clock divier Register (R/W) */
`define D_LENGTH_ADDR		    12'h806		/* Address of data length register (R/W) */
`define STATUS_ADDR				12'h808		/* Address of Status Register (Read only) */
`define STATE_ADDR				12'h80a		/* Address of State Register (Read only) */
`define SP_ADDR                 12'h900     /* SP Address Register (Read only) */

`define S_START          5'h0
`define S_CNVST_SET      5'h1
`define S_CNVST_CLEAR    5'h2
`define S_BUSY           5'h3
`define S_READ0          5'h4
`define S_READ_BUSY      5'h5
`define S_READ1          5'h6
`define S_READ2          5'h7
`define S_READ3          5'h8
`define S_READ4          5'h9
`define S_READ5          5'ha
`define S_READ6          5'hb
`define S_READ7          5'hc
`define S_READ8          5'hd
`define S_READ9          5'he
`define S_READ10         5'hf
`define S_READ11         5'h10
`define S_READ12         5'h11
`define S_READ13         5'h12
`define S_READ14         5'h13
`define S_READ15         5'h14
`define S_READ16         5'h15
`define S_READ17         5'h16
`define S_READ18         5'h17
`define S_WAIT           5'h18
`define S_END            5'h19

module ADC_ADS8864_IF(
	input                   OPB_CLK,
	input                   OPB_RST,
	input                   OPB_RE,
	input                   OPB_WE,
	input       [31:0]      OPB_ADDR,
	output reg  [31:0]      OPB_DO,
	input       [31:0]      OPB_DI,

	output reg              ADC_CNVST = 1'b0,
	output                  ADC_SCLK,
	input                   ADC_SDOUT
);
	 
	 //Registers
	 reg [2:0] control;				        // control[1]: start sample, control[2]: reset module, 
	 reg [3:0] status = 4'b0000;			// status[0]: busy, status[1]: done, status[2]: aq timeout, status[3]: busy timout
	 reg [11:0] data_length = 12'h5;		// number of samples to collect
	 reg [15:0] clk_div_aq  = 16'd250;      // aquasition clock default 200KHz 
	 reg [15:0] clk_div_sd  = 16'd3;        // serial data clock default 16.67MHz
	 reg [9:0] ram_wr_pt = 10'h000;		    // Ram Write Pointer
	 reg ram_wr_clk = 1'b0;					// ram write clock
	 reg [4:0] state = 5'h0;				// state of state machine
	 reg [15:0] sdout_buf = 16'h0;		    // buffer for the ADC_SDOUT signal
	 reg [10:0] data_count = 11'h0;		    // count samples as they are saved to ram
	 reg [1:0] clk_aq_low = 2'h0;			// used to look for clk_aq edges
	 reg [1:0] clk_aq_high = 2'h0;		    // used to look for clk_aq edges
	 reg ADC_SCLK_en = 1'b0;					// enable the sclk
	 reg [7:0] time_out_count = 8'h0;	    // time out counter
     reg [15:0] sp;

     // Tconv (Conversion time) max = 1300 ns
     parameter TIMEOUT_CONV = 7'd35; // 1400ns timeout for ADC conversion

	 //signals
	 wire clk_aq;
	 wire clk_sd;	
	 wire [15:0] ram_opb_do;
	 
	 wire ram_re = OPB_RE &
							(OPB_ADDR[11:0] >= `D_RAM_ADDR) & 
							(OPB_ADDR[11:0] < (`D_RAM_ADDR + `D_RAM_SIZE));
							
	assign ADC_SCLK = (clk_sd && ADC_SCLK_en);

 
	CLOCK_DIV aqclkdiv(
		.CLK_DIV(clk_div_aq),
		.CLK_IN(OPB_CLK),
        .RST(OPB_RST),
		.CLK_OUT(clk_aq)
	);
	
	CLOCK_DIV sclk(
		.CLK_DIV(clk_div_sd),
		.CLK_IN(OPB_CLK),
        .RST(OPB_RST),
		.CLK_OUT(clk_sd)
	);
	
	DP_RAM_2R_1W #(
		.ADDR_WIDTH(10),				// 1K samples of data
		.DATA_WIDTH(16)				    // 16 bit samples
	) data_in_ram(					    // data read from ADC
		.PA_DI(sdout_buf),			    // data in buffer
		.PA_DO(),
		.PA_ADDR(ram_wr_pt),		   // pointer to next memory location
		.PA_WE(1'b1), 				   // Ram is always write enabled 
		.PA_CLK(ram_wr_clk),		   // state machine controls clock signal
		.PB_DO(ram_opb_do),
		.PB_ADDR(OPB_ADDR[9:0]),
		.PB_CLK(OPB_CLK)
	);

	// conv_count, state switch from `S_CNVST_SET to `S_CNVST_CLEAR only if conv_count reaches 20
	// conv_count is used to count the number of clock cycles of clk_sd
	reg [7:0] conv_count = 8'h0;
	always@(posedge clk_sd or posedge OPB_RST) begin
		if(OPB_RST) begin
			conv_count <= 8'h0;
		end
		else if(state == `S_CNVST_SET) begin
			if(conv_count >= TIMEOUT_CONV) begin
				conv_count <= 8'h0;
			end
			else begin
				conv_count <= conv_count + 1'b1;
			end
		end
		else begin
			conv_count <= 8'h0;
		end
	end
	
    always@(posedge clk_sd or posedge OPB_RST) begin 
        if(OPB_RST) begin
            ADC_CNVST        <= 1'b0;
            status          <= 4'b0;
            time_out_count  <= 8'b0;
            sdout_buf       <= 16'b0;
            ram_wr_pt       <= 10'b0;
			ram_wr_clk      <= 1'b0;
            data_count      <= 11'b0;
            clk_aq_low      <= 2'h0;
			clk_aq_high     <= 2'h0;
            ADC_SCLK_en      <= 1'h0;
            state           <= `S_START;
            sp              <= 16'h1122;
        end
		else if(control[2]) begin				//reset registers
			status          <= 4'h0;
			ram_wr_pt       <= 10'h000;
			ram_wr_clk      <= 1'b0;
			state           <= `S_START;
			sdout_buf       <= 16'h0;
			data_count      <= 11'h0;
			clk_aq_low      <= 2'h0;
			clk_aq_high     <= 2'h0;
            sp              <= 16'h3344;
        end
        else if(control[1] || status[0]) begin
            case(state)
                `S_START: begin
                    sdout_buf <= 16'h0;                 // clear buffer
                    if((clk_aq_high == 2'h3) && (clk_aq_low == 2'h3))begin    // start action on rising edge of clk_aq
                        state <= `S_CNVST_SET;
                        status[0] <= 1'b1;                                  // status busy
                        status[1] <= 1'b0;                                  // status not done                        
                    end
                    else if((clk_aq == 1'b0) && (clk_aq_low != 2'h3)) begin
                        clk_aq_low <= clk_aq_low + 2'h1;
                    end
                    else if((clk_aq == 1'b1) && (clk_aq_low == 2'h3)) begin
                        clk_aq_high <= clk_aq_high + 2'h1;
                    end
                end
                `S_CNVST_SET: begin
                    ADC_CNVST <= 1'b1;   // set conversion start
                    clk_aq_low <= 2'h0;  // clear aq_clk edge detection
                    clk_aq_high <= 2'h0;
                    if(conv_count >= TIMEOUT_CONV) begin
                        state <= `S_CNVST_CLEAR; // wait for 1400ns
                    end
                    else begin
                        state <= `S_CNVST_SET;
                    end
                end
                `S_CNVST_CLEAR: begin
                    ADC_CNVST <= 1'b0;										// clear conversion start
                    //state <= `S_BUSY;
					state <= `S_READ1; // skip to S_READ1 under 3-wire without a BUSY Indicator
					time_out_count <= 0;
                end
				`S_BUSY: begin
					if(!ADC_SDOUT) begin
						state <= `S_READ0;									// wait for ADC_SDOUT to go low
					end
					else if(time_out_count >= TIMEOUT_CONV) begin
						time_out_count <= 0;
						status[2] <= 1'b1;
						state <= `S_END;
					end
					else begin
						time_out_count <= time_out_count +1;
						state <= `S_BUSY;									// wait for ADC_SDOUT to go low
					end				
				end
				`S_READ0: begin 
					ADC_SCLK_en <= 1'b1;
					state <= state + 1;
					time_out_count <= 0;
				end
				`S_READ_BUSY: begin
					state <= state + 1;
				end
				`S_READ1: begin 
					ADC_SCLK_en <= 1'b1; // 3-wire without a BUSY Indicator
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//0
					state <= state + 1;
				end
				`S_READ2: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//1
					state <= state + 1;
				end
				`S_READ3: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//2
					state <= state + 1;
				end
				`S_READ4: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//3
					state <= state + 1;
				end
				`S_READ5: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//4
					state <= state + 1;
				end
				`S_READ6: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//5
					state <= state + 1;
				end
				`S_READ7: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//6
					state <= state + 1;
				end
				`S_READ8: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//7
					state <= state + 1;
				end
				`S_READ9: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//8
					state <= state + 1;
				end
				`S_READ10: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//9
					state <= state + 1;
				end
				`S_READ11: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//10
					state <= state + 1;
				end
				`S_READ12: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//11
					state <= state + 1;
				end
				`S_READ13: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//12
					state <= state + 1;             
				end
				`S_READ14: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//13
					state <= state + 1;
                    sp <= 16'h0013;
				end
				`S_READ15: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//14
					state <= state + 1;
				end
				`S_READ16: begin 
					sdout_buf <= {sdout_buf[14:0],ADC_SDOUT};//15
					state <= state + 1;
				end
				`S_READ17: begin
					ADC_SCLK_en <= 1'b0;
					data_count <= data_count + 1;
					ram_wr_clk <= 1'b1;
					state <= state + 1;
				end
				`S_READ18: begin
					ram_wr_clk <= 1'b0;
					ram_wr_pt <= ram_wr_pt + 1;
					if (data_count >= data_length)
						state <= `S_END;
					else
						state <= `S_WAIT;
				end
				`S_WAIT: begin // Wait for next rising edge of clk_aq
					if ((clk_aq_high == 2'h3) && (clk_aq_low == 2'h3)) begin // Start action on rising edge of clk_aq
						state <= `S_CNVST_SET;
					end else if ((clk_aq == 1'b0) && (clk_aq_low != 2'h3)) begin
						clk_aq_low <= clk_aq_low + 2'h1;
					end else if ((clk_aq == 1'b1) && (clk_aq_low == 2'h3)) begin
						clk_aq_high <= clk_aq_high + 2'h1;
					end
				end
				`S_END: begin
					if (status[0]) begin // Reset state machine
						status[0] <= 1'b0;
						status[1] <= 1'b1;
						ram_wr_clk <= 1'b0;
						ram_wr_pt <= 10'h000;
						data_count <= 11'h0;
					end					
				end
			endcase
		end
		else if((control == 3'b000) && (state != `S_START)) begin
			state <= `S_START;
		end
	end

// OPB
/* Read Access */

	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
            OPB_DO <= 32'b0; 
		end		
		else if(OPB_RE && (OPB_ADDR[11:0] == `CNTRL_ADDR)) begin
            OPB_DO <= {29'b0 , control};
		end
		else if(OPB_RE && (OPB_ADDR[11:0] == `CLK_DIV_AQ_ADDR)) begin
		    OPB_DO <= {16'b0 , clk_div_aq};	
		end	
		else if(OPB_RE && (OPB_ADDR[11:0] == `CLK_DIV_SD_ADDR)) begin
		    OPB_DO <= {16'b0 , clk_div_sd};	
		end	
		else if(OPB_RE && (OPB_ADDR[11:0] == `D_LENGTH_ADDR)) begin
		    OPB_DO <= {20'b0 , data_length};	
		end	
		else if(OPB_RE && (OPB_ADDR[11:0] == `STATE_ADDR)) begin
		    OPB_DO <= {27'b0 , state};	
		end	
		else if(OPB_RE && (OPB_ADDR[11:0] == `STATUS_ADDR)) begin
		    OPB_DO <= {ADC_SDOUT, 27'b0 , status};	
		end	
		else if(ram_re) begin
		    OPB_DO <= {16'b0 , ram_opb_do};	
		end	
		else if(OPB_RE && (OPB_ADDR[11:0] == `SP_ADDR)) begin
		    OPB_DO <= {16'b0 , sp};	
		end	

	end



/* Write Access */
	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
            control         <= 3'b000;
            clk_div_aq      <= 16'd250; 
            clk_div_sd      <= 16'd3; 
            data_length     <= 12'h5;
		end		
		else if(OPB_WE) begin
			case(OPB_ADDR[11:0])
				`CNTRL_ADDR:        control     <= OPB_DI[2:0];
				`CLK_DIV_AQ_ADDR:   clk_div_aq  <= OPB_DI[15:0];
				`CLK_DIV_SD_ADDR:   clk_div_sd  <= OPB_DI[15:0];
				`D_LENGTH_ADDR:     data_length <= OPB_DI[11:0];
			endcase
		end
		else if(state == `S_END) begin
			control <= 3'b000;
		end	
	end
					
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    DAC_AD8803AR 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define TRIG_ADDR			4'h0
`define DONE_ADDR			4'h2
`define DATA_ADDR			4'h4
`define ADDRESS_ADDR		4'h6
`define TX_CLK_DIV_ADDR     4'h8
`define BUFFER_ADDR			4'ha
`define BIT_COUNT_ADDR		4'hc
`define DAC_SP_ADDR         4'he
	
module DAC_AD8803AR(
    output              ILIM_DAC_CLK,
    output              ILIM_DAC_SDI,
    output reg          ILIM_DAC_CS,	 
    output reg  [31:0]  DAC_DO,
    input       [31:0]  DAC_DI,
    input       [31:0]  OPB_ADDR,
    input               DAC_RE,
    input               DAC_WE,
    input               OPB_CLK,				//37.5MHz
    input               OPB_RST,
    input               SYSCLK					//100MHz
);

	 
    reg         trig;
    reg         done;
    reg [7:0]   data;
    reg [2:0]   address;
    reg [15:0]  tx_clk_div;
    reg [10:0]  buffer;
    reg         clk_en;
    reg [3:0]   bit_count; 
    reg [15:0]  sp;
	 
    wire tx_clk;

    assign ILIM_DAC_CLK = ~(tx_clk & clk_en);
    assign ILIM_DAC_SDI = (clk_en) ? buffer[10] : 1'bz;

	 
    CLOCK_DIV tx_clk_mod(
        .CLK_DIV(tx_clk_div),
        .CLK_IN(SYSCLK),
        .CLK_OUT(tx_clk),
        .RST(OPB_RST)
    );
	
	always@(posedge tx_clk or posedge OPB_RST) begin
        if(OPB_RST) begin
            ILIM_DAC_CS <= 1'b1;
        	done        <= 1'b0;
            buffer      <= 0;
        	clk_en      <= 1'b0;
       		bit_count   <= 0;
        end
        else if(trig && !done) begin
        	if(bit_count < 1) begin
        		buffer      <= {address , data};
        		bit_count   <= bit_count + 1;
        		clk_en      <= 1'b1;
        		ILIM_DAC_CS <= 1'b0;
        	end
        	else if(bit_count < 11) begin
        		buffer      <= {buffer[9:0],buffer[10]};
        		bit_count   <= bit_count + 1;
        	end
        	else if(bit_count < 12) begin
        		bit_count   <= bit_count + 1;
        		ILIM_DAC_CS <= 1'b1;
        	end
        	else begin
        		done    <= 1'b1;
        		clk_en  <= 1'b0;
        	end
        end
        else if(!trig) begin
        	done        <= 1'b0;
        	bit_count   <= 0;
        	ILIM_DAC_CS <= 1'b1;
        end
	end
	
/* Read Access */
	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
            DAC_DO <= 32'b0;
		end	
		else if(DAC_RE && (OPB_ADDR[3:0] == `DONE_ADDR)) begin
            DAC_DO <= {31'b0 , done};
        end	
		else if(DAC_RE && (OPB_ADDR[3:0] == `DAC_SP_ADDR)) begin
            DAC_DO <= {16'b0 , sp};
        end
		else if(DAC_RE && (OPB_ADDR[3:0] == `ADDRESS_ADDR)) begin
            DAC_DO <= {29'b0, address};
        end        
 		else if(DAC_RE && (OPB_ADDR[3:0] == `DATA_ADDR)) begin
            DAC_DO <= {24'b0 , data};
        end        
        	
    end 


	
/* Write Access */
	always@(negedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin
			trig        <= 1'b0;
			data        <= 8'h0;
			address     <= 3'h0;
			tx_clk_div  <= 16'h2;
            sp          <= 16'h0;
		end		
		else if(DAC_WE) begin
			case(OPB_ADDR[3:0])
				`TRIG_ADDR:         trig        <= DAC_DI[0];
				`DATA_ADDR:         data        <= DAC_DI[7:0];
				`ADDRESS_ADDR:      address     <= DAC_DI[2:0];
				`TX_CLK_DIV_ADDR:   tx_clk_div  <= DAC_DI[15:0];
                `DAC_SP_ADDR:       sp          <= DAC_DI[15:0];
			endcase
		end	
	end
	

endmodule
`timescale 1ns/100ps

module DUT_ADS8864(
    input               RESET,
    input               SYSCLK, // 100MHz clock
 	input               AD_SCLK,
	input               AD_CNVST,
	output reg          AD_SDOUT
);

    parameter CONVERT_TIME = 8'd35; // 1400ns timeout for ADC conversion under 25MHz clock
    parameter SDOUT_BITS = 5'd17; // 16+1 bits for SDOUT

    // state machine states
    parameter IDLE = 4'd0;
    parameter CONVERT = 4'd1;
    parameter BUSY = 4'd2;
    parameter READ = 4'd3;
    parameter DONE = 4'd4;

    reg [3:0] state; // current state
    reg [7:0] convert_counter; // counter for conversion time
    reg [4:0] sdout_counter; // counter for SDOUT bits

    reg [16:0] ADC_VALUE = 17'hABCD; // register to hold ADC value

	reg [15:0] clk_div_sd  = 16'd3;        //16'd4;		// serial data clock default 25MHz
    wire clk_sd;
	CLOCK_DIV sclk(
		.CLK_DIV(clk_div_sd),
		.CLK_IN(SYSCLK),
        .RST(RESET),
		.CLK_OUT(clk_sd)
	);

    // state
    always @(posedge SYSCLK or posedge RESET) begin
        if (RESET) begin
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    if (AD_CNVST) begin
                        state <= CONVERT;
                    end else begin
                        state <= IDLE;
                    end
                end
                CONVERT: begin
                    if (AD_CNVST) begin
                        state <= BUSY;
                    end else begin
                        state <= IDLE;
                    end
                end
                BUSY: begin
                    if (convert_counter >= CONVERT_TIME - 4) begin
                        state <= READ;
                    end else begin
                        state <= BUSY;
                    end
                end
                READ: begin
                    if(AD_CNVST) begin
                        state <= CONVERT;
                    end else if (sdout_counter >= SDOUT_BITS) begin
                        state <= DONE;
                    end else begin
                        state <= READ;
                    end
                end
                DONE: begin
                    state <= IDLE; // reset to IDLE after done
                end
                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end 

    // converter_counter
    always @(posedge clk_sd or posedge RESET) begin
        if (RESET) begin
            convert_counter <= 8'd0;
        end else if (state == BUSY) begin
            if (convert_counter < CONVERT_TIME) begin
                convert_counter <= convert_counter + 1;
            end else begin
                convert_counter <= 8'd0; // reset counter after conversion time
            end
        end else begin
            convert_counter <= 8'd0; // reset counter in other states
        end
    end

    // sdout_counter
    always @(posedge AD_SCLK or posedge RESET) begin
        if (RESET) begin
            sdout_counter <= 5'd0;
        end else if (state == READ) begin
            if (sdout_counter < SDOUT_BITS) begin
                sdout_counter <= sdout_counter + 1;
            end else begin
                sdout_counter <= 5'd0; // reset counter after reading all bits
            end
        end else begin
            sdout_counter <= 5'd0; // reset counter in other states
        end
    end

    // AD_SDOUT
    always @(posedge clk_sd or posedge RESET) begin
        if (RESET) begin
            AD_SDOUT <= 1'b1;
        end else if (convert_counter >= CONVERT_TIME-5) begin
            AD_SDOUT <= 1'b0;
        end else if (state == READ) begin
            if (sdout_counter < SDOUT_BITS) begin
                AD_SDOUT <= ADC_VALUE[SDOUT_BITS - 1 - sdout_counter]; // shift out ADC value
            end else begin
                AD_SDOUT <= 1'b0; // reset output after reading all bits
            end
        end else if(state == IDLE) begin
            AD_SDOUT <= 1'b1; // reset output in other states
        end
    end

    // ADC_VALUE, increase by 1 if state == Done
    always @(posedge SYSCLK or posedge RESET) begin
        if (RESET) begin
            ADC_VALUE <= 17'hABCD; // reset ADC value to initial value
        end else if (state == DONE) begin
            ADC_VALUE <= ADC_VALUE + 1; // increase ADC value by 1 after done
        end else begin
            ADC_VALUE <= ADC_VALUE; // keep ADC value in other states
        end
    end

endmodule
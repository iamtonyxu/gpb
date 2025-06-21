`timescale 1ns/100ps

`define NOP_ADDR        4'h0
`define DEVICE_ID_ADDR  4'h1
`define SYNC_ADDR       4'h2
`define CONFIG_ADDR     4'h3
`define GAIN_ADDR       4'h4
`define TRIGGER_ADDR    4'h5
`define BRDCAST_ADDR    4'h6
`define STATUS_ADDR     4'h7
`define DAC0_ADDR       4'h8
`define DAC1_ADDR       4'h9
`define DAC2_ADDR       4'hA
`define DAC3_ADDR       4'hB

module DUT_DACx0504(
    input              SYS_CLK, // 100MHz clock
    input              SYS_RST,

    input              DAC_CLK, // 12.5MHz clock
    input              DAC_SDI,
    input              DAC_CS_N,
    output             DAC_SDO
);

    // DACx0504 registers for sim
    reg [15:0] REG_NOP = 16'h0; // NOP register
    reg [15:0] REG_DEVICE_ID = 16'hABCD; // Device ID register
    reg [15:0] REG_SYNC = 16'h0; // SYNC register
    reg [15:0] REG_CONFIG = 16'h0; // CONFIG register
    reg [15:0] REG_GAIN = 16'h1; // GAIN register
    reg [15:0] REG_TRIGGER = 16'h0; // TRIGGER register
    reg [15:0] REG_BRDCAST = 16'h0; // BRDCAST register
    reg [15:0] REG_STATUS = 16'h0; // STATUS register
    reg [15:0] REG_DAC0 = 16'h1122; // DAC0 register
    reg [15:0] REG_DAC1 = 16'h3344; // DAC1 register
    reg [15:0] REG_DAC2 = 16'h5566; // DAC2 register
    reg [15:0] REG_DAC3 = 16'h7788; // DAC3 register

    // shift_in register for DAC
    reg [23:0] shift_in = 24'h0; // 24-bit shift register for DAC data
    reg [23:0] shift_out = 24'h0; // 24-bit shift register for DAC data

    reg [4:0] bit_count = 5'd0; // Bit counter for shift register

    wire [3:0] dac_addr;
    wire       dac_rd;

    assign dac_addr = shift_in[19:16]; // Extract DAC address from shift_in
    assign dac_rd = shift_in[23]; // Extract read/write flag from shift_in

    // bit_count
    always @(posedge DAC_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            bit_count <= 5'd0; // Reset bit counter
        end else if(~DAC_CS_N)begin
            bit_count <= bit_count + 1;
        end else begin
            bit_count <= 5'd0; // Reset bit counter when CS is high
        end
    end

    // shift_in data
    always @(posedge DAC_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            shift_in <= 24'h0; // Reset shift register
            shift_out <= 24'h0; // Reset shift register
        end else if(~DAC_CS_N)begin
            if(bit_count > 0) begin
                shift_in <= {shift_in[22:0], DAC_SDI}; // Shift in data from DAC_SDI
                shift_out <= {shift_out[22:0], 1'b0}; // Shift out data to DAC_SDO
            end
        end else begin
            if(dac_rd) begin
            case(dac_addr)
                `NOP_ADDR: begin
                    shift_out <= {4'h8, `NOP_ADDR, REG_NOP}; // NOP register
                end
                `DEVICE_ID_ADDR: begin
                    shift_out <= {4'h8, `DEVICE_ID_ADDR, REG_DEVICE_ID}; // Device ID register
                end
                `SYNC_ADDR: begin
                    shift_out <= {4'h8, `SYNC_ADDR, REG_SYNC}; // SYNC register
                end
                `CONFIG_ADDR: begin
                    shift_out <= {4'h8, `CONFIG_ADDR, REG_CONFIG}; // CONFIG register
                end
                `GAIN_ADDR: begin
                    shift_out <= {4'h8, `GAIN_ADDR, REG_GAIN}; // GAIN register
                end
                `TRIGGER_ADDR: begin
                    shift_out <= {4'h8, `TRIGGER_ADDR, REG_TRIGGER}; // TRIGGER register
                end
                `BRDCAST_ADDR: begin
                    shift_out <= {4'h8, `BRDCAST_ADDR, REG_BRDCAST}; // BRDCAST register
                end
                `STATUS_ADDR: begin
                    shift_out <= {4'h8, `STATUS_ADDR, REG_STATUS}; // STATUS register
                end
                `DAC0_ADDR: begin
                    shift_out <= {4'h8, `DAC0_ADDR, REG_DAC0}; // DAC0 register
                end
                `DAC1_ADDR: begin
                    shift_out <= {4'h8, `DAC1_ADDR, REG_DAC1}; // DAC1 register
                end
                `DAC2_ADDR: begin
                    shift_out <= {4'h8, `DAC2_ADDR, REG_DAC2}; // DAC2 register
                end
                `DAC3_ADDR: begin
                    shift_out <= {4'h8, `DAC3_ADDR, REG_DAC3}; // DAC3 register
                end
                default: begin
                    shift_out <= 24'h0; // Default case
                end
            endcase
            end else begin
                shift_out <= 24'h0; // Reset shift_out if not reading
            end
        end
    end

    // REG_NOP
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_NOP <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `NOP_ADDR) begin
            REG_NOP <= shift_in[15:0];
        end
    end

    // REG_DEVICE_ID
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_DEVICE_ID <= 16'hABCD;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `DEVICE_ID_ADDR) begin
            REG_DEVICE_ID <= shift_in[15:0];
        end
    end

    // REG_SYNC
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_SYNC <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `SYNC_ADDR) begin
            REG_SYNC <= shift_in[15:0];
        end
    end

    // REG_CONFIG
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_CONFIG <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `CONFIG_ADDR) begin
            REG_CONFIG <= shift_in[15:0];
        end
    end

    // REG_GAIN
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_GAIN <= 16'h1;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `GAIN_ADDR) begin
            REG_GAIN <= shift_in[15:0];
        end
    end

    // REG_TRIGGER
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_TRIGGER <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `TRIGGER_ADDR) begin
            REG_TRIGGER <= shift_in[15:0];
        end
    end

    // REG_BRDCAST
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_BRDCAST <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `BRDCAST_ADDR) begin
            REG_BRDCAST <= shift_in[15:0];
        end
    end

    // REG_STATUS
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_STATUS <= 16'h0;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `STATUS_ADDR) begin
            REG_STATUS <= shift_in[15:0];
        end
    end

    // REG_DAC0
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_DAC0 <= 16'h1122;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `DAC0_ADDR) begin
            REG_DAC0 <= shift_in[15:0];
        end
    end

    // REG_DAC1
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_DAC1 <= 16'h3344;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `DAC1_ADDR) begin
            REG_DAC1 <= shift_in[15:0];
        end
    end

    // REG_DAC2
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_DAC2 <= 16'h5566;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `DAC2_ADDR) begin
            REG_DAC2 <= shift_in[15:0];
        end
    end

    // REG_DAC3
    always@(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            REG_DAC3 <= 16'h7788;
        end else if(bit_count == 5'h19 && shift_in[19:16] == `DAC3_ADDR) begin
            REG_DAC3 <= shift_in[15:0];
        end
    end


    // DAC_SDO is the output data from DAC
    assign DAC_SDO = shift_out[23]; // Output the MSB of shift_out to DAC_SDO

endmodule

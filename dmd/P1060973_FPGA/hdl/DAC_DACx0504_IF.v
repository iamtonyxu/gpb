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

module DAC_DACx0504_IF(
    input               OPB_CLK,
    input               OPB_RST,
    input       [31:0]  OPB_ADDR,
    input       [31:0]  OPB_DI,
    input               OPB_WE,
    input               OPB_RE,
    output      [31:0]  OPB_DO,
    output              DAC_CLK,
    output              DAC_SDI,
    output reg          DAC_CS_N,
    input               DAC_SDO
);

    // Passing data from ADC to OPB Read
    wire [3:0] ram_opb_raddr;
    wire [23:0] ram_opb_rdata;
    wire ram_dac_we;

    // bit[23], RW, 0-Write, 1-Read
    // bit[22:20], 3'b000, Reserved
    // bit[19:16], A[3:0]
    // bit[15:0], DI[15:0]
    reg [23:0] data_out; // Data to be sent to DAC
    reg [23:0] data_in;  // Data received from DAC

    // FIFO to pass OPB data to DAC
    wire opb_fifo_wr;
    wire [23:0]opb_fifo_wdata;
    wire opb_fifo_rd;
    wire [23:0]opb_fifo_rdata;
    wire opb_fifo_empty;
    // DAC READ the previous address data, it requires a dummy read
    reg opb_dummy_re;

    /* DAC Access State Machine
     * IDLE: DAC_CS_N = 1, any valid OPB Write/Read will trigger state from IDLE to CS_LOW
     * CS_LOW: DAC_CS_N = 0, CS low duration min = 20ns
     * BIT_SHIFT: Shift out data_out[23:0] from MSB to LSB with clk_sd rising edge, DAC_SDI = data_out[23];
     * BIT_SHIFT: Shift in data_in[23:0] from MSB to LSB with clk_sd falling edge, data_in[23] = DAC_SDO;
     * DONE: DAC_CS_N = 1, Done state, DAC_CS_N = 1, CS high duration min = 15ns
     * After DONE, state machine will go back to IDLE state
    */
    parameter IDLE = 3'b000;
    parameter CS_LOW = 3'b001;
    parameter BIT_SHIFT = 3'b010;
    parameter DONE = 3'b100;

    reg [2:0] state; // Current state of the state machine
    reg [4:0] bit_count; // Bit counter for shifting out data, 24 bits totally 
    reg [15:0] clk_div_sd  = 16'd4; // serial data clock default 12.5MHz, SYSCLK = 100MHz 
	
    // Clock divider for serial data clock
    CLOCK_DIV sclk(
		.CLK_DIV(clk_div_sd),
		.CLK_IN(OPB_CLK),
        .RST(OPB_RST),
		.CLK_OUT(clk_sd)
	);

    // Passing data from DAC to OPB Read
    DP_RAM_2R_1W #(
        .ADDR_WIDTH(4),                // 16 samples of data
        .DATA_WIDTH(24)                // 24-bit samples
    ) data_in_ram (
        .PA_DI(data_in[23:0]),         // 24-bit data
        .PA_DO(),                      // Ignored
        .PA_ADDR(data_in[19:16]),      // Register address
        .PA_WE(ram_dac_we),            // Write enable
        .PA_CLK(clk_sd),               // DAC_clock
        .PB_DO(ram_opb_rdata),         // 24-bit data
        .PB_ADDR(ram_opb_raddr),       // Register address
        .PB_CLK(OPB_CLK)               // OPB_CLK
    );
    assign OPB_DO = {4'h0, ram_opb_rdata[23:0]};
    assign ram_opb_raddr = OPB_ADDR[3:0];
    assign ram_dac_we = (state == DONE) ? data_in[23] : 1'b0;

    // Dummy read to OPB
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            opb_dummy_re <= 1'b0;
        end else if (OPB_RE) begin
            opb_dummy_re <= 1'b1;
        end else begin
            opb_dummy_re <= 1'b0;
        end
    end

    // FIFO to pass OPB data to DAC
    afifo #(
        .DSIZE(24),
        .ASIZE(4)
    )opb_fifo_inst(
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(opb_fifo_wr),
        .i_wdata(opb_fifo_wdata),
        .o_wfull(),
		.i_rclk(clk_sd),
        .i_rrst_n(~OPB_RST),
        .i_rd(opb_fifo_rd),
        .o_rdata(opb_fifo_rdata),
        .o_rempty(opb_fifo_empty)
    );
    assign opb_fifo_wr = OPB_WE || OPB_RE || opb_dummy_re;
    assign opb_fifo_wdata = OPB_WE ? {4'h0, OPB_ADDR[3:0], OPB_DI[15:0]} : 
                            OPB_RE ? {4'h8, OPB_ADDR[3:0], OPB_DI[15:0]} : 24'h0;
    assign opb_fifo_rd = ~opb_fifo_empty && (state == IDLE);

    // state machine for DAC access
    always @(posedge clk_sd or posedge OPB_RST) begin
        if (OPB_RST) begin
            state <= IDLE;
            bit_count <= 0;
            data_out <= 0;
            DAC_CS_N <= 1'b1; // CS high
        end else begin
            case (state)
                IDLE: begin
                    bit_count <= 0;
                    if (opb_fifo_rd) begin
                        data_out <= opb_fifo_rdata; 
                        DAC_CS_N <= 1'b0; // CS low
                        state <= CS_LOW;
                    end else begin
                        DAC_CS_N <= 1'b1; // CS high
                        state <= IDLE;
                    end
                end
                CS_LOW: begin
                    DAC_CS_N <= 1'b0; // CS low
                    state <= BIT_SHIFT;
                end
                BIT_SHIFT: begin
                    if (bit_count == 23) begin
                        DAC_CS_N <= 1'b1; // CS high
                        bit_count <= 0; // Reset bit count
                        state <= DONE; // Last bit shifted out, go to DONE state
                    end else begin
                        bit_count <= bit_count + 1;
                        data_out <= {data_out[22:0], 1'b0}; // Shift out data to DAC_SDI
                    end
                end
                DONE: begin
                    state <= IDLE;
                end
            endcase
        end
    end

    // DAC_CLK
    //assign DAC_CLK = (state == BIT_SHIFT) ? clk_sd : 1'b0; // DAC_CLK is active during BIT_SHIFT state
    assign DAC_CLK = (state == BIT_SHIFT || state == DONE) ? clk_sd : 1'b0; // DAC_CLK is active during BIT_SHIFT and DONE state for sim

    // DAC_SDI
    assign DAC_SDI = (state == BIT_SHIFT) ? data_out[23] : 1'b0; // DAC_SDI is driven during BIT_SHIFT state
    
    // data_in, dac_addr = data_in[19:16], dac_data = data_in[15:0]
    always @(negedge clk_sd or posedge OPB_RST) begin
        if (OPB_RST) begin
            data_in <= 0;
        end else if (state == IDLE) begin
            data_in <= 0; // Reset data_in when in IDLE state
        end else if (state == BIT_SHIFT) begin
            data_in <= {data_in[22:0], DAC_SDO}; // Shift in data from DAC_SDO
        end
    end

endmodule
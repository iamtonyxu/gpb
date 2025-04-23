`timescale 1ns / 100ps

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

module DAC_DACx0504_tb;

    // Inputs
    reg OPB_CLK;
    reg OPB_RST;
    reg [31:0] OPB_ADDR;
    reg [31:0] OPB_DI;
    reg OPB_WE;
    reg OPB_RE;
    wire DAC_SDO;

    // Outputs
    wire [31:0] OPB_DO;
    wire DAC_CLK;
    wire DAC_SDI;
    wire DAC_CS;

    // dac_rdata
    reg [23:0] dac_rdata; // Register to hold the read data from DAC

    parameter PERIOD_OPB_CLK = 10; // 100 MHz clock period

    // task of OPB write
    task OPB_WRITE;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            OPB_ADDR = addr;
            OPB_DI = data;
            OPB_WE = 1;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            OPB_WE = 0;
        end
    endtask

    //task of OPB read
    task OPB_READ;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            OPB_ADDR = addr;
            OPB_RE = 1;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            data = OPB_DO; // Capture the read data
            OPB_RE = 0;
        end
    endtask

    // Instantiate the DAC_DACx0504_IF module
    DAC_DACx0504 dac_if (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_ADDR(OPB_ADDR),
        .OPB_DI(OPB_DI),
        .OPB_WE(OPB_WE),
        .OPB_RE(OPB_RE),
        .OPB_DO(OPB_DO),
        .DAC_CLK(DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS(DAC_CS),
        .DAC_SDO(DAC_SDO)
    );

    // Instantiate the DUT_DACx0504 module
    DUT_DACx0504 dac_dut (
        .SYS_CLK(OPB_CLK),
        .SYS_RST(OPB_RST),
        .DAC_CLK(DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS(DAC_CS),
        .DAC_SDO(DAC_SDO)
    );

    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #(PERIOD_OPB_CLK/2) OPB_CLK = ~OPB_CLK;
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_RST = 1;
        OPB_ADDR = 32'b0;
        OPB_DI = 32'b0;
        OPB_WE = 0;
        OPB_RE = 0;
        dac_rdata = 32'b0;

        // Reset the system
        #50;
        OPB_RST = 0;

        // Write to DAC0 register
        #20;
        OPB_WRITE(32'h8, 32'h1234); // Write data to DAC0 register
        #10000; // Wait 10us

        // Read from DAC0 register
        OPB_READ(`DAC0_ADDR, dac_rdata); // Read data from DAC0 register, shall read twice
        #10000; // Wait 10us before the next read
        OPB_READ(`DAC0_ADDR, dac_rdata); // Read data from DAC0 register, shall read twice
        #10000;

        // Read from DAC1 register
        OPB_READ(`DAC1_ADDR, dac_rdata);
        #10000; // Wait 10us before the next read
        OPB_READ(`DAC1_ADDR, dac_rdata);
        #10000;

        // Read from DAC2 register
        OPB_READ(`DAC2_ADDR, dac_rdata);
        #10000; // Wait 10us before the next read
        OPB_READ(`DAC2_ADDR, dac_rdata);
        #10000;

        // Read from DAC3 register
        OPB_READ(`DAC3_ADDR, dac_rdata);
        #10000; // Wait 10us before the next read
        OPB_READ(`DAC3_ADDR, dac_rdata);
        #10000;

        // End simulation
        #500;
        $stop;
    end

endmodule
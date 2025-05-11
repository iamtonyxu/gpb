`timescale 1ns/1ps

// Address of Internal Registers
`define ADDR_MSSB_CONFIG     4'h0 // {[31]:trans_start, [19:0]:trans_bytes}
`define ADDR_MSSB_STATUS     4'h1 // {2'b00: busy; 2'b01: done without error, 2'b11: done with error}
`define ADDR_RECV_BYTES      4'h2 // {[19:0]:recv_bytes}
`define ADDR_ERROR_BYTES     4'h3 // {[19:0]:error_bytes}

module MSSB_IF_tb;

    // Parameters
    parameter CLOCK_PERIOD = 10; // 100 MHz clock period

    // Inputs
    reg OPB_CLK;
    reg OPB_RST;
    reg [31:0] OPB_ADDR;
    reg [31:0] OPB_DI;
    reg MSSB_IF_RE;
    reg MSSB_IF_WE;
    //reg MSSB_RX;

    // Outputs
    wire [31:0] OPB_DO;
    wire MSSB_TX;

    // internal signals
    reg [31:0] read_opb_data;

    // task of OPB write
    task OPB_WRITE;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            OPB_ADDR = addr;
            OPB_DI = data;
            MSSB_IF_WE = 1;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            MSSB_IF_WE = 0;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
        end
    endtask

    // task of OPB read
    task OPB_READ;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            OPB_ADDR = addr;
            MSSB_IF_RE = 1;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            MSSB_IF_RE = 0;
            @(posedge(OPB_CLK)); // Wait for the rising edge of OPB_CLK
            data = OPB_DO; // Capture the read data
        end
    endtask


    // Instantiate the MSSB_IF module
    MSSB_IF uut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_ADDR(OPB_ADDR),
        .OPB_DI(OPB_DI),
        .MSSB_IF_RE(MSSB_IF_RE),
        .MSSB_IF_WE(MSSB_IF_WE),
        .OPB_DO(OPB_DO),
        .MSSB_TX(MSSB_TX),
        .MSSB_RX(MSSB_TX)
    );

    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #(CLOCK_PERIOD / 2) OPB_CLK = ~OPB_CLK;
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_RST = 1;
        OPB_ADDR = 32'b0;
        OPB_DI = 32'b0;
        MSSB_IF_RE = 0;
        MSSB_IF_WE = 0;

        // Reset the system
        #50;
        OPB_RST = 0;

        // Write to MSSB configuration register
        #20;
        OPB_WRITE(`ADDR_MSSB_CONFIG, {1'b1, 11'b0, 20'h30}); // Start transmission with 500K(20'h7A120) bytes

        // Wait for transmission to complete
        #1000000;

        // Read MSSB status register
        OPB_READ(`ADDR_MSSB_STATUS, read_opb_data);
        $display("MSSB Status: %h", read_opb_data);

        // Read received bytes register
        OPB_READ(`ADDR_RECV_BYTES, read_opb_data);
        $display("Received Bytes: %h", read_opb_data);

        // Read error bytes register
        OPB_READ(`ADDR_ERROR_BYTES, read_opb_data);
        $display("Error Bytes: %h", read_opb_data);

        // End simulation
        #100;
        $stop;
    end

endmodule
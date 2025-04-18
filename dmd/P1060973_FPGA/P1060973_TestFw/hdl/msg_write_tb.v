`timescale 1ns/100ps

module msg_write_tb;

    // Inputs
    reg OPB_CLK;
    reg OPB_RST;
    reg PULSE_2KHZ;
    reg [31:0] OPB_DI;
    reg [31:0] OPB_DO;
    reg [31:0] OPB_ADDR;
    reg OPB_RE;
    reg OPB_WE;
    reg TX_FIFO_FULL;

    // Outputs
    wire TX_FIFO_WR;
    wire [7:0] TX_FIFO_DATA;
    wire error_flag;

    //parameter PULSE_PERIOD = 500000; // 2 kHz pulse period in ns
    parameter PULSE_PERIOD = 50; // 2 kHz pulse period in ns

    // Instantiate the Unit Under Test (UUT)
    msg_write uut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .PULSE_2KHZ(PULSE_2KHZ),
        .TX_FIFO_WR(TX_FIFO_WR),
        .TX_FIFO_DATA(TX_FIFO_DATA),
        .TX_FIFO_FULL(TX_FIFO_FULL),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .error_flag(error_flag)
    );

    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #5 OPB_CLK = ~OPB_CLK; // 100 MHz clock
    end

    // Generate 2 kHz pulse
    initial begin
        PULSE_2KHZ = 0;
        forever #(PULSE_PERIOD/2) PULSE_2KHZ = ~PULSE_2KHZ; // 2 kHz pulse
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_RST = 1;
        OPB_DI = 0;
        OPB_DO = 0;
        OPB_ADDR = 0;
        OPB_RE = 0;
        OPB_WE = 0;
        TX_FIFO_FULL = 0;

        // Reset the system
        #20;
        OPB_RST = 0;

        // Test OPB Write operation
        #10;
        OPB_ADDR = 32'hAABBCCDD;
        OPB_DO = 32'h11223344;
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for the message to be sent
        #200;

        // Test OPB Read operation
        OPB_ADDR = 32'h12345678;
        OPB_DI = 32'h87654321;
        OPB_RE = 1;
        #10;
        OPB_RE = 0;

        // Wait for the message to be sent
        #200;

        // Test timeout scenario
        TX_FIFO_FULL = 1; // Simulate FIFO full condition
        OPB_ADDR = 32'hDEADBEEF;
        OPB_DO = 32'hCAFEBABE;
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for timeout
        #(PULSE_PERIOD* 200); // Wait for 200 pulses

        // End simulation
        #100;
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | OPB_ADDR: %h | OPB_DO: %h | TX_FIFO_WR: %b | TX_FIFO_DATA: %h | error_flag: %b", 
                 $time, OPB_ADDR, OPB_DO, TX_FIFO_WR, TX_FIFO_DATA, error_flag);
    end

endmodule
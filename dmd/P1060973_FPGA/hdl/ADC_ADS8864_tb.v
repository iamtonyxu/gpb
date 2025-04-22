`timescale 1ns / 100ps

module ADC_ADS8864_tb;

    // Inputs
    reg [31:0] OPB_DI;
    reg [31:0] OPB_ADDR;
    reg OPB_RE;
    reg OPB_WE;
    reg OPB_CLK;
    reg OPB_RST;
    reg SYSCLK;
    wire AD_SDOUT;

    // Outputs
    wire [31:0] OPB_DO;
    wire AD_SCLK;
    wire AD_CNVST;

    // registers
    reg [31:0] opb_do_reg; // Register to hold the output data

    parameter PERIOD_OPB_CLK = 40; // 25 MHz clock period
    parameter PERIOD_SYSCLK = 10; // 100 MHz clock period

    // Instantiate the Unit Under Test (UUT)
    ADC_ADS8864_IF uut (
        .OPB_DO(OPB_DO),
        .OPB_DI(OPB_DI),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .SYSCLK(SYSCLK),
        .AD_CNVST(AD_CNVST),
        .AD_SCLK(AD_SCLK),
        .AD_SDOUT(AD_SDOUT)
    );

    DUT_ADS8864 adc_dut (
        .RESET(OPB_RST),
        .SYSCLK(SYSCLK),
        .AD_SCLK(AD_SCLK),
        .AD_CNVST(AD_CNVST),
        .AD_SDOUT(AD_SDOUT)
    );

    // task of OPB write
    task OPB_WRITE;
        input [31:0] addr;
        input [31:0] data;
        begin
            OPB_ADDR = addr;
            OPB_DI = data;
            OPB_WE = 1;
            #(PERIOD_OPB_CLK); // Wait for write to complete
            OPB_WE = 0;
            #(PERIOD_OPB_CLK); // Wait for the next operation
        end
    endtask

    //task of OPB read
    task OPB_READ;
        input [31:0] addr;
        output [31:0] data;
        begin
            OPB_ADDR = addr;
            OPB_RE = 1;
            #(PERIOD_OPB_CLK); // Wait for read to complete
            data = OPB_DO; // Capture the read data
            OPB_RE = 0;
            #(PERIOD_OPB_CLK); // Wait for the next operation
        end
    endtask

    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #(PERIOD_OPB_CLK/2) OPB_CLK = ~OPB_CLK; // 25 MHz clock
    end

    initial begin
        SYSCLK = 0;
        forever #(PERIOD_SYSCLK/2) SYSCLK = ~SYSCLK; // 100 MHz clock
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_DI = 32'b0;
        OPB_ADDR = 32'b0;
        OPB_RE = 0;
        OPB_WE = 0;
        OPB_RST = 1;
        opb_do_reg = 32'b0;

        // Reset the system
        #50;
        OPB_RST = 0;

        // Write to control register to start sampling
        #20;
        // Set control[1] to start sampling
        OPB_WRITE(32'h800, 32'h2); // Control register address and data

        // Wait for the state machine to complete
        #200;

        // Read the status register
        OPB_READ(32'h808, opb_do_reg); // Status register address

        // Read the RAM data
        OPB_READ(32'h000, opb_do_reg); // RAM address

        // End simulation
        #500;
        $stop;
    end

endmodule
`timescale 1ns/1ps

`define ADDR_PWM_CONFIG         4'h0
`define ADDR_MOT_PWM_PARAM01    4'h1
`define ADDR_MOT_PWM_PARAM23    4'h2
`define ADDR_MOT_PWM_PARAM45    4'h3
`define ADDR_BRK_PWM_PARAM      4'h4
`define ADDR_PWM_CONTROL        4'h5
`define ADDR_PWM_STATUS         4'h6

module cmn_pwm_wrapper_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // 100 MHz clock period
    parameter MAX_SIM_TIME = 2000000; // Maximum simulation time in ns

    // Inputs
    reg OPB_CLK;
    reg OPB_RST;
    reg OPB_RE;
    reg OPB_WE;
    reg [31:0] OPB_ADDR;
    reg [31:0] OPB_DI;
    reg mot_over_curr_i;
    reg brk_over_curr_i;

    // Outputs
    wire [5:0] mot_pwm_o;
    wire [1:0] brk_pwm_o;
    wire mot_en_out_o;
    wire brk_en_out_o;
    wire pwm_override_o;
    wire [31:0] OPB_DO;

    // Instantiate the Unit Under Test (UUT)
    cmn_pwm_wrapper uut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .OPB_ADDR(OPB_ADDR),
        .OPB_DO(OPB_DO),
        .OPB_DI(OPB_DI),
        .mot_pwm_o(mot_pwm_o),
        .brk_pwm_o(brk_pwm_o),
        .mot_en_out_o(mot_en_out_o),
        .brk_en_out_o(brk_en_out_o),
        .mot_over_curr_i(mot_over_curr_i),
        .brk_over_curr_i(brk_over_curr_i),
        .pwm_override_o(pwm_override_o)
    );

    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #(CLK_PERIOD / 2) OPB_CLK = ~OPB_CLK; // 100 MHz clock
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_RST = 1;
        OPB_RE = 0;
        OPB_WE = 0;
        OPB_ADDR = 0;
        OPB_DI = 0;
        mot_over_curr_i = 0;
        brk_over_curr_i = 0;

        // Reset the system
        #50;
        OPB_RST = 0;

        // Write to PWM configuration register, test_mode = 0
        #20;
        OPB_ADDR = `ADDR_PWM_CONFIG;
        OPB_DI = 32'h00000003; // Enable motor and brake PWM, test mode = 0
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Write motor PWM parameters
        #20;
        OPB_ADDR = `ADDR_MOT_PWM_PARAM01;
        OPB_DI = 250; // max: 625/2= 311
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        OPB_ADDR = `ADDR_MOT_PWM_PARAM23;
        OPB_DI = 200;
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        OPB_ADDR = `ADDR_MOT_PWM_PARAM45;
        OPB_DI = 0;
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Write brake PWM parameter
        OPB_ADDR = `ADDR_BRK_PWM_PARAM;
        OPB_DI = 311; // Example parameter for brake PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Start PWM generation
        OPB_ADDR = `ADDR_PWM_CONTROL;
        OPB_DI = 32'h00000001; // Start PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for some time
        #(1000000); // Wait for 1ms 

        // Stop PWM generation
        OPB_ADDR = `ADDR_PWM_CONTROL;
        OPB_DI = 32'h00000002; // Stop PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for some time
        #10000;

        OPB_ADDR = `ADDR_PWM_CONFIG;
        // test_duration = 8 * 16 * 25 = 32000 us = 3.2ms
        OPB_DI = 32'h00008007; // Enable motor and brake PWM, test mode = 1
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Start PWM generation
        OPB_ADDR = `ADDR_PWM_CONTROL;
        OPB_DI = 32'h00000001; // Start PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for some time
        #(4000000); // Wait for 4ms 

        // Start PWM generation
        OPB_ADDR = `ADDR_PWM_CONTROL;
        OPB_DI = 32'h00000001; // Start PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for some time
        #(1000000); // Wait for 1ms 

        // Simulate over-current condition
        mot_over_curr_i = 1;
        #50;
        mot_over_curr_i = 0;

        // Wait for some time
        #(1000000); // Wait for 1ms 

        // Start PWM generation
        OPB_ADDR = `ADDR_PWM_CONTROL;
        OPB_DI = 32'h00000001; // Start PWM
        OPB_WE = 1;
        #10;
        OPB_WE = 0;

        // Wait for some time
        #(1000000); // Wait for 1ms 

        // Simulate over-current condition
        brk_over_curr_i = 1;
        #50;
        brk_over_curr_i = 0;

        // Wait for some time
        #(10000); // Wait for 10us

        // End simulation
        #1000;
        $stop;
    end

endmodule
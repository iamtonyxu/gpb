`timescale 1ns/100ps

module cmn_pwm_tb;

    // Parameters
    parameter CLK_RATE_MHZ = 25;
    parameter RESOLUTION = 1;
    parameter PHASE_SHIFT = 0;
    parameter MAX_CUR_SAMPLE_TIME = 128;
    parameter ENABLE_CNTR_MAX = 3;
    parameter FAULT_CNTR_MAX = 3;
    parameter DEADBAND_TIME = 5;
    parameter DEBOUNCE_TIME = 8;

    // Inputs
    reg reset;
    reg clk;
    reg sync;
    wire pulse_200us;
    reg mot_over_curr;
    reg brk_over_curr;
    reg [9:0] mot_pwm_param01;
    reg [9:0] mot_pwm_param23;
    reg [9:0] mot_pwm_param45;
    reg [9:0] brk_pwm_param;
    reg mot_en_in;
    reg brk_en_in;
    reg mel_ctrl;

    // Outputs
    wire [5:0] mot_pwm;
    wire [1:0] brk_pwm;
    wire mot_en_out;
    wire brk_en_out;
    wire start_pwm_period_out;

    // Instantiate the Unit Under Test (UUT)
    cmn_pwm #(
        .CLK_RATE_MHZ(CLK_RATE_MHZ),
        .RESOLUTION(RESOLUTION),
        .PHASE_SHIFT(PHASE_SHIFT),
        .MAX_CUR_SAMPLE_TIME(MAX_CUR_SAMPLE_TIME),
        .ENABLE_CNTR_MAX(ENABLE_CNTR_MAX),
        .FAULT_CNTR_MAX(FAULT_CNTR_MAX),
        .DEADBAND_TIME(DEADBAND_TIME),
        .DEBOUNCE_TIME(DEBOUNCE_TIME)
    ) uut (
        .reset(reset),
        .clk(clk),
        .sync(sync),
        .pulse_200us(pulse_200us),
        .mot_pwm(mot_pwm),
        .brk_pwm(brk_pwm),
        .mot_en_out(mot_en_out),
        .brk_en_out(brk_en_out),
        .mot_over_curr(mot_over_curr),
        .brk_over_curr(brk_over_curr),
        .mot_pwm_param01(mot_pwm_param01),
        .mot_pwm_param23(mot_pwm_param23),
        .mot_pwm_param45(mot_pwm_param45),
        .brk_pwm_param(brk_pwm_param),
        .mot_en_in(mot_en_in),
        .brk_en_in(brk_en_in),
        .mel_ctrl(mel_ctrl),
        .start_pwm_period_out(start_pwm_period_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #(5) clk = ~clk; // 100 MHz clock
    end

    // pulse_200us generation
    reg [31:0] pulse_counter;
    parameter PULSE_WIDTH = 10000; // 10us at 100MHz to accelerate the simulation
    //parameter PULSE_WIDTH = 200000; // 200us at 100MHz

    assign pulse_200us = (pulse_counter == PULSE_WIDTH) ? 1 : 0; // 200us pulse width at 100MHz

    always @(posedge clk) begin
        if (reset) begin
            pulse_counter <= 0;
        end else begin
            if (pulse_counter < PULSE_WIDTH) begin // 200us pulse width at 100MHz
                pulse_counter <= pulse_counter + 1;
            end else begin
                pulse_counter <= 0;
            end
        end
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        reset = 1;
        sync = 0;
        mot_over_curr = 0;
        brk_over_curr = 0;
        mot_pwm_param01 = 10'b0;
        mot_pwm_param23 = 10'b0;
        mot_pwm_param45 = 10'b0;
        brk_pwm_param = 10'b0;
        mot_en_in = 0;
        brk_en_in = 0;
        mel_ctrl = 1;

        // Reset the system
        #20;
        reset = 0;

        // Apply test inputs
        mot_en_in = 1; // Enable motor
        brk_en_in = 1; // Enable brake
        mot_pwm_param01 = 10'h100; // Example PWM parameter
        mot_pwm_param23 = 10'h080;
        mot_pwm_param45 = 10'h050;
        brk_pwm_param = 10'h050;

        // Wait for a few clock cycles
        sync = 1; // Trigger sync signal
        #(10*3); // Wait for several clock cycles!!!
        sync = 0; // Deactivate sync signal

        // Wait for a few clock cycles
        #1000000; // Wait for 1ms

/*
        // Simulate overcurrent conditions
        #100;
        mot_over_curr = 1;
        #50;
        mot_over_curr = 0;

        brk_over_curr = 1;
        #50;
        brk_over_curr = 0;
*/
        // End simulation
        #1000;
        $stop;
    end

endmodule
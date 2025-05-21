`timescale 1ns/1ps

module PH_PWM_SIMPLE_tb;

    reg CLK;
    reg RESET;
    reg ENABLE;
    wire [2:0] PWM;

    // Instantiate the DUT
    PH_PWM_SIMPLE uut (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(ENABLE),
        .PWM(PWM)
    );

    // Generate 25MHz clock
    initial begin
        CLK = 0;
        forever #20 CLK = ~CLK; // 40ns period -> 25MHz
    end

    initial begin
        // Initialize signals
        RESET = 1;
        ENABLE = 0;

        // Hold reset for a while
        #100;
        RESET = 0;

        // Enable PWM after reset
        #100;
        ENABLE = 1;

        // Run for some time
        #1000000;

        // Disable PWM
        //ENABLE = 0;

        // Finish simulation
        #1000;
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | PWM=%b ", 
            $time, PWM);
    end

endmodule
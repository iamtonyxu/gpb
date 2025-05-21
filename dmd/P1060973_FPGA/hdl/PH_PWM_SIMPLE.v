`timescale 1ns/100ps
/*
* PH_PWM_SIMPLE.v
* Simple PWM generator for 3-phase motor driver
* Generates 3 PWM signals with a fixed frequency and duty cycle
* The frequency is set to 333.33Hz and the duty cycle is set to 50%
*
*/
module PH_PWM_SIMPLE(
    input           CLK,                     // clock input, 25MHz
    input           RESET,                   // reset input
    input           ENABLE,                  // driver enable
    output  [2:0]   PWM                      // pwm outputs, 333.33Hz, duty cycle 50%
);

parameter PWM_PERIOD = 75000; // 25MHz / 333.33Hz = 75,000
//parameter PWM_PERIOD = 12; // 25MHz / 333.33Hz = 75,000
parameter PWM_DUTY_CYCLE = PWM_PERIOD / 2; // 50% duty cycle
parameter PWM_DUTY_CYCLE_HALF = PWM_DUTY_CYCLE / 2; // 25% duty cycle for half of the period
parameter PHASE_SHIFT = PWM_PERIOD / 3; // 25MHz / 3 = 25,000

reg [31:0] counter1; // counter for PWM[0]
reg [31:0] counter2; // counter for PWM[1]
reg [31:0] counter3; // counter for PWM[2]

reg direction1; // direction for counter1, 0 = up, 1 = down
reg direction2; // direction for counter2
reg direction3; // direction for counter3

reg [2:0] pwm_out; // PWM output register

// counter1, increase by 1 every clock cycle, count up to PWM_DUTY_CYCLE, then decrease to 0
always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        direction1 <= 0;
        counter1 <= 0;
    end else if (ENABLE) begin
        if(direction1 == 0) begin
            if (counter1 < PWM_DUTY_CYCLE) begin
                counter1 <= counter1 + 1;
            end else begin
                direction1 <= 1; // change direction to down
                counter1 <= counter1 - 1;
            end
        end else begin
            if (counter1 > 0) begin
                counter1 <= counter1 - 1;
            end else begin
                direction1 <= 0; // change direction to up
                counter1 <= counter1 + 1;
            end
        end
    end
end

// counter2
always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        direction2 <= 1;
        counter2 <= PHASE_SHIFT;
    end else if (ENABLE) begin
        if(direction2 == 0) begin
            if (counter2 < PWM_DUTY_CYCLE) begin
                counter2 <= counter2 + 1;
            end else begin
                direction2 <= 1; // change direction to down
                counter2 <= counter2 - 1;
            end
        end else begin
            if (counter2 > 0) begin
                counter2 <= counter2 - 1;
            end else begin
                direction2 <= 0; // change direction to up
                counter2 <= counter2 + 1;
            end
        end
    end
end

// counter3
always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        direction3 <= 0;
        counter3 <= PHASE_SHIFT;
    end else if (ENABLE) begin
        if(direction3 == 0) begin
            if (counter3 < PWM_DUTY_CYCLE) begin
                counter3 <= counter3 + 1;
            end else begin
                direction3 <= 1; // change direction to down
                counter3 <= counter3 - 1;
            end
        end else begin
            if (counter3 > 0) begin
                counter3 <= counter3 - 1;
            end else begin
                direction3 <= 0; // change direction to up
                counter3 <= counter3 + 1;
            end
        end
    end
end

// PWM output logic
always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        pwm_out <= 3'b000;
    end else if (ENABLE) begin
        pwm_out[0] <= direction1;
        pwm_out[1] <= direction2;
        pwm_out[2] <= direction3;
    end else begin
        pwm_out <= 3'b000; // disable PWM outputs when ENABLE is low
    end
end

assign PWM = pwm_out; // assign PWM output

endmodule
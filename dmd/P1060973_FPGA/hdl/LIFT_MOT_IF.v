`timescale 1ns/100ps
`include "Addr_definition.v"

module LIFT_MOT_IF (
    // OPB Interface
    input             OPB_CLK, //100MHz
    input             OPB_RST,
    input   [31:0]    OPB_ADDR,
    input   [31:0]    OPB_DI,
    input             LIFT_MOT_IF_RE,
    input             LIFT_MOT_IF_WE,
    output  [31:0]    OPB_DO,

    // LIFT MOTOR INTERFACE
    output             LFT_PWM_PHA_HI,
    output             LFT_PWM_PHA_LO,
    output             LFT_PWM_PHB_HI,
    output             LFT_PWM_PHB_LO,
    output             LFT_PWM_PHC_HI,
    output             LFT_PWM_PHC_LO
);

    reg [5:0] mot_pwm;
    reg [1:0] brk_pwm;

    // TODO: implement this feature later
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mot_pwm <= 6'b0;
            brk_pwm <= 2'b0;
        end else if (LIFT_MOT_IF_WE) begin
            case (OPB_ADDR[3:0])
                4'h0: mot_pwm <= OPB_DI[5:0];
                4'h1: brk_pwm <= OPB_DI[1:0];
                default: ;
            endcase
        end
    end

    assign OPB_DO = (LIFT_MOT_IF_RE) ? {26'b0, mot_pwm, brk_pwm} : 32'b0;

    assign LFT_PWM_PHA_HI = mot_pwm[0];
    assign LFT_PWM_PHA_LO = mot_pwm[1];
    assign LFT_PWM_PHB_HI = mot_pwm[2];
    assign LFT_PWM_PHB_LO = mot_pwm[3];
    assign LFT_PWM_PHC_HI = mot_pwm[4];
    assign LFT_PWM_PHC_LO = mot_pwm[5];

endmodule

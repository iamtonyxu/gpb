`timescale 1ns/100ps
`include "Addr_definition.v"

module GANTRY_MOT_IF (
    // OPB Interface
    input             OPB_CLK, //100MHz
    input             OPB_RST,
    input   [31:0]    OPB_ADDR,
    input   [31:0]    OPB_DI,
    input             GANTRY_MOT_IF_RE,
    input             GANTRY_MOT_IF_WE,
    output  [31:0]    OPB_DO,

    // GANTRY DRIVER
    output             GNT_PWM_PHA_HI,
    output             GNT_PWM_PHA_LO,
    output             GNT_PWM_PHB_HI,
    output             GNT_PWM_PHB_LO,
    output             GNT_PWM_PHC_HI,
    output             GNT_PWM_PHC_LO,

    // GANTRY BRAKE DRIVER
    output             GNT_BRK1_PWM_HI,
    output             GNT_BRK1_PWM_LO,
    output             GNT_BRK1_RET_PWM_HI,
    output             GNT_BRK1_RET_PWM_LO,
    output             GNT_BRK2_PWM_HI,
    output             GNT_BRK2_PWM_LO,
    output             GNT_BRK2_RET_PWM_HI,
    output             GNT_BRK2_RET_PWM_LO,
    output             GNT_BRK3_PWM_HI,
    output             GNT_BRK3_PWM_LO,
    output             GNT_BRK3_RET_PWM_HI,
    output             GNT_BRK3_RET_PWM_LO
);

    reg [5:0] mot_pwm;
    reg [1:0] brk_pwm;

    // TODO: implement this feature later
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mot_pwm <= 6'b0;
            brk_pwm <= 2'b0;
        end else if (GANTRY_MOT_IF_WE) begin
            case (OPB_ADDR[3:0])
                4'h0: mot_pwm <= OPB_DI[5:0];
                4'h1: brk_pwm <= OPB_DI[1:0];
                default: ;
            endcase
        end
    end

    assign OPB_DO = (GANTRY_MOT_IF_RE) ? {26'b0, mot_pwm, brk_pwm} : 32'b0;

    assign GNT_PWM_PHA_HI = mot_pwm[0];
    assign GNT_PWM_PHA_LO = mot_pwm[1];
    assign GNT_PWM_PHB_HI = mot_pwm[2];
    assign GNT_PWM_PHB_LO = mot_pwm[3];
    assign GNT_PWM_PHC_HI = mot_pwm[4];
    assign GNT_PWM_PHC_LO = mot_pwm[5];

    assign GNT_BRK1_PWM_HI = brk_pwm[0];
    assign GNT_BRK1_PWM_LO = brk_pwm[1];
    assign GNT_BRK1_RET_PWM_HI = brk_pwm[0];
    assign GNT_BRK1_RET_PWM_LO = brk_pwm[1];
    assign GNT_BRK2_PWM_HI = brk_pwm[0];
    assign GNT_BRK2_PWM_LO = brk_pwm[1];
    assign GNT_BRK2_RET_PWM_HI = brk_pwm[0];
    assign GNT_BRK2_RET_PWM_LO = brk_pwm[1];
    assign GNT_BRK3_PWM_HI = brk_pwm[0];
    assign GNT_BRK3_PWM_LO = brk_pwm[1];
    assign GNT_BRK3_RET_PWM_HI = brk_pwm[0];
    assign GNT_BRK3_RET_PWM_LO = brk_pwm[1];


endmodule

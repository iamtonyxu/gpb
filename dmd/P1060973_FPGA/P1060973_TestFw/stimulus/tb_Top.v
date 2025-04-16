///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_Top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFire> <Die::MPF100T> <Package::FCG484>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module tb_Top;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Top
//////////////////////////////////////////////////////////////////////
Top Top_0 (
    // Inputs
    .PCI_CLK2(SYSCLK),
    .ADDR_DATA_SEL({1{1'b0}}),
    .CS({1{1'b0}}),
    .RD_WR({1{1'b0}}),
    .PCI_RST(NSYSRESET),
    .SYSCLK(SYSCLK),
    .RESET_N(NSYSRESET),
    .AD_BUSY({1{1'b0}}),
    .AD_SDOUT({1{1'b0}}),
    .BYTE_SEL({3{1'b0}}),
    .STAND_CONT_IF({6{1'b0}}),
    .CCHL_IF({5{1'b0}}),
    .SERVICE_PENDANT({7{1'b0}}),
    .PWR_IF({7{1'b0}}),
    .LIFT_MOT_SNS_IF({4{1'b0}}),
    .SPD_DMD_IF({5{1'b0}}),
    .GANT_MOT_SNS_IF({5{1'b0}}),
    .SPD_EMOPS_IF({5{1'b0}}),
    .DMD_IO({15{1'b0}}),

    // Outputs
    .FPGA_DONE( ),
    .GANT_96V_BYPASS( ),
    .GANT_24V_PWR_EN( ),
    .GANT_96V_PWR_EN( ),
    .GANT_MOT_SHUNT_EN_N( ),
    .LIFT_96V_BYPASS( ),
    .LIFT_24V_PWR_EN( ),
    .LIFT_96V_PWR_EN( ),
    .LIFT_MOT_SHUNT_EN_N( ),
    .GANT_SERIO_RST_N( ),
    .GANT_SER_DATA1( ),
    .GANT_SER_DATA0( ),
    .GANT_SER_SYNC( ),
    .GANT_SER_CLK( ),
    .LIFT_SERIO_RST_N( ),
    .LIFT_SER_DATA1( ),
    .LIFT_SER_DATA0( ),
    .LIFT_SER_SYNC( ),
    .LIFT_SER_CLK( ),
    .LIFT_BRK_OVRD_LED_CTRL( ),
    .FAN_EN( ),
    .LIFT_HALL_PWR_EN( ),
    .SPDIO_RST_N( ),
    .SPARE_MON( ),
    .DMD_PWR_OK( ),
    .GANT_ST_DISB_MON( ),
    .LIFT_HW_EN_MON( ),
    .LIFT_ST_DISB_MON( ),
    .GNT_HW_EN_MON( ),
    .GNT_HALL_PWR_EN( ),
    .GNT_BRK_RLS( ),
    .LFT_BRK_RLS( ),
    .LAT_LNG_BRK_RLS( ),
    .EMOPS_STAT2( ),
    .EMOPS_STAT1( ),
    .WD_OUT( ),
    .ILIM_DAC_CLK( ),
    .ILIM_DAC_SDI( ),
    .ILIM_DAC_CS( ),
    .AD_SCLK( ),
    .AD_CNVST( ),
    .GANT_MOT_DRV_EN( ),
    .GANT_CURR_SAMP( ),
    .LIFT_CURR_SAMP( ),
    .LIFT_MOT_DRV_EN( ),
    .EM_24V_EN( ),
    .GANT_BRK_RLS1( ),
    .AD_MUX( ),
    .AD_SEL( ),
    .GANT_PWM( ),
    .LIFT_PWM( ),
    .STS( ),
    .DATA_OUT( ),

    // Inouts
    .AD( )

);

endmodule


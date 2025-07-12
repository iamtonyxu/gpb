///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: ADDR_DECODER.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family> <Die> <Package>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 100ps
`include "ADDR_DEFINITION.v"

module ADDER_DECODE(
    // OPB signals
    input           OPB_CLK,
    input           OPB_RST,
    input           OPB_RE,
    input           OPB_WE,
    input   [31:0]  OPB_ADDR,
    output  [31:0]  OPB_DO,

    // OPB Output from other modules
    input   [31:0]  SP_IN,
    input   [31:0]  CLOCK_IN,
    input   [31:0]  COUNTER_IN1,
    input   [31:0]  COUNTER_IN2,
    input   [31:0]  GPIO_IN,
    input   [31:0]  APP_IN,
    input   [31:0]  EEP_IN,
    input   [31:0]  PHY_IN,

    // OPB RE/WE signals
    output          SP_RE,
    output          SP_WE,
    output          CLOCK_WE,
    output          CLOCK_RE,
    output          COUNTER_WE1,
    output          COUNTER_RE1,
    output          COUNTER_WE2,
    output          COUNTER_RE2,
    output          GPIO_RE,
    output          GPIO_WE,
    output          APP_RE,
    output          APP_WE,
    output          EEP_RE,
    output          EEP_WE,
    output          PHY_RE,
    output          PHY_WE

);

    // xxx_RE_d1
    reg SP_RE_d1;
    reg CLOCK_RE_d1;
    reg COUNTER_RE1_d1;
    reg COUNTER_RE2_d1;
    reg GPIO_RE_d1;
    reg APP_RE_d1;
    reg EEP_RE_d1;
    reg PHY_RE_d1;

    // RE/WE signals
    assign SP_RE               = OPB_RE & (OPB_ADDR >= `SCRATCHPAD_ADDR) & (OPB_ADDR < (`SCRATCHPAD_ADDR + `SCRATCHPAD_SIZE));
    assign SP_WE               = OPB_WE & (OPB_ADDR >= `SCRATCHPAD_ADDR) & (OPB_ADDR < (`SCRATCHPAD_ADDR + `SCRATCHPAD_SIZE));

    assign CLOCK_RE             = OPB_RE & (OPB_ADDR >= `CLOCK_ADDR) & (OPB_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));
    assign CLOCK_WE             = OPB_WE & (OPB_ADDR >= `CLOCK_ADDR) & (OPB_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));

    assign COUNTER_RE1           = OPB_RE & (OPB_ADDR >= `COUNTER1_ADDR) & (OPB_ADDR < (`COUNTER1_ADDR + `COUNTER_SIZE));	
    assign COUNTER_WE1           = OPB_WE & (OPB_ADDR >= `COUNTER1_ADDR) & (OPB_ADDR < (`COUNTER1_ADDR + `COUNTER_SIZE));

    assign COUNTER_RE2           = OPB_RE & (OPB_ADDR >= `COUNTER2_ADDR) & (OPB_ADDR < (`COUNTER2_ADDR + `COUNTER_SIZE));	
    assign COUNTER_WE2           = OPB_WE & (OPB_ADDR >= `COUNTER2_ADDR) & (OPB_ADDR < (`COUNTER2_ADDR + `COUNTER_SIZE));

    assign GPIO_RE             = OPB_RE & (OPB_ADDR >= `GPIO_ADDR) & (OPB_ADDR < (`GPIO_ADDR + `GPIO_SIZE));
    assign GPIO_WE             = OPB_WE & (OPB_ADDR >= `GPIO_ADDR) & (OPB_ADDR < (`GPIO_ADDR + `GPIO_SIZE));

    assign APP_RE              = OPB_RE & (OPB_ADDR >= `APP_ADDR) & (OPB_ADDR < (`APP_ADDR + `APP_SIZE));
    assign APP_WE              = OPB_WE & (OPB_ADDR >= `APP_ADDR) & (OPB_ADDR < (`APP_ADDR + `APP_SIZE));

    assign EEP_RE               = OPB_RE & (OPB_ADDR >= `EEPROM_ADDR) & (OPB_ADDR < (`EEPROM_ADDR + `EEPROM_SIZE));
    assign EEP_WE               = OPB_WE & (OPB_ADDR >= `EEPROM_ADDR) & (OPB_ADDR < (`EEPROM_ADDR + `EEPROM_SIZE));

    assign PHY_RE              = OPB_RE & (OPB_ADDR >= `PHY_ADDR) & (OPB_ADDR < (`PHY_ADDR + `PHY_SIZE));
    assign PHY_WE              = OPB_WE & (OPB_ADDR >= `PHY_ADDR) & (OPB_ADDR < (`PHY_ADDR + `PHY_SIZE));

    // RE_d1 registers
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SP_RE_d1               <= 0;
            CLOCK_RE_d1             <= 0;
            COUNTER_RE1_d1          <= 0;
            COUNTER_RE2_d1         <= 0;
            GPIO_RE_d1             <= 0;
            APP_RE_d1              <= 0;
            EEP_RE_d1               <= 0;
            PHY_RE_d1              <= 0;
        end else begin
            SP_RE_d1               <= SP_RE;
            CLOCK_RE_d1             <= CLOCK_RE;
            COUNTER_RE1_d1           <= COUNTER_RE1;
            COUNTER_RE2_d1           <= COUNTER_RE2;
            GPIO_RE_d1             <= GPIO_RE;
            APP_RE_d1              <= APP_RE;
            EEP_RE_d1               <= EEP_RE;
            PHY_RE_d1              <= PHY_RE;
        end
    end

    // OPB_DO
    assign OPB_DO = (SP_RE_d1)                   ? SP_IN           :
                    (CLOCK_RE_d1)                ? CLOCK_IN        :
                    (COUNTER_RE1_d1)             ? COUNTER_IN1     :
                    (COUNTER_RE2_d1)             ? COUNTER_IN2     :
                    (GPIO_RE_d1)                 ? GPIO_IN         :
                    (APP_RE_d1)                  ? APP_IN          :
                    (EEP_RE_d1)                  ? EEP_IN          :
                    (PHY_RE_d1)                  ? PHY_IN          :
                                                  32'bz;

endmodule
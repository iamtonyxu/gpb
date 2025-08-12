///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: JABIL Circuit, Inc.
//
// File: ADDR_DECODE.v
// File history:
//      1: 2025-07-14: Initial version
//      2: 2023-07-30: Fixed address range for RS422 and CAN
//
// Description: 
//
// Address decoder for OPB bus interface. Routes read/write enable signals
// to appropriate peripheral modules and multiplexes read data back to OPB.
//
// Targeted device: <Family> <Die> <Package>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 100ps
`include "ADDR_DEFINITION.v"

module ADDR_DECODE(
    // OPB signals
    input           OPB_CLK,
    input           OPB_RST,
    input           OPB_RE,
    input           OPB_WE,
    input   [31:0]  OPB_ADDR,
    output  [31:0]  OPB_DO,

    // OPB Data input from other modules
    input   [31:0]  SP_IN,
    input   [31:0]  CLOCK_IN,
    input   [31:0]  COUNTER_IN,
    input   [31:0]  GPIO_IN,
    input   [31:0]  FPGA_IF_IN,
    input   [31:0]  ADC_IN,
    input   [31:0]  DAC_IN,
    input   [31:0]  RS422_IN,
    input   [31:0]  CAN1_IN,
    input   [31:0]  CAN2_IN,
    input   [31:0]  CAN3_IN,
    input   [31:0]  CAN4_IN,

    // OPB RE/WE control signals
    output          SP_RE,
    output          SP_WE,
    output          CLOCK_WE,
    output          CLOCK_RE,
    output          COUNTER_WE,
    output          COUNTER_RE,
    output          GPIO_RE,
    output          GPIO_WE,
    output          FPGA_IF_RE,
    output          FPGA_IF_WE,
    output          ADC_RE,
    output          ADC_WE,
    output          DAC_RE,
    output          DAC_WE,
    output          RS422_RE,
    output          RS422_WE,
    output          CAN1_RE,
    output          CAN1_WE,
    output          CAN2_RE,
    output          CAN2_WE,
    output          CAN3_RE,
    output          CAN3_WE,
    output          CAN4_RE,
    output          CAN4_WE
);

    // Delayed read enable signals for data multiplexing
    reg SP_RE_d1;
    reg CLOCK_RE_d1;
    reg COUNTER_RE_d1;
    reg GPIO_RE_d1;
    reg FPGA_IF_RE_d1;
    reg ADC_RE_d1;
    reg DAC_RE_d1;
    reg RS422_RE_d1;
    reg CAN1_RE_d1;
    reg CAN2_RE_d1;
    reg CAN3_RE_d1;
    reg CAN4_RE_d1;

    // Address decode logic for RE/WE signals
    assign SP_RE      = OPB_RE & (OPB_ADDR >= `SCRATCHPAD_ADDR) & (OPB_ADDR < (`SCRATCHPAD_ADDR + `SCRATCHPAD_SIZE));
    assign SP_WE      = OPB_WE & (OPB_ADDR >= `SCRATCHPAD_ADDR) & (OPB_ADDR < (`SCRATCHPAD_ADDR + `SCRATCHPAD_SIZE));

    assign CLOCK_RE   = OPB_RE & (OPB_ADDR >= `CLOCK_ADDR) & (OPB_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));
    assign CLOCK_WE   = OPB_WE & (OPB_ADDR >= `CLOCK_ADDR) & (OPB_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));

    assign COUNTER_RE = OPB_RE & (OPB_ADDR >= `COUNTER_ADDR) & (OPB_ADDR < (`COUNTER_ADDR + `COUNTER_SIZE));
    assign COUNTER_WE = OPB_WE & (OPB_ADDR >= `COUNTER_ADDR) & (OPB_ADDR < (`COUNTER_ADDR + `COUNTER_SIZE));

    assign GPIO_RE    = OPB_RE & (OPB_ADDR >= `GPIO_ADDR) & (OPB_ADDR < (`GPIO_ADDR + `GPIO_SIZE));
    assign GPIO_WE    = OPB_WE & (OPB_ADDR >= `GPIO_ADDR) & (OPB_ADDR < (`GPIO_ADDR + `GPIO_SIZE));

    assign FPGA_IF_RE = OPB_RE & (OPB_ADDR >= `FPGA_IF_ADDR) & (OPB_ADDR < (`FPGA_IF_ADDR + `FPGA_IF_SIZE));
    assign FPGA_IF_WE = OPB_WE & (OPB_ADDR >= `FPGA_IF_ADDR) & (OPB_ADDR < (`FPGA_IF_ADDR + `FPGA_IF_SIZE));

    assign ADC_RE     = OPB_RE & (OPB_ADDR >= `ADC_ADDR) & (OPB_ADDR < (`ADC_ADDR + `ADC_SIZE));
    assign ADC_WE     = OPB_WE & (OPB_ADDR >= `ADC_ADDR) & (OPB_ADDR < (`ADC_ADDR + `ADC_SIZE));

    assign DAC_RE     = OPB_RE & (OPB_ADDR >= `DAC_ADDR) & (OPB_ADDR < (`DAC_ADDR + `DAC_SIZE));
    assign DAC_WE     = OPB_WE & (OPB_ADDR >= `DAC_ADDR) & (OPB_ADDR < (`DAC_ADDR + `DAC_SIZE));

    assign RS422_RE   = OPB_RE & (OPB_ADDR >= `RS422_ADDR) & (OPB_ADDR < (`RS422_ADDR + `RS422_SIZE));
    assign RS422_WE   = OPB_WE & (OPB_ADDR >= `RS422_ADDR) & (OPB_ADDR < (`RS422_ADDR + `RS422_SIZE));

    assign CAN1_RE     = OPB_RE & (OPB_ADDR >= `CAN1_ADDR) & (OPB_ADDR < (`CAN1_ADDR + `CAN_SIZE));
    assign CAN1_WE     = OPB_WE & (OPB_ADDR >= `CAN1_ADDR) & (OPB_ADDR < (`CAN1_ADDR + `CAN_SIZE));

    assign CAN2_RE     = OPB_RE & (OPB_ADDR >= `CAN2_ADDR) & (OPB_ADDR < (`CAN2_ADDR + `CAN_SIZE));
    assign CAN2_WE     = OPB_WE & (OPB_ADDR >= `CAN2_ADDR) & (OPB_ADDR < (`CAN2_ADDR + `CAN_SIZE));

    assign CAN3_RE     = OPB_RE & (OPB_ADDR >= `CAN3_ADDR) & (OPB_ADDR < (`CAN3_ADDR + `CAN_SIZE));
    assign CAN3_WE     = OPB_WE & (OPB_ADDR >= `CAN3_ADDR) & (OPB_ADDR < (`CAN3_ADDR + `CAN_SIZE));

    assign CAN4_RE     = OPB_RE & (OPB_ADDR >= `CAN4_ADDR) & (OPB_ADDR < (`CAN4_ADDR + `CAN_SIZE));
    assign CAN4_WE     = OPB_WE & (OPB_ADDR >= `CAN4_ADDR) & (OPB_ADDR < (`CAN4_ADDR + `CAN_SIZE));

    // Register delayed read enable signals for read data multiplexing
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SP_RE_d1      <= 1'b0;
            CLOCK_RE_d1   <= 1'b0;
            COUNTER_RE_d1 <= 1'b0;
            GPIO_RE_d1    <= 1'b0;
            FPGA_IF_RE_d1 <= 1'b0;
            ADC_RE_d1     <= 1'b0;
            DAC_RE_d1     <= 1'b0;
            RS422_RE_d1   <= 1'b0;
            CAN1_RE_d1    <= 1'b0;
            CAN2_RE_d1    <= 1'b0;
            CAN3_RE_d1    <= 1'b0;
            CAN4_RE_d1    <= 1'b0;
        end else begin
            SP_RE_d1      <= SP_RE;
            CLOCK_RE_d1   <= CLOCK_RE;
            COUNTER_RE_d1 <= COUNTER_RE;
            GPIO_RE_d1    <= GPIO_RE;
            FPGA_IF_RE_d1 <= FPGA_IF_RE;
            ADC_RE_d1     <= ADC_RE;
            DAC_RE_d1     <= DAC_RE;
            RS422_RE_d1   <= RS422_RE;
            CAN1_RE_d1    <= CAN1_RE;
            CAN2_RE_d1    <= CAN2_RE;
            CAN3_RE_d1    <= CAN3_RE;
            CAN4_RE_d1    <= CAN4_RE;
        end
    end

    // Output data multiplexer
    assign OPB_DO = (SP_RE_d1)      ? SP_IN      :
                    (CLOCK_RE_d1)   ? CLOCK_IN   :
                    (COUNTER_RE_d1) ? COUNTER_IN :
                    (GPIO_RE_d1)    ? GPIO_IN    :
                    (FPGA_IF_RE_d1) ? FPGA_IF_IN :
                    (ADC_RE_d1)     ? ADC_IN     :
                    (DAC_RE_d1)     ? DAC_IN     :
                    (RS422_RE_d1)   ? RS422_IN   :
                    (CAN1_RE_d1)    ? CAN1_IN    :
                    (CAN2_RE_d1)    ? CAN2_IN    :
                    (CAN3_RE_d1)    ? CAN3_IN    :
                    (CAN4_RE_d1)    ? CAN4_IN    :
                                      32'h0;

endmodule
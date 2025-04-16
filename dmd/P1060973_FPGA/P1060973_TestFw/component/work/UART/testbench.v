//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Tue Apr 10 12:45:00 2012
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

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
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  UART
//////////////////////////////////////////////////////////////////////
UART UART_0 (
    // Inputs
    .BAUD_VAL({13{1'b0}}),
    .BIT8({1{1'b0}}),
    .CLK(SYSCLK),
    .CSN({1{1'b0}}),
    .DATA_IN({8{1'b0}}),
    .ODD_N_EVEN({1{1'b0}}),
    .OEN({1{1'b0}}),
    .PARITY_EN({1{1'b0}}),
    .RESET_N(NSYSRESET),
    .RX({1{1'b0}}),
    .WEN({1{1'b0}}),

    // Outputs
    .DATA_OUT( ),
    .OVERFLOW( ),
    .PARITY_ERR( ),
    .RXRDY( ),
    .TX( ),
    .TXRDY( ),
    .FRAMING_ERR( )

    // Inouts

);

endmodule


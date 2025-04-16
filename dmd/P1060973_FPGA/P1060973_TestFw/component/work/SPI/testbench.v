//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Tue Apr 10 12:33:50 2012
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
// Instantiate Unit Under Test:  SPI
//////////////////////////////////////////////////////////////////////
SPI SPI_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .m_miso({1{1'b0}}),
    .s_mosi({1{1'b0}}),
    .s_sck({1{1'b0}}),
    .s_ss({1{1'b0}}),
    .PADDR({4{1'b0}}),
    .PENABLE({1{1'b0}}),
    .PSEL({1{1'b0}}),
    .PWDATA({8{1'b0}}),
    .PWRITE({1{1'b0}}),

    // Outputs
    .enable_master( ),
    .enable_slave( ),
    .interrupt( ),
    .m_mosi( ),
    .m_sck( ),
    .m_ss( ),
    .rx_data_ready( ),
    .s_miso( ),
    .tx_reg_empty( ),
    .PRDATA( )

    // Inouts

);

endmodule


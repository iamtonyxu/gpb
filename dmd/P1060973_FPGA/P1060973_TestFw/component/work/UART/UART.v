`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module UART(
       BAUD_VAL,
       BIT8,
       CLK,
       CSN,
       DATA_IN,
       DATA_OUT,
       ODD_N_EVEN,
       OEN,
       OVERFLOW,
       PARITY_EN,
       PARITY_ERR,
       RESET_N,
       RX,
       RXRDY,
       TX,
       TXRDY,
       WEN,
       FRAMING_ERR
    );
input  [12:0] BAUD_VAL;
input  BIT8;
input  CLK;
input  CSN;
input  [7:0] DATA_IN;
output [7:0] DATA_OUT;
input  ODD_N_EVEN;
input  OEN;
output OVERFLOW;
input  PARITY_EN;
output PARITY_ERR;
input  RESET_N;
input  RX;
output RXRDY;
output TX;
output TXRDY;
input  WEN;
output FRAMING_ERR;

    wire GND_net, VCC_net;
    
    VCC VCC (.Y(VCC_net));
    UART_UART_0_COREUART #( .FAMILY(16), .RX_FIFO(1), .RX_LEGACY_MODE(0)
        , .TX_FIFO(1) )  UART_0 (.BAUD_VAL({BAUD_VAL[12], BAUD_VAL[11], 
        BAUD_VAL[10], BAUD_VAL[9], BAUD_VAL[8], BAUD_VAL[7], 
        BAUD_VAL[6], BAUD_VAL[5], BAUD_VAL[4], BAUD_VAL[3], 
        BAUD_VAL[2], BAUD_VAL[1], BAUD_VAL[0]}), .BIT8(BIT8), .CLK(CLK)
        , .CSN(CSN), .DATA_IN({DATA_IN[7], DATA_IN[6], DATA_IN[5], 
        DATA_IN[4], DATA_IN[3], DATA_IN[2], DATA_IN[1], DATA_IN[0]}), 
        .DATA_OUT({DATA_OUT[7], DATA_OUT[6], DATA_OUT[5], DATA_OUT[4], 
        DATA_OUT[3], DATA_OUT[2], DATA_OUT[1], DATA_OUT[0]}), 
        .ODD_N_EVEN(ODD_N_EVEN), .OEN(OEN), .OVERFLOW(OVERFLOW), 
        .PARITY_EN(PARITY_EN), .PARITY_ERR(PARITY_ERR), .RESET_N(
        RESET_N), .RX(RX), .RXRDY(RXRDY), .TX(TX), .TXRDY(TXRDY), .WEN(
        WEN), .FRAMING_ERR(FRAMING_ERR));
    GND GND (.Y(GND_net));
    
endmodule

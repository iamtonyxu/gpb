`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module SPI(
       PCLK,
       PRESETN,
       enable_master,
       enable_slave,
       interrupt,
       m_miso,
       m_mosi,
       m_sck,
       m_ss,
       rx_data_ready,
       s_miso,
       s_mosi,
       s_sck,
       s_ss,
       tx_reg_empty,
       PADDR,
       PENABLE,
       PRDATA,
       PSEL,
       PWDATA,
       PWRITE
    );
input  PCLK;
input  PRESETN;
output enable_master;
output enable_slave;
output interrupt;
input  m_miso;
output m_mosi;
output m_sck;
output [7:0] m_ss;
output rx_data_ready;
output s_miso;
input  s_mosi;
input  s_sck;
input  s_ss;
output tx_reg_empty;
input  [3:0] PADDR;
input  PENABLE;
output [7:0] PRDATA;
input  PSEL;
input  [7:0] PWDATA;
input  PWRITE;

    wire GND_net, VCC_net;
    
    VCC VCC (.Y(VCC_net));
    GND GND (.Y(GND_net));
    CORESPI #( .FAMILY(16), .USE_MASTER(0), .USE_SLAVE(1) )  SPI_0 (
        .PADDR({PADDR[3], PADDR[2], PADDR[1], PADDR[0]}), .PCLK(PCLK), 
        .PENABLE(PENABLE), .PRDATA({PRDATA[7], PRDATA[6], PRDATA[5], 
        PRDATA[4], PRDATA[3], PRDATA[2], PRDATA[1], PRDATA[0]}), 
        .PRESETN(PRESETN), .PSEL(PSEL), .PWDATA({PWDATA[7], PWDATA[6], 
        PWDATA[5], PWDATA[4], PWDATA[3], PWDATA[2], PWDATA[1], 
        PWDATA[0]}), .PWRITE(PWRITE), .enable_master(enable_master), 
        .enable_slave(enable_slave), .interrupt(interrupt), .m_miso(
        m_miso), .m_mosi(m_mosi), .m_sck(m_sck), .m_ss({m_ss[7], 
        m_ss[6], m_ss[5], m_ss[4], m_ss[3], m_ss[2], m_ss[1], m_ss[0]})
        , .rx_data_ready(rx_data_ready), .s_miso(s_miso), .s_mosi(
        s_mosi), .s_sck(s_sck), .s_ss(s_ss), .tx_reg_empty(
        tx_reg_empty));
    
endmodule

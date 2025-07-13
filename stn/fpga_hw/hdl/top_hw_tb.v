`timescale 1ns/100ps
`define CLK100M_PERIOD 10 // 100 MHz clock period
`define CLK50M_PERIOD 20 // 50 MHz clock period
`include "ADDR_DEFINITION.v"

module top_hw_tb;

// Test Case Configuration
integer SCRATCHPAD_TEST        = 1;    // Enable Scratchpad Test
integer COUNTER1_TEST          = 0;    // Enable COUNTER1 Test
integer COUNTER2_TEST          = 0;    // Enable COUNTER2 Test
integer GPIO_TEST              = 0;    // Enable GPIO Test
integer APP_TEST               = 0;    // Enable APP Test
integer EEPROM_TEST            = 0;    // Enable EEPROM Test
integer OSC_COUNTER_TEST       = 0;    // Enable Oscillator Counter Test
integer PHY_TEST               = 0;    // Enable PHY Test

// Clock and reset signals
reg HDW_FPGA_100M_CLK;
reg HDW_FPGA_50M_CLK;
reg HDW_DEVRST_N;

// Input signals
reg APP_AUX_IO0, APP_AUX_IO1, APP_AUX_IO2, APP_AUX_IO3, APP_AUX_IO4, APP_AUX_IO5;
reg HSSB_PMII_TX_DATA0, HSSB_PMII_TX_DATA1, HSSB_PMII_TX_DATA2, HSSB_PMII_TX_DATA3;
reg HSSB_PMII_TX_EN;
reg APP_FPGA_SPI1_CS_N, APP_FPGA_SPI0_CS_N, APP_FPGA_SPI0_MOSI, APP_FPGA_SPI1_MOSI;
reg APP_FPGA_SPI_CLK, DISABLE_HDW_FPGA, APP_FPGA_TDO;
reg BMENLP_STATE, PWRENLP_STATE, MTNENLP_STATE, KVBMENLP_STATE;
reg MTNENLP_CCH_STATE, MTNENLP_DKB_STATE, PENDANT_INST, PENDANT_MEB_N;
reg CMNR_STS_N, CDOS_STS_N;
reg DC_MAIN_DOOR_SW_N, NEUTRON_DR_SW1_N, NEUTRON_DR_SW2_N, CSPARESW1_N, CSPARESW2_N;
reg LS_OSSD1_N, LS_ERROR_N, SPD_AC_DR_N, EMO_GOOD_N;
reg MEL_SW_CONFIG0, MEL_SW_CONFIG1, MEL_SW_CONFIG2, MEL_SW_CONFIG3;
reg MEL_SW_CONFIG4, MEL_SW_CONFIG5, MEL_SW_CONFIG6, MEL_SW_CONFIG7;
reg BEL_SW_CONFIG0, BEL_SW_CONFIG1, BEL_SW_CONFIG2, BEL_SW_CONFIG3;
reg BEL_SW_CONFIG4, BEL_SW_CONFIG5, BEL_SW_CONFIG6, BEL_SW_CONFIG7;
reg KVBEL_SW_CONFIG0, KVBEL_SW_CONFIG1, KVBEL_SW_CONFIG2, KVBEL_SW_CONFIG3;
reg KVBEL_SW_CONFIG4, KVBEL_SW_CONFIG5, KVBEL_SW_CONFIG6, KVBEL_SW_CONFIG7;
reg HDW_EEP_SDO;
reg PHY_RMII_RX_DATA1, PHY_RMII_RX_DATA0, PHY_RMII_RX_DV;
reg HDW_DBUG_SCLK, HDW_DBUG_MISO, HDW_DBUG_MOSI, HDW_DBUG_CS_N, HDW_DBUG_ACTIVE;

// Output signals
wire HSSB_PMII_CLK, HSSB_PMII_RESET_N;
wire HSSB_PMII_RX_DATA0, HSSB_PMII_RX_DATA1, HSSB_PMII_RX_DATA2, HSSB_PMII_RX_DATA3;
wire HSSB_PMII_RX_DV;
wire APP_FPGA_SPI0_MISO, APP_FPGA_SPI1_MISO;
wire APP_FPGA_TMS, APP_FPGA_TDI, APP_FPGA_TCK, APP_FPGA_TRST;
wire BMENLP_LOC_CNTL, PWRENLP_LOC_CNTL, MTNENLP_LOC_CNTL;
wire PWRENLP_CNTL, KVBMENLP_CNTL, MTNENLP_CNTL, BMENLP_CNTL;
wire HDW_GANT_ROT_EN;
wire HDW_FPGA_DONE, HDW_FPGA_STAT_LED1, HDW_FPGA_STAT_LED2;
wire HDW_EEP_CS_N, HDW_EEP_SDI, HDW_EEP_SCLK;
wire PHY_RMII_TX_EN, PHY_RMII_TX_DATA1, PHY_RMII_TX_DATA0;
wire PHY_RST_N, PHY_MDIO, PHY_MDC, ETH_LED1, ETH_LED2;
wire HDW_DBUG_HEADER2, HDW_DBUG_HEADER4, HDW_DBUG_HEADER6;
wire HDW_DBUG_HEADER8, HDW_DBUG_HEADER10;
wire TP85, TP86, TP88, TP89, TP91, TP92, TP93, TP94, TP95, TP96;
wire TP97, TP98, TP99, TP100, TP101, TP102;
wire TP140, TP141, TP142, TP143, TP144, TP145, TP146, TP147;
wire TP148, TP149, TP150, TP151, TP152, TP153, TP154, TP155;


// UART signals
reg RXD;
wire TXD;
reg [7:0] uart_tdata;

// UART Send Task
task uart_send;
    input [7:0] data;    // Byte to send
    integer i;
    reg [10:0] uart_frame;    // UART frame: start bit, data bits, stop bit
    integer baud_delay;       // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200) * `CLK100M_PERIOD;    // 868 clock cycles per bit

        // Construct the UART frame
        // Start bit (0), 8 data bits (LSB first), Stop bit (1)
        uart_frame = {1'b1, data, 1'b0};

        // Transmit the UART frame
        for (i = 0; i < 10; i = i + 1) begin
            RXD = uart_frame[i];    // Send each bit
            #baud_delay;                 // Wait for one baud period
        end
        RXD = 1'b1;                // Set to idle state (high) after transmission
        #20;                            // Wait for a short time before sending the next byte
    end
endtask

// UART Receive Task
task uart_recv;
    output reg [7:0] data;    // Received byte
    integer i;
    integer baud_delay;       // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200) * `CLK100M_PERIOD;    // 868 clock cycles per bit

        // Wait for the start bit (falling edge)
        wait(TXD == 0);
        #(baud_delay / 2);    // Wait for the middle of the start bit

        // Read 8 data bits (LSB first)
        for (i = 0; i < 8; i = i + 1) begin
            #(baud_delay);    // Wait for one baud period
            data[i] = TXD;    // Sample the data bit
        end

        // Wait for the stop bit
        #(baud_delay);
        if (TXD != 1) begin
            $display("UART RX Error: Stop bit not detected.");
        end
    end
endtask

// Clock generation
initial begin
    HDW_FPGA_100M_CLK = 0;
    forever #(`CLK100M_PERIOD/2) HDW_FPGA_100M_CLK = ~HDW_FPGA_100M_CLK; // 100MHz
end

initial begin
    HDW_FPGA_50M_CLK = 0;
    forever #(`CLK50M_PERIOD/2) HDW_FPGA_50M_CLK = ~HDW_FPGA_50M_CLK; // 50MHz
end

// Reset generation
initial begin
    HDW_DEVRST_N = 0;
    #100000;
    HDW_DEVRST_N = 1;
end


// Test stimulus
initial begin
    // wait for HDW_RESET_N goes to 1
    wait(HDW_DEVRST_N == 1);

    if(SCRATCHPAD_TEST==1) begin
    // Read FPGA VERSION
    uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00);
    uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

   // Read FPGA ID
    uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h01);
    uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

   // Read BUILD DATE
    uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h02);
    uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

   // Write Scratchpad Reg1
    uart_send(8'h5A); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h03);
    uart_send(8'h12); uart_send(8'h34); uart_send(8'h56); uart_send(8'h78); uart_send(8'hA5);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

    // Write Scratchpad Reg2
    uart_send(8'h5A); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h04);
    uart_send(8'h87); uart_send(8'h65); uart_send(8'h43); uart_send(8'h21); uart_send(8'hA5);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

   // Read Scratchpad Reg1
    uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h03);
    uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us

   // Read Scratchpad Reg2
    uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h04);
    uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
    repeat(10) uart_recv(uart_tdata);
    #1000000;    // Wait 1us
    end

    #1000000; // Run simulation for 1ms
    $display("test end...");
    $stop;
end


// DUT instantiation
top_hw dut (
    .HDW_FPGA_100M_CLK(HDW_FPGA_100M_CLK),
    .HDW_FPGA_50M_CLK(HDW_FPGA_50M_CLK),
    .HDW_DEVRST_N(HDW_DEVRST_N),
    .APP_AUX_IO0(APP_AUX_IO0),
    .APP_AUX_IO1(APP_AUX_IO1),
    .APP_AUX_IO2(APP_AUX_IO2),
    .APP_AUX_IO3(APP_AUX_IO3),
    .APP_AUX_IO4(APP_AUX_IO4),
    .APP_AUX_IO5(APP_AUX_IO5),
    .HSSB_PMII_TX_DATA0(HSSB_PMII_TX_DATA0),
    .HSSB_PMII_TX_DATA1(HSSB_PMII_TX_DATA1),
    .HSSB_PMII_TX_DATA2(HSSB_PMII_TX_DATA2),
    .HSSB_PMII_TX_DATA3(HSSB_PMII_TX_DATA3),
    .HSSB_PMII_TX_EN(HSSB_PMII_TX_EN),
    .APP_FPGA_SPI1_CS_N(APP_FPGA_SPI1_CS_N),
    .APP_FPGA_SPI0_CS_N(APP_FPGA_SPI0_CS_N),
    .APP_FPGA_SPI0_MOSI(APP_FPGA_SPI0_MOSI),
    .APP_FPGA_SPI1_MOSI(APP_FPGA_SPI1_MOSI),
    .APP_FPGA_SPI_CLK(APP_FPGA_SPI_CLK),
    .DISABLE_HDW_FPGA(DISABLE_HDW_FPGA),
    .APP_FPGA_TDO(APP_FPGA_TDO),
    .BMENLP_STATE(BMENLP_STATE),
    .PWRENLP_STATE(PWRENLP_STATE),
    .MTNENLP_STATE(MTNENLP_STATE),
    .KVBMENLP_STATE(KVBMENLP_STATE),
    .MTNENLP_CCH_STATE(MTNENLP_CCH_STATE),
    .MTNENLP_DKB_STATE(MTNENLP_DKB_STATE),
    .PENDANT_INST(PENDANT_INST),
    .PENDANT_MEB_N(PENDANT_MEB_N),
    .CMNR_STS_N(CMNR_STS_N),
    .CDOS_STS_N(CDOS_STS_N),
    .DC_MAIN_DOOR_SW_N(DC_MAIN_DOOR_SW_N),
    .NEUTRON_DR_SW1_N(NEUTRON_DR_SW1_N),
    .NEUTRON_DR_SW2_N(NEUTRON_DR_SW2_N),
    .CSPARESW1_N(CSPARESW1_N),
    .CSPARESW2_N(CSPARESW2_N),
    .LS_OSSD1_N(LS_OSSD1_N),
    .LS_ERROR_N(LS_ERROR_N),
    .SPD_AC_DR_N(SPD_AC_DR_N),
    .EMO_GOOD_N(EMO_GOOD_N),
    .HSSB_PMII_CLK(HSSB_PMII_CLK),
    .HSSB_PMII_RESET_N(HSSB_PMII_RESET_N),
    .HSSB_PMII_RX_DATA0(HSSB_PMII_RX_DATA0),
    .HSSB_PMII_RX_DATA1(HSSB_PMII_RX_DATA1),
    .HSSB_PMII_RX_DATA2(HSSB_PMII_RX_DATA2),
    .HSSB_PMII_RX_DATA3(HSSB_PMII_RX_DATA3),
    .HSSB_PMII_RX_DV(HSSB_PMII_RX_DV),
    .APP_FPGA_SPI0_MISO(APP_FPGA_SPI0_MISO),
    .APP_FPGA_SPI1_MISO(APP_FPGA_SPI1_MISO),
    .APP_FPGA_TMS(APP_FPGA_TMS),
    .APP_FPGA_TDI(APP_FPGA_TDI),
    .APP_FPGA_TCK(APP_FPGA_TCK),
    .APP_FPGA_TRST(APP_FPGA_TRST),
    .BMENLP_LOC_CNTL(BMENLP_LOC_CNTL),
    .PWRENLP_LOC_CNTL(PWRENLP_LOC_CNTL),
    .MTNENLP_LOC_CNTL(MTNENLP_LOC_CNTL),
    .PWRENLP_CNTL(PWRENLP_CNTL),
    .KVBMENLP_CNTL(KVBMENLP_CNTL),
    .MTNENLP_CNTL(MTNENLP_CNTL),
    .BMENLP_CNTL(BMENLP_CNTL),
    .HDW_GANT_ROT_EN(HDW_GANT_ROT_EN),
    .HDW_FPGA_DONE(HDW_FPGA_DONE),
    .HDW_FPGA_STAT_LED1(HDW_FPGA_STAT_LED1),
    .HDW_FPGA_STAT_LED2(HDW_FPGA_STAT_LED2),
    .MEL_SW_CONFIG0(MEL_SW_CONFIG0),
    .MEL_SW_CONFIG1(MEL_SW_CONFIG1),
    .MEL_SW_CONFIG2(MEL_SW_CONFIG2),
    .MEL_SW_CONFIG3(MEL_SW_CONFIG3),
    .MEL_SW_CONFIG4(MEL_SW_CONFIG4),
    .MEL_SW_CONFIG5(MEL_SW_CONFIG5),
    .MEL_SW_CONFIG6(MEL_SW_CONFIG6),
    .MEL_SW_CONFIG7(MEL_SW_CONFIG7),
    .BEL_SW_CONFIG0(BEL_SW_CONFIG0),
    .BEL_SW_CONFIG1(BEL_SW_CONFIG1),
    .BEL_SW_CONFIG2(BEL_SW_CONFIG2),
    .BEL_SW_CONFIG3(BEL_SW_CONFIG3),
    .BEL_SW_CONFIG4(BEL_SW_CONFIG4),
    .BEL_SW_CONFIG5(BEL_SW_CONFIG5),
    .BEL_SW_CONFIG6(BEL_SW_CONFIG6),
    .BEL_SW_CONFIG7(BEL_SW_CONFIG7),
    .KVBEL_SW_CONFIG0(KVBEL_SW_CONFIG0),
    .KVBEL_SW_CONFIG1(KVBEL_SW_CONFIG1),
    .KVBEL_SW_CONFIG2(KVBEL_SW_CONFIG2),
    .KVBEL_SW_CONFIG3(KVBEL_SW_CONFIG3),
    .KVBEL_SW_CONFIG4(KVBEL_SW_CONFIG4),
    .KVBEL_SW_CONFIG5(KVBEL_SW_CONFIG5),
    .KVBEL_SW_CONFIG6(KVBEL_SW_CONFIG6),
    .KVBEL_SW_CONFIG7(KVBEL_SW_CONFIG7),
    .HDW_EEP_CS_N(HDW_EEP_CS_N),
    .HDW_EEP_SDI(HDW_EEP_SDI),
    .HDW_EEP_SCLK(HDW_EEP_SCLK),
    .HDW_EEP_SDO(HDW_EEP_SDO),
    .PHY_RMII_TX_EN(PHY_RMII_TX_EN),
    .PHY_RMII_TX_DATA1(PHY_RMII_TX_DATA1),
    .PHY_RMII_TX_DATA0(PHY_RMII_TX_DATA0),
    .PHY_RST_N(PHY_RST_N),
    .PHY_MDIO(PHY_MDIO),
    .PHY_MDC(PHY_MDC),
    .ETH_LED1(ETH_LED1),
    .ETH_LED2(ETH_LED2),
    .PHY_RMII_RX_DATA1(PHY_RMII_RX_DATA1),
    .PHY_RMII_RX_DATA0(PHY_RMII_RX_DATA0),
    .PHY_RMII_RX_DV(PHY_RMII_RX_DV),
    .HDW_DBUG_SCLK(RXD),
    .HDW_DBUG_MISO(HDW_DBUG_MISO),
    .HDW_DBUG_MOSI(HDW_DBUG_MOSI),
    .HDW_DBUG_CS_N(HDW_DBUG_CS_N),
    .HDW_DBUG_ACTIVE(HDW_DBUG_ACTIVE),
    .HDW_DBUG_HEADER2(TXD),
    .HDW_DBUG_HEADER4(HDW_DBUG_HEADER4),
    .HDW_DBUG_HEADER6(HDW_DBUG_HEADER6),
    .HDW_DBUG_HEADER8(HDW_DBUG_HEADER8),
    .HDW_DBUG_HEADER10(HDW_DBUG_HEADER10),
    .TP85(TP85),
    .TP86(TP86),
    .TP88(TP88),
    .TP89(TP89),
    .TP91(TP91),
    .TP92(TP92),
    .TP93(TP93),
    .TP94(TP94),
    .TP95(TP95),
    .TP96(TP96),
    .TP97(TP97),
    .TP98(TP98),
    .TP99(TP99),
    .TP100(TP100),
    .TP101(TP101),
    .TP102(TP102),
    .TP140(TP140),
    .TP141(TP141),
    .TP142(TP142),
    .TP143(TP143),
    .TP144(TP144),
    .TP145(TP145),
    .TP146(TP146),
    .TP147(TP147),
    .TP148(TP148),
    .TP149(TP149),
    .TP150(TP150),
    .TP151(TP151),
    .TP152(TP152),
    .TP153(TP153),
    .TP154(TP154),
    .TP155(TP155)
);


endmodule
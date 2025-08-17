`timescale 1ns/100ps
`define CLK100M_PERIOD 10 // 100 MHz clock period
`define CLK50M_PERIOD 20 // 50 MHz clock period
`include "ADDR_DEFINITION.v"

module top_hw_tb;

// Test Case Configuration
integer SCRATCHPAD_TEST        = 1;    // Enable Scratchpad Test
integer COUNTER1_TEST          = 0;    // Enable COUNTER1 Test
integer COUNTER2_TEST          = 0;    // Enable COUNTER2 Test
integer GPIO_TEST              = 1;    // Enable GPIO Test
integer APP_TEST               = 0;    // Enable APP Test
integer EEPROM_TEST            = 0;    // Enable EEPROM Test
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


// UART Receive data Task
task uart_recv_data_display;
    reg [7:0] uart_data_array [0:9];
    integer j;
    begin
        for (j = 0; j < 10; j = j + 1) begin
            uart_recv(uart_tdata);
            uart_data_array[j] = uart_tdata;
        end
        // Print all received data at once
        $display("Received: %h %h %h %h %h %h %h %h %h %h", 
                 uart_data_array[0], uart_data_array[1], uart_data_array[2], uart_data_array[3], uart_data_array[4],
                 uart_data_array[5], uart_data_array[6], uart_data_array[7], uart_data_array[8], uart_data_array[9]);
    end
endtask

// OPB Write Task
task opb_write;
    input [31:0] addr;    // Address to write to
    input [31:0] data;    // Data to write
    begin
        // Set OPB address and data
        uart_send(8'h5A); // Start byte for write
        uart_send(addr[31:24]); uart_send(addr[23:16]); uart_send(addr[15:8]); uart_send(addr[7:0]);
        uart_send(data[31:24]); uart_send(data[23:16]); uart_send(data[15:8]); uart_send(data[7:0]);
        uart_send(8'hA5); // Send end byte
    end
endtask

// OPB Read Task
task opb_read;
    input [31:0] addr;    // Address to read from
    begin
        // Set OPB address for read
        uart_send(8'h5B); // Start byte for read
        uart_send(addr[31:24]); uart_send(addr[23:16]); uart_send(addr[15:8]); uart_send(addr[7:0]);
        uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); // Padding bytes
        uart_send(8'hA4); // Send end byte
    end
endtask

// task to set GPIO and Switch Inputs
task set_gpio_switch_inputs;
    input [31:0] gpio_inputs; // GPIO inputs
    input [31:0] switch_inputs; // Switch inputs
    begin
        // Set GPIO inputs
        BMENLP_STATE = gpio_inputs[0];
        PWRENLP_STATE = gpio_inputs[1];
        MTNENLP_STATE = gpio_inputs[2];
        KVBMENLP_STATE = gpio_inputs[3];
        MTNENLP_CCH_STATE = gpio_inputs[4];
        MTNENLP_DKB_STATE = gpio_inputs[5];
        PENDANT_INST = gpio_inputs[6];
        PENDANT_MEB_N = gpio_inputs[7];
        CMNR_STS_N = gpio_inputs[8];
        CDOS_STS_N = gpio_inputs[9];
        DC_MAIN_DOOR_SW_N = gpio_inputs[10];
        NEUTRON_DR_SW1_N = gpio_inputs[11];
        NEUTRON_DR_SW2_N = gpio_inputs[12];
        CSPARESW1_N = gpio_inputs[13];
        CSPARESW2_N = gpio_inputs[14];
        LS_OSSD1_N = gpio_inputs[15];
        LS_ERROR_N = gpio_inputs[16];
        SPD_AC_DR_N = gpio_inputs[17];
        EMO_GOOD_N = gpio_inputs[18];

        // Set Switch inputs
        MEL_SW_CONFIG0 = switch_inputs[0];
        MEL_SW_CONFIG1 = switch_inputs[1];
        MEL_SW_CONFIG2 = switch_inputs[2];
        MEL_SW_CONFIG3 = switch_inputs[3];
        MEL_SW_CONFIG4 = switch_inputs[4];
        MEL_SW_CONFIG5 = switch_inputs[5];
        MEL_SW_CONFIG6 = switch_inputs[6];
        MEL_SW_CONFIG7 = switch_inputs[7];
        BEL_SW_CONFIG0 = switch_inputs[8];
        BEL_SW_CONFIG1 = switch_inputs[9];
        BEL_SW_CONFIG2 = switch_inputs[10];
        BEL_SW_CONFIG3 = switch_inputs[11];
        BEL_SW_CONFIG4 = switch_inputs[12];
        BEL_SW_CONFIG5 = switch_inputs[13];
        BEL_SW_CONFIG6 = switch_inputs[14];
        BEL_SW_CONFIG7 = switch_inputs[15];
        KVBEL_SW_CONFIG0 = switch_inputs[16];
        KVBEL_SW_CONFIG1 = switch_inputs[17];
        KVBEL_SW_CONFIG2 = switch_inputs[18];
        KVBEL_SW_CONFIG3 = switch_inputs[19];
        KVBEL_SW_CONFIG4 = switch_inputs[20];
        KVBEL_SW_CONFIG5 = switch_inputs[21];
        KVBEL_SW_CONFIG6 = switch_inputs[22];
        KVBEL_SW_CONFIG7 = switch_inputs[23];
    end
endtask

// Clock generation: 100MHz
initial begin
    HDW_FPGA_100M_CLK = 0;
    forever #(`CLK100M_PERIOD/2) HDW_FPGA_100M_CLK = ~HDW_FPGA_100M_CLK; // 100MHz
end

// Clock generation: 50MHz
initial begin
    HDW_FPGA_50M_CLK = 0;
    forever #(`CLK50M_PERIOD/2) HDW_FPGA_50M_CLK = ~HDW_FPGA_50M_CLK; // 50MHz
end

// Reset signal generation
initial begin
    HDW_DEVRST_N = 0;
    #100000;
    HDW_DEVRST_N = 1;
end

// Main testbench
initial begin
    // Initialize inputs
    set_gpio_switch_inputs(32'h00000000, 32'h00000000);

    // Wait for reset to be released
    wait (HDW_DEVRST_N == 1);
    $display("test start... at time %0t us", $time/1000000);

    if(SCRATCHPAD_TEST==1) begin
    // Read FPGA VERSION
    opb_read(32'h00000000);
    $display("FPGA VERSION read at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us

   // Read FPGA ID
    opb_read(32'h00000001);
    $display("FPGA ID read at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us

   // Read BUILD DATE
    opb_read(32'h00000002);
    $display("FPGA BUILD DATE read at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us

   // Write Scratchpad Reg1
   opb_write(32'h00000003, 32'h12345678);
    $display("Scratchpad Reg1 written at time %0t us", $time/1000000);
   uart_recv_data_display();
   #1000000;    // Wait 1us

   // Read Scratchpad Reg1
    opb_read(32'h00000003);
    $display("Scratchpad Reg1 read at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us

    // Write Scratchpad Reg2
    opb_write(32'h00000004, 32'h87654321);
    $display("Scratchpad Reg2 written at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us

   // Read Scratchpad Reg2
    opb_read(32'h00000004);
    $display("Scratchpad Reg2 read at time %0t us", $time/1000000);
    uart_recv_data_display();
    #1000000;    // Wait 1us
    end

    if (GPIO_TEST == 1) begin
        // GPIO Test
        // Set GPIO and Switch inputs to 0
        $display("Setting GPIO and Switch inputs to 0 at time %0t us", $time/1000000);
        set_gpio_switch_inputs(32'h00000000, 32'h00000000);

        // Read GPIO_IN
        opb_read(32'h00030000);
        $display("GPIO_IN read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Read SWITCH_IN
        opb_read(32'h00030001);
        $display("SWITCH_IN read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Set GPIO and Switch inputs to 1
        $display("Setting GPIO and Switch inputs to 1 at time %0t us", $time/1000000);
        set_gpio_switch_inputs(32'hFFFFFFFF, 32'hFFFFFFFF);

        // Read GPIO_IN
        opb_read(32'h00030000);
        $display("GPIO_IN read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Read SWITCH_IN
        opb_read(32'h00030001);
        $display("SWITCH_IN read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Write GPIO_OUT
        $display("Writing GPIO_OUT to 0xFFFFFFFF at time %0t us", $time/1000000);
        opb_write(32'h00030002, 32'hFFFFFFFF);
        $display("GPIO_OUT written at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Read GPIO_OUT
        opb_read(32'h00030002);
        $display("GPIO_OUT read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Write TP_OUT
        $display("Writing TP_OUT to 0xFFFFFFFF at time %0t us", $time/1000000);
        opb_write(32'h00030003, 32'hFFFFFFFF);
        $display("TP_OUT written at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us

        // Read TP_OUT
        opb_read(32'h00030003);
        $display("TP_OUT read at time %0t us", $time/1000000);
        uart_recv_data_display();
        #1000000; // Wait 1us
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
`timescale 1ns/100ps

module EEPROM_OPB_IF_tb;

    // Testbench Signals
    reg               OPB_CLK;
    reg               OPB_RST;
    reg       [31:0]  OPB_ADDR;
    reg       [31:0]  EEP_DI;
    reg               EEP_RE;
    reg               EEP_WE;
    wire      [31:0]  EEP_DO;

    wire              EEP_CS_N;
    wire              EEP_SI;
    wire              EEP_SCK;
    wire              EEP_SO;

    parameter PERIOD_OPB_CLK = 10; // 100 MHz clock period
    parameter EEPROM_ADDR_BASE = 32'h0;
    reg     [3:0]     eep_inst;
    reg     [15:0]    eep_addr;
    reg     [7:0]     eep_wrdata;
    reg     [31:0]    eep_rddata;

    // task of OPB write
    task OPB_WRITE;
        input [31:0] addr;
        input [31:0] data;
        begin
            OPB_ADDR = addr;
            EEP_DI = data;
            EEP_WE = 1;
            #(PERIOD_OPB_CLK); // Wait for write to complete
            EEP_WE = 0;
            #(PERIOD_OPB_CLK); // Wait for the next operation
        end
    endtask

    //task of OPB read
    task OPB_READ;
        input [31:0] addr;
        output [31:0] data;
        begin
            OPB_ADDR = addr;
            EEP_RE = 1;
            #(PERIOD_OPB_CLK); // Wait for read to complete
            data = EEP_DO; // Capture the read data
            EEP_RE = 0;
            #(PERIOD_OPB_CLK); // Wait for the next operation
        end
    endtask

    /* write a task about eeprom write
       EEP_DI[31:28] is eeprom instruction
       EEP_DI[23:8] is eeprom address
       EEP_DI[7:0] is eeprom wrdata (ignored by READ)
    */
    task EEPROM_WRITE;
        input [3:0]     eep_inst;
        input [15:0]    eep_addr;
        input [7:0]     eep_wrdata;
        begin
            OPB_WRITE(EEPROM_ADDR_BASE, {eep_inst, 4'h0, eep_addr, eep_wrdata});
        end
    endtask

    // write a task about eeprom read
    task EEPROM_READ;
        output [31:0]  eep_rddata;
        begin
            OPB_READ(EEPROM_ADDR_BASE, eep_rddata);
        end
    endtask

    // Clock Generation
    initial OPB_CLK = 0;
    always #(PERIOD_OPB_CLK/2) OPB_CLK = ~OPB_CLK; // 100 MHz clock

    // Instantiate the DUT (Device Under Test)
    EEPROM_OPB_IF uut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .EEP_DI(EEP_DI),
        .EEP_RE(EEP_RE),
        .EEP_WE(EEP_WE),
        .EEP_DO(EEP_DO),
        .EEP_CS_N(EEP_CS_N),
        .EEP_SI(EEP_SI),
        .EEP_SCK(EEP_SCK),
        .EEP_SO(EEP_SO)
    );

    SER_EEPROM_SIM dut (
        .CS_N(EEP_CS_N),
        .SCLK(EEP_SCK),
        .SI(EEP_SI),
        .SO(EEP_SO)
    );

    // Testbench Procedure
    initial begin
        // Initialize Inputs
        OPB_RST = 1;
        EEP_DI = 32'h0;
        EEP_RE = 0;
        EEP_WE = 0;
        eep_inst = 0;
        eep_addr = 0;
        eep_wrdata = 0;

        // Reset the DUT
        #20;
        OPB_RST = 0;
/*
        // Read EEP STATUS Operation
        #10;
        EEP_DI = 32'hA5A50001; // Example data: Address = 0x0001, Data = 0xA5
        EEP_WE = 1;
        #10;
        EEP_WE = 0;
        eep_inst = 4'b0010; // read status register
        eep_addr = 16'h0;
        eep_wrdata = 8'd0;
        EEPROM_WRITE(eep_inst, eep_addr, eep_wrdata);

        // Wait for EEPROM operation to complete
        #(PERIOD_OPB_CLK*5000);
*/

        // Write EEP DATA Operation
        EEPROM_READ(eep_rddata);

        eep_inst = 4'b0011; // write data
        eep_addr = 16'h0;
        eep_wrdata = 8'hA5;
        EEPROM_WRITE(eep_inst, eep_addr, eep_wrdata);

        // Wait for EEPROM operation to complete
        #(PERIOD_OPB_CLK*10000);

        // Read Operation
        EEPROM_READ(eep_rddata);

        // Read EEP DATA Operation
        eep_inst = 4'b0000; // write data
        eep_addr = 16'h0;
        eep_wrdata = 8'hA5;
        EEPROM_WRITE(eep_inst, eep_addr, eep_wrdata);

        // Wait for EEPROM operation to complete
        #(PERIOD_OPB_CLK*10000);

        // Read Operation
        EEPROM_READ(eep_rddata);

        // End Simulation
        #50;
        $stop;
    end

endmodule
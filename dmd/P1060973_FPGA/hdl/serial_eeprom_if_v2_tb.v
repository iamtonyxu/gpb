`timescale 1ns / 1ps

module serial_eeprom_if_v2_tb;

    // Parameters
    parameter CLK_PERIOD = 10;      // 100MHz clock
    parameter STROBE_PERIOD = 1000; // 1us strobe

    // Test signals
    reg reset;
    reg clk;
    reg strobe_1us;
    reg eeprom_start;
    reg eeprom_page_seq;
    reg [255:0] eeprom_page_wrdata;
    wire [255:0] eeprom_page_rddata;
    reg [7:0] eeprom_page_num;
    reg [15:0] eeprom_addr;
    reg [7:0] eeprom_wrdata;
    wire [7:0] eeprom_rddata;
    wire eeprom_done;
    reg [3:0] eeprom_inst;
    reg eeprom_en;
    wire eep_sdo;
    wire eep_sdi;
    wire eep_sclk;
    wire eep_csn;

    // Test data
    reg [255:0] test_page_data;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    serial_eeprom_if_v2 uut (
        .reset(reset),
        .clk(clk),
        .strobe_1us(strobe_1us),
        .eeprom_start(eeprom_start),
        .eeprom_page_seq(eeprom_page_seq),
        .eeprom_page_wrdata(eeprom_page_wrdata),
        .eeprom_page_rddata(eeprom_page_rddata),
        .eeprom_page_num(eeprom_page_num),
        .eeprom_addr(eeprom_addr),
        .eeprom_wrdata(eeprom_wrdata),
        .eeprom_rddata(eeprom_rddata),
        .eeprom_done(eeprom_done),
        .eeprom_inst(eeprom_inst),
        .eeprom_en(eeprom_en),
        .eep_sdo(eep_sdo),
        .eep_sdi(eep_sdi),
        .eep_sclk(eep_sclk),
        .eep_csn(eep_csn)
    );

    // EEPROM SIM MODEL
    SER_EEPROM_SIM eeprom_sim (
        .CS_N(eep_csn),
        .SCLK(eep_sclk),
        .SI(eep_sdi),
        .SO(eep_sdo)
    );

    // Clock generation
    always begin
        clk = 0;
        #(CLK_PERIOD/2);
        clk = 1;
        #(CLK_PERIOD/2);
    end

    // 1us strobe generation
    always begin
        strobe_1us = 0;
        #STROBE_PERIOD;
        strobe_1us = 1;
        #CLK_PERIOD;
    end

    // Test process
    initial begin
        // Initialize signals
        reset = 1;
        eeprom_start = 0;
        eeprom_page_seq = 0;
        eeprom_page_wrdata = 0;
        eeprom_page_num = 0;
        eeprom_addr = 0;
        eeprom_wrdata = 0;
        eeprom_inst = 0;
        eeprom_en = 1;

        // Initialize test data pattern
        for (i = 0; i < 32; i = i + 1) begin
            test_page_data[i*8 +: 8] = i + 8'h01;
        end

        // Reset
        $display("Starting EEPROM Interface Test...");
        #100;
        reset = 0;
        #100;

        // Test 1: Page Write
        $display("Test 1: Starting Page Write Test...");
        eeprom_page_seq = 1;        // Enable page mode
        eeprom_page_num = 8'h00;    // Page 0 (address 0x0000-0x001F)
        eeprom_page_wrdata = test_page_data;
        eeprom_inst = 4'h1;         // Write instruction
        eeprom_start = 1;
        #CLK_PERIOD;
        eeprom_start = 0;

        // Wait for write completion
        wait (eeprom_done == 1);
        #(STROBE_PERIOD);
        $display("Page Write Test Completed");

        // Test 2: Page Read
        $display("Test 2: Starting Page Read Test...");
        eeprom_page_seq = 1;        // Enable page mode
        eeprom_page_num = 8'h01;    // Page 1 (address 0x0020-0x003F)
        eeprom_inst = 4'h0;         // Read instruction
        eeprom_start = 1;
        #CLK_PERIOD;
        eeprom_start = 0;

        // Wait for read completion
        wait (eeprom_done == 1);
        #(STROBE_PERIOD);
        $display("Page Read Test Completed");

        // Verify read data
        if (eeprom_page_rddata == test_page_data) begin
            $display("SUCCESS: Page read data matches written data!");
        end else begin
            $display("ERROR: Page read data does not match written data!");
            $display("Expected first byte: 0x%02h", test_page_data[7:0]);
            $display("Got first byte: 0x%02h", eeprom_page_rddata[7:0]);
            $display("Expected last byte: 0x%02h", test_page_data[255:248]);
            $display("Got last byte: 0x%02h", eeprom_page_rddata[255:248]);
        end

        // Test 3: Byte Write (for comparison)
        $display("Test 3: Starting Byte Write Test...");
        eeprom_page_seq = 0;        // Disable page mode
        eeprom_addr = 16'h0100;     // Address 0x0100
        eeprom_wrdata = 8'h55;      // Test data
        eeprom_inst = 4'h1;         // Write instruction
        eeprom_start = 1;
        #CLK_PERIOD;
        eeprom_start = 0;

        // Wait for write completion
        wait (eeprom_done == 1);
        #(STROBE_PERIOD);
        $display("Byte Write Test Completed");

        // Test 4: Byte Read
        $display("Test 4: Starting Byte Read Test...");
        eeprom_page_seq = 0;        // Disable page mode
        eeprom_addr = 16'h0100;     // Address 0x0100
        eeprom_inst = 4'h0;         // Read instruction
        eeprom_start = 1;
        #CLK_PERIOD;
        eeprom_start = 0;

        // Wait for read completion
        wait (eeprom_done == 1);
        #(STROBE_PERIOD);
        $display("Byte Read Test Completed");

        // Verify byte read data
        if (eeprom_rddata == 8'h55) begin
            $display("SUCCESS: Byte read data matches written data!");
        end else begin
            $display("ERROR: Byte read data does not match written data!");
            $display("Expected: 0x55, Got: 0x%02h", eeprom_rddata);
        end

        // Test 5: Status Read Test
        $display("Test 5: Starting Status Read Test...");
        eeprom_page_seq = 0;        // Disable page mode
        eeprom_inst = 4'h2;         // Status read instruction
        eeprom_start = 1;
        #CLK_PERIOD;
        eeprom_start = 0;

        // Wait for read completion
        wait (eeprom_done == 1);
        #(STROBE_PERIOD);
        $display("Status Read Test Completed - Status: 0x%02h", eeprom_rddata);

        $display("All tests completed!");
        $finish;
    end

endmodule
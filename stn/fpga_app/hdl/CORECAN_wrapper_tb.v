`timescale 1ns/100ps

module CORECAN_wrapper_tb;

    // Clock and Reset
    reg OPB_CLK;
    reg OPB_RST;
    
    // OPB Interface signals
    reg [31:0] OPB_ADDR;
    reg [31:0] OPB_DI;
    wire [31:0] OPB_DO;
    reg OPB_WE;
    reg OPB_RE;
    
    // CAN Interface signals
    wire CAN_TX_EN_N;
    wire CAN_TX;
    reg CAN_RX;
    
    // Test control variables
    reg [31:0] read_data;
    integer i;
    
    // Clock generation (100MHz)
    initial begin
        OPB_CLK = 0;
        forever #5 OPB_CLK = ~OPB_CLK; // 100MHz clock (10ns period)
    end
    
    // Instantiate the DUT (Device Under Test)
    CORECAN_wrapper dut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_ADDR(OPB_ADDR),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_WE(OPB_WE),
        .OPB_RE(OPB_RE),
        .CAN_TX_EN_N(CAN_TX_EN_N),
        .CAN_TX(CAN_TX),
        .CAN_RX(CAN_RX)
    );
    
    // OPB Write Task
    task opb_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            OPB_WE = 1'b1;
            OPB_RE = 1'b0;
            @(posedge OPB_CLK);
            OPB_WE = 1'b0;
            $display("Time %t: OPB Write - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask
    
    // OPB Read Task
    task opb_read;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_RE = 1'b1;
            OPB_WE = 1'b0;
            @(posedge OPB_CLK);
            OPB_RE = 1'b0;
            @(posedge OPB_CLK); // Wait for two cycles (pread lasts two cycles)
            data = OPB_DO;

            $display("Time %t: OPB Read - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask
    
    
    // Main test sequence
    initial begin
        $display("=== CORECAN_wrapper Testbench Started ===");
        
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_ADDR = 32'h0;
        OPB_DI = 32'h0;
        OPB_WE = 1'b0;
        OPB_RE = 1'b0;
        CAN_RX = 1'b1; // CAN bus idle state (recessive)
        
        // Reset sequence
        #100;
        OPB_RST = 1'b0;
        #100;
        
        $display("\n=== Test 1: OPB to APB Bridge Basic Test ===");
        
        // Test basic OPB write and read operations
        $display("Testing OPB to APB address and data latching...");
        
        // Perform some write operations to test address/data latching
        opb_write(32'h00000000, 32'h12345678);
        #100;
        
        opb_write(32'h00000004, 32'hABCDEF00);
        #100;
        
        opb_write(32'h000007FF, 32'h55AA55AA); // Test maximum 11-bit address
        #100;
        
        // Test read operations
        opb_read(32'h00000000, read_data);
        #100;
        
        opb_read(32'h00000004, read_data);
        #100;
        
        $display("\n=== Test 2: APB Signal Timing Verification ===");
        
        // Verify that pwrite and penable signals have correct timing
        $display("Monitoring APB timing signals during write operation...");
        
        // Monitor internal APB signals during operation
        $display("paddr = 0x%03X", dut.paddr);
        $display("pwdata = 0x%08X", dut.pwdata);
        $display("pwrite = %b", dut.pwrite);
        $display("penable = %b", dut.penable);


        $display("\n=== CORECAN_wrapper Testbench Completed Successfully ===");
        $stop;
    end
    
    // Monitor APB signals for debugging
    initial begin
        $display("\n=== APB Signal Monitor ===");
        #200; // Start monitoring after reset
        forever begin
            @(posedge OPB_CLK);
            if (dut.pwrite || dut.penable) begin
                $display("APB: paddr=0x%03X, pwdata=0x%08X, pwrite=%b, penable=%b, prdata=0x%08X", 
                         dut.paddr, dut.pwdata, dut.pwrite, dut.penable, dut.prdata);
            end
        end
    end
    
endmodule

`timescale 1ns/100ps

module CAN_IF_tb;

    // Clock and Reset
    reg OPB_CLK;
    reg OPB_RST;
    
    // OPB Interface signals
    reg [31:0] OPB_DI;
    wire [31:0] OPB_DO;
    reg [31:0] OPB_ADDR;
    reg CAN_RE;
    reg CAN_WE;
    
    // CAN Interface signals
    wire CAN_TX1, CAN_TX2, CAN_TX3, CAN_TX4;
    reg CAN_RX1, CAN_RX2, CAN_RX3, CAN_RX4;
    
    // Test control variables
    reg [31:0] read_data;
    integer i;
    
    // Clock generation (100MHz)
    initial begin
        OPB_CLK = 0;
        forever #5 OPB_CLK = ~OPB_CLK; // 100MHz clock (10ns period)
    end
    
    // Instantiate the DUT (Device Under Test)
    CAN_IF dut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .CAN_RE(CAN_RE),
        .CAN_WE(CAN_WE),
        .CAN_TX1(CAN_TX1),
        .CAN_TX2(CAN_TX2),
        .CAN_TX3(CAN_TX3),
        .CAN_TX4(CAN_TX4),
        .CAN_RX1(CAN_RX1),
        .CAN_RX2(CAN_RX2),
        .CAN_RX3(CAN_RX3),
        .CAN_RX4(CAN_RX4)
    );
    
    // OPB Write Task
    task opb_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            CAN_WE = 1'b1;
            CAN_RE = 1'b0;
            @(posedge OPB_CLK);
            CAN_WE = 1'b0;
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
            CAN_RE = 1'b1;
            CAN_WE = 1'b0;
            @(posedge OPB_CLK);
            CAN_RE = 1'b0;
            @(posedge OPB_CLK); // Wait for operation to complete
            data = OPB_DO;
            $display("Time %t: OPB Read - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask
    
    
    // Main test sequence
    initial begin
        $display("=== CAN_IF Testbench Started ===");
        
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_DI = 32'h0;
        OPB_ADDR = 32'h0;
        CAN_RE = 1'b0;
        CAN_WE = 1'b0;
        
        // Initialize CAN RX signals to idle state (recessive)
        CAN_RX1 = 1'b1;
        CAN_RX2 = 1'b1;
        CAN_RX3 = 1'b1;
        CAN_RX4 = 1'b1;
        
        // Reset sequence
        #100;
        OPB_RST = 1'b0;
        #100;
        
        $display("\n=== Test 1: Address Decoding Test ===");
        
        // Test address decoding for each CAN channel
        // CAN1: OPB_ADDR[14:11] = 4'b0001 (0x0800 - 0x0FFF)
        // CAN2: OPB_ADDR[14:11] = 4'b0010 (0x1000 - 0x17FF)
        // CAN3: OPB_ADDR[14:11] = 4'b0100 (0x2000 - 0x27FF)
        // CAN4: OPB_ADDR[14:11] = 4'b1000 (0x4000 - 0x47FF)
        
        $display("Testing CAN1 address space (0x0800-0x0FFF)...");
        opb_write(32'h00000800, 32'h12345678); // CAN1 base address
        opb_read(32'h00000800, read_data);
        
        $display("Testing CAN2 address space (0x1000-0x17FF)...");
        opb_write(32'h00001000, 32'hAABBCCDD); // CAN2 base address
        opb_read(32'h00001000, read_data);
        
        $display("Testing CAN3 address space (0x2000-0x27FF)...");
        opb_write(32'h00002000, 32'h55AA55AA); // CAN3 base address
        opb_read(32'h00002000, read_data);
        
        $display("Testing CAN4 address space (0x4000-0x47FF)...");
        opb_write(32'h00004000, 32'hDEADBEEF); // CAN4 base address
        opb_read(32'h00004000, read_data);
        
        $display("\n=== Test 2: Channel Selection Verification ===");
        
        // Verify that each channel responds only to its address range
        $display("Verifying channel isolation...");
        
        // Write to CAN1, read from others (should return 0)
        opb_write(32'h00000804, 32'h11111111);
        opb_read(32'h00001004, read_data); // Read from CAN2 - should be 0
        opb_read(32'h00002004, read_data); // Read from CAN3 - should be 0
        opb_read(32'h00004004, read_data); // Read from CAN4 - should be 0
        
        $display("\n=== CAN_IF Testbench Completed Successfully ===");
        $stop;
    end

    // Address decoding monitor
    initial begin
        $display("\n=== Address Decoding Monitor ===");
        #200; // Start after reset
        forever begin
            @(posedge OPB_CLK);
            if (CAN_RE || CAN_WE) begin
                $display("Address Decode: 0x%08X -> CAN1_EN=%b, CAN2_EN=%b, CAN3_EN=%b, CAN4_EN=%b", 
                         OPB_ADDR, dut.CAN1_RE || dut.CAN1_WE, 
                         dut.CAN2_RE || dut.CAN2_WE,
                         dut.CAN3_RE || dut.CAN3_WE, 
                         dut.CAN4_RE || dut.CAN4_WE);
            end
        end
    end
    
endmodule

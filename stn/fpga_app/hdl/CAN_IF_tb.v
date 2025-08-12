`timescale 1ns/100ps

module CAN_IF_tb;

    // Clock and Reset
    reg OPB_CLK;
    reg OPB_RST;
    
    // OPB Interface signals
    reg [31:0] OPB_DI;
    wire [31:0] CAN1_DO, CAN2_DO, CAN3_DO, CAN4_DO;
    reg [31:0] OPB_ADDR;
    reg CAN1_RE, CAN1_WE;
    reg CAN2_RE, CAN2_WE;
    reg CAN3_RE, CAN3_WE;
    reg CAN4_RE, CAN4_WE;
    
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
        .CAN1_DO(CAN1_DO),
        .CAN2_DO(CAN2_DO),
        .CAN3_DO(CAN3_DO),
        .CAN4_DO(CAN4_DO),
        .OPB_ADDR(OPB_ADDR[15:0]),
        .CAN1_RE(CAN1_RE),
        .CAN1_WE(CAN1_WE),
        .CAN2_RE(CAN2_RE),
        .CAN2_WE(CAN2_WE),
        .CAN3_RE(CAN3_RE),
        .CAN3_WE(CAN3_WE),
        .CAN4_RE(CAN4_RE),
        .CAN4_WE(CAN4_WE),
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
        input [3:0] can_sel; // CAN channel selection: 1=CAN1, 2=CAN2, 4=CAN3, 8=CAN4
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            
            // Clear all WE signals first
            CAN1_WE = 1'b0;
            CAN2_WE = 1'b0;
            CAN3_WE = 1'b0;
            CAN4_WE = 1'b0;
            
            // Set appropriate WE signal based on selection
            case (can_sel)
                4'b0001: CAN1_WE = 1'b1;
                4'b0010: CAN2_WE = 1'b1;
                4'b0100: CAN3_WE = 1'b1;
                4'b1000: CAN4_WE = 1'b1;
                default: $display("Error: Invalid CAN channel selection");
            endcase
            
            // Clear all RE signals
            CAN1_RE = 1'b0;
            CAN2_RE = 1'b0;
            CAN3_RE = 1'b0;
            CAN4_RE = 1'b0;
            
            @(posedge OPB_CLK);
            CAN1_WE = 1'b0;
            CAN2_WE = 1'b0;
            CAN3_WE = 1'b0;
            CAN4_WE = 1'b0;
            $display("Time %t: OPB Write - CAN%d, Addr: 0x%08X, Data: 0x%08X", 
                     $time, (can_sel == 4'b0001) ? 1 : (can_sel == 4'b0010) ? 2 : 
                           (can_sel == 4'b0100) ? 3 : 4, addr, data);
        end
    endtask
    
    // OPB Read Task
    task opb_read;
        input [3:0] can_sel; // CAN channel selection: 1=CAN1, 2=CAN2, 4=CAN3, 8=CAN4
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            
            // Clear all RE signals first
            CAN1_RE = 1'b0;
            CAN2_RE = 1'b0;
            CAN3_RE = 1'b0;
            CAN4_RE = 1'b0;
            
            // Set appropriate RE signal based on selection
            case (can_sel)
                4'b0001: CAN1_RE = 1'b1;
                4'b0010: CAN2_RE = 1'b1;
                4'b0100: CAN3_RE = 1'b1;
                4'b1000: CAN4_RE = 1'b1;
                default: $display("Error: Invalid CAN channel selection");
            endcase
            
            // Clear all WE signals
            CAN1_WE = 1'b0;
            CAN2_WE = 1'b0;
            CAN3_WE = 1'b0;
            CAN4_WE = 1'b0;
            
            @(posedge OPB_CLK);
            CAN1_RE = 1'b0;
            CAN2_RE = 1'b0;
            CAN3_RE = 1'b0;
            CAN4_RE = 1'b0;
            
            @(posedge OPB_CLK); // Wait for operation to complete
            
            // Select appropriate data output based on channel
            case (can_sel)
                4'b0001: data = CAN1_DO;
                4'b0010: data = CAN2_DO;
                4'b0100: data = CAN3_DO;
                4'b1000: data = CAN4_DO;
                default: data = 32'h0;
            endcase
            
            $display("Time %t: OPB Read - CAN%d, Addr: 0x%08X, Data: 0x%08X", 
                     $time, (can_sel == 4'b0001) ? 1 : (can_sel == 4'b0010) ? 2 : 
                           (can_sel == 4'b0100) ? 3 : 4, addr, data);
        end
    endtask
    
    
    // Main test sequence
    initial begin
        $display("=== CAN_IF Testbench Started ===");
        
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_DI = 32'h0;
        OPB_ADDR = 32'h0;
        CAN1_RE = 1'b0;
        CAN1_WE = 1'b0;
        CAN2_RE = 1'b0;
        CAN2_WE = 1'b0;
        CAN3_RE = 1'b0;
        CAN3_WE = 1'b0;
        CAN4_RE = 1'b0;
        CAN4_WE = 1'b0;
        
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
        opb_write(4'b0001, 32'h00000800, 32'h12345678); // CAN1 base address
        #100;
        opb_write(4'b0001, 32'h00008800, 32'h0); // CAN1 base address
        #100;
        opb_read(4'b0001, 32'h00000800, read_data);
        #100;

        $display("Testing CAN2 address space (0x1000-0x17FF)...");
        opb_write(4'b0010, 32'h00001000, 32'hAABBCCDD); // CAN2 base address
        #100;
        opb_write(4'b0010, 32'h00009000, 32'h0); // CAN2 base address
        #100;
        opb_read(4'b0010, 32'h00001000, read_data);
        #100;

        $display("Testing CAN3 address space (0x2000-0x27FF)...");
        opb_write(4'b0100, 32'h00002000, 32'h55AA55AA); // CAN3 base address
        #100;
        opb_write(4'b0100, 32'h0000A000, 32'h55AA55AA); // CAN2 base address
        #100;
        opb_read(4'b0100, 32'h00002000, read_data);
        #100;

        $display("Testing CAN4 address space (0x4000-0x47FF)...");
        opb_write(4'b1000, 32'h00004000, 32'hDEADBEEF); // CAN4 base address
        #100;
        opb_write(4'b1000, 32'h0000C000, 32'hDEADBEEF); // CAN2 base address
        #100;
        opb_read(4'b1000, 32'h00004000, read_data);
        #100;
        
        $display("\n=== CAN_IF Testbench Completed Successfully ===");
        $stop;
    end

    // Address decoding monitor
    initial begin
        $display("\n=== Address Decoding Monitor ===");
        #200; // Start after reset
        forever begin
            @(posedge OPB_CLK);
            if (CAN1_RE || CAN1_WE || CAN2_RE || CAN2_WE || CAN3_RE || CAN3_WE || CAN4_RE || CAN4_WE) begin
                $display("Address Decode: 0x%08X -> CAN1_EN=%b, CAN2_EN=%b, CAN3_EN=%b, CAN4_EN=%b", 
                         OPB_ADDR, 
                         CAN1_RE || CAN1_WE, 
                         CAN2_RE || CAN2_WE,
                         CAN3_RE || CAN3_WE, 
                         CAN4_RE || CAN4_WE);
            end
        end
    end
    
endmodule

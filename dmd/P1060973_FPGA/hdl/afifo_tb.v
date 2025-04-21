`timescale 1ns / 100ps

module afifo_tb;

    localparam WCLK_PERIOD = 10;
    localparam RCLK_PERIOD = 20;
    localparam DSIZE = 16;
    localparam ASIZE = 8;

    reg wclk;
    reg rclk;
    reg rst_n;

    reg  wr;
    wire rd;
    reg [DSIZE-1:0] wdata;
    wire [DSIZE-1:0] rdata;
    wire wfull, rempty;
    integer i;

    assign rd = ~rempty;

    initial begin
        wclk = 1;
        forever #(WCLK_PERIOD/2) wclk = ~wclk;
    end

    initial begin
        rclk = 1;
        forever #(RCLK_PERIOD/2) rclk = ~rclk;
    end

    initial begin
        rst_n = 0;
        #100
        rst_n = 1;
    end

    initial begin
        wr = 0;
        wdata = 0;

        wait(rst_n == 1);
        #50;

        wr = 1;
        wdata = 16'h1234;
        #10;
        //@(posedge wclk);
        wr = 0;
        #500;
        
        for(i = 0; i < 100; i=i+1) begin
            wr = 1;
            wdata = wdata + 1;
            #10;
        end
        
        wr = 0;
        #1000;

    end

    afifo #(
        .DSIZE(DSIZE),
        .ASIZE(ASIZE)
    )u1(
        .i_wclk(wclk),
        .i_wrst_n(rst_n),
        .i_wr(wr),
        .i_wdata(wdata),
        .o_wfull(wfull),
		.i_rclk(rclk),
        .i_rrst_n(rst_n),
        .i_rd(rd),
        .o_rdata(rdata),
        .o_rempty(rempty)    
    );

endmodule

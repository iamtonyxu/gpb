///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: MOT_PWM_GEN.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//       
//       
//       
// Targeted device: <Family> <Die> <Package>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ps / 1ps
                                  
module MotCtrl(
	input               MOT_CLK,			//32MHz
	input               MOT_RST,
    input               MOT_PWM_IN, 
    output  [0:5]       MOT_PWM_OUT

);

 
    reg [5:0]       phase_1;
    reg [5:0]       phase_2;
    reg [5:0]       phase_3;
    reg [5:0]       phase_4;
    reg [5:0]       phase_5;
    reg [5:0]       phase_6;
    reg [5:0]       phase;
    reg [2:0]       phase_cnt;
 
    
    assign MOT_PWM_OUT       =  phase;

    always@(posedge MOT_CLK or posedge MOT_RST) begin
    		if(MOT_RST) begin
                phase_1 <= 6'h00;
                phase_2 <= 6'h00;
                phase_3 <= 6'h00;
                phase_4 <= 6'h00;
                phase_5 <= 6'h00;
                phase_6 <= 6'h00;
            end
            else begin
                phase_1 <= {1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
                phase_2 <= {1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
                phase_3 <= {1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
                phase_4 <= {1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1};
                phase_5 <= {1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0};
                phase_6 <= {1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
            end 
		
    end

    always@(negedge MOT_PWM_IN or posedge MOT_RST) begin
    		if(MOT_RST) begin
                phase_cnt <= 3'b000; // Initial Count
            end
            else begin
                if(phase_cnt < 3'b001) begin  // Start Count
                   phase <= phase_1;  
                   phase_cnt = phase_cnt + 1;              
                end
                else if((phase_cnt > 3'b000) && (phase_cnt < 3'b010)) begin 
                   phase <= phase_2;  
                   phase_cnt = phase_cnt + 1;  
                end
                else if((phase_cnt > 3'b001) && (phase_cnt < 3'b011)) begin 
                   phase <= phase_3;  
                   phase_cnt = phase_cnt + 1;  
                end
                else if((phase_cnt > 3'b010) && (phase_cnt < 3'b100)) begin 
                   phase <= phase_4;  
                   phase_cnt = phase_cnt + 1;  
                end
                else if((phase_cnt > 3'b011) && (phase_cnt < 3'b101)) begin 
                   phase <= phase_5;  
                   phase_cnt = phase_cnt + 1;  
                end
                else if((phase_cnt > 3'b100) && (phase_cnt < 3'b110)) begin 
                   phase <= phase_6;  
                   phase_cnt = 3'b000;   // Reset Count back to 0
                end
                
            end 
		
    end

endmodule
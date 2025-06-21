///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: GANTRY_MOT.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family> <Die> <Package>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ps / 1ps


`define LIFT_PWM_2KHZ_SEL               2'b01
`define LIFT_PWM_20KHZ_SEL              2'b10
`define LIFT_PWM_200KHZ_SEL             2'b11
`define LIFT_PWM_SEL                    2'h1
`define LIFT_PWM_OUT_EN		            2'h2
`define LIFT_GPIO_EN  		            2'h3




module Lift_Motor (
    output  [31:0]  LIFT_MOT_DO,
    output  [5:0]   LIFT_PWM,
    output          LIFT_MOT_DRV_EN,
    output          LIFT_CURR_SAMP,
    input   [31:0]  LIFT_MOT_DI,
    input   [31:0]  LIFT_ADDR,
    input           LIFT_MOT_RE,
    input           LIFT_MOT_WE,
    input           OPB_CLK,				//32MHz
    input           OPB_RST,
    input           SYSCLK,					//100MHz
    input           CLK_200KHZ,
    input           CLK_20KHZ,
    input           CLK_2KHZ
);


    reg        pwm;
    reg        pwm_cmd;
    reg        pwm_out_en;
    reg  [1:0] gpio_out;
    reg  [1:0] pwm_sel;

    reg [5:0]       phase_1;
    reg [5:0]       phase_2;
    reg [5:0]       phase_3;
    reg [5:0]       phase_4;
    reg [5:0]       phase_5;
    reg [5:0]       phase_6;
    reg [5:0]       phase;
    reg [2:0]       phase_cnt;    


    

    assign LIFT_MOT_DRV_EN      = gpio_out[0];
    assign LIFT_CURR_SAMP       = gpio_out[1];   
    assign LIFT_PWM             = (pwm_cmd) ?   phase   : 6'b000000;
    assign LIFT_MOT_DO          = (LIFT_MOT_RE) ?   gpio_out    : 2'bz;     
 
 	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin    
            pwm         <= 1'b0;  
        end 
        else if(pwm_sel == `LIFT_PWM_2KHZ_SEL) begin
            pwm         <= CLK_2KHZ;
        end
        else if(pwm_sel == `LIFT_PWM_20KHZ_SEL) begin
            pwm         <= CLK_20KHZ;
        end
        else if(pwm_sel == `LIFT_PWM_200KHZ_SEL) begin
            pwm         <= CLK_200KHZ;
        end
        
    end 
    
	always@(posedge pwm or posedge OPB_RST) begin
		if(OPB_RST) begin    
            pwm_cmd  <= 1'b0;
        end
        else begin
            pwm_cmd <= pwm_out_en;
        end

    end

	always@(posedge OPB_CLK or posedge OPB_RST) begin
		if(OPB_RST) begin    
            pwm_out_en  <= 1'b0;
            gpio_out    <= 2'b00;
            pwm_sel     <= 2'b00;
  
        end

        else if(LIFT_MOT_WE) begin
            case(LIFT_ADDR[2:0])
                `LIFT_PWM_SEL:          begin
                        pwm_sel        <=  LIFT_MOT_DI[1:0];
                    end
                `LIFT_PWM_OUT_EN:       begin
                        pwm_out_en     <=  LIFT_MOT_DI[2];
                    end
                `LIFT_GPIO_EN:          begin
                        gpio_out        <= LIFT_MOT_DI[4:3];
                    end
                	
            endcase 
        end
    end

    always@(posedge OPB_CLK or posedge OPB_RST) begin
    		if(OPB_RST) begin
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
    always@(posedge pwm or posedge OPB_RST) begin
    		if(OPB_RST) begin
                phase_cnt <= 3'b000; // Initial Count
            end
            else begin
                if(phase_cnt < 3'b001) begin  // Start Count
                   phase <= phase_1;  
                   phase_cnt <= 3'b001;              
                end
                else if((phase_cnt > 3'b000) && (phase_cnt < 3'b010)) begin 
                   phase <= phase_2;  
                   phase_cnt <= 3'b010;  
                end
                else if((phase_cnt > 3'b001) && (phase_cnt < 3'b011)) begin 
                   phase <= phase_3;  
                   phase_cnt <= 3'b011;  
                end
                else if((phase_cnt > 3'b010) && (phase_cnt < 3'b100)) begin 
                   phase <= phase_4;  
                   phase_cnt <= 3'b100;
                end
                else if((phase_cnt > 3'b011) && (phase_cnt < 3'b101)) begin 
                   phase <= phase_5;  
                   phase_cnt <= 3'b101;  
                end
                else if((phase_cnt > 3'b100) && (phase_cnt < 3'b110)) begin 
                   phase <= phase_6;  
                   phase_cnt <= 3'b000;   // Reset Count back to 0
                end
                
            end 
		
    end

endmodule
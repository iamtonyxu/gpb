///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: GPIO.v
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
`timescale 1ns / 1ps
module GPIO (
    input           OPB_CLK,
    input           OPB_RST,
    input   [31:0]  GPIO_DI,
    input   [31:0]  GPIO_ADDR,
    input           STD_CONT_RE,
    input           CCHL_IF_RE,
    input           SER_PENDANT_RE,
    input           PWR_IF_RE,
    input           LIFT_MOT_SENS_RE,
    input           SPD_DMD_IF_RE,
    input           GANTRY_MOT_SENS_RE,
    input           SPD_EMOPS_RE,
    input           GPO_RE,
    input           GPO_WE,
    input           ADMUX_RE,
    input           ADMUX_WE,
    input           ADSEL_RE,
    input           ADSEL_WE,
    input           STS_RE,
    input           STS_WE,
    input           GANTRY_96V_IF_RE,
    input           GANTRY_96V_IF_WE,
    input           LIFT_96V_IF_RE,
    input           LIFT_96V_IF_WE,
    input           MOT_GPO_WE,
    input   [14:0]   DMD_IO,


    //input           CLK_10HZ,
    input   [5:0]   STAND_CONT_IF,
    input   [4:0]   CCHL_IF,
    input   [6:0]   SERVICE_PENDANT,
    input   [6:0]   PWR_IF,
    input   [3:0]   LIFT_MOT_SNS_IF,
    input   [4:0]   SPD_DMD_IF,
    input   [4:0]   GANT_MOT_SNS_IF,
    input   [4:0]   SPD_EMOPS_IF,
    //input   [9:0]   HDR_IN,
    output  [3:0]   AD_MUX,
    output  [2:0]   AD_SEL,
    output  [7:0]   STS,
    output          FPGA_DONE,
    output          GANT_96V_BYPASS,             
    output          GANT_24V_PWR_EN,               
    output          GANT_96V_PWR_EN,               
    output          GANT_MOT_SHUNT_EN_N,           
    output          LIFT_96V_BYPASS,               
    output          LIFT_24V_PWR_EN,               
    output          LIFT_96V_PWR_EN,               
    output          LIFT_MOT_SHUNT_EN_N,           
    output          GANT_SERIO_RST_N,              
    output          GANT_SER_DATA1,                
    output          GANT_SER_DATA0,                
    output          GANT_SER_SYNC,                 
    output          GANT_SER_CLK,                  
    output          LIFT_SERIO_RST_N,              
    output          LIFT_SER_DATA1,                
    output          LIFT_SER_DATA0,                
    output          LIFT_SER_SYNC,                 
    output          LIFT_SER_CLK,                  
    output          LIFT_BRK_OVRD_LED_CTRL,        
    output          FAN_EN,                        
    output          LIFT_HALL_PWR_EN,              
    output          SPDIO_RST_N,                   
    output          SPARE_MON,                     
    output          DMD_PWR_OK,                    
    output          GANT_ST_DISB_MON,              
    output          LIFT_HW_EN_MON,                
    output          LIFT_ST_DISB_MON,              
    output          GNT_HW_EN_MON,                 
    output          GNT_HALL_PWR_EN,               
    output          GNT_BRK_RLS,                   
    output          LFT_BRK_RLS,                   
    output          LAT_LNG_BRK_RLS,               
    output          EMOPS_STAT2,                   
    output          EMOPS_STAT1,
    output          EM_24V_EN,
    output          GANT_BRK_RLS1,
    //output  [9:0]  HDR_OUT,             
	output  reg [31:0]  GPIO_DO
       
);

    /* Digital Outputs */
    reg [16:0]      digital_out;
    reg [10:0]      mot_gpo_out;
    reg [3:0]       ad_mux_out;
    reg [2:0]       ad_sel_out;
    reg [7:0]       sts_out;
    reg [4:0]       sts_counter;
    reg [3:0]       gantry_96v_if_out;
    reg [3:0]       lift_96v_if_out;
    reg [3:0]       Led_timer_100ms;
 
 
    /* Digital Inputs */
    wire [5:0] std_cont_if_in;
    wire [4:0] cchl_if_in;
    wire [6:0] ser_pendant_in;
    wire [6:0] pwr_if_in;   
    wire [3:0] lift_mot_hall_sens_in;
    wire [4:0] spd_dmd_if_in;
    wire [4:0] gantry_mot_hall_sens_in;
    wire [4:0] spd_emops_if_in; 
    wire [14:0] dmd_in;  
    //wire [9:0] hdr_in;

    assign std_cont_if_in = STAND_CONT_IF;
    assign cchl_if_in = CCHL_IF;
    assign ser_pendant_in = SERVICE_PENDANT;
    assign pwr_if_in = PWR_IF;   
    assign lift_mot_hall_sens_in = LIFT_MOT_SNS_IF;
    assign spd_dmd_if_in = SPD_DMD_IF;
    assign gantry_mot_hall_sens_in = GANT_MOT_SNS_IF;
    assign spd_emops_if_in = SPD_EMOPS_IF;     
    assign dmd_in = DMD_IO;  
    //assign hdr_in = HDR_IN;
    
    
    assign AD_MUX                       = ad_mux_out;
    assign AD_SEL                       = ad_sel_out;
    assign STS                          = sts_out;
    //assign HDR_OUT                      = hdr_in;
  

    /* GANTRY 96V IF */
    assign GANT_96V_BYPASS              = gantry_96v_if_out[3];
    assign GANT_24V_PWR_EN              = (gantry_96v_if_out[1] == 1'b0)    ? gantry_96v_if_out[2]             : 1'b0;
    assign GANT_96V_PWR_EN              = (gantry_96v_if_out[2] == 1'b0)    ? gantry_96v_if_out[1]             : 1'b0;
    assign GANT_MOT_SHUNT_EN_N          = gantry_96v_if_out[0];

    /* LIFT 96V IF */
    assign LIFT_96V_BYPASS              = lift_96v_if_out[3];
    assign LIFT_24V_PWR_EN              = (lift_96v_if_out[1] == 1'b0)     ? lift_96v_if_out[2]               : 1'b0;
    assign LIFT_96V_PWR_EN              = (lift_96v_if_out[2] == 1'b0)     ? lift_96v_if_out[1]               : 1'b0;
    assign LIFT_MOT_SHUNT_EN_N          = lift_96v_if_out[0];
    
    assign GANT_SERIO_RST_N             = mot_gpo_out[10];
    assign GANT_SER_DATA1               = mot_gpo_out[9];
    assign GANT_SER_DATA0               = mot_gpo_out[8];
    assign GANT_SER_SYNC                = mot_gpo_out[7];
    assign GANT_SER_CLK                 = mot_gpo_out[6];
    assign LIFT_SERIO_RST_N             = mot_gpo_out[5];
    assign LIFT_SER_DATA1               = mot_gpo_out[4];
    assign LIFT_SER_DATA0               = mot_gpo_out[3];
    assign LIFT_SER_SYNC                = mot_gpo_out[2];
    assign LIFT_SER_CLK                 = mot_gpo_out[1];
    assign LIFT_BRK_OVRD_LED_CTRL       = mot_gpo_out[0];

    assign GANT_BRK_RLS1                = digital_out[16];
    assign EM_24V_EN                    = digital_out[15];
    assign FAN_EN                       = digital_out[14];
    assign LIFT_HALL_PWR_EN             = digital_out[13];
    assign SPDIO_RST_N                  = digital_out[12];
    assign SPARE_MON                    = digital_out[11];
    assign DMD_PWR_OK                   = digital_out[10];
    assign GANT_ST_DISB_MON             = digital_out[9];
    assign LIFT_HW_EN_MON               = digital_out[8];
    assign LIFT_ST_DISB_MON             = digital_out[7];
    assign GNT_HW_EN_MON                = digital_out[6];
    assign GNT_HALL_PWR_EN              = digital_out[5];
    assign GNT_BRK_RLS                  = digital_out[4];
    assign LFT_BRK_RLS                  = digital_out[3];
    assign LAT_LNG_BRK_RLS              = digital_out[2];
    assign EMOPS_STAT2                  = digital_out[1];
    assign EMOPS_STAT1                  = digital_out[0];

    /* FPGA_DONE */
    reg fpga_done;
    
    assign FPGA_DONE  = fpga_done;
    always@(negedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin
            fpga_done <= 1'b0;
        end 
        else begin
            fpga_done <= 1'b1;
        end
    end


    always@(negedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin
            digital_out             <= 17'b0;
            ad_mux_out              <= 4'b0;            
            ad_sel_out              <= 3'b0;
            gantry_96v_if_out       <= 4'b0001;
            lift_96v_if_out         <= 4'b0001;
            sts_out                 <= 8'b11111111;
            mot_gpo_out             <= 11'b0;

        end 
        else if(GPO_WE) begin
            digital_out <= GPIO_DI[16:0];
        end
        else if(MOT_GPO_WE) begin
            mot_gpo_out <= GPIO_DI[10:0];
        end
        else if(ADMUX_WE) begin
            ad_mux_out <= GPIO_DI[3:0];
        end
        else if(ADSEL_WE) begin
            ad_sel_out <= GPIO_DI[2:0];
        end

        else if(GANTRY_96V_IF_WE) begin
            gantry_96v_if_out    <= GPIO_DI[3:0];
        end
        else if(LIFT_96V_IF_WE) begin
            lift_96v_if_out    <= GPIO_DI[3:0];
        end
        else if(STS_WE) begin
            sts_out <= GPIO_DI[7:0];
        end
    end



    /* Digital Inputs */


    always@(posedge OPB_CLK or posedge OPB_RST) begin   
        if(OPB_RST) begin
            
            GPIO_DO <= 32'b0;
        end
        else if(STD_CONT_RE) begin
            GPIO_DO <= {26'b0, std_cont_if_in};     
        end
        else if(CCHL_IF_RE) begin
            GPIO_DO <= {27'b0, cchl_if_in};     
        end
        else if(SER_PENDANT_RE) begin
            GPIO_DO <= {25'b0, ser_pendant_in};     
        end
        else if(PWR_IF_RE) begin
            GPIO_DO <= {25'b0, pwr_if_in};     
        end
        else if(LIFT_MOT_SENS_RE) begin
            GPIO_DO <= {28'b0, lift_mot_hall_sens_in};     
        end
        else if(SPD_DMD_IF_RE) begin
            GPIO_DO <= {27'b0, spd_dmd_if_in};     
        end
        else if(GANTRY_MOT_SENS_RE) begin
            GPIO_DO <= {27'b0, gantry_mot_hall_sens_in};     
        end
        else if(SPD_EMOPS_RE) begin
            GPIO_DO <= {27'b0, spd_emops_if_in};     
        end
        else if(GPO_RE) begin
            GPIO_DO <= {17'b0, dmd_in};   
        end
    end
    
endmodule





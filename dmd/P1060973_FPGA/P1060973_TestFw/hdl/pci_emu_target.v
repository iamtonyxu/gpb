///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: pci_emu_target.v
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

/* BYTE SEL */
`define BYTE_SEL_0         3'b001
`define BYTE_SEL_1         3'b011            
`define BYTE_SEL_2         3'b101            
`define BYTE_SEL_3         3'b111 
 
`define RD_BYTE_0          3'b010
`define RD_BYTE_1          3'b100
`define RD_BYTE_2          3'b110



(* opt_mode="speed", optimize_primitives="yes" *)
module PCI_EMU_TARGET(
    /* Communications Signals */
    input               PCI_CLK2,  
    inout       [7:0]   AD,  
    input               ADDR_DATA_SEL,
    input               CS,
    input               RD_WR,
    input       [2:0]   BYTE_SEL, 
    input               PCI_RST,
    input               RESET_N,
    

    /* OPB Interface */
    input       [31:0]  OPB_DI,
    output  reg [31:0]  OPB_DO,
    output  reg [31:0]  OPB_ADDR,
    output  reg         OPB_RE,
    output  reg         OPB_WE,
    output              OPB_CLK,
    output              OPB_RST

);
 
 
/* Access Control */
 
    always@(negedge PCI_CLK2 or posedge OPB_RST) begin
        if(OPB_RST) begin
            OPB_RE  <=  1'b0;
            OPB_WE  <= 32'b0;
        end 
        else if((RD_WR) && (~CS) && (PCI_RST)) begin
            OPB_RE  <=  1'b1;
        end 
        else if((!RD_WR) && (~CS) && (PCI_RST) && (BYTE_SEL == 0)) begin
            OPB_WE  <=  1'b1;
        end 
        else begin
            OPB_RE  <=  1'b0;
            OPB_WE  <= 32'b0;
        end 
    end

    
/* Clock Buffer */
    assign OPB_CLK = PCI_CLK2;

/* Reset Control */
    assign OPB_RST = ~PCI_RST || ~RESET_N;

/* OPB Addr Latch */
    reg opb_addr_le;

/* OPB_ADDR Byte Registers */
    reg  [7:0] opb_addr_byte_0;
    reg  [7:0] opb_addr_byte_1;
    reg  [7:0] opb_addr_byte_2;
    reg  [7:0] opb_addr_byte_3;

    always@(negedge PCI_CLK2 or posedge OPB_RST) begin
        if(OPB_RST) begin
            opb_addr_le  <=  1'b0;
            OPB_ADDR <= 32'b0;
        end 
          else if(!CS) begin  
            (* full_case, parallel_case *)
            case(BYTE_SEL)
                `BYTE_SEL_0:  opb_addr_byte_0    <= AD;
                `BYTE_SEL_1:  opb_addr_byte_1    <= AD;
                `BYTE_SEL_2:  opb_addr_byte_2    <= AD;
                `BYTE_SEL_3:  opb_addr_byte_3    <= AD;
            endcase  

            if((!opb_addr_le) && (!ADDR_DATA_SEL)) begin
                OPB_ADDR  <= {8'b0, opb_addr_byte_3, opb_addr_byte_2, opb_addr_byte_1}; 
                opb_addr_le <= 1'b1;
            end
         end  
        else begin
            opb_addr_le <= 1'b0;
        end       

    end 


/* OPB Data Latch */
    reg opb_do_le;
    
/* opb_di Byte Registers */ 
    reg  [7:0] opb_do_byte_0;
    reg  [7:0] opb_do_byte_1;
    reg  [7:0] opb_do_byte_2;
    reg  [7:0] opb_do_byte_3;  

/* Write Access */
     
     always@(negedge PCI_CLK2 or posedge OPB_RST) begin
        if(OPB_RST) begin
            opb_do_le  <=  1'b0;
            OPB_DO <= 32'b0; 
        end 

        else if(!CS) begin       
             (* full_case, parallel_case *)
            case(BYTE_SEL)
                `BYTE_SEL_0:  opb_do_byte_0    <= AD;
                `BYTE_SEL_1:  opb_do_byte_1    <= AD;
                `BYTE_SEL_2:  opb_do_byte_2    <= AD;
                `BYTE_SEL_3:  opb_do_byte_3    <= AD;
            endcase  
                
           
            if((!opb_do_le) && (opb_addr_le) && (ADDR_DATA_SEL)) begin   
                
                OPB_DO <= {8'b0, opb_do_byte_3,opb_do_byte_2,opb_do_byte_1}; 
                opb_do_le <= 1'b1; 
            end 
            
        end
        else begin
            opb_do_le <= 1'b0;
            
        end       

     end 

/* Read Latch*/ 
    assign AD = ((OPB_RE) && (BYTE_SEL == `RD_BYTE_0) && (!ADDR_DATA_SEL)) ? OPB_DI[7:0]      : 8'bz; 
    assign AD = ((OPB_RE) && (BYTE_SEL == `RD_BYTE_1) && (!ADDR_DATA_SEL)) ? OPB_DI[15:8]     : 8'bz; 
    assign AD = ((OPB_RE) && (BYTE_SEL == `RD_BYTE_2) && (!ADDR_DATA_SEL)) ? OPB_DI[23:16]    : 8'bz; 

  
    
endmodule

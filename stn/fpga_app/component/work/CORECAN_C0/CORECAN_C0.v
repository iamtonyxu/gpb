//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jul 31 13:22:16 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of CORECAN_C0 to TCL
# Family: PolarFire
# Part Number: MPF100T-1FCG484E
# Create and Configure the core component CORECAN_C0
create_and_configure_core -core_vlnv {Microchip:DirectCore:CORECAN:2.0.100} -component_name {CORECAN_C0} -params {\
"RESET_TYPE:0"   }
# Exporting Component Description of CORECAN_C0 to TCL done
*/

// CORECAN_C0
module CORECAN_C0(
    // Inputs
    CAN_RX,
    PADDR,
    PCLK,
    PENABLE,
    PRESETN,
    PSEL,
    PWDATA,
    PWRITE,
    // Outputs
    CAN_TX,
    CAN_TX_EN_N,
    INT_N,
    PRDATA,
    PREADY
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CAN_RX;
input  [10:0] PADDR;
input         PCLK;
input         PENABLE;
input         PRESETN;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        CAN_TX;
output        CAN_TX_EN_N;
output        INT_N;
output [31:0] PRDATA;
output        PREADY;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [10:0] PADDR;
wire          PENABLE;
wire   [31:0] APB_PRDATA;
wire          APB_PREADY;
wire          PSEL;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          CAN_RX;
wire          CAN_TX_net_0;
wire          CAN_TX_EN_N_net_0;
wire          INT_N_net_0;
wire          PCLK;
wire          PRESETN;
wire          CAN_TX_net_1;
wire          CAN_TX_EN_N_net_1;
wire          INT_N_net_1;
wire          APB_PREADY_net_0;
wire   [31:0] APB_PRDATA_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CAN_TX_net_1      = CAN_TX_net_0;
assign CAN_TX            = CAN_TX_net_1;
assign CAN_TX_EN_N_net_1 = CAN_TX_EN_N_net_0;
assign CAN_TX_EN_N       = CAN_TX_EN_N_net_1;
assign INT_N_net_1       = INT_N_net_0;
assign INT_N             = INT_N_net_1;
assign APB_PREADY_net_0  = APB_PREADY;
assign PREADY            = APB_PREADY_net_0;
assign APB_PRDATA_net_0  = APB_PRDATA;
assign PRDATA[31:0]      = APB_PRDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORECAN   -   Microchip:DirectCore:CORECAN:2.0.100
CORECAN #( 
        .RESET_TYPE ( 0 ) )
CORECAN_C0_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .PSEL        ( PSEL ),
        .PENABLE     ( PENABLE ),
        .PWRITE      ( PWRITE ),
        .CAN_RX      ( CAN_RX ),
        .PADDR       ( PADDR ),
        .PWDATA      ( PWDATA ),
        // Outputs
        .PREADY      ( APB_PREADY ),
        .CAN_TX      ( CAN_TX_net_0 ),
        .CAN_TX_EN_N ( CAN_TX_EN_N_net_0 ),
        .INT_N       ( INT_N_net_0 ),
        .PRDATA      ( APB_PRDATA ) 
        );


endmodule

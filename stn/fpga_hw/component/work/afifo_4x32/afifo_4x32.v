//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Aug 16 13:18:39 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of afifo_4x32 to TCL
# Family: PolarFire
# Part Number: MPF050T-FCVG484E
# Create and Configure the core component afifo_4x32
create_and_configure_core -core_vlnv {Actel:DirectCore:COREFIFO:3.1.101} -component_name {afifo_4x32} -params {\
"AE_STATIC_EN:true"  \
"AEVAL:7"  \
"AF_STATIC_EN:false"  \
"AFVAL:1020"  \
"CTRL_TYPE:1"  \
"DIE_SIZE:25"  \
"ECC:0"  \
"ESTOP:true"  \
"FSTOP:true"  \
"FWFT:false"  \
"NUM_STAGES:2"  \
"OVERFLOW_EN:false"  \
"PIPE:2"  \
"PREFETCH:false"  \
"RAM_OPT:0"  \
"RDCNT_EN:false"  \
"RDEPTH:32"  \
"RE_POLARITY:0"  \
"READ_DVALID:true"  \
"RWIDTH:4"  \
"SYNC:0"  \
"SYNC_RESET:0"  \
"UNDERFLOW_EN:false"  \
"WDEPTH:32"  \
"WE_POLARITY:0"  \
"WRCNT_EN:false"  \
"WRITE_ACK:false"  \
"WWIDTH:4"   }
# Exporting Component Description of afifo_4x32 to TCL done
*/

// afifo_4x32
module afifo_4x32(
    // Inputs
    DATA,
    RCLOCK,
    RE,
    RRESET_N,
    WCLOCK,
    WE,
    WRESET_N,
    // Outputs
    AEMPTY,
    DVLD,
    EMPTY,
    FULL,
    MEMRADDR,
    MEMRE,
    MEMWADDR,
    MEMWE,
    Q
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [3:0] DATA;
input        RCLOCK;
input        RE;
input        RRESET_N;
input        WCLOCK;
input        WE;
input        WRESET_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       AEMPTY;
output       DVLD;
output       EMPTY;
output       FULL;
output [4:0] MEMRADDR;
output       MEMRE;
output [4:0] MEMWADDR;
output       MEMWE;
output [3:0] Q;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         AEMPTY_net_0;
wire   [3:0] DATA;
wire         DVLD_net_0;
wire         EMPTY_net_0;
wire         FULL_net_0;
wire   [4:0] MEMRADDR_net_0;
wire         MEMRE_net_0;
wire   [4:0] MEMWADDR_net_0;
wire         MEMWE_net_0;
wire   [3:0] Q_net_0;
wire         RCLOCK;
wire         RE;
wire         RRESET_N;
wire         WCLOCK;
wire         WE;
wire         WRESET_N;
wire         FULL_net_1;
wire         EMPTY_net_1;
wire         AEMPTY_net_1;
wire         DVLD_net_1;
wire         MEMWE_net_1;
wire         MEMRE_net_1;
wire   [3:0] Q_net_1;
wire   [4:0] MEMWADDR_net_1;
wire   [4:0] MEMRADDR_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire   [3:0] MEMRD_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net           = 1'b0;
assign MEMRD_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FULL_net_1     = FULL_net_0;
assign FULL           = FULL_net_1;
assign EMPTY_net_1    = EMPTY_net_0;
assign EMPTY          = EMPTY_net_1;
assign AEMPTY_net_1   = AEMPTY_net_0;
assign AEMPTY         = AEMPTY_net_1;
assign DVLD_net_1     = DVLD_net_0;
assign DVLD           = DVLD_net_1;
assign MEMWE_net_1    = MEMWE_net_0;
assign MEMWE          = MEMWE_net_1;
assign MEMRE_net_1    = MEMRE_net_0;
assign MEMRE          = MEMRE_net_1;
assign Q_net_1        = Q_net_0;
assign Q[3:0]         = Q_net_1;
assign MEMWADDR_net_1 = MEMWADDR_net_0;
assign MEMWADDR[4:0]  = MEMWADDR_net_1;
assign MEMRADDR_net_1 = MEMRADDR_net_0;
assign MEMRADDR[4:0]  = MEMRADDR_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------afifo_4x32_afifo_4x32_0_COREFIFO   -   Actel:DirectCore:COREFIFO:3.1.101
afifo_4x32_afifo_4x32_0_COREFIFO #( 
        .AE_STATIC_EN ( 1 ),
        .AEVAL        ( 7 ),
        .AF_STATIC_EN ( 0 ),
        .AFVAL        ( 1020 ),
        .CTRL_TYPE    ( 1 ),
        .DIE_SIZE     ( 25 ),
        .ECC          ( 0 ),
        .ESTOP        ( 1 ),
        .FAMILY       ( 26 ),
        .FSTOP        ( 1 ),
        .FWFT         ( 0 ),
        .NUM_STAGES   ( 2 ),
        .OVERFLOW_EN  ( 0 ),
        .PIPE         ( 2 ),
        .PREFETCH     ( 0 ),
        .RAM_OPT      ( 0 ),
        .RDCNT_EN     ( 0 ),
        .RDEPTH       ( 32 ),
        .RE_POLARITY  ( 0 ),
        .READ_DVALID  ( 1 ),
        .RWIDTH       ( 4 ),
        .SYNC         ( 0 ),
        .SYNC_RESET   ( 0 ),
        .UNDERFLOW_EN ( 0 ),
        .WDEPTH       ( 32 ),
        .WE_POLARITY  ( 0 ),
        .WRCNT_EN     ( 0 ),
        .WRITE_ACK    ( 0 ),
        .WWIDTH       ( 4 ) )
afifo_4x32_0(
        // Inputs
        .CLK        ( GND_net ), // tied to 1'b0 from definition
        .WCLOCK     ( WCLOCK ),
        .RCLOCK     ( RCLOCK ),
        .RESET_N    ( GND_net ), // tied to 1'b0 from definition
        .WRESET_N   ( WRESET_N ),
        .RRESET_N   ( RRESET_N ),
        .WE         ( WE ),
        .RE         ( RE ),
        .DATA       ( DATA ),
        .MEMRD      ( MEMRD_const_net_0 ), // tied to 4'h0 from definition
        // Outputs
        .FULL       ( FULL_net_0 ),
        .EMPTY      ( EMPTY_net_0 ),
        .AFULL      (  ),
        .AEMPTY     ( AEMPTY_net_0 ),
        .OVERFLOW   (  ),
        .UNDERFLOW  (  ),
        .WACK       (  ),
        .DVLD       ( DVLD_net_0 ),
        .MEMWE      ( MEMWE_net_0 ),
        .MEMRE      ( MEMRE_net_0 ),
        .SB_CORRECT (  ),
        .DB_DETECT  (  ),
        .Q          ( Q_net_0 ),
        .WRCNT      (  ),
        .RDCNT      (  ),
        .MEMWADDR   ( MEMWADDR_net_0 ),
        .MEMRADDR   ( MEMRADDR_net_0 ),
        .MEMWD      (  ) 
        );


endmodule

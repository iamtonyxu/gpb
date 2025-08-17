///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil circuit, Inc.
//
// File: CAN_IF.v
//
// Description: 
//
// CAN Interface Controller
//
// This module provides a CAN (Controller Area Network) interface wrapper for the OPB bus.
// It handles CAN frame transmission and reception for multiple CAN channels, providing
// register-based access to CAN functionality including frame data, control, status,
// and error counting.
//
// Features:
// - 4 CAN channel support (CAN1-4)
// - OPB bus interface for register access
// - Transmit and receive frame handling
// - Error counting and status reporting
//
//
// Targeted device: <Family> <Die> <Package>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 100ps

module CAN_IF (
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input       [31:0]  OPB_DI,
    input       [15:0]  OPB_ADDR,
    output      [31:0]  CAN1_DO,
    output      [31:0]  CAN2_DO,
    output      [31:0]  CAN3_DO,
    output      [31:0]  CAN4_DO,

    // GPIO RE/WE Signals
    input               CAN1_RE,
    input               CAN1_WE,
    input               CAN2_RE,
    input               CAN2_WE,
    input               CAN3_RE,
    input               CAN3_WE,
    input               CAN4_RE,
    input               CAN4_WE,

    // CAN Interface
    output              CAN_TX1,    // CAN BUS, J3, CAN
    output              CAN_TX2,    // CAN BUS, J9, CAND
    output              CAN_TX3,    // CAN BUS, J29/30, CAN_LOC
    output              CAN_TX4,    // CAN BUS, J25, CAN_PEND
    input               CAN_RX1,    // CAN BUS, J3, CAN
    input               CAN_RX2,    // CAN BUS, J9, CAND
    input               CAN_RX3,    // CAN BUS, J29/30, CAN_LOC
    input               CAN_RX4     // CAN BUS, J25, CAN_PEND
);

// CAN1 Interface Instance
CORECAN_wrapper CAN1_inst (
    // OPB Interface
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_ADDR(OPB_ADDR[15:0]),
    .OPB_DI(OPB_DI),
    .OPB_DO(CAN1_DO),
    .OPB_WE(CAN1_WE),
    .OPB_RE(CAN1_RE),

    // CAN Interface
    .CAN_TX_EN_N(),
    .CAN_TX(CAN_TX1),
    .CAN_RX(CAN_RX1)
);

// CAN2 Interface Instance
CORECAN_wrapper CAN2_inst (
    // OPB Interface
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_ADDR(OPB_ADDR[15:0]),
    .OPB_DI(OPB_DI),
    .OPB_DO(CAN2_DO),
    .OPB_WE(CAN2_WE),
    .OPB_RE(CAN2_RE),

    // CAN Interface
    .CAN_TX_EN_N(),
    .CAN_TX(CAN_TX2),
    .CAN_RX(CAN_RX2)
);

// CAN3 Interface Instance
CORECAN_wrapper CAN3_inst (
    // OPB Interface
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_ADDR(OPB_ADDR[15:0]),
    .OPB_DI(OPB_DI),
    .OPB_DO(CAN3_DO),
    .OPB_WE(CAN3_WE),
    .OPB_RE(CAN3_RE),

    // CAN Interface
    .CAN_TX_EN_N(),
    .CAN_TX(CAN_TX3),
    .CAN_RX(CAN_RX3)
);

// CAN4 Interface Instance
CORECAN_wrapper CAN4_inst (
    // OPB Interface
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_ADDR(OPB_ADDR[15:0]),
    .OPB_DI(OPB_DI),
    .OPB_DO(CAN4_DO),
    .OPB_WE(CAN4_WE),
    .OPB_RE(CAN4_RE),

    // CAN Interface
    .CAN_TX_EN_N(),
    .CAN_TX(CAN_TX4),
    .CAN_RX(CAN_RX4)
);

endmodule

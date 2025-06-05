//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon May 26 12:19:30 2025
//Host        : vinaynagula running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (INIT_AXI_RXN_0,
    INIT_AXI_TXN_0,
    INPUT_WADDR_0,
    INPUT_WDATA_0,
    MSG_LENGTH_RD_0,
    MSG_LENGTH_WR_0,
    M_AXI_ACLK_0,
    M_AXI_ARESETN_0,
    PORT_ID_RD_0,
    PORT_ID_WR_0,
    READ_ADDR_0,
    mtclk_0,
    tx_0);
  input INIT_AXI_RXN_0;
  input INIT_AXI_TXN_0;
  input [31:0]INPUT_WADDR_0;
  input [31:0]INPUT_WDATA_0;
  input [31:0]MSG_LENGTH_RD_0;
  input [31:0]MSG_LENGTH_WR_0;
  input M_AXI_ACLK_0;
  input M_AXI_ARESETN_0;
  input [7:0]PORT_ID_RD_0;
  input [7:0]PORT_ID_WR_0;
  input [31:0]READ_ADDR_0;
  input mtclk_0;
  input tx_0;

  wire INIT_AXI_RXN_0;
  wire INIT_AXI_TXN_0;
  wire [31:0]INPUT_WADDR_0;
  wire [31:0]INPUT_WDATA_0;
  wire [31:0]MSG_LENGTH_RD_0;
  wire [31:0]MSG_LENGTH_WR_0;
  wire M_AXI_ACLK_0;
  wire M_AXI_ARESETN_0;
  wire [7:0]PORT_ID_RD_0;
  wire [7:0]PORT_ID_WR_0;
  wire [31:0]READ_ADDR_0;
  wire mtclk_0;
  wire tx_0;

  design_1 design_1_i
       (.INIT_AXI_RXN_0(INIT_AXI_RXN_0),
        .INIT_AXI_TXN_0(INIT_AXI_TXN_0),
        .INPUT_WADDR_0(INPUT_WADDR_0),
        .INPUT_WDATA_0(INPUT_WDATA_0),
        .MSG_LENGTH_RD_0(MSG_LENGTH_RD_0),
        .MSG_LENGTH_WR_0(MSG_LENGTH_WR_0),
        .M_AXI_ACLK_0(M_AXI_ACLK_0),
        .M_AXI_ARESETN_0(M_AXI_ARESETN_0),
        .PORT_ID_RD_0(PORT_ID_RD_0),
        .PORT_ID_WR_0(PORT_ID_WR_0),
        .READ_ADDR_0(READ_ADDR_0),
        .mtclk_0(mtclk_0),
        .tx_0(tx_0));
endmodule

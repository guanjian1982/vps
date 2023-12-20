// Unpublished work. Copyright 2022 Siemens                         
// This material contains trade secrets or otherwise                
// confidential information owned by Siemens Industry Software Inc. 
// or its affiliates (collectively, "SISW"), or its licensors.      
// Access to and use of this information is strictly limited as     
// set forth in the Customer's applicable agreements with SISW.     
// This file was generated by profpga_brdgen version 14.0 
//   on Fri Dec 15 16:10:02 2023 

`ifndef PD_MUXDEMUX_PARAM_VH
`define PD_MUXDEMUX_PARAM_VH

`include "pd_muxdemux.vh"

// pd_muxdemux parameters which are common to all FPGA technologies
`define PD_MUXDEMUX_MUX_TYPE `PD_MUXDEMUX_MUX_TYPE_ASYNCMUXSYSSYNCCLK
`define PD_MUXDEMUX_SIM_MODE `PD_MUXDEMUX_SIM_MODE_PRODUCTION
`define PD_MUXDEMUX_MUX_FACTOR 8
`define PD_MUXDEMUX_WORD_COUNT 2
`define PD_MUXDEMUX_MIN_DATARATE_MBIT 600000000
`define PD_MUXDEMUX_MAX_DATARATE_MBIT 800000000
`define PD_MUXDEMUX_MIN_CLK_BASE_FREQUENCY_HZ 75000000
`define PD_MUXDEMUX_MAX_CLK_BASE_FREQUENCY_HZ 100000000
`define PD_MUXDEMUX_MIN_CLK_BASE_PERIOD_NS 13.334
`define PD_MUXDEMUX_MAX_CLK_BASE_PERIOD_NS 10.000

// dbst parameters
`define DBST_REVERSE_DIRECTION 0
`define DBST_IOSTANDARD 'h01 // SSTL18_I_DCI

// pd_muxdemux parameters which are dedicated to the FPGA module
//   MB_1.FA2
`define PD_MUXDEMUX_FPGA_TYPE "XCVU19P"
`define PD_MUXDEMUX_FPGA_SPEED_GRADE 2
`define PD_MUXDEMUX_FPGA_TECHNOLOGY `PD_MUXDEMUX_FPGA_TECHNOLOGY_XVUSP
`define PD_MUXDEMUX_SIM_DEVICE "ULTRASCALE_PLUS"

`define PD_MUXDEMUX_SERDES_MODE "DDR"
`define PD_MUXDEMUX_SERDES_MODE_BIT 1'b1
`define PD_MUXDEMUX_SERDES_FACTOR 4
`define PD_MUXDEMUX_SERDES_FACTOR_AS_STRING "4"
`define PD_MUXDEMUX_SERDES_FACTOR_DIV2_AS_STRING "2"
`define PD_MUXDEMUX_PLL_M 16
`define PD_MUXDEMUX_PLL_D0 16
`define PD_MUXDEMUX_PLL_D1 4
`define PD_MUXDEMUX_PLL_D2 8
`define PD_MUXDEMUX_PLL_D3 16
`define PD_MUXDEMUX_ENABLE_DCIRESET 1

`endif

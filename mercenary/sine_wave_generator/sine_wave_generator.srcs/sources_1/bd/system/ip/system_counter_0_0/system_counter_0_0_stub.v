// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Jun 24 17:27:40 2019
// Host        : wrg-900X5N running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wrg/tmp/sine_wave_generator/sine_wave_generator.srcs/sources_1/bd/system/ip/system_counter_0_0/system_counter_0_0_stub.v
// Design      : system_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "counter,Vivado 2018.2" *)
module system_counter_0_0(clk, rst, en, data, tc)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,data[8:0],tc" */;
  input clk;
  input rst;
  input en;
  output [8:0]data;
  output tc;
endmodule

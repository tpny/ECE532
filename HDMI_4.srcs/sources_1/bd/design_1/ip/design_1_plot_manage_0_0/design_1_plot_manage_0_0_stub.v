// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Mar 30 14:36:44 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_plot_manage_0_0 -prefix
//               design_1_plot_manage_0_0_ design_1_plot_manage_0_0_stub.v
// Design      : design_1_plot_manage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "plot_manage,Vivado 2018.1" *)
module design_1_plot_manage_0_0(clk, resetn, tank_req_0, tank_x_0, tank_y_0, 
  tank_grant_0, tank_frame_addr_0, tank_req_1, tank_x_1, tank_y_1, tank_grant_1, 
  tank_frame_addr_1, shell_req_0, shell_x_0, shell_y_0, shell_grant_0, shell_frame_addr_0, 
  shell_req_1, shell_x_1, shell_y_1, shell_grant_1, shell_frame_addr_1, wall_req, wall_x, wall_y, 
  wall_frame_addr, wall_grant, frame_addr, frame_buffer, x, y, plot_start, plot_done)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,tank_req_0,tank_x_0[10:0],tank_y_0[10:0],tank_grant_0,tank_frame_addr_0[31:0],tank_req_1,tank_x_1[10:0],tank_y_1[10:0],tank_grant_1,tank_frame_addr_1[31:0],shell_req_0,shell_x_0[10:0],shell_y_0[10:0],shell_grant_0,shell_frame_addr_0[31:0],shell_req_1,shell_x_1[10:0],shell_y_1[10:0],shell_grant_1,shell_frame_addr_1[31:0],wall_req,wall_x[10:0],wall_y[10:0],wall_frame_addr[31:0],wall_grant,frame_addr[31:0],frame_buffer[0:0],x[10:0],y[10:0],plot_start,plot_done" */;
  input clk;
  input resetn;
  input tank_req_0;
  input [10:0]tank_x_0;
  input [10:0]tank_y_0;
  output tank_grant_0;
  input [31:0]tank_frame_addr_0;
  input tank_req_1;
  input [10:0]tank_x_1;
  input [10:0]tank_y_1;
  output tank_grant_1;
  input [31:0]tank_frame_addr_1;
  input shell_req_0;
  input [10:0]shell_x_0;
  input [10:0]shell_y_0;
  output shell_grant_0;
  input [31:0]shell_frame_addr_0;
  input shell_req_1;
  input [10:0]shell_x_1;
  input [10:0]shell_y_1;
  output shell_grant_1;
  input [31:0]shell_frame_addr_1;
  input wall_req;
  input [10:0]wall_x;
  input [10:0]wall_y;
  input [31:0]wall_frame_addr;
  output wall_grant;
  output [31:0]frame_addr;
  output [0:0]frame_buffer;
  output [10:0]x;
  output [10:0]y;
  output plot_start;
  input plot_done;
endmodule

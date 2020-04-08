// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr  3 19:47:13 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_CMDA_controller_0_0/design_1_CMDA_controller_0_0_stub.v
// Design      : design_1_CMDA_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CMDA_controller_v1_0,Vivado 2018.1" *)
module design_1_CMDA_controller_0_0(img_addr, frame_buffer_location, y_location, 
  x_location, start, done, delay_per_line, axi_lite_awaddr, axi_lite_awprot, axi_lite_awvalid, 
  axi_lite_awready, axi_lite_wdata, axi_lite_wstrb, axi_lite_wvalid, axi_lite_wready, 
  axi_lite_bresp, axi_lite_bvalid, axi_lite_bready, axi_lite_araddr, axi_lite_arprot, 
  axi_lite_arvalid, axi_lite_arready, axi_lite_rdata, axi_lite_rresp, axi_lite_rvalid, 
  axi_lite_rready, axi_lite_aclk, axi_lite_aresetn, axi_lite_error, axi_lite_txn_done)
/* synthesis syn_black_box black_box_pad_pin="img_addr[31:0],frame_buffer_location[31:0],y_location[10:0],x_location[10:0],start,done,delay_per_line[31:0],axi_lite_awaddr[31:0],axi_lite_awprot[2:0],axi_lite_awvalid,axi_lite_awready,axi_lite_wdata[31:0],axi_lite_wstrb[3:0],axi_lite_wvalid,axi_lite_wready,axi_lite_bresp[1:0],axi_lite_bvalid,axi_lite_bready,axi_lite_araddr[31:0],axi_lite_arprot[2:0],axi_lite_arvalid,axi_lite_arready,axi_lite_rdata[31:0],axi_lite_rresp[1:0],axi_lite_rvalid,axi_lite_rready,axi_lite_aclk,axi_lite_aresetn,axi_lite_error,axi_lite_txn_done" */;
  input [31:0]img_addr;
  input [31:0]frame_buffer_location;
  input [10:0]y_location;
  input [10:0]x_location;
  input start;
  output done;
  input [31:0]delay_per_line;
  output [31:0]axi_lite_awaddr;
  output [2:0]axi_lite_awprot;
  output axi_lite_awvalid;
  input axi_lite_awready;
  output [31:0]axi_lite_wdata;
  output [3:0]axi_lite_wstrb;
  output axi_lite_wvalid;
  input axi_lite_wready;
  input [1:0]axi_lite_bresp;
  input axi_lite_bvalid;
  output axi_lite_bready;
  output [31:0]axi_lite_araddr;
  output [2:0]axi_lite_arprot;
  output axi_lite_arvalid;
  input axi_lite_arready;
  input [31:0]axi_lite_rdata;
  input [1:0]axi_lite_rresp;
  input axi_lite_rvalid;
  output axi_lite_rready;
  input axi_lite_aclk;
  input axi_lite_aresetn;
  output axi_lite_error;
  output axi_lite_txn_done;
endmodule

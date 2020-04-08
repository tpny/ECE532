// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr  3 19:55:33 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/design_1_smartconnect_0_0_stub.v
// Design      : design_1_smartconnect_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_48ac,Vivado 2018.1" *)
module design_1_smartconnect_0_0(aclk, aclk1, aresetn, S00_AXI_awaddr, 
  S00_AXI_awprot, S00_AXI_awvalid, S00_AXI_awready, S00_AXI_wdata, S00_AXI_wstrb, 
  S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, S00_AXI_bvalid, S00_AXI_bready, 
  S00_AXI_araddr, S00_AXI_arprot, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, 
  S00_AXI_rresp, S00_AXI_rvalid, S00_AXI_rready, S01_AXI_araddr, S01_AXI_arprot, 
  S01_AXI_arvalid, S01_AXI_arready, S01_AXI_rdata, S01_AXI_rresp, S01_AXI_rvalid, 
  S01_AXI_rready, M00_AXI_awaddr, M00_AXI_awprot, M00_AXI_awvalid, M00_AXI_awready, 
  M00_AXI_wdata, M00_AXI_wstrb, M00_AXI_wvalid, M00_AXI_wready, M00_AXI_bresp, 
  M00_AXI_bvalid, M00_AXI_bready, M00_AXI_araddr, M00_AXI_arprot, M00_AXI_arvalid, 
  M00_AXI_arready, M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rvalid, M00_AXI_rready, 
  M01_AXI_awaddr, M01_AXI_awprot, M01_AXI_awvalid, M01_AXI_awready, M01_AXI_wdata, 
  M01_AXI_wstrb, M01_AXI_wvalid, M01_AXI_wready, M01_AXI_bresp, M01_AXI_bvalid, 
  M01_AXI_bready, M01_AXI_araddr, M01_AXI_arprot, M01_AXI_arvalid, M01_AXI_arready, 
  M01_AXI_rdata, M01_AXI_rresp, M01_AXI_rvalid, M01_AXI_rready, M02_AXI_awaddr, 
  M02_AXI_awprot, M02_AXI_awvalid, M02_AXI_awready, M02_AXI_wdata, M02_AXI_wstrb, 
  M02_AXI_wvalid, M02_AXI_wready, M02_AXI_bresp, M02_AXI_bvalid, M02_AXI_bready, 
  M02_AXI_araddr, M02_AXI_arprot, M02_AXI_arvalid, M02_AXI_arready, M02_AXI_rdata, 
  M02_AXI_rresp, M02_AXI_rvalid, M02_AXI_rready, M03_AXI_awaddr, M03_AXI_awprot, 
  M03_AXI_awvalid, M03_AXI_awready, M03_AXI_wdata, M03_AXI_wstrb, M03_AXI_wvalid, 
  M03_AXI_wready, M03_AXI_bresp, M03_AXI_bvalid, M03_AXI_bready, M03_AXI_araddr, 
  M03_AXI_arprot, M03_AXI_arvalid, M03_AXI_arready, M03_AXI_rdata, M03_AXI_rresp, 
  M03_AXI_rvalid, M03_AXI_rready, M04_AXI_awid, M04_AXI_awaddr, M04_AXI_awlen, 
  M04_AXI_awsize, M04_AXI_awburst, M04_AXI_awlock, M04_AXI_awcache, M04_AXI_awprot, 
  M04_AXI_awqos, M04_AXI_awuser, M04_AXI_awvalid, M04_AXI_awready, M04_AXI_wdata, 
  M04_AXI_wstrb, M04_AXI_wlast, M04_AXI_wuser, M04_AXI_wvalid, M04_AXI_wready, M04_AXI_bid, 
  M04_AXI_bresp, M04_AXI_buser, M04_AXI_bvalid, M04_AXI_bready, M04_AXI_arid, M04_AXI_araddr, 
  M04_AXI_arlen, M04_AXI_arsize, M04_AXI_arburst, M04_AXI_arlock, M04_AXI_arcache, 
  M04_AXI_arprot, M04_AXI_arqos, M04_AXI_aruser, M04_AXI_arvalid, M04_AXI_arready, 
  M04_AXI_rid, M04_AXI_rdata, M04_AXI_rresp, M04_AXI_rlast, M04_AXI_ruser, M04_AXI_rvalid, 
  M04_AXI_rready, M05_AXI_awaddr, M05_AXI_awprot, M05_AXI_awvalid, M05_AXI_awready, 
  M05_AXI_wdata, M05_AXI_wstrb, M05_AXI_wvalid, M05_AXI_wready, M05_AXI_bresp, 
  M05_AXI_bvalid, M05_AXI_bready, M05_AXI_araddr, M05_AXI_arprot, M05_AXI_arvalid, 
  M05_AXI_arready, M05_AXI_rdata, M05_AXI_rresp, M05_AXI_rvalid, M05_AXI_rready, 
  M06_AXI_awaddr, M06_AXI_awprot, M06_AXI_awvalid, M06_AXI_awready, M06_AXI_wdata, 
  M06_AXI_wstrb, M06_AXI_wvalid, M06_AXI_wready, M06_AXI_bresp, M06_AXI_bvalid, 
  M06_AXI_bready, M06_AXI_araddr, M06_AXI_arprot, M06_AXI_arvalid, M06_AXI_arready, 
  M06_AXI_rdata, M06_AXI_rresp, M06_AXI_rvalid, M06_AXI_rready, M07_AXI_awaddr, 
  M07_AXI_awprot, M07_AXI_awvalid, M07_AXI_awready, M07_AXI_wdata, M07_AXI_wstrb, 
  M07_AXI_wvalid, M07_AXI_wready, M07_AXI_bresp, M07_AXI_bvalid, M07_AXI_bready, 
  M07_AXI_araddr, M07_AXI_arprot, M07_AXI_arvalid, M07_AXI_arready, M07_AXI_rdata, 
  M07_AXI_rresp, M07_AXI_rvalid, M07_AXI_rready, M08_AXI_awaddr, M08_AXI_awprot, 
  M08_AXI_awvalid, M08_AXI_awready, M08_AXI_wdata, M08_AXI_wstrb, M08_AXI_wvalid, 
  M08_AXI_wready, M08_AXI_bresp, M08_AXI_bvalid, M08_AXI_bready, M08_AXI_araddr, 
  M08_AXI_arprot, M08_AXI_arvalid, M08_AXI_arready, M08_AXI_rdata, M08_AXI_rresp, 
  M08_AXI_rvalid, M08_AXI_rready, M09_AXI_awaddr, M09_AXI_awprot, M09_AXI_awvalid, 
  M09_AXI_awready, M09_AXI_wdata, M09_AXI_wstrb, M09_AXI_wvalid, M09_AXI_wready, 
  M09_AXI_bresp, M09_AXI_bvalid, M09_AXI_bready, M09_AXI_araddr, M09_AXI_arprot, 
  M09_AXI_arvalid, M09_AXI_arready, M09_AXI_rdata, M09_AXI_rresp, M09_AXI_rvalid, 
  M09_AXI_rready, M10_AXI_awaddr, M10_AXI_awprot, M10_AXI_awvalid, M10_AXI_awready, 
  M10_AXI_wdata, M10_AXI_wstrb, M10_AXI_wvalid, M10_AXI_wready, M10_AXI_bresp, 
  M10_AXI_bvalid, M10_AXI_bready, M10_AXI_araddr, M10_AXI_arprot, M10_AXI_arvalid, 
  M10_AXI_arready, M10_AXI_rdata, M10_AXI_rresp, M10_AXI_rvalid, M10_AXI_rready, 
  M11_AXI_awaddr, M11_AXI_awprot, M11_AXI_awvalid, M11_AXI_awready, M11_AXI_wdata, 
  M11_AXI_wstrb, M11_AXI_wvalid, M11_AXI_wready, M11_AXI_bresp, M11_AXI_bvalid, 
  M11_AXI_bready, M11_AXI_araddr, M11_AXI_arprot, M11_AXI_arvalid, M11_AXI_arready, 
  M11_AXI_rdata, M11_AXI_rresp, M11_AXI_rvalid, M11_AXI_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclk1,aresetn,S00_AXI_awaddr[31:0],S00_AXI_awprot[2:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[31:0],S00_AXI_wstrb[3:0],S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S00_AXI_araddr[31:0],S00_AXI_arprot[2:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata[31:0],S00_AXI_rresp[1:0],S00_AXI_rvalid,S00_AXI_rready,S01_AXI_araddr[31:0],S01_AXI_arprot[2:0],S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rdata[31:0],S01_AXI_rresp[1:0],S01_AXI_rvalid,S01_AXI_rready,M00_AXI_awaddr[3:0],M00_AXI_awprot[2:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[31:0],M00_AXI_wstrb[3:0],M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_araddr[3:0],M00_AXI_arprot[2:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata[31:0],M00_AXI_rresp[1:0],M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awaddr[8:0],M01_AXI_awprot[2:0],M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata[31:0],M01_AXI_wstrb[3:0],M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bresp[1:0],M01_AXI_bvalid,M01_AXI_bready,M01_AXI_araddr[8:0],M01_AXI_arprot[2:0],M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rdata[31:0],M01_AXI_rresp[1:0],M01_AXI_rvalid,M01_AXI_rready,M02_AXI_awaddr[8:0],M02_AXI_awprot[2:0],M02_AXI_awvalid,M02_AXI_awready,M02_AXI_wdata[31:0],M02_AXI_wstrb[3:0],M02_AXI_wvalid,M02_AXI_wready,M02_AXI_bresp[1:0],M02_AXI_bvalid,M02_AXI_bready,M02_AXI_araddr[8:0],M02_AXI_arprot[2:0],M02_AXI_arvalid,M02_AXI_arready,M02_AXI_rdata[31:0],M02_AXI_rresp[1:0],M02_AXI_rvalid,M02_AXI_rready,M03_AXI_awaddr[4:0],M03_AXI_awprot[2:0],M03_AXI_awvalid,M03_AXI_awready,M03_AXI_wdata[31:0],M03_AXI_wstrb[3:0],M03_AXI_wvalid,M03_AXI_wready,M03_AXI_bresp[1:0],M03_AXI_bvalid,M03_AXI_bready,M03_AXI_araddr[4:0],M03_AXI_arprot[2:0],M03_AXI_arvalid,M03_AXI_arready,M03_AXI_rdata[31:0],M03_AXI_rresp[1:0],M03_AXI_rvalid,M03_AXI_rready,M04_AXI_awid[3:0],M04_AXI_awaddr[31:0],M04_AXI_awlen[7:0],M04_AXI_awsize[2:0],M04_AXI_awburst[1:0],M04_AXI_awlock[0:0],M04_AXI_awcache[3:0],M04_AXI_awprot[2:0],M04_AXI_awqos[3:0],M04_AXI_awuser[113:0],M04_AXI_awvalid,M04_AXI_awready,M04_AXI_wdata[31:0],M04_AXI_wstrb[3:0],M04_AXI_wlast,M04_AXI_wuser[13:0],M04_AXI_wvalid,M04_AXI_wready,M04_AXI_bid[3:0],M04_AXI_bresp[1:0],M04_AXI_buser[113:0],M04_AXI_bvalid,M04_AXI_bready,M04_AXI_arid[3:0],M04_AXI_araddr[31:0],M04_AXI_arlen[7:0],M04_AXI_arsize[2:0],M04_AXI_arburst[1:0],M04_AXI_arlock[0:0],M04_AXI_arcache[3:0],M04_AXI_arprot[2:0],M04_AXI_arqos[3:0],M04_AXI_aruser[113:0],M04_AXI_arvalid,M04_AXI_arready,M04_AXI_rid[3:0],M04_AXI_rdata[31:0],M04_AXI_rresp[1:0],M04_AXI_rlast,M04_AXI_ruser[13:0],M04_AXI_rvalid,M04_AXI_rready,M05_AXI_awaddr[3:0],M05_AXI_awprot[2:0],M05_AXI_awvalid,M05_AXI_awready,M05_AXI_wdata[31:0],M05_AXI_wstrb[3:0],M05_AXI_wvalid,M05_AXI_wready,M05_AXI_bresp[1:0],M05_AXI_bvalid,M05_AXI_bready,M05_AXI_araddr[3:0],M05_AXI_arprot[2:0],M05_AXI_arvalid,M05_AXI_arready,M05_AXI_rdata[31:0],M05_AXI_rresp[1:0],M05_AXI_rvalid,M05_AXI_rready,M06_AXI_awaddr[8:0],M06_AXI_awprot[2:0],M06_AXI_awvalid,M06_AXI_awready,M06_AXI_wdata[31:0],M06_AXI_wstrb[3:0],M06_AXI_wvalid,M06_AXI_wready,M06_AXI_bresp[1:0],M06_AXI_bvalid,M06_AXI_bready,M06_AXI_araddr[8:0],M06_AXI_arprot[2:0],M06_AXI_arvalid,M06_AXI_arready,M06_AXI_rdata[31:0],M06_AXI_rresp[1:0],M06_AXI_rvalid,M06_AXI_rready,M07_AXI_awaddr[8:0],M07_AXI_awprot[2:0],M07_AXI_awvalid,M07_AXI_awready,M07_AXI_wdata[31:0],M07_AXI_wstrb[3:0],M07_AXI_wvalid,M07_AXI_wready,M07_AXI_bresp[1:0],M07_AXI_bvalid,M07_AXI_bready,M07_AXI_araddr[8:0],M07_AXI_arprot[2:0],M07_AXI_arvalid,M07_AXI_arready,M07_AXI_rdata[31:0],M07_AXI_rresp[1:0],M07_AXI_rvalid,M07_AXI_rready,M08_AXI_awaddr[5:0],M08_AXI_awprot[2:0],M08_AXI_awvalid,M08_AXI_awready,M08_AXI_wdata[31:0],M08_AXI_wstrb[3:0],M08_AXI_wvalid,M08_AXI_wready,M08_AXI_bresp[1:0],M08_AXI_bvalid,M08_AXI_bready,M08_AXI_araddr[5:0],M08_AXI_arprot[2:0],M08_AXI_arvalid,M08_AXI_arready,M08_AXI_rdata[31:0],M08_AXI_rresp[1:0],M08_AXI_rvalid,M08_AXI_rready,M09_AXI_awaddr[5:0],M09_AXI_awprot[2:0],M09_AXI_awvalid,M09_AXI_awready,M09_AXI_wdata[31:0],M09_AXI_wstrb[3:0],M09_AXI_wvalid,M09_AXI_wready,M09_AXI_bresp[1:0],M09_AXI_bvalid,M09_AXI_bready,M09_AXI_araddr[5:0],M09_AXI_arprot[2:0],M09_AXI_arvalid,M09_AXI_arready,M09_AXI_rdata[31:0],M09_AXI_rresp[1:0],M09_AXI_rvalid,M09_AXI_rready,M10_AXI_awaddr[4:0],M10_AXI_awprot[2:0],M10_AXI_awvalid,M10_AXI_awready,M10_AXI_wdata[31:0],M10_AXI_wstrb[3:0],M10_AXI_wvalid,M10_AXI_wready,M10_AXI_bresp[1:0],M10_AXI_bvalid,M10_AXI_bready,M10_AXI_araddr[4:0],M10_AXI_arprot[2:0],M10_AXI_arvalid,M10_AXI_arready,M10_AXI_rdata[31:0],M10_AXI_rresp[1:0],M10_AXI_rvalid,M10_AXI_rready,M11_AXI_awaddr[8:0],M11_AXI_awprot[2:0],M11_AXI_awvalid,M11_AXI_awready,M11_AXI_wdata[31:0],M11_AXI_wstrb[3:0],M11_AXI_wvalid,M11_AXI_wready,M11_AXI_bresp[1:0],M11_AXI_bvalid,M11_AXI_bready,M11_AXI_araddr[8:0],M11_AXI_arprot[2:0],M11_AXI_arvalid,M11_AXI_arready,M11_AXI_rdata[31:0],M11_AXI_rresp[1:0],M11_AXI_rvalid,M11_AXI_rready" */;
  input aclk;
  input aclk1;
  input aresetn;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [31:0]S01_AXI_araddr;
  input [2:0]S01_AXI_arprot;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  output [3:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [3:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [8:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [8:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  output [8:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  output M02_AXI_awvalid;
  input M02_AXI_awready;
  output [31:0]M02_AXI_wdata;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M02_AXI_wready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  output M02_AXI_bready;
  output [8:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  output M02_AXI_arvalid;
  input M02_AXI_arready;
  input [31:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output M02_AXI_rready;
  output [4:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  output M03_AXI_awvalid;
  input M03_AXI_awready;
  output [31:0]M03_AXI_wdata;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M03_AXI_wready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  output M03_AXI_bready;
  output [4:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  output M03_AXI_arvalid;
  input M03_AXI_arready;
  input [31:0]M03_AXI_rdata;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output M03_AXI_rready;
  output [3:0]M04_AXI_awid;
  output [31:0]M04_AXI_awaddr;
  output [7:0]M04_AXI_awlen;
  output [2:0]M04_AXI_awsize;
  output [1:0]M04_AXI_awburst;
  output [0:0]M04_AXI_awlock;
  output [3:0]M04_AXI_awcache;
  output [2:0]M04_AXI_awprot;
  output [3:0]M04_AXI_awqos;
  output [113:0]M04_AXI_awuser;
  output M04_AXI_awvalid;
  input M04_AXI_awready;
  output [31:0]M04_AXI_wdata;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wlast;
  output [13:0]M04_AXI_wuser;
  output M04_AXI_wvalid;
  input M04_AXI_wready;
  input [3:0]M04_AXI_bid;
  input [1:0]M04_AXI_bresp;
  input [113:0]M04_AXI_buser;
  input M04_AXI_bvalid;
  output M04_AXI_bready;
  output [3:0]M04_AXI_arid;
  output [31:0]M04_AXI_araddr;
  output [7:0]M04_AXI_arlen;
  output [2:0]M04_AXI_arsize;
  output [1:0]M04_AXI_arburst;
  output [0:0]M04_AXI_arlock;
  output [3:0]M04_AXI_arcache;
  output [2:0]M04_AXI_arprot;
  output [3:0]M04_AXI_arqos;
  output [113:0]M04_AXI_aruser;
  output M04_AXI_arvalid;
  input M04_AXI_arready;
  input [3:0]M04_AXI_rid;
  input [31:0]M04_AXI_rdata;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rlast;
  input [13:0]M04_AXI_ruser;
  input M04_AXI_rvalid;
  output M04_AXI_rready;
  output [3:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  output M05_AXI_awvalid;
  input M05_AXI_awready;
  output [31:0]M05_AXI_wdata;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M05_AXI_wready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  output M05_AXI_bready;
  output [3:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  output M05_AXI_arvalid;
  input M05_AXI_arready;
  input [31:0]M05_AXI_rdata;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output M05_AXI_rready;
  output [8:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  output M06_AXI_awvalid;
  input M06_AXI_awready;
  output [31:0]M06_AXI_wdata;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M06_AXI_wready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  output M06_AXI_bready;
  output [8:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  output M06_AXI_arvalid;
  input M06_AXI_arready;
  input [31:0]M06_AXI_rdata;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output M06_AXI_rready;
  output [8:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  output M07_AXI_awvalid;
  input M07_AXI_awready;
  output [31:0]M07_AXI_wdata;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M07_AXI_wready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  output M07_AXI_bready;
  output [8:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  output M07_AXI_arvalid;
  input M07_AXI_arready;
  input [31:0]M07_AXI_rdata;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output M07_AXI_rready;
  output [5:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  output M08_AXI_awvalid;
  input M08_AXI_awready;
  output [31:0]M08_AXI_wdata;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M08_AXI_wready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  output M08_AXI_bready;
  output [5:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  output M08_AXI_arvalid;
  input M08_AXI_arready;
  input [31:0]M08_AXI_rdata;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output M08_AXI_rready;
  output [5:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  output M09_AXI_awvalid;
  input M09_AXI_awready;
  output [31:0]M09_AXI_wdata;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M09_AXI_wready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  output M09_AXI_bready;
  output [5:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  output M09_AXI_arvalid;
  input M09_AXI_arready;
  input [31:0]M09_AXI_rdata;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output M09_AXI_rready;
  output [4:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  output M10_AXI_awvalid;
  input M10_AXI_awready;
  output [31:0]M10_AXI_wdata;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M10_AXI_wready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  output M10_AXI_bready;
  output [4:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  output M10_AXI_arvalid;
  input M10_AXI_arready;
  input [31:0]M10_AXI_rdata;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output M10_AXI_rready;
  output [8:0]M11_AXI_awaddr;
  output [2:0]M11_AXI_awprot;
  output M11_AXI_awvalid;
  input M11_AXI_awready;
  output [31:0]M11_AXI_wdata;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M11_AXI_wready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  output M11_AXI_bready;
  output [8:0]M11_AXI_araddr;
  output [2:0]M11_AXI_arprot;
  output M11_AXI_arvalid;
  input M11_AXI_arready;
  input [31:0]M11_AXI_rdata;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output M11_AXI_rready;
endmodule

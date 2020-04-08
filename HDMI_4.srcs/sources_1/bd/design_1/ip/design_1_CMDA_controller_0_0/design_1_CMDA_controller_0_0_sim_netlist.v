// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr  3 19:47:13 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_CMDA_controller_0_0/design_1_CMDA_controller_0_0_sim_netlist.v
// Design      : design_1_CMDA_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CMDA_controller_0_0,CMDA_controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "CMDA_controller_v1_0,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_CMDA_controller_0_0
   (img_addr,
    frame_buffer_location,
    y_location,
    x_location,
    start,
    done,
    delay_per_line,
    axi_lite_awaddr,
    axi_lite_awprot,
    axi_lite_awvalid,
    axi_lite_awready,
    axi_lite_wdata,
    axi_lite_wstrb,
    axi_lite_wvalid,
    axi_lite_wready,
    axi_lite_bresp,
    axi_lite_bvalid,
    axi_lite_bready,
    axi_lite_araddr,
    axi_lite_arprot,
    axi_lite_arvalid,
    axi_lite_arready,
    axi_lite_rdata,
    axi_lite_rresp,
    axi_lite_rvalid,
    axi_lite_rready,
    axi_lite_aclk,
    axi_lite_aresetn,
    axi_lite_error,
    axi_lite_txn_done);
  input [31:0]img_addr;
  input [31:0]frame_buffer_location;
  input [10:0]y_location;
  input [10:0]x_location;
  input start;
  output done;
  input [31:0]delay_per_line;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWADDR" *) output [31:0]axi_lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWPROT" *) output [2:0]axi_lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWVALID" *) output axi_lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWREADY" *) input axi_lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WDATA" *) output [31:0]axi_lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WSTRB" *) output [3:0]axi_lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WVALID" *) output axi_lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WREADY" *) input axi_lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BRESP" *) input [1:0]axi_lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BVALID" *) input axi_lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BREADY" *) output axi_lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARADDR" *) output [31:0]axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARPROT" *) output [2:0]axi_lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARVALID" *) output axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARREADY" *) input axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RDATA" *) input [31:0]axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RRESP" *) input [1:0]axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RVALID" *) input axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output axi_lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_lite_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_CLK, ASSOCIATED_BUSIF axi_lite, ASSOCIATED_RESET axi_lite_aresetn:axi_lite_RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input axi_lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_lite_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_RST, POLARITY ACTIVE_LOW" *) input axi_lite_aresetn;
  output axi_lite_error;
  output axi_lite_txn_done;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_lite_aclk;
  wire [30:2]\^axi_lite_araddr ;
  wire axi_lite_aresetn;
  wire axi_lite_arready;
  wire axi_lite_arvalid;
  wire [30:2]\^axi_lite_awaddr ;
  wire axi_lite_awready;
  wire axi_lite_awvalid;
  wire axi_lite_bready;
  wire axi_lite_bvalid;
  wire [31:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire axi_lite_wready;
  wire axi_lite_wvalid;
  wire [31:0]delay_per_line;
  wire done;
  wire [31:0]frame_buffer_location;
  wire [31:0]img_addr;
  wire start;
  wire [10:0]x_location;
  wire [10:0]y_location;

  assign axi_lite_araddr[31] = \<const0> ;
  assign axi_lite_araddr[30] = \^axi_lite_araddr [30];
  assign axi_lite_araddr[29] = \<const0> ;
  assign axi_lite_araddr[28] = \<const0> ;
  assign axi_lite_araddr[27] = \<const0> ;
  assign axi_lite_araddr[26] = \^axi_lite_araddr [30];
  assign axi_lite_araddr[25] = \<const0> ;
  assign axi_lite_araddr[24] = \<const0> ;
  assign axi_lite_araddr[23] = \^axi_lite_araddr [30];
  assign axi_lite_araddr[22] = \<const0> ;
  assign axi_lite_araddr[21] = \^axi_lite_araddr [30];
  assign axi_lite_araddr[20] = \<const0> ;
  assign axi_lite_araddr[19] = \<const0> ;
  assign axi_lite_araddr[18] = \<const0> ;
  assign axi_lite_araddr[17] = \<const0> ;
  assign axi_lite_araddr[16] = \<const0> ;
  assign axi_lite_araddr[15] = \<const0> ;
  assign axi_lite_araddr[14] = \<const0> ;
  assign axi_lite_araddr[13] = \<const0> ;
  assign axi_lite_araddr[12] = \<const0> ;
  assign axi_lite_araddr[11] = \<const0> ;
  assign axi_lite_araddr[10] = \<const0> ;
  assign axi_lite_araddr[9] = \<const0> ;
  assign axi_lite_araddr[8] = \<const0> ;
  assign axi_lite_araddr[7] = \<const0> ;
  assign axi_lite_araddr[6] = \<const0> ;
  assign axi_lite_araddr[5] = \<const0> ;
  assign axi_lite_araddr[4] = \<const0> ;
  assign axi_lite_araddr[3] = \<const0> ;
  assign axi_lite_araddr[2] = \^axi_lite_araddr [2];
  assign axi_lite_araddr[1] = \<const0> ;
  assign axi_lite_araddr[0] = \<const0> ;
  assign axi_lite_arprot[2] = \<const0> ;
  assign axi_lite_arprot[1] = \<const0> ;
  assign axi_lite_arprot[0] = \<const1> ;
  assign axi_lite_awaddr[31] = \<const0> ;
  assign axi_lite_awaddr[30] = \^axi_lite_awaddr [30];
  assign axi_lite_awaddr[29] = \<const0> ;
  assign axi_lite_awaddr[28] = \<const0> ;
  assign axi_lite_awaddr[27] = \<const0> ;
  assign axi_lite_awaddr[26] = \^axi_lite_awaddr [30];
  assign axi_lite_awaddr[25] = \<const0> ;
  assign axi_lite_awaddr[24] = \<const0> ;
  assign axi_lite_awaddr[23] = \^axi_lite_awaddr [30];
  assign axi_lite_awaddr[22] = \<const0> ;
  assign axi_lite_awaddr[21] = \^axi_lite_awaddr [30];
  assign axi_lite_awaddr[20] = \<const0> ;
  assign axi_lite_awaddr[19] = \<const0> ;
  assign axi_lite_awaddr[18] = \<const0> ;
  assign axi_lite_awaddr[17] = \<const0> ;
  assign axi_lite_awaddr[16] = \<const0> ;
  assign axi_lite_awaddr[15] = \<const0> ;
  assign axi_lite_awaddr[14] = \<const0> ;
  assign axi_lite_awaddr[13] = \<const0> ;
  assign axi_lite_awaddr[12] = \<const0> ;
  assign axi_lite_awaddr[11] = \<const0> ;
  assign axi_lite_awaddr[10] = \<const0> ;
  assign axi_lite_awaddr[9] = \<const0> ;
  assign axi_lite_awaddr[8] = \<const0> ;
  assign axi_lite_awaddr[7] = \<const0> ;
  assign axi_lite_awaddr[6] = \<const0> ;
  assign axi_lite_awaddr[5:2] = \^axi_lite_awaddr [5:2];
  assign axi_lite_awaddr[1] = \<const0> ;
  assign axi_lite_awaddr[0] = \<const0> ;
  assign axi_lite_awprot[2] = \<const0> ;
  assign axi_lite_awprot[1] = \<const0> ;
  assign axi_lite_awprot[0] = \<const0> ;
  assign axi_lite_error = \<const0> ;
  assign axi_lite_txn_done = \<const0> ;
  assign axi_lite_wstrb[3] = \<const1> ;
  assign axi_lite_wstrb[2] = \<const1> ;
  assign axi_lite_wstrb[1] = \<const1> ;
  assign axi_lite_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_CMDA_controller_0_0_CMDA_controller_v1_0 inst
       (.M_AXI_BREADY(axi_lite_bready),
        .axi_lite_aclk(axi_lite_aclk),
        .axi_lite_araddr({\^axi_lite_araddr [30],\^axi_lite_araddr [2]}),
        .axi_lite_aresetn(axi_lite_aresetn),
        .axi_lite_arready(axi_lite_arready),
        .axi_lite_arvalid(axi_lite_arvalid),
        .axi_lite_awaddr({\^axi_lite_awaddr [30],\^axi_lite_awaddr [5:2]}),
        .axi_lite_awready(axi_lite_awready),
        .axi_lite_awvalid(axi_lite_awvalid),
        .axi_lite_bvalid(axi_lite_bvalid),
        .axi_lite_rdata({axi_lite_rdata[6],axi_lite_rdata[2:1]}),
        .axi_lite_rready(axi_lite_rready),
        .axi_lite_rvalid(axi_lite_rvalid),
        .axi_lite_wdata(axi_lite_wdata),
        .axi_lite_wready(axi_lite_wready),
        .axi_lite_wvalid(axi_lite_wvalid),
        .delay_per_line(delay_per_line),
        .done(done),
        .frame_buffer_location(frame_buffer_location),
        .img_addr(img_addr),
        .start(start),
        .x_location(x_location),
        .y_location(y_location));
endmodule

(* ORIG_REF_NAME = "CMDA_controller_v1_0" *) 
module design_1_CMDA_controller_0_0_CMDA_controller_v1_0
   (axi_lite_rready,
    axi_lite_awaddr,
    M_AXI_BREADY,
    axi_lite_arvalid,
    axi_lite_awvalid,
    axi_lite_wvalid,
    axi_lite_wdata,
    axi_lite_araddr,
    done,
    axi_lite_aresetn,
    axi_lite_rdata,
    axi_lite_rvalid,
    start,
    img_addr,
    axi_lite_aclk,
    x_location,
    y_location,
    frame_buffer_location,
    axi_lite_bvalid,
    delay_per_line,
    axi_lite_arready,
    axi_lite_wready,
    axi_lite_awready);
  output axi_lite_rready;
  output [4:0]axi_lite_awaddr;
  output M_AXI_BREADY;
  output axi_lite_arvalid;
  output axi_lite_awvalid;
  output axi_lite_wvalid;
  output [31:0]axi_lite_wdata;
  output [1:0]axi_lite_araddr;
  output done;
  input axi_lite_aresetn;
  input [2:0]axi_lite_rdata;
  input axi_lite_rvalid;
  input start;
  input [31:0]img_addr;
  input axi_lite_aclk;
  input [10:0]x_location;
  input [10:0]y_location;
  input [31:0]frame_buffer_location;
  input axi_lite_bvalid;
  input [31:0]delay_per_line;
  input axi_lite_arready;
  input axi_lite_wready;
  input axi_lite_awready;

  wire M_AXI_BREADY;
  wire axi_lite_aclk;
  wire [1:0]axi_lite_araddr;
  wire axi_lite_aresetn;
  wire axi_lite_arready;
  wire axi_lite_arvalid;
  wire [4:0]axi_lite_awaddr;
  wire axi_lite_awready;
  wire axi_lite_awvalid;
  wire axi_lite_bvalid;
  wire [2:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire axi_lite_wready;
  wire axi_lite_wvalid;
  wire [31:0]delay_per_line;
  wire done;
  wire [31:0]frame_buffer_location;
  wire [31:0]img_addr;
  wire start;
  wire [10:0]x_location;
  wire [10:0]y_location;

  design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite CMDA_controller_v1_0_axi_lite_inst
       (.M_AXI_BREADY(M_AXI_BREADY),
        .axi_lite_aclk(axi_lite_aclk),
        .axi_lite_araddr(axi_lite_araddr),
        .axi_lite_aresetn(axi_lite_aresetn),
        .axi_lite_arready(axi_lite_arready),
        .axi_lite_arvalid(axi_lite_arvalid),
        .axi_lite_awaddr(axi_lite_awaddr),
        .axi_lite_awready(axi_lite_awready),
        .axi_lite_awvalid(axi_lite_awvalid),
        .axi_lite_bvalid(axi_lite_bvalid),
        .axi_lite_rdata(axi_lite_rdata),
        .axi_lite_rready(axi_lite_rready),
        .axi_lite_rvalid(axi_lite_rvalid),
        .axi_lite_wdata(axi_lite_wdata),
        .axi_lite_wready(axi_lite_wready),
        .axi_lite_wvalid(axi_lite_wvalid),
        .delay_per_line(delay_per_line),
        .done(done),
        .frame_buffer_location(frame_buffer_location),
        .img_addr(img_addr),
        .start(start),
        .x_location(x_location),
        .y_location(y_location));
endmodule

(* ORIG_REF_NAME = "CMDA_controller_v1_0_axi_lite" *) 
module design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite
   (axi_lite_rready,
    axi_lite_awaddr,
    M_AXI_BREADY,
    axi_lite_arvalid,
    axi_lite_awvalid,
    axi_lite_wvalid,
    axi_lite_wdata,
    axi_lite_araddr,
    done,
    axi_lite_aresetn,
    axi_lite_rdata,
    axi_lite_rvalid,
    start,
    img_addr,
    axi_lite_aclk,
    x_location,
    y_location,
    frame_buffer_location,
    axi_lite_bvalid,
    delay_per_line,
    axi_lite_arready,
    axi_lite_wready,
    axi_lite_awready);
  output axi_lite_rready;
  output [4:0]axi_lite_awaddr;
  output M_AXI_BREADY;
  output axi_lite_arvalid;
  output axi_lite_awvalid;
  output axi_lite_wvalid;
  output [31:0]axi_lite_wdata;
  output [1:0]axi_lite_araddr;
  output done;
  input axi_lite_aresetn;
  input [2:0]axi_lite_rdata;
  input axi_lite_rvalid;
  input start;
  input [31:0]img_addr;
  input axi_lite_aclk;
  input [10:0]x_location;
  input [10:0]y_location;
  input [31:0]frame_buffer_location;
  input axi_lite_bvalid;
  input [31:0]delay_per_line;
  input axi_lite_arready;
  input axi_lite_wready;
  input axi_lite_awready;

  wire INIT_AXI_TXN;
  wire M_AXI_BREADY;
  wire assert_done;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready0;
  wire axi_lite_aclk;
  wire [1:0]axi_lite_araddr;
  wire axi_lite_aresetn;
  wire axi_lite_arready;
  wire axi_lite_arvalid;
  wire [4:0]axi_lite_awaddr;
  wire axi_lite_awready;
  wire axi_lite_awvalid;
  wire axi_lite_bvalid;
  wire [2:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire \axi_lite_wdata[2]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[2]_INST_0_i_2_n_0 ;
  wire \axi_lite_wdata[31]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[3]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[5]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[6]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[8]_INST_0_i_1_n_0 ;
  wire \axi_lite_wdata[8]_INST_0_i_2_n_0 ;
  wire axi_lite_wready;
  wire axi_lite_wvalid;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire clear;
  wire [4:0]current_state;
  wire \current_state[0]_i_10_n_0 ;
  wire \current_state[0]_i_11_n_0 ;
  wire \current_state[0]_i_12_n_0 ;
  wire \current_state[0]_i_13_n_0 ;
  wire \current_state[0]_i_14_n_0 ;
  wire \current_state[0]_i_15_n_0 ;
  wire \current_state[0]_i_16_n_0 ;
  wire \current_state[0]_i_17_n_0 ;
  wire \current_state[0]_i_18_n_0 ;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[0]_i_7_n_0 ;
  wire \current_state[0]_i_8_n_0 ;
  wire \current_state[0]_i_9_n_0 ;
  wire \current_state[1]_i_10_n_0 ;
  wire \current_state[1]_i_11_n_0 ;
  wire \current_state[1]_i_12_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state[1]_i_5_n_0 ;
  wire \current_state[1]_i_6_n_0 ;
  wire \current_state[1]_i_7_n_0 ;
  wire \current_state[1]_i_8_n_0 ;
  wire \current_state[1]_i_9_n_0 ;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_11_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_16_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[3]_i_3_n_0 ;
  wire \current_state[3]_i_4_n_0 ;
  wire \current_state[3]_i_5_n_0 ;
  wire \current_state[4]_i_10_n_0 ;
  wire \current_state[4]_i_11_n_0 ;
  wire \current_state[4]_i_12_n_0 ;
  wire \current_state[4]_i_13_n_0 ;
  wire \current_state[4]_i_14_n_0 ;
  wire \current_state[4]_i_15_n_0 ;
  wire \current_state[4]_i_1_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire \current_state[4]_i_4_n_0 ;
  wire \current_state[4]_i_5_n_0 ;
  wire \current_state[4]_i_6_n_0 ;
  wire \current_state[4]_i_7_n_0 ;
  wire \current_state[4]_i_8_n_0 ;
  wire \current_state[4]_i_9_n_0 ;
  wire [31:0]delay_per_line;
  wire done;
  wire done_INST_0_i_1_n_0;
  wire [31:0]frame_buffer_location;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:0]img_addr;
  wire increament_line_to_line_counter;
  wire increament_scan_line;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire internal_assert_done;
  wire internal_counter0;
  wire \internal_counter[0]_i_3_n_0 ;
  wire [31:0]internal_counter_reg;
  wire \internal_counter_reg[0]_i_2_n_0 ;
  wire \internal_counter_reg[0]_i_2_n_1 ;
  wire \internal_counter_reg[0]_i_2_n_2 ;
  wire \internal_counter_reg[0]_i_2_n_3 ;
  wire \internal_counter_reg[0]_i_2_n_4 ;
  wire \internal_counter_reg[0]_i_2_n_5 ;
  wire \internal_counter_reg[0]_i_2_n_6 ;
  wire \internal_counter_reg[0]_i_2_n_7 ;
  wire \internal_counter_reg[12]_i_1_n_0 ;
  wire \internal_counter_reg[12]_i_1_n_1 ;
  wire \internal_counter_reg[12]_i_1_n_2 ;
  wire \internal_counter_reg[12]_i_1_n_3 ;
  wire \internal_counter_reg[12]_i_1_n_4 ;
  wire \internal_counter_reg[12]_i_1_n_5 ;
  wire \internal_counter_reg[12]_i_1_n_6 ;
  wire \internal_counter_reg[12]_i_1_n_7 ;
  wire \internal_counter_reg[16]_i_1_n_0 ;
  wire \internal_counter_reg[16]_i_1_n_1 ;
  wire \internal_counter_reg[16]_i_1_n_2 ;
  wire \internal_counter_reg[16]_i_1_n_3 ;
  wire \internal_counter_reg[16]_i_1_n_4 ;
  wire \internal_counter_reg[16]_i_1_n_5 ;
  wire \internal_counter_reg[16]_i_1_n_6 ;
  wire \internal_counter_reg[16]_i_1_n_7 ;
  wire \internal_counter_reg[20]_i_1_n_0 ;
  wire \internal_counter_reg[20]_i_1_n_1 ;
  wire \internal_counter_reg[20]_i_1_n_2 ;
  wire \internal_counter_reg[20]_i_1_n_3 ;
  wire \internal_counter_reg[20]_i_1_n_4 ;
  wire \internal_counter_reg[20]_i_1_n_5 ;
  wire \internal_counter_reg[20]_i_1_n_6 ;
  wire \internal_counter_reg[20]_i_1_n_7 ;
  wire \internal_counter_reg[24]_i_1_n_0 ;
  wire \internal_counter_reg[24]_i_1_n_1 ;
  wire \internal_counter_reg[24]_i_1_n_2 ;
  wire \internal_counter_reg[24]_i_1_n_3 ;
  wire \internal_counter_reg[24]_i_1_n_4 ;
  wire \internal_counter_reg[24]_i_1_n_5 ;
  wire \internal_counter_reg[24]_i_1_n_6 ;
  wire \internal_counter_reg[24]_i_1_n_7 ;
  wire \internal_counter_reg[28]_i_1_n_1 ;
  wire \internal_counter_reg[28]_i_1_n_2 ;
  wire \internal_counter_reg[28]_i_1_n_3 ;
  wire \internal_counter_reg[28]_i_1_n_4 ;
  wire \internal_counter_reg[28]_i_1_n_5 ;
  wire \internal_counter_reg[28]_i_1_n_6 ;
  wire \internal_counter_reg[28]_i_1_n_7 ;
  wire \internal_counter_reg[4]_i_1_n_0 ;
  wire \internal_counter_reg[4]_i_1_n_1 ;
  wire \internal_counter_reg[4]_i_1_n_2 ;
  wire \internal_counter_reg[4]_i_1_n_3 ;
  wire \internal_counter_reg[4]_i_1_n_4 ;
  wire \internal_counter_reg[4]_i_1_n_5 ;
  wire \internal_counter_reg[4]_i_1_n_6 ;
  wire \internal_counter_reg[4]_i_1_n_7 ;
  wire \internal_counter_reg[8]_i_1_n_0 ;
  wire \internal_counter_reg[8]_i_1_n_1 ;
  wire \internal_counter_reg[8]_i_1_n_2 ;
  wire \internal_counter_reg[8]_i_1_n_3 ;
  wire \internal_counter_reg[8]_i_1_n_4 ;
  wire \internal_counter_reg[8]_i_1_n_5 ;
  wire \internal_counter_reg[8]_i_1_n_6 ;
  wire \internal_counter_reg[8]_i_1_n_7 ;
  wire internal_done_i_1_n_0;
  wire internal_done_i_2_n_0;
  wire internal_done_reg_n_0;
  wire last_read;
  wire last_read_i_1_n_0;
  wire last_write;
  wire last_write_i_1_n_0;
  wire \line_to_line_counter[0]_i_1_n_0 ;
  wire \line_to_line_counter[0]_i_4_n_0 ;
  wire [31:0]line_to_line_counter_reg;
  wire \line_to_line_counter_reg[0]_i_3_n_0 ;
  wire \line_to_line_counter_reg[0]_i_3_n_1 ;
  wire \line_to_line_counter_reg[0]_i_3_n_2 ;
  wire \line_to_line_counter_reg[0]_i_3_n_3 ;
  wire \line_to_line_counter_reg[0]_i_3_n_4 ;
  wire \line_to_line_counter_reg[0]_i_3_n_5 ;
  wire \line_to_line_counter_reg[0]_i_3_n_6 ;
  wire \line_to_line_counter_reg[0]_i_3_n_7 ;
  wire \line_to_line_counter_reg[12]_i_1_n_0 ;
  wire \line_to_line_counter_reg[12]_i_1_n_1 ;
  wire \line_to_line_counter_reg[12]_i_1_n_2 ;
  wire \line_to_line_counter_reg[12]_i_1_n_3 ;
  wire \line_to_line_counter_reg[12]_i_1_n_4 ;
  wire \line_to_line_counter_reg[12]_i_1_n_5 ;
  wire \line_to_line_counter_reg[12]_i_1_n_6 ;
  wire \line_to_line_counter_reg[12]_i_1_n_7 ;
  wire \line_to_line_counter_reg[16]_i_1_n_0 ;
  wire \line_to_line_counter_reg[16]_i_1_n_1 ;
  wire \line_to_line_counter_reg[16]_i_1_n_2 ;
  wire \line_to_line_counter_reg[16]_i_1_n_3 ;
  wire \line_to_line_counter_reg[16]_i_1_n_4 ;
  wire \line_to_line_counter_reg[16]_i_1_n_5 ;
  wire \line_to_line_counter_reg[16]_i_1_n_6 ;
  wire \line_to_line_counter_reg[16]_i_1_n_7 ;
  wire \line_to_line_counter_reg[20]_i_1_n_0 ;
  wire \line_to_line_counter_reg[20]_i_1_n_1 ;
  wire \line_to_line_counter_reg[20]_i_1_n_2 ;
  wire \line_to_line_counter_reg[20]_i_1_n_3 ;
  wire \line_to_line_counter_reg[20]_i_1_n_4 ;
  wire \line_to_line_counter_reg[20]_i_1_n_5 ;
  wire \line_to_line_counter_reg[20]_i_1_n_6 ;
  wire \line_to_line_counter_reg[20]_i_1_n_7 ;
  wire \line_to_line_counter_reg[24]_i_1_n_0 ;
  wire \line_to_line_counter_reg[24]_i_1_n_1 ;
  wire \line_to_line_counter_reg[24]_i_1_n_2 ;
  wire \line_to_line_counter_reg[24]_i_1_n_3 ;
  wire \line_to_line_counter_reg[24]_i_1_n_4 ;
  wire \line_to_line_counter_reg[24]_i_1_n_5 ;
  wire \line_to_line_counter_reg[24]_i_1_n_6 ;
  wire \line_to_line_counter_reg[24]_i_1_n_7 ;
  wire \line_to_line_counter_reg[28]_i_1_n_1 ;
  wire \line_to_line_counter_reg[28]_i_1_n_2 ;
  wire \line_to_line_counter_reg[28]_i_1_n_3 ;
  wire \line_to_line_counter_reg[28]_i_1_n_4 ;
  wire \line_to_line_counter_reg[28]_i_1_n_5 ;
  wire \line_to_line_counter_reg[28]_i_1_n_6 ;
  wire \line_to_line_counter_reg[28]_i_1_n_7 ;
  wire \line_to_line_counter_reg[4]_i_1_n_0 ;
  wire \line_to_line_counter_reg[4]_i_1_n_1 ;
  wire \line_to_line_counter_reg[4]_i_1_n_2 ;
  wire \line_to_line_counter_reg[4]_i_1_n_3 ;
  wire \line_to_line_counter_reg[4]_i_1_n_4 ;
  wire \line_to_line_counter_reg[4]_i_1_n_5 ;
  wire \line_to_line_counter_reg[4]_i_1_n_6 ;
  wire \line_to_line_counter_reg[4]_i_1_n_7 ;
  wire \line_to_line_counter_reg[8]_i_1_n_0 ;
  wire \line_to_line_counter_reg[8]_i_1_n_1 ;
  wire \line_to_line_counter_reg[8]_i_1_n_2 ;
  wire \line_to_line_counter_reg[8]_i_1_n_3 ;
  wire \line_to_line_counter_reg[8]_i_1_n_4 ;
  wire \line_to_line_counter_reg[8]_i_1_n_5 ;
  wire \line_to_line_counter_reg[8]_i_1_n_6 ;
  wire \line_to_line_counter_reg[8]_i_1_n_7 ;
  wire \memory_counter[0]_i_2_n_0 ;
  wire \memory_counter[10]_i_2_n_0 ;
  wire \memory_counter[10]_i_3_n_0 ;
  wire \memory_counter[10]_i_4_n_0 ;
  wire \memory_counter[10]_i_5_n_0 ;
  wire \memory_counter[14]_i_2_n_0 ;
  wire \memory_counter[14]_i_3_n_0 ;
  wire \memory_counter[14]_i_4_n_0 ;
  wire \memory_counter[14]_i_5_n_0 ;
  wire \memory_counter[18]_i_2_n_0 ;
  wire \memory_counter[18]_i_3_n_0 ;
  wire \memory_counter[18]_i_4_n_0 ;
  wire \memory_counter[18]_i_5_n_0 ;
  wire \memory_counter[1]_i_1_n_0 ;
  wire \memory_counter[22]_i_2_n_0 ;
  wire \memory_counter[22]_i_3_n_0 ;
  wire \memory_counter[22]_i_4_n_0 ;
  wire \memory_counter[22]_i_5_n_0 ;
  wire \memory_counter[26]_i_2_n_0 ;
  wire \memory_counter[26]_i_3_n_0 ;
  wire \memory_counter[26]_i_4_n_0 ;
  wire \memory_counter[26]_i_5_n_0 ;
  wire \memory_counter[2]_i_2_n_0 ;
  wire \memory_counter[2]_i_3_n_0 ;
  wire \memory_counter[2]_i_4_n_0 ;
  wire \memory_counter[2]_i_5_n_0 ;
  wire \memory_counter[2]_i_6_n_0 ;
  wire \memory_counter[2]_i_7_n_0 ;
  wire \memory_counter[30]_i_2_n_0 ;
  wire \memory_counter[30]_i_3_n_0 ;
  wire \memory_counter[6]_i_2_n_0 ;
  wire \memory_counter[6]_i_3_n_0 ;
  wire \memory_counter[6]_i_4_n_0 ;
  wire \memory_counter[6]_i_5_n_0 ;
  wire \memory_counter[6]_i_6_n_0 ;
  wire \memory_counter[6]_i_7_n_0 ;
  wire [31:0]memory_counter_reg;
  wire \memory_counter_reg[10]_i_1_n_0 ;
  wire \memory_counter_reg[10]_i_1_n_1 ;
  wire \memory_counter_reg[10]_i_1_n_2 ;
  wire \memory_counter_reg[10]_i_1_n_3 ;
  wire \memory_counter_reg[10]_i_1_n_4 ;
  wire \memory_counter_reg[10]_i_1_n_5 ;
  wire \memory_counter_reg[10]_i_1_n_6 ;
  wire \memory_counter_reg[10]_i_1_n_7 ;
  wire \memory_counter_reg[14]_i_1_n_0 ;
  wire \memory_counter_reg[14]_i_1_n_1 ;
  wire \memory_counter_reg[14]_i_1_n_2 ;
  wire \memory_counter_reg[14]_i_1_n_3 ;
  wire \memory_counter_reg[14]_i_1_n_4 ;
  wire \memory_counter_reg[14]_i_1_n_5 ;
  wire \memory_counter_reg[14]_i_1_n_6 ;
  wire \memory_counter_reg[14]_i_1_n_7 ;
  wire \memory_counter_reg[18]_i_1_n_0 ;
  wire \memory_counter_reg[18]_i_1_n_1 ;
  wire \memory_counter_reg[18]_i_1_n_2 ;
  wire \memory_counter_reg[18]_i_1_n_3 ;
  wire \memory_counter_reg[18]_i_1_n_4 ;
  wire \memory_counter_reg[18]_i_1_n_5 ;
  wire \memory_counter_reg[18]_i_1_n_6 ;
  wire \memory_counter_reg[18]_i_1_n_7 ;
  wire \memory_counter_reg[22]_i_1_n_0 ;
  wire \memory_counter_reg[22]_i_1_n_1 ;
  wire \memory_counter_reg[22]_i_1_n_2 ;
  wire \memory_counter_reg[22]_i_1_n_3 ;
  wire \memory_counter_reg[22]_i_1_n_4 ;
  wire \memory_counter_reg[22]_i_1_n_5 ;
  wire \memory_counter_reg[22]_i_1_n_6 ;
  wire \memory_counter_reg[22]_i_1_n_7 ;
  wire \memory_counter_reg[26]_i_1_n_0 ;
  wire \memory_counter_reg[26]_i_1_n_1 ;
  wire \memory_counter_reg[26]_i_1_n_2 ;
  wire \memory_counter_reg[26]_i_1_n_3 ;
  wire \memory_counter_reg[26]_i_1_n_4 ;
  wire \memory_counter_reg[26]_i_1_n_5 ;
  wire \memory_counter_reg[26]_i_1_n_6 ;
  wire \memory_counter_reg[26]_i_1_n_7 ;
  wire \memory_counter_reg[2]_i_1_n_0 ;
  wire \memory_counter_reg[2]_i_1_n_1 ;
  wire \memory_counter_reg[2]_i_1_n_2 ;
  wire \memory_counter_reg[2]_i_1_n_3 ;
  wire \memory_counter_reg[2]_i_1_n_4 ;
  wire \memory_counter_reg[2]_i_1_n_5 ;
  wire \memory_counter_reg[2]_i_1_n_6 ;
  wire \memory_counter_reg[2]_i_1_n_7 ;
  wire \memory_counter_reg[30]_i_1_n_3 ;
  wire \memory_counter_reg[30]_i_1_n_6 ;
  wire \memory_counter_reg[30]_i_1_n_7 ;
  wire \memory_counter_reg[6]_i_1_n_0 ;
  wire \memory_counter_reg[6]_i_1_n_1 ;
  wire \memory_counter_reg[6]_i_1_n_2 ;
  wire \memory_counter_reg[6]_i_1_n_3 ;
  wire \memory_counter_reg[6]_i_1_n_4 ;
  wire \memory_counter_reg[6]_i_1_n_5 ;
  wire \memory_counter_reg[6]_i_1_n_6 ;
  wire \memory_counter_reg[6]_i_1_n_7 ;
  wire [1:0]mst_exec_state;
  wire \mst_exec_state[0]_i_1_n_0 ;
  wire \mst_exec_state[1]_i_1_n_0 ;
  wire \mst_exec_state[1]_i_2_n_0 ;
  wire next_state2;
  wire \next_state2_inferred__0/i__carry__0_n_0 ;
  wire \next_state2_inferred__0/i__carry__0_n_1 ;
  wire \next_state2_inferred__0/i__carry__0_n_2 ;
  wire \next_state2_inferred__0/i__carry__0_n_3 ;
  wire \next_state2_inferred__0/i__carry__1_n_2 ;
  wire \next_state2_inferred__0/i__carry__1_n_3 ;
  wire \next_state2_inferred__0/i__carry_n_0 ;
  wire \next_state2_inferred__0/i__carry_n_1 ;
  wire \next_state2_inferred__0/i__carry_n_2 ;
  wire \next_state2_inferred__0/i__carry_n_3 ;
  wire \num_of_row[0]_i_1_n_0 ;
  wire \num_of_row[0]_i_4_n_0 ;
  wire [31:0]num_of_row_reg;
  wire \num_of_row_reg[0]_i_3_n_0 ;
  wire \num_of_row_reg[0]_i_3_n_1 ;
  wire \num_of_row_reg[0]_i_3_n_2 ;
  wire \num_of_row_reg[0]_i_3_n_3 ;
  wire \num_of_row_reg[0]_i_3_n_4 ;
  wire \num_of_row_reg[0]_i_3_n_5 ;
  wire \num_of_row_reg[0]_i_3_n_6 ;
  wire \num_of_row_reg[0]_i_3_n_7 ;
  wire \num_of_row_reg[12]_i_1_n_0 ;
  wire \num_of_row_reg[12]_i_1_n_1 ;
  wire \num_of_row_reg[12]_i_1_n_2 ;
  wire \num_of_row_reg[12]_i_1_n_3 ;
  wire \num_of_row_reg[12]_i_1_n_4 ;
  wire \num_of_row_reg[12]_i_1_n_5 ;
  wire \num_of_row_reg[12]_i_1_n_6 ;
  wire \num_of_row_reg[12]_i_1_n_7 ;
  wire \num_of_row_reg[16]_i_1_n_0 ;
  wire \num_of_row_reg[16]_i_1_n_1 ;
  wire \num_of_row_reg[16]_i_1_n_2 ;
  wire \num_of_row_reg[16]_i_1_n_3 ;
  wire \num_of_row_reg[16]_i_1_n_4 ;
  wire \num_of_row_reg[16]_i_1_n_5 ;
  wire \num_of_row_reg[16]_i_1_n_6 ;
  wire \num_of_row_reg[16]_i_1_n_7 ;
  wire \num_of_row_reg[20]_i_1_n_0 ;
  wire \num_of_row_reg[20]_i_1_n_1 ;
  wire \num_of_row_reg[20]_i_1_n_2 ;
  wire \num_of_row_reg[20]_i_1_n_3 ;
  wire \num_of_row_reg[20]_i_1_n_4 ;
  wire \num_of_row_reg[20]_i_1_n_5 ;
  wire \num_of_row_reg[20]_i_1_n_6 ;
  wire \num_of_row_reg[20]_i_1_n_7 ;
  wire \num_of_row_reg[24]_i_1_n_0 ;
  wire \num_of_row_reg[24]_i_1_n_1 ;
  wire \num_of_row_reg[24]_i_1_n_2 ;
  wire \num_of_row_reg[24]_i_1_n_3 ;
  wire \num_of_row_reg[24]_i_1_n_4 ;
  wire \num_of_row_reg[24]_i_1_n_5 ;
  wire \num_of_row_reg[24]_i_1_n_6 ;
  wire \num_of_row_reg[24]_i_1_n_7 ;
  wire \num_of_row_reg[28]_i_1_n_1 ;
  wire \num_of_row_reg[28]_i_1_n_2 ;
  wire \num_of_row_reg[28]_i_1_n_3 ;
  wire \num_of_row_reg[28]_i_1_n_4 ;
  wire \num_of_row_reg[28]_i_1_n_5 ;
  wire \num_of_row_reg[28]_i_1_n_6 ;
  wire \num_of_row_reg[28]_i_1_n_7 ;
  wire \num_of_row_reg[4]_i_1_n_0 ;
  wire \num_of_row_reg[4]_i_1_n_1 ;
  wire \num_of_row_reg[4]_i_1_n_2 ;
  wire \num_of_row_reg[4]_i_1_n_3 ;
  wire \num_of_row_reg[4]_i_1_n_4 ;
  wire \num_of_row_reg[4]_i_1_n_5 ;
  wire \num_of_row_reg[4]_i_1_n_6 ;
  wire \num_of_row_reg[4]_i_1_n_7 ;
  wire \num_of_row_reg[8]_i_1_n_0 ;
  wire \num_of_row_reg[8]_i_1_n_1 ;
  wire \num_of_row_reg[8]_i_1_n_2 ;
  wire \num_of_row_reg[8]_i_1_n_3 ;
  wire \num_of_row_reg[8]_i_1_n_4 ;
  wire \num_of_row_reg[8]_i_1_n_5 ;
  wire \num_of_row_reg[8]_i_1_n_6 ;
  wire \num_of_row_reg[8]_i_1_n_7 ;
  wire position_in_frame_buffer;
  wire [31:0]position_in_frame_buffer0__0;
  wire position_in_frame_buffer0_n_100;
  wire position_in_frame_buffer0_n_101;
  wire position_in_frame_buffer0_n_102;
  wire position_in_frame_buffer0_n_103;
  wire position_in_frame_buffer0_n_104;
  wire position_in_frame_buffer0_n_105;
  wire position_in_frame_buffer0_n_81;
  wire position_in_frame_buffer0_n_82;
  wire position_in_frame_buffer0_n_83;
  wire position_in_frame_buffer0_n_84;
  wire position_in_frame_buffer0_n_85;
  wire position_in_frame_buffer0_n_86;
  wire position_in_frame_buffer0_n_87;
  wire position_in_frame_buffer0_n_88;
  wire position_in_frame_buffer0_n_89;
  wire position_in_frame_buffer0_n_90;
  wire position_in_frame_buffer0_n_91;
  wire position_in_frame_buffer0_n_92;
  wire position_in_frame_buffer0_n_93;
  wire position_in_frame_buffer0_n_94;
  wire position_in_frame_buffer0_n_95;
  wire position_in_frame_buffer0_n_96;
  wire position_in_frame_buffer0_n_97;
  wire position_in_frame_buffer0_n_98;
  wire position_in_frame_buffer0_n_99;
  wire position_in_frame_buffer2_n_100;
  wire position_in_frame_buffer2_n_101;
  wire position_in_frame_buffer2_n_102;
  wire position_in_frame_buffer2_n_103;
  wire position_in_frame_buffer2_n_104;
  wire position_in_frame_buffer2_n_105;
  wire position_in_frame_buffer2_n_106;
  wire position_in_frame_buffer2_n_107;
  wire position_in_frame_buffer2_n_108;
  wire position_in_frame_buffer2_n_109;
  wire position_in_frame_buffer2_n_110;
  wire position_in_frame_buffer2_n_111;
  wire position_in_frame_buffer2_n_112;
  wire position_in_frame_buffer2_n_113;
  wire position_in_frame_buffer2_n_114;
  wire position_in_frame_buffer2_n_115;
  wire position_in_frame_buffer2_n_116;
  wire position_in_frame_buffer2_n_117;
  wire position_in_frame_buffer2_n_118;
  wire position_in_frame_buffer2_n_119;
  wire position_in_frame_buffer2_n_120;
  wire position_in_frame_buffer2_n_121;
  wire position_in_frame_buffer2_n_122;
  wire position_in_frame_buffer2_n_123;
  wire position_in_frame_buffer2_n_124;
  wire position_in_frame_buffer2_n_125;
  wire position_in_frame_buffer2_n_126;
  wire position_in_frame_buffer2_n_127;
  wire position_in_frame_buffer2_n_128;
  wire position_in_frame_buffer2_n_129;
  wire position_in_frame_buffer2_n_130;
  wire position_in_frame_buffer2_n_131;
  wire position_in_frame_buffer2_n_132;
  wire position_in_frame_buffer2_n_133;
  wire position_in_frame_buffer2_n_134;
  wire position_in_frame_buffer2_n_135;
  wire position_in_frame_buffer2_n_136;
  wire position_in_frame_buffer2_n_137;
  wire position_in_frame_buffer2_n_138;
  wire position_in_frame_buffer2_n_139;
  wire position_in_frame_buffer2_n_140;
  wire position_in_frame_buffer2_n_141;
  wire position_in_frame_buffer2_n_142;
  wire position_in_frame_buffer2_n_143;
  wire position_in_frame_buffer2_n_144;
  wire position_in_frame_buffer2_n_145;
  wire position_in_frame_buffer2_n_146;
  wire position_in_frame_buffer2_n_147;
  wire position_in_frame_buffer2_n_148;
  wire position_in_frame_buffer2_n_149;
  wire position_in_frame_buffer2_n_150;
  wire position_in_frame_buffer2_n_151;
  wire position_in_frame_buffer2_n_152;
  wire position_in_frame_buffer2_n_153;
  wire position_in_frame_buffer2_n_93;
  wire position_in_frame_buffer2_n_94;
  wire position_in_frame_buffer2_n_95;
  wire position_in_frame_buffer2_n_96;
  wire position_in_frame_buffer2_n_97;
  wire position_in_frame_buffer2_n_98;
  wire position_in_frame_buffer2_n_99;
  wire \position_in_frame_buffer[0]_i_1_n_0 ;
  wire \position_in_frame_buffer[0]_i_3_n_0 ;
  wire \position_in_frame_buffer[0]_i_4_n_0 ;
  wire \position_in_frame_buffer[0]_i_5_n_0 ;
  wire \position_in_frame_buffer[0]_i_6_n_0 ;
  wire \position_in_frame_buffer[10]_i_10_n_0 ;
  wire \position_in_frame_buffer[10]_i_11_n_0 ;
  wire \position_in_frame_buffer[10]_i_12_n_0 ;
  wire \position_in_frame_buffer[10]_i_2_n_0 ;
  wire \position_in_frame_buffer[10]_i_3_n_0 ;
  wire \position_in_frame_buffer[10]_i_4_n_0 ;
  wire \position_in_frame_buffer[10]_i_5_n_0 ;
  wire \position_in_frame_buffer[10]_i_6_n_0 ;
  wire \position_in_frame_buffer[10]_i_7_n_0 ;
  wire \position_in_frame_buffer[10]_i_9_n_0 ;
  wire \position_in_frame_buffer[14]_i_10_n_0 ;
  wire \position_in_frame_buffer[14]_i_2_n_0 ;
  wire \position_in_frame_buffer[14]_i_3_n_0 ;
  wire \position_in_frame_buffer[14]_i_4_n_0 ;
  wire \position_in_frame_buffer[14]_i_5_n_0 ;
  wire \position_in_frame_buffer[14]_i_7_n_0 ;
  wire \position_in_frame_buffer[14]_i_8_n_0 ;
  wire \position_in_frame_buffer[14]_i_9_n_0 ;
  wire \position_in_frame_buffer[18]_i_10_n_0 ;
  wire \position_in_frame_buffer[18]_i_2_n_0 ;
  wire \position_in_frame_buffer[18]_i_3_n_0 ;
  wire \position_in_frame_buffer[18]_i_4_n_0 ;
  wire \position_in_frame_buffer[18]_i_5_n_0 ;
  wire \position_in_frame_buffer[18]_i_7_n_0 ;
  wire \position_in_frame_buffer[18]_i_8_n_0 ;
  wire \position_in_frame_buffer[18]_i_9_n_0 ;
  wire \position_in_frame_buffer[1]_i_1_n_0 ;
  wire \position_in_frame_buffer[22]_i_2_n_0 ;
  wire \position_in_frame_buffer[22]_i_3_n_0 ;
  wire \position_in_frame_buffer[22]_i_4_n_0 ;
  wire \position_in_frame_buffer[22]_i_5_n_0 ;
  wire \position_in_frame_buffer[22]_i_7_n_0 ;
  wire \position_in_frame_buffer[26]_i_2_n_0 ;
  wire \position_in_frame_buffer[26]_i_3_n_0 ;
  wire \position_in_frame_buffer[26]_i_4_n_0 ;
  wire \position_in_frame_buffer[26]_i_5_n_0 ;
  wire \position_in_frame_buffer[2]_i_1_n_0 ;
  wire \position_in_frame_buffer[30]_i_2_n_0 ;
  wire \position_in_frame_buffer[30]_i_3_n_0 ;
  wire \position_in_frame_buffer[3]_i_1_n_0 ;
  wire \position_in_frame_buffer[4]_i_1_n_0 ;
  wire \position_in_frame_buffer[4]_i_3_n_0 ;
  wire \position_in_frame_buffer[4]_i_4_n_0 ;
  wire \position_in_frame_buffer[4]_i_5_n_0 ;
  wire \position_in_frame_buffer[4]_i_6_n_0 ;
  wire \position_in_frame_buffer[5]_i_1_n_0 ;
  wire \position_in_frame_buffer[6]_i_10_n_0 ;
  wire \position_in_frame_buffer[6]_i_11_n_0 ;
  wire \position_in_frame_buffer[6]_i_12_n_0 ;
  wire \position_in_frame_buffer[6]_i_2_n_0 ;
  wire \position_in_frame_buffer[6]_i_3_n_0 ;
  wire \position_in_frame_buffer[6]_i_4_n_0 ;
  wire \position_in_frame_buffer[6]_i_5_n_0 ;
  wire \position_in_frame_buffer[6]_i_6_n_0 ;
  wire \position_in_frame_buffer[6]_i_7_n_0 ;
  wire \position_in_frame_buffer[6]_i_9_n_0 ;
  wire [31:0]position_in_frame_buffer_reg;
  wire \position_in_frame_buffer_reg[0]_i_2_n_0 ;
  wire \position_in_frame_buffer_reg[0]_i_2_n_1 ;
  wire \position_in_frame_buffer_reg[0]_i_2_n_2 ;
  wire \position_in_frame_buffer_reg[0]_i_2_n_3 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[10]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[10]_i_8_n_0 ;
  wire \position_in_frame_buffer_reg[10]_i_8_n_1 ;
  wire \position_in_frame_buffer_reg[10]_i_8_n_2 ;
  wire \position_in_frame_buffer_reg[10]_i_8_n_3 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[14]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[14]_i_6_n_0 ;
  wire \position_in_frame_buffer_reg[14]_i_6_n_1 ;
  wire \position_in_frame_buffer_reg[14]_i_6_n_2 ;
  wire \position_in_frame_buffer_reg[14]_i_6_n_3 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[18]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[18]_i_6_n_0 ;
  wire \position_in_frame_buffer_reg[18]_i_6_n_1 ;
  wire \position_in_frame_buffer_reg[18]_i_6_n_2 ;
  wire \position_in_frame_buffer_reg[18]_i_6_n_3 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[22]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[22]_i_6_n_0 ;
  wire \position_in_frame_buffer_reg[22]_i_6_n_1 ;
  wire \position_in_frame_buffer_reg[22]_i_6_n_2 ;
  wire \position_in_frame_buffer_reg[22]_i_6_n_3 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[26]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[26]_i_6_n_1 ;
  wire \position_in_frame_buffer_reg[26]_i_6_n_2 ;
  wire \position_in_frame_buffer_reg[26]_i_6_n_3 ;
  wire \position_in_frame_buffer_reg[30]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[30]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[30]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[4]_i_2_n_0 ;
  wire \position_in_frame_buffer_reg[4]_i_2_n_1 ;
  wire \position_in_frame_buffer_reg[4]_i_2_n_2 ;
  wire \position_in_frame_buffer_reg[4]_i_2_n_3 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_0 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_1 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_2 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_3 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_4 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_5 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_6 ;
  wire \position_in_frame_buffer_reg[6]_i_1_n_7 ;
  wire \position_in_frame_buffer_reg[6]_i_8_n_0 ;
  wire \position_in_frame_buffer_reg[6]_i_8_n_1 ;
  wire \position_in_frame_buffer_reg[6]_i_8_n_2 ;
  wire \position_in_frame_buffer_reg[6]_i_8_n_3 ;
  wire read_index;
  wire \read_index[0]_i_1_n_0 ;
  wire read_issued_i_1_n_0;
  wire read_issued_reg_n_0;
  wire reads_done_i_1_n_0;
  wire reads_done_reg_n_0;
  wire start;
  wire start_single_read0;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire write_index;
  wire \write_index[0]_i_1_n_0 ;
  wire write_issued_i_1_n_0;
  wire write_issued_reg_n_0;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire [10:0]x_location;
  wire [10:0]y_location;
  wire [3:3]\NLW_internal_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_to_line_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_memory_counter_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_memory_counter_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_next_state2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_state2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_num_of_row_reg[28]_i_1_CO_UNCONNECTED ;
  wire NLW_position_in_frame_buffer0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_position_in_frame_buffer0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_position_in_frame_buffer0_OVERFLOW_UNCONNECTED;
  wire NLW_position_in_frame_buffer0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_position_in_frame_buffer0_PATTERNDETECT_UNCONNECTED;
  wire NLW_position_in_frame_buffer0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_position_in_frame_buffer0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_position_in_frame_buffer0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_position_in_frame_buffer0_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_position_in_frame_buffer0_P_UNCONNECTED;
  wire [47:0]NLW_position_in_frame_buffer0_PCOUT_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_OVERFLOW_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_PATTERNDETECT_UNCONNECTED;
  wire NLW_position_in_frame_buffer2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_position_in_frame_buffer2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_position_in_frame_buffer2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_position_in_frame_buffer2_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_position_in_frame_buffer2_P_UNCONNECTED;
  wire [3:3]\NLW_position_in_frame_buffer_reg[26]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_position_in_frame_buffer_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_position_in_frame_buffer_reg[30]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    assert_done_i_1
       (.I0(current_state[2]),
        .I1(current_state[4]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .O(internal_assert_done));
  FDRE assert_done_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(internal_assert_done),
        .Q(assert_done),
        .R(clear));
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1
       (.I0(start_single_read_reg_n_0),
        .I1(axi_lite_arvalid),
        .I2(axi_lite_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_lite_arvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    axi_awvalid_i_1
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(axi_lite_aresetn),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    axi_awvalid_i_2
       (.I0(start_single_write_reg_n_0),
        .I1(axi_lite_awready),
        .I2(axi_lite_awvalid),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(axi_lite_awvalid),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(axi_lite_bvalid),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \axi_lite_araddr[21]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .O(axi_lite_araddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_lite_araddr[2]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .O(axi_lite_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h001F1AFE)) 
    \axi_lite_awaddr[21]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(axi_lite_awaddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    \axi_lite_awaddr[2]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(axi_lite_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000017C0)) 
    \axi_lite_awaddr[3]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[4]),
        .O(axi_lite_awaddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    \axi_lite_awaddr[4]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(axi_lite_awaddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005780)) 
    \axi_lite_awaddr[5]_INST_0 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(axi_lite_awaddr[3]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[0]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[0]),
        .O(axi_lite_wdata[0]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[10]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[10]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[10]),
        .O(axi_lite_wdata[10]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[11]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[11]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[11]),
        .O(axi_lite_wdata[11]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[12]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[12]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[12]),
        .O(axi_lite_wdata[12]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[13]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[13]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[13]),
        .O(axi_lite_wdata[13]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[14]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[14]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[14]),
        .O(axi_lite_wdata[14]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[15]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[15]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[15]),
        .O(axi_lite_wdata[15]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[16]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[16]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[16]),
        .O(axi_lite_wdata[16]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[17]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[17]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[17]),
        .O(axi_lite_wdata[17]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[18]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[18]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[18]),
        .O(axi_lite_wdata[18]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[19]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[19]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[19]),
        .O(axi_lite_wdata[19]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[1]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[1]),
        .O(axi_lite_wdata[1]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[20]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[20]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[20]),
        .O(axi_lite_wdata[20]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[21]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[21]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[21]),
        .O(axi_lite_wdata[21]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[22]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[22]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[22]),
        .O(axi_lite_wdata[22]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[23]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[23]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[23]),
        .O(axi_lite_wdata[23]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[24]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[24]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[24]),
        .O(axi_lite_wdata[24]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[25]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[25]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[25]),
        .O(axi_lite_wdata[25]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[26]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[26]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[26]),
        .O(axi_lite_wdata[26]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[27]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[27]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[27]),
        .O(axi_lite_wdata[27]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[28]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[28]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[28]),
        .O(axi_lite_wdata[28]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[29]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[29]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[29]),
        .O(axi_lite_wdata[29]));
  LUT6 #(
    .INIT(64'h1404FFFF14040000)) 
    \axi_lite_wdata[2]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(position_in_frame_buffer_reg[2]),
        .I4(\axi_lite_wdata[2]_INST_0_i_1_n_0 ),
        .I5(\axi_lite_wdata[2]_INST_0_i_2_n_0 ),
        .O(axi_lite_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \axi_lite_wdata[2]_INST_0_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[4]),
        .O(\axi_lite_wdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111000040C840C8)) 
    \axi_lite_wdata[2]_INST_0_i_2 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(memory_counter_reg[2]),
        .I3(current_state[0]),
        .I4(position_in_frame_buffer_reg[2]),
        .I5(current_state[3]),
        .O(\axi_lite_wdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[30]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[30]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[30]),
        .O(axi_lite_wdata[30]));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[31]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[31]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[31]),
        .O(axi_lite_wdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \axi_lite_wdata[31]_INST_0_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[4]),
        .O(\axi_lite_wdata[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \axi_lite_wdata[3]_INST_0 
       (.I0(memory_counter_reg[3]),
        .I1(current_state[3]),
        .I2(\axi_lite_wdata[8]_INST_0_i_1_n_0 ),
        .I3(\axi_lite_wdata[3]_INST_0_i_1_n_0 ),
        .O(axi_lite_wdata[3]));
  LUT6 #(
    .INIT(64'h000000000080EE00)) 
    \axi_lite_wdata[3]_INST_0_i_1 
       (.I0(position_in_frame_buffer_reg[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[4]),
        .O(\axi_lite_wdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[4]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[4]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[4]),
        .O(axi_lite_wdata[4]));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \axi_lite_wdata[5]_INST_0 
       (.I0(memory_counter_reg[5]),
        .I1(current_state[3]),
        .I2(\axi_lite_wdata[8]_INST_0_i_1_n_0 ),
        .I3(\axi_lite_wdata[5]_INST_0_i_1_n_0 ),
        .O(axi_lite_wdata[5]));
  LUT6 #(
    .INIT(64'h000000000080EE00)) 
    \axi_lite_wdata[5]_INST_0_i_1 
       (.I0(position_in_frame_buffer_reg[5]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[4]),
        .O(\axi_lite_wdata[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \axi_lite_wdata[6]_INST_0 
       (.I0(memory_counter_reg[6]),
        .I1(current_state[3]),
        .I2(\axi_lite_wdata[8]_INST_0_i_1_n_0 ),
        .I3(\axi_lite_wdata[6]_INST_0_i_1_n_0 ),
        .O(axi_lite_wdata[6]));
  LUT6 #(
    .INIT(64'h000000000080EE00)) 
    \axi_lite_wdata[6]_INST_0_i_1 
       (.I0(position_in_frame_buffer_reg[6]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[4]),
        .O(\axi_lite_wdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[7]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[7]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[7]),
        .O(axi_lite_wdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \axi_lite_wdata[8]_INST_0 
       (.I0(memory_counter_reg[8]),
        .I1(current_state[3]),
        .I2(\axi_lite_wdata[8]_INST_0_i_1_n_0 ),
        .I3(\axi_lite_wdata[8]_INST_0_i_2_n_0 ),
        .O(axi_lite_wdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040444)) 
    \axi_lite_wdata[8]_INST_0_i_1 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .O(\axi_lite_wdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000080EE00)) 
    \axi_lite_wdata[8]_INST_0_i_2 
       (.I0(position_in_frame_buffer_reg[8]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[4]),
        .O(\axi_lite_wdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0808A8A00808080)) 
    \axi_lite_wdata[9]_INST_0 
       (.I0(\axi_lite_wdata[31]_INST_0_i_1_n_0 ),
        .I1(memory_counter_reg[9]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(position_in_frame_buffer_reg[9]),
        .O(axi_lite_wdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(axi_lite_rready),
        .I1(axi_lite_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_lite_rready),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(axi_lite_wvalid),
        .I2(axi_lite_wready),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_lite_wvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF4FFFF)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[0]_i_3_n_0 ),
        .I2(\current_state[0]_i_4_n_0 ),
        .I3(\current_state[0]_i_5_n_0 ),
        .I4(\current_state[0]_i_6_n_0 ),
        .I5(\current_state[0]_i_7_n_0 ),
        .O(\current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \current_state[0]_i_10 
       (.I0(current_state[0]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(writes_done),
        .O(\current_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5D5577777F777777)) 
    \current_state[0]_i_11 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(\current_state[3]_i_5_n_0 ),
        .I3(axi_lite_rdata[1]),
        .I4(current_state[1]),
        .I5(\current_state[0]_i_14_n_0 ),
        .O(\current_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0FF0000)) 
    \current_state[0]_i_12 
       (.I0(\current_state[3]_i_5_n_0 ),
        .I1(axi_lite_rdata[2]),
        .I2(current_state[0]),
        .I3(\current_state[1]_i_9_n_0 ),
        .I4(\current_state[4]_i_4_n_0 ),
        .I5(\current_state[0]_i_17_n_0 ),
        .O(\current_state[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[0]_i_13 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .O(\current_state[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[0]_i_14 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .O(\current_state[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \current_state[0]_i_15 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(writes_done),
        .O(\current_state[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0011001011110010)) 
    \current_state[0]_i_16 
       (.I0(\current_state[0]_i_18_n_0 ),
        .I1(current_state[2]),
        .I2(start),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(writes_done),
        .O(\current_state[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \current_state[0]_i_17 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\current_state[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[0]_i_18 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .O(\current_state[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000C00AAFFAAF3)) 
    \current_state[0]_i_2 
       (.I0(writes_done),
        .I1(\current_state[2]_i_12_n_0 ),
        .I2(\current_state[2]_i_9_n_0 ),
        .I3(current_state[0]),
        .I4(\current_state[2]_i_10_n_0 ),
        .I5(current_state[1]),
        .O(\current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_state[0]_i_3 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .O(\current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA80AAAAAAAA)) 
    \current_state[0]_i_4 
       (.I0(\current_state[0]_i_8_n_0 ),
        .I1(next_state2),
        .I2(\current_state[0]_i_9_n_0 ),
        .I3(\current_state[0]_i_10_n_0 ),
        .I4(done_INST_0_i_1_n_0),
        .I5(\current_state[0]_i_11_n_0 ),
        .O(\current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAABA)) 
    \current_state[0]_i_5 
       (.I0(\current_state[0]_i_12_n_0 ),
        .I1(\current_state[0]_i_13_n_0 ),
        .I2(current_state[4]),
        .I3(\current_state[0]_i_14_n_0 ),
        .I4(\current_state[0]_i_15_n_0 ),
        .I5(\current_state[0]_i_16_n_0 ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \current_state[0]_i_6 
       (.I0(\current_state[2]_i_12_n_0 ),
        .I1(\current_state[2]_i_9_n_0 ),
        .I2(current_state[0]),
        .I3(\current_state[2]_i_10_n_0 ),
        .O(\current_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFBD)) 
    \current_state[0]_i_7 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\current_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[0]_i_8 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .O(\current_state[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \current_state[0]_i_9 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(current_state[0]),
        .O(\current_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \current_state[1]_i_1 
       (.I0(\current_state[2]_i_3_n_0 ),
        .I1(\current_state[1]_i_2_n_0 ),
        .I2(\current_state[1]_i_3_n_0 ),
        .I3(\current_state[1]_i_4_n_0 ),
        .I4(\current_state[1]_i_5_n_0 ),
        .I5(\current_state[1]_i_6_n_0 ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010101000100)) 
    \current_state[1]_i_10 
       (.I0(current_state[2]),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(writes_done),
        .I5(current_state[0]),
        .O(\current_state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \current_state[1]_i_11 
       (.I0(current_state[2]),
        .I1(writes_done),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\current_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00045555FFFFFFFF)) 
    \current_state[1]_i_12 
       (.I0(\current_state[1]_i_4_n_0 ),
        .I1(current_state[0]),
        .I2(axi_lite_rdata[1]),
        .I3(\current_state[3]_i_5_n_0 ),
        .I4(\current_state[1]_i_9_n_0 ),
        .I5(\current_state[0]_i_8_n_0 ),
        .O(\current_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0007FFFFFFFF)) 
    \current_state[1]_i_2 
       (.I0(writes_done),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[4]),
        .I5(current_state[3]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554FFFF00000000)) 
    \current_state[1]_i_3 
       (.I0(\current_state[1]_i_7_n_0 ),
        .I1(\current_state[4]_i_7_n_0 ),
        .I2(\current_state[4]_i_6_n_0 ),
        .I3(\current_state[1]_i_8_n_0 ),
        .I4(current_state[0]),
        .I5(\current_state[1]_i_9_n_0 ),
        .O(\current_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h32FF)) 
    \current_state[1]_i_4 
       (.I0(writes_done),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\current_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEAAAAAAAA)) 
    \current_state[1]_i_5 
       (.I0(\current_state[1]_i_10_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[2]_i_10_n_0 ),
        .I3(\current_state[2]_i_13_n_0 ),
        .I4(\current_state[2]_i_12_n_0 ),
        .I5(axi_lite_awaddr[2]),
        .O(\current_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEAEEEE)) 
    \current_state[1]_i_6 
       (.I0(\current_state[1]_i_11_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[2]_i_10_n_0 ),
        .I3(\current_state[2]_i_13_n_0 ),
        .I4(\current_state[2]_i_12_n_0 ),
        .I5(\current_state[1]_i_12_n_0 ),
        .O(\current_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_state[1]_i_7 
       (.I0(axi_lite_rdata[2]),
        .I1(axi_lite_rready),
        .I2(axi_lite_rvalid),
        .O(\current_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \current_state[1]_i_8 
       (.I0(axi_lite_rready),
        .I1(axi_lite_rvalid),
        .I2(axi_lite_rdata[0]),
        .O(\current_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \current_state[1]_i_9 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .O(\current_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FDF0F0FFFDF0)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .I5(\current_state[2]_i_5_n_0 ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \current_state[2]_i_10 
       (.I0(internal_counter_reg[25]),
        .I1(internal_counter_reg[0]),
        .I2(internal_counter_reg[26]),
        .I3(internal_counter_reg[1]),
        .I4(\current_state[2]_i_15_n_0 ),
        .I5(\current_state[2]_i_16_n_0 ),
        .O(\current_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_state[2]_i_11 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(axi_lite_rvalid),
        .I3(axi_lite_rready),
        .I4(axi_lite_rdata[1]),
        .O(\current_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[2]_i_12 
       (.I0(\current_state[2]_i_14_n_0 ),
        .I1(internal_counter_reg[19]),
        .I2(internal_counter_reg[8]),
        .I3(internal_counter_reg[18]),
        .I4(internal_counter_reg[17]),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\current_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_state[2]_i_13 
       (.I0(internal_counter_reg[6]),
        .I1(internal_counter_reg[7]),
        .I2(internal_counter_reg[4]),
        .I3(internal_counter_reg[5]),
        .I4(current_state[0]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_14 
       (.I0(internal_counter_reg[23]),
        .I1(internal_counter_reg[22]),
        .I2(internal_counter_reg[15]),
        .I3(internal_counter_reg[16]),
        .I4(internal_counter_reg[20]),
        .I5(internal_counter_reg[21]),
        .O(\current_state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_15 
       (.I0(internal_counter_reg[27]),
        .I1(internal_counter_reg[29]),
        .I2(internal_counter_reg[28]),
        .I3(internal_counter_reg[3]),
        .O(\current_state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_16 
       (.I0(internal_counter_reg[30]),
        .I1(internal_counter_reg[31]),
        .I2(internal_counter_reg[24]),
        .I3(internal_counter_reg[2]),
        .O(\current_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hC0800000FFFFFFFF)) 
    \current_state[2]_i_2 
       (.I0(axi_lite_rdata[0]),
        .I1(axi_lite_rvalid),
        .I2(axi_lite_rready),
        .I3(axi_lite_rdata[2]),
        .I4(\current_state[3]_i_4_n_0 ),
        .I5(current_state[2]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \current_state[2]_i_3 
       (.I0(\current_state[2]_i_6_n_0 ),
        .I1(\current_state[2]_i_7_n_0 ),
        .I2(current_state[0]),
        .I3(\current_state[2]_i_8_n_0 ),
        .I4(\current_state[2]_i_9_n_0 ),
        .I5(\current_state[2]_i_10_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006C4C)) 
    \current_state[2]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(writes_done),
        .I4(current_state[4]),
        .I5(current_state[3]),
        .O(\current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB8BBB)) 
    \current_state[2]_i_5 
       (.I0(\current_state[2]_i_11_n_0 ),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\current_state[2]_i_12_n_0 ),
        .I4(\current_state[2]_i_13_n_0 ),
        .I5(\current_state[2]_i_10_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_6 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(\current_state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[2]_i_7 
       (.I0(internal_counter_reg[17]),
        .I1(internal_counter_reg[18]),
        .I2(internal_counter_reg[8]),
        .I3(internal_counter_reg[19]),
        .I4(\current_state[2]_i_14_n_0 ),
        .O(\current_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_8 
       (.I0(internal_counter_reg[10]),
        .I1(internal_counter_reg[9]),
        .I2(internal_counter_reg[11]),
        .I3(internal_counter_reg[13]),
        .I4(internal_counter_reg[12]),
        .I5(internal_counter_reg[14]),
        .O(\current_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_9 
       (.I0(internal_counter_reg[5]),
        .I1(internal_counter_reg[4]),
        .I2(internal_counter_reg[7]),
        .I3(internal_counter_reg[6]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1D3F3F0C3F0C3F0C)) 
    \current_state[3]_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(current_state[4]),
        .I2(\current_state[3]_i_3_n_0 ),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(\current_state[3]_i_4_n_0 ),
        .O(\current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAA000000000000)) 
    \current_state[3]_i_2 
       (.I0(axi_lite_rdata[2]),
        .I1(\current_state[4]_i_7_n_0 ),
        .I2(\current_state[4]_i_6_n_0 ),
        .I3(axi_lite_rdata[0]),
        .I4(axi_lite_rvalid),
        .I5(axi_lite_rready),
        .O(\current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFDFFFDFFBDFF)) 
    \current_state[3]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\current_state[3]_i_5_n_0 ),
        .I5(axi_lite_rdata[1]),
        .O(\current_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[3]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\current_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_5 
       (.I0(axi_lite_rvalid),
        .I1(axi_lite_rready),
        .O(\current_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0000000)) 
    \current_state[4]_i_1 
       (.I0(axi_lite_rdata[2]),
        .I1(\current_state[4]_i_2_n_0 ),
        .I2(\current_state[4]_i_3_n_0 ),
        .I3(\current_state[4]_i_4_n_0 ),
        .I4(current_state[2]),
        .I5(\current_state[4]_i_5_n_0 ),
        .O(\current_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[4]_i_10 
       (.I0(num_of_row_reg[19]),
        .I1(num_of_row_reg[16]),
        .I2(num_of_row_reg[22]),
        .I3(num_of_row_reg[21]),
        .O(\current_state[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[4]_i_11 
       (.I0(num_of_row_reg[18]),
        .I1(num_of_row_reg[17]),
        .I2(num_of_row_reg[23]),
        .I3(num_of_row_reg[20]),
        .O(\current_state[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[4]_i_12 
       (.I0(num_of_row_reg[7]),
        .I1(num_of_row_reg[2]),
        .I2(num_of_row_reg[1]),
        .I3(num_of_row_reg[0]),
        .O(\current_state[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[4]_i_13 
       (.I0(num_of_row_reg[31]),
        .I1(num_of_row_reg[28]),
        .I2(num_of_row_reg[29]),
        .I3(num_of_row_reg[30]),
        .O(\current_state[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \current_state[4]_i_14 
       (.I0(num_of_row_reg[11]),
        .I1(num_of_row_reg[8]),
        .I2(num_of_row_reg[14]),
        .I3(num_of_row_reg[13]),
        .O(\current_state[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[4]_i_15 
       (.I0(num_of_row_reg[10]),
        .I1(num_of_row_reg[9]),
        .I2(num_of_row_reg[15]),
        .I3(num_of_row_reg[12]),
        .O(\current_state[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[4]_i_2 
       (.I0(\current_state[4]_i_6_n_0 ),
        .I1(\current_state[4]_i_7_n_0 ),
        .O(\current_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8800000080000000)) 
    \current_state[4]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(axi_lite_rdata[2]),
        .I3(axi_lite_rready),
        .I4(axi_lite_rvalid),
        .I5(axi_lite_rdata[0]),
        .O(\current_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[4]_i_4 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .O(\current_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF7)) 
    \current_state[4]_i_5 
       (.I0(internal_done_i_2_n_0),
        .I1(next_state2),
        .I2(current_state[0]),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .I5(\current_state[4]_i_8_n_0 ),
        .O(\current_state[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \current_state[4]_i_6 
       (.I0(num_of_row_reg[25]),
        .I1(num_of_row_reg[26]),
        .I2(num_of_row_reg[5]),
        .I3(num_of_row_reg[4]),
        .I4(\current_state[4]_i_9_n_0 ),
        .O(\current_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \current_state[4]_i_7 
       (.I0(\current_state[4]_i_10_n_0 ),
        .I1(\current_state[4]_i_11_n_0 ),
        .I2(\current_state[4]_i_12_n_0 ),
        .I3(\current_state[4]_i_13_n_0 ),
        .I4(\current_state[4]_i_14_n_0 ),
        .I5(\current_state[4]_i_15_n_0 ),
        .O(\current_state[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDDDDD55D)) 
    \current_state[4]_i_8 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(\current_state[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \current_state[4]_i_9 
       (.I0(num_of_row_reg[6]),
        .I1(num_of_row_reg[3]),
        .I2(num_of_row_reg[27]),
        .I3(num_of_row_reg[24]),
        .O(\current_state[4]_i_9_n_0 ));
  FDRE \current_state_reg[0] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(clear));
  FDRE \current_state_reg[1] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(clear));
  FDRE \current_state_reg[2] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(current_state[2]),
        .R(clear));
  FDRE \current_state_reg[3] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\current_state[3]_i_1_n_0 ),
        .Q(current_state[3]),
        .R(clear));
  FDRE \current_state_reg[4] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\current_state[4]_i_1_n_0 ),
        .Q(current_state[4]),
        .R(clear));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    done_INST_0
       (.I0(assert_done),
        .I1(current_state[4]),
        .I2(current_state[0]),
        .I3(done_INST_0_i_1_n_0),
        .I4(current_state[3]),
        .I5(internal_done_reg_n_0),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_INST_0_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(done_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(delay_per_line[22]),
        .I1(line_to_line_counter_reg[22]),
        .I2(delay_per_line[21]),
        .I3(line_to_line_counter_reg[21]),
        .I4(line_to_line_counter_reg[23]),
        .I5(delay_per_line[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(delay_per_line[20]),
        .I1(line_to_line_counter_reg[20]),
        .I2(delay_per_line[18]),
        .I3(line_to_line_counter_reg[18]),
        .I4(line_to_line_counter_reg[19]),
        .I5(delay_per_line[19]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(delay_per_line[17]),
        .I1(line_to_line_counter_reg[17]),
        .I2(delay_per_line[15]),
        .I3(line_to_line_counter_reg[15]),
        .I4(line_to_line_counter_reg[16]),
        .I5(delay_per_line[16]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(delay_per_line[12]),
        .I1(line_to_line_counter_reg[12]),
        .I2(delay_per_line[13]),
        .I3(line_to_line_counter_reg[13]),
        .I4(line_to_line_counter_reg[14]),
        .I5(delay_per_line[14]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(line_to_line_counter_reg[31]),
        .I1(delay_per_line[31]),
        .I2(line_to_line_counter_reg[30]),
        .I3(delay_per_line[30]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(delay_per_line[27]),
        .I1(line_to_line_counter_reg[27]),
        .I2(delay_per_line[28]),
        .I3(line_to_line_counter_reg[28]),
        .I4(line_to_line_counter_reg[29]),
        .I5(delay_per_line[29]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(delay_per_line[24]),
        .I1(line_to_line_counter_reg[24]),
        .I2(delay_per_line[25]),
        .I3(line_to_line_counter_reg[25]),
        .I4(line_to_line_counter_reg[26]),
        .I5(delay_per_line[26]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(delay_per_line[9]),
        .I1(line_to_line_counter_reg[9]),
        .I2(delay_per_line[10]),
        .I3(line_to_line_counter_reg[10]),
        .I4(line_to_line_counter_reg[11]),
        .I5(delay_per_line[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(delay_per_line[6]),
        .I1(line_to_line_counter_reg[6]),
        .I2(delay_per_line[7]),
        .I3(line_to_line_counter_reg[7]),
        .I4(line_to_line_counter_reg[8]),
        .I5(delay_per_line[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(delay_per_line[3]),
        .I1(line_to_line_counter_reg[3]),
        .I2(delay_per_line[4]),
        .I3(line_to_line_counter_reg[4]),
        .I4(line_to_line_counter_reg[5]),
        .I5(delay_per_line[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(line_to_line_counter_reg[0]),
        .I1(delay_per_line[0]),
        .I2(delay_per_line[2]),
        .I3(line_to_line_counter_reg[2]),
        .I4(delay_per_line[1]),
        .I5(line_to_line_counter_reg[1]),
        .O(i__carry_i_4_n_0));
  FDRE init_txn_ff2_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    init_txn_ff_i_1
       (.I0(axi_lite_aresetn),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10010160)) 
    init_txn_ff_i_2
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(INIT_AXI_TXN));
  FDRE init_txn_ff_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(INIT_AXI_TXN),
        .Q(init_txn_ff),
        .R(clear));
  LUT6 #(
    .INIT(64'h57555555557D5755)) 
    \internal_counter[0]_i_1 
       (.I0(axi_lite_aresetn),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(internal_counter0));
  LUT1 #(
    .INIT(2'h1)) 
    \internal_counter[0]_i_3 
       (.I0(internal_counter_reg[0]),
        .O(\internal_counter[0]_i_3_n_0 ));
  FDRE \internal_counter_reg[0] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[0]_i_2_n_7 ),
        .Q(internal_counter_reg[0]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\internal_counter_reg[0]_i_2_n_0 ,\internal_counter_reg[0]_i_2_n_1 ,\internal_counter_reg[0]_i_2_n_2 ,\internal_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\internal_counter_reg[0]_i_2_n_4 ,\internal_counter_reg[0]_i_2_n_5 ,\internal_counter_reg[0]_i_2_n_6 ,\internal_counter_reg[0]_i_2_n_7 }),
        .S({internal_counter_reg[3:1],\internal_counter[0]_i_3_n_0 }));
  FDRE \internal_counter_reg[10] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[8]_i_1_n_5 ),
        .Q(internal_counter_reg[10]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[11] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[8]_i_1_n_4 ),
        .Q(internal_counter_reg[11]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[12] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[12]_i_1_n_7 ),
        .Q(internal_counter_reg[12]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[12]_i_1 
       (.CI(\internal_counter_reg[8]_i_1_n_0 ),
        .CO({\internal_counter_reg[12]_i_1_n_0 ,\internal_counter_reg[12]_i_1_n_1 ,\internal_counter_reg[12]_i_1_n_2 ,\internal_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[12]_i_1_n_4 ,\internal_counter_reg[12]_i_1_n_5 ,\internal_counter_reg[12]_i_1_n_6 ,\internal_counter_reg[12]_i_1_n_7 }),
        .S(internal_counter_reg[15:12]));
  FDRE \internal_counter_reg[13] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[12]_i_1_n_6 ),
        .Q(internal_counter_reg[13]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[14] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[12]_i_1_n_5 ),
        .Q(internal_counter_reg[14]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[15] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[12]_i_1_n_4 ),
        .Q(internal_counter_reg[15]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[16] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[16]_i_1_n_7 ),
        .Q(internal_counter_reg[16]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[16]_i_1 
       (.CI(\internal_counter_reg[12]_i_1_n_0 ),
        .CO({\internal_counter_reg[16]_i_1_n_0 ,\internal_counter_reg[16]_i_1_n_1 ,\internal_counter_reg[16]_i_1_n_2 ,\internal_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[16]_i_1_n_4 ,\internal_counter_reg[16]_i_1_n_5 ,\internal_counter_reg[16]_i_1_n_6 ,\internal_counter_reg[16]_i_1_n_7 }),
        .S(internal_counter_reg[19:16]));
  FDRE \internal_counter_reg[17] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[16]_i_1_n_6 ),
        .Q(internal_counter_reg[17]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[18] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[16]_i_1_n_5 ),
        .Q(internal_counter_reg[18]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[19] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[16]_i_1_n_4 ),
        .Q(internal_counter_reg[19]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[1] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[0]_i_2_n_6 ),
        .Q(internal_counter_reg[1]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[20] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[20]_i_1_n_7 ),
        .Q(internal_counter_reg[20]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[20]_i_1 
       (.CI(\internal_counter_reg[16]_i_1_n_0 ),
        .CO({\internal_counter_reg[20]_i_1_n_0 ,\internal_counter_reg[20]_i_1_n_1 ,\internal_counter_reg[20]_i_1_n_2 ,\internal_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[20]_i_1_n_4 ,\internal_counter_reg[20]_i_1_n_5 ,\internal_counter_reg[20]_i_1_n_6 ,\internal_counter_reg[20]_i_1_n_7 }),
        .S(internal_counter_reg[23:20]));
  FDRE \internal_counter_reg[21] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[20]_i_1_n_6 ),
        .Q(internal_counter_reg[21]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[22] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[20]_i_1_n_5 ),
        .Q(internal_counter_reg[22]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[23] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[20]_i_1_n_4 ),
        .Q(internal_counter_reg[23]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[24] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[24]_i_1_n_7 ),
        .Q(internal_counter_reg[24]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[24]_i_1 
       (.CI(\internal_counter_reg[20]_i_1_n_0 ),
        .CO({\internal_counter_reg[24]_i_1_n_0 ,\internal_counter_reg[24]_i_1_n_1 ,\internal_counter_reg[24]_i_1_n_2 ,\internal_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[24]_i_1_n_4 ,\internal_counter_reg[24]_i_1_n_5 ,\internal_counter_reg[24]_i_1_n_6 ,\internal_counter_reg[24]_i_1_n_7 }),
        .S(internal_counter_reg[27:24]));
  FDRE \internal_counter_reg[25] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[24]_i_1_n_6 ),
        .Q(internal_counter_reg[25]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[26] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[24]_i_1_n_5 ),
        .Q(internal_counter_reg[26]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[27] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[24]_i_1_n_4 ),
        .Q(internal_counter_reg[27]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[28] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[28]_i_1_n_7 ),
        .Q(internal_counter_reg[28]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[28]_i_1 
       (.CI(\internal_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_internal_counter_reg[28]_i_1_CO_UNCONNECTED [3],\internal_counter_reg[28]_i_1_n_1 ,\internal_counter_reg[28]_i_1_n_2 ,\internal_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[28]_i_1_n_4 ,\internal_counter_reg[28]_i_1_n_5 ,\internal_counter_reg[28]_i_1_n_6 ,\internal_counter_reg[28]_i_1_n_7 }),
        .S(internal_counter_reg[31:28]));
  FDRE \internal_counter_reg[29] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[28]_i_1_n_6 ),
        .Q(internal_counter_reg[29]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[2] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[0]_i_2_n_5 ),
        .Q(internal_counter_reg[2]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[30] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[28]_i_1_n_5 ),
        .Q(internal_counter_reg[30]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[31] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[28]_i_1_n_4 ),
        .Q(internal_counter_reg[31]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[3] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[0]_i_2_n_4 ),
        .Q(internal_counter_reg[3]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[4] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[4]_i_1_n_7 ),
        .Q(internal_counter_reg[4]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[4]_i_1 
       (.CI(\internal_counter_reg[0]_i_2_n_0 ),
        .CO({\internal_counter_reg[4]_i_1_n_0 ,\internal_counter_reg[4]_i_1_n_1 ,\internal_counter_reg[4]_i_1_n_2 ,\internal_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[4]_i_1_n_4 ,\internal_counter_reg[4]_i_1_n_5 ,\internal_counter_reg[4]_i_1_n_6 ,\internal_counter_reg[4]_i_1_n_7 }),
        .S(internal_counter_reg[7:4]));
  FDRE \internal_counter_reg[5] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[4]_i_1_n_6 ),
        .Q(internal_counter_reg[5]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[6] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[4]_i_1_n_5 ),
        .Q(internal_counter_reg[6]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[7] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[4]_i_1_n_4 ),
        .Q(internal_counter_reg[7]),
        .R(internal_counter0));
  FDRE \internal_counter_reg[8] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[8]_i_1_n_7 ),
        .Q(internal_counter_reg[8]),
        .R(internal_counter0));
  CARRY4 \internal_counter_reg[8]_i_1 
       (.CI(\internal_counter_reg[4]_i_1_n_0 ),
        .CO({\internal_counter_reg[8]_i_1_n_0 ,\internal_counter_reg[8]_i_1_n_1 ,\internal_counter_reg[8]_i_1_n_2 ,\internal_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_counter_reg[8]_i_1_n_4 ,\internal_counter_reg[8]_i_1_n_5 ,\internal_counter_reg[8]_i_1_n_6 ,\internal_counter_reg[8]_i_1_n_7 }),
        .S(internal_counter_reg[11:8]));
  FDRE \internal_counter_reg[9] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\internal_counter_reg[8]_i_1_n_6 ),
        .Q(internal_counter_reg[9]),
        .R(internal_counter0));
  LUT6 #(
    .INIT(64'hBF000000FFFFFFFF)) 
    internal_done_i_1
       (.I0(current_state[4]),
        .I1(current_state[0]),
        .I2(internal_done_i_2_n_0),
        .I3(axi_lite_aresetn),
        .I4(internal_done_reg_n_0),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(internal_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    internal_done_i_2
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(internal_done_i_2_n_0));
  FDRE internal_done_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(internal_done_i_1_n_0),
        .Q(internal_done_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFF88888)) 
    last_read_i_1
       (.I0(read_index),
        .I1(axi_lite_arready),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .I4(last_read),
        .O(last_read_i_1_n_0));
  FDRE last_read_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(last_read_i_1_n_0),
        .Q(last_read),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    last_write_i_1
       (.I0(write_index),
        .I1(axi_lite_awready),
        .I2(last_write),
        .O(last_write_i_1_n_0));
  FDRE last_write_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(last_write_i_1_n_0),
        .Q(last_write),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h00200000FFFFFFFF)) 
    \line_to_line_counter[0]_i_1 
       (.I0(current_state[4]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(axi_lite_aresetn),
        .O(\line_to_line_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \line_to_line_counter[0]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[4]),
        .I4(current_state[0]),
        .O(increament_line_to_line_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \line_to_line_counter[0]_i_4 
       (.I0(line_to_line_counter_reg[0]),
        .O(\line_to_line_counter[0]_i_4_n_0 ));
  FDRE \line_to_line_counter_reg[0] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[0]_i_3_n_7 ),
        .Q(line_to_line_counter_reg[0]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\line_to_line_counter_reg[0]_i_3_n_0 ,\line_to_line_counter_reg[0]_i_3_n_1 ,\line_to_line_counter_reg[0]_i_3_n_2 ,\line_to_line_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\line_to_line_counter_reg[0]_i_3_n_4 ,\line_to_line_counter_reg[0]_i_3_n_5 ,\line_to_line_counter_reg[0]_i_3_n_6 ,\line_to_line_counter_reg[0]_i_3_n_7 }),
        .S({line_to_line_counter_reg[3:1],\line_to_line_counter[0]_i_4_n_0 }));
  FDRE \line_to_line_counter_reg[10] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[8]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[10]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[11] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[8]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[11]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[12] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[12]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[12]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[12]_i_1 
       (.CI(\line_to_line_counter_reg[8]_i_1_n_0 ),
        .CO({\line_to_line_counter_reg[12]_i_1_n_0 ,\line_to_line_counter_reg[12]_i_1_n_1 ,\line_to_line_counter_reg[12]_i_1_n_2 ,\line_to_line_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[12]_i_1_n_4 ,\line_to_line_counter_reg[12]_i_1_n_5 ,\line_to_line_counter_reg[12]_i_1_n_6 ,\line_to_line_counter_reg[12]_i_1_n_7 }),
        .S(line_to_line_counter_reg[15:12]));
  FDRE \line_to_line_counter_reg[13] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[12]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[13]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[14] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[12]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[14]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[15] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[12]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[15]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[16] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[16]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[16]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[16]_i_1 
       (.CI(\line_to_line_counter_reg[12]_i_1_n_0 ),
        .CO({\line_to_line_counter_reg[16]_i_1_n_0 ,\line_to_line_counter_reg[16]_i_1_n_1 ,\line_to_line_counter_reg[16]_i_1_n_2 ,\line_to_line_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[16]_i_1_n_4 ,\line_to_line_counter_reg[16]_i_1_n_5 ,\line_to_line_counter_reg[16]_i_1_n_6 ,\line_to_line_counter_reg[16]_i_1_n_7 }),
        .S(line_to_line_counter_reg[19:16]));
  FDRE \line_to_line_counter_reg[17] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[16]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[17]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[18] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[16]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[18]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[19] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[16]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[19]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[1] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[0]_i_3_n_6 ),
        .Q(line_to_line_counter_reg[1]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[20] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[20]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[20]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[20]_i_1 
       (.CI(\line_to_line_counter_reg[16]_i_1_n_0 ),
        .CO({\line_to_line_counter_reg[20]_i_1_n_0 ,\line_to_line_counter_reg[20]_i_1_n_1 ,\line_to_line_counter_reg[20]_i_1_n_2 ,\line_to_line_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[20]_i_1_n_4 ,\line_to_line_counter_reg[20]_i_1_n_5 ,\line_to_line_counter_reg[20]_i_1_n_6 ,\line_to_line_counter_reg[20]_i_1_n_7 }),
        .S(line_to_line_counter_reg[23:20]));
  FDRE \line_to_line_counter_reg[21] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[20]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[21]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[22] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[20]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[22]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[23] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[20]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[23]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[24] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[24]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[24]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[24]_i_1 
       (.CI(\line_to_line_counter_reg[20]_i_1_n_0 ),
        .CO({\line_to_line_counter_reg[24]_i_1_n_0 ,\line_to_line_counter_reg[24]_i_1_n_1 ,\line_to_line_counter_reg[24]_i_1_n_2 ,\line_to_line_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[24]_i_1_n_4 ,\line_to_line_counter_reg[24]_i_1_n_5 ,\line_to_line_counter_reg[24]_i_1_n_6 ,\line_to_line_counter_reg[24]_i_1_n_7 }),
        .S(line_to_line_counter_reg[27:24]));
  FDRE \line_to_line_counter_reg[25] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[24]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[25]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[26] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[24]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[26]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[27] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[24]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[27]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[28] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[28]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[28]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[28]_i_1 
       (.CI(\line_to_line_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_line_to_line_counter_reg[28]_i_1_CO_UNCONNECTED [3],\line_to_line_counter_reg[28]_i_1_n_1 ,\line_to_line_counter_reg[28]_i_1_n_2 ,\line_to_line_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[28]_i_1_n_4 ,\line_to_line_counter_reg[28]_i_1_n_5 ,\line_to_line_counter_reg[28]_i_1_n_6 ,\line_to_line_counter_reg[28]_i_1_n_7 }),
        .S(line_to_line_counter_reg[31:28]));
  FDRE \line_to_line_counter_reg[29] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[28]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[29]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[2] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[0]_i_3_n_5 ),
        .Q(line_to_line_counter_reg[2]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[30] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[28]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[30]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[31] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[28]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[31]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[3] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[0]_i_3_n_4 ),
        .Q(line_to_line_counter_reg[3]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[4] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[4]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[4]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[4]_i_1 
       (.CI(\line_to_line_counter_reg[0]_i_3_n_0 ),
        .CO({\line_to_line_counter_reg[4]_i_1_n_0 ,\line_to_line_counter_reg[4]_i_1_n_1 ,\line_to_line_counter_reg[4]_i_1_n_2 ,\line_to_line_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[4]_i_1_n_4 ,\line_to_line_counter_reg[4]_i_1_n_5 ,\line_to_line_counter_reg[4]_i_1_n_6 ,\line_to_line_counter_reg[4]_i_1_n_7 }),
        .S(line_to_line_counter_reg[7:4]));
  FDRE \line_to_line_counter_reg[5] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[4]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[5]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[6] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[4]_i_1_n_5 ),
        .Q(line_to_line_counter_reg[6]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[7] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[4]_i_1_n_4 ),
        .Q(line_to_line_counter_reg[7]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  FDRE \line_to_line_counter_reg[8] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[8]_i_1_n_7 ),
        .Q(line_to_line_counter_reg[8]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  CARRY4 \line_to_line_counter_reg[8]_i_1 
       (.CI(\line_to_line_counter_reg[4]_i_1_n_0 ),
        .CO({\line_to_line_counter_reg[8]_i_1_n_0 ,\line_to_line_counter_reg[8]_i_1_n_1 ,\line_to_line_counter_reg[8]_i_1_n_2 ,\line_to_line_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_to_line_counter_reg[8]_i_1_n_4 ,\line_to_line_counter_reg[8]_i_1_n_5 ,\line_to_line_counter_reg[8]_i_1_n_6 ,\line_to_line_counter_reg[8]_i_1_n_7 }),
        .S(line_to_line_counter_reg[11:8]));
  FDRE \line_to_line_counter_reg[9] 
       (.C(axi_lite_aclk),
        .CE(increament_line_to_line_counter),
        .D(\line_to_line_counter_reg[8]_i_1_n_6 ),
        .Q(line_to_line_counter_reg[9]),
        .R(\line_to_line_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \memory_counter[0]_i_1 
       (.I0(start),
        .I1(current_state[0]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(position_in_frame_buffer));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[0]_i_2 
       (.I0(img_addr[0]),
        .I1(start),
        .I2(memory_counter_reg[0]),
        .O(\memory_counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[10]_i_2 
       (.I0(img_addr[13]),
        .I1(start),
        .I2(memory_counter_reg[13]),
        .O(\memory_counter[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[10]_i_3 
       (.I0(img_addr[12]),
        .I1(start),
        .I2(memory_counter_reg[12]),
        .O(\memory_counter[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[10]_i_4 
       (.I0(img_addr[11]),
        .I1(start),
        .I2(memory_counter_reg[11]),
        .O(\memory_counter[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[10]_i_5 
       (.I0(img_addr[10]),
        .I1(start),
        .I2(memory_counter_reg[10]),
        .O(\memory_counter[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[14]_i_2 
       (.I0(img_addr[17]),
        .I1(start),
        .I2(memory_counter_reg[17]),
        .O(\memory_counter[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[14]_i_3 
       (.I0(img_addr[16]),
        .I1(start),
        .I2(memory_counter_reg[16]),
        .O(\memory_counter[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[14]_i_4 
       (.I0(img_addr[15]),
        .I1(start),
        .I2(memory_counter_reg[15]),
        .O(\memory_counter[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[14]_i_5 
       (.I0(img_addr[14]),
        .I1(start),
        .I2(memory_counter_reg[14]),
        .O(\memory_counter[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[18]_i_2 
       (.I0(img_addr[21]),
        .I1(start),
        .I2(memory_counter_reg[21]),
        .O(\memory_counter[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[18]_i_3 
       (.I0(img_addr[20]),
        .I1(start),
        .I2(memory_counter_reg[20]),
        .O(\memory_counter[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[18]_i_4 
       (.I0(img_addr[19]),
        .I1(start),
        .I2(memory_counter_reg[19]),
        .O(\memory_counter[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[18]_i_5 
       (.I0(img_addr[18]),
        .I1(start),
        .I2(memory_counter_reg[18]),
        .O(\memory_counter[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[1]_i_1 
       (.I0(img_addr[1]),
        .I1(start),
        .I2(memory_counter_reg[1]),
        .O(\memory_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[22]_i_2 
       (.I0(img_addr[25]),
        .I1(start),
        .I2(memory_counter_reg[25]),
        .O(\memory_counter[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[22]_i_3 
       (.I0(img_addr[24]),
        .I1(start),
        .I2(memory_counter_reg[24]),
        .O(\memory_counter[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[22]_i_4 
       (.I0(img_addr[23]),
        .I1(start),
        .I2(memory_counter_reg[23]),
        .O(\memory_counter[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[22]_i_5 
       (.I0(img_addr[22]),
        .I1(start),
        .I2(memory_counter_reg[22]),
        .O(\memory_counter[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[26]_i_2 
       (.I0(img_addr[29]),
        .I1(start),
        .I2(memory_counter_reg[29]),
        .O(\memory_counter[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[26]_i_3 
       (.I0(img_addr[28]),
        .I1(start),
        .I2(memory_counter_reg[28]),
        .O(\memory_counter[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[26]_i_4 
       (.I0(img_addr[27]),
        .I1(start),
        .I2(memory_counter_reg[27]),
        .O(\memory_counter[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[26]_i_5 
       (.I0(img_addr[26]),
        .I1(start),
        .I2(memory_counter_reg[26]),
        .O(\memory_counter[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[2]_i_2 
       (.I0(img_addr[5]),
        .I1(start),
        .I2(memory_counter_reg[5]),
        .O(\memory_counter[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[2]_i_3 
       (.I0(img_addr[3]),
        .I1(start),
        .I2(memory_counter_reg[3]),
        .O(\memory_counter[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \memory_counter[2]_i_4 
       (.I0(memory_counter_reg[5]),
        .I1(img_addr[5]),
        .I2(start),
        .O(\memory_counter[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[2]_i_5 
       (.I0(img_addr[4]),
        .I1(start),
        .I2(memory_counter_reg[4]),
        .O(\memory_counter[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \memory_counter[2]_i_6 
       (.I0(memory_counter_reg[3]),
        .I1(img_addr[3]),
        .I2(start),
        .O(\memory_counter[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[2]_i_7 
       (.I0(img_addr[2]),
        .I1(start),
        .I2(memory_counter_reg[2]),
        .O(\memory_counter[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[30]_i_2 
       (.I0(img_addr[31]),
        .I1(start),
        .I2(memory_counter_reg[31]),
        .O(\memory_counter[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[30]_i_3 
       (.I0(img_addr[30]),
        .I1(start),
        .I2(memory_counter_reg[30]),
        .O(\memory_counter[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[6]_i_2 
       (.I0(img_addr[8]),
        .I1(start),
        .I2(memory_counter_reg[8]),
        .O(\memory_counter[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[6]_i_3 
       (.I0(img_addr[6]),
        .I1(start),
        .I2(memory_counter_reg[6]),
        .O(\memory_counter[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[6]_i_4 
       (.I0(img_addr[9]),
        .I1(start),
        .I2(memory_counter_reg[9]),
        .O(\memory_counter[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \memory_counter[6]_i_5 
       (.I0(memory_counter_reg[8]),
        .I1(img_addr[8]),
        .I2(start),
        .O(\memory_counter[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_counter[6]_i_6 
       (.I0(img_addr[7]),
        .I1(start),
        .I2(memory_counter_reg[7]),
        .O(\memory_counter[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \memory_counter[6]_i_7 
       (.I0(memory_counter_reg[6]),
        .I1(img_addr[6]),
        .I2(start),
        .O(\memory_counter[6]_i_7_n_0 ));
  FDRE \memory_counter_reg[0] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter[0]_i_2_n_0 ),
        .Q(memory_counter_reg[0]),
        .R(clear));
  FDRE \memory_counter_reg[10] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[10]_i_1_n_7 ),
        .Q(memory_counter_reg[10]),
        .R(clear));
  CARRY4 \memory_counter_reg[10]_i_1 
       (.CI(\memory_counter_reg[6]_i_1_n_0 ),
        .CO({\memory_counter_reg[10]_i_1_n_0 ,\memory_counter_reg[10]_i_1_n_1 ,\memory_counter_reg[10]_i_1_n_2 ,\memory_counter_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memory_counter_reg[10]_i_1_n_4 ,\memory_counter_reg[10]_i_1_n_5 ,\memory_counter_reg[10]_i_1_n_6 ,\memory_counter_reg[10]_i_1_n_7 }),
        .S({\memory_counter[10]_i_2_n_0 ,\memory_counter[10]_i_3_n_0 ,\memory_counter[10]_i_4_n_0 ,\memory_counter[10]_i_5_n_0 }));
  FDRE \memory_counter_reg[11] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[10]_i_1_n_6 ),
        .Q(memory_counter_reg[11]),
        .R(clear));
  FDRE \memory_counter_reg[12] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[10]_i_1_n_5 ),
        .Q(memory_counter_reg[12]),
        .R(clear));
  FDRE \memory_counter_reg[13] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[10]_i_1_n_4 ),
        .Q(memory_counter_reg[13]),
        .R(clear));
  FDRE \memory_counter_reg[14] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[14]_i_1_n_7 ),
        .Q(memory_counter_reg[14]),
        .R(clear));
  CARRY4 \memory_counter_reg[14]_i_1 
       (.CI(\memory_counter_reg[10]_i_1_n_0 ),
        .CO({\memory_counter_reg[14]_i_1_n_0 ,\memory_counter_reg[14]_i_1_n_1 ,\memory_counter_reg[14]_i_1_n_2 ,\memory_counter_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memory_counter_reg[14]_i_1_n_4 ,\memory_counter_reg[14]_i_1_n_5 ,\memory_counter_reg[14]_i_1_n_6 ,\memory_counter_reg[14]_i_1_n_7 }),
        .S({\memory_counter[14]_i_2_n_0 ,\memory_counter[14]_i_3_n_0 ,\memory_counter[14]_i_4_n_0 ,\memory_counter[14]_i_5_n_0 }));
  FDRE \memory_counter_reg[15] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[14]_i_1_n_6 ),
        .Q(memory_counter_reg[15]),
        .R(clear));
  FDRE \memory_counter_reg[16] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[14]_i_1_n_5 ),
        .Q(memory_counter_reg[16]),
        .R(clear));
  FDRE \memory_counter_reg[17] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[14]_i_1_n_4 ),
        .Q(memory_counter_reg[17]),
        .R(clear));
  FDRE \memory_counter_reg[18] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[18]_i_1_n_7 ),
        .Q(memory_counter_reg[18]),
        .R(clear));
  CARRY4 \memory_counter_reg[18]_i_1 
       (.CI(\memory_counter_reg[14]_i_1_n_0 ),
        .CO({\memory_counter_reg[18]_i_1_n_0 ,\memory_counter_reg[18]_i_1_n_1 ,\memory_counter_reg[18]_i_1_n_2 ,\memory_counter_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memory_counter_reg[18]_i_1_n_4 ,\memory_counter_reg[18]_i_1_n_5 ,\memory_counter_reg[18]_i_1_n_6 ,\memory_counter_reg[18]_i_1_n_7 }),
        .S({\memory_counter[18]_i_2_n_0 ,\memory_counter[18]_i_3_n_0 ,\memory_counter[18]_i_4_n_0 ,\memory_counter[18]_i_5_n_0 }));
  FDRE \memory_counter_reg[19] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[18]_i_1_n_6 ),
        .Q(memory_counter_reg[19]),
        .R(clear));
  FDRE \memory_counter_reg[1] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter[1]_i_1_n_0 ),
        .Q(memory_counter_reg[1]),
        .R(clear));
  FDRE \memory_counter_reg[20] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[18]_i_1_n_5 ),
        .Q(memory_counter_reg[20]),
        .R(clear));
  FDRE \memory_counter_reg[21] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[18]_i_1_n_4 ),
        .Q(memory_counter_reg[21]),
        .R(clear));
  FDRE \memory_counter_reg[22] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[22]_i_1_n_7 ),
        .Q(memory_counter_reg[22]),
        .R(clear));
  CARRY4 \memory_counter_reg[22]_i_1 
       (.CI(\memory_counter_reg[18]_i_1_n_0 ),
        .CO({\memory_counter_reg[22]_i_1_n_0 ,\memory_counter_reg[22]_i_1_n_1 ,\memory_counter_reg[22]_i_1_n_2 ,\memory_counter_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memory_counter_reg[22]_i_1_n_4 ,\memory_counter_reg[22]_i_1_n_5 ,\memory_counter_reg[22]_i_1_n_6 ,\memory_counter_reg[22]_i_1_n_7 }),
        .S({\memory_counter[22]_i_2_n_0 ,\memory_counter[22]_i_3_n_0 ,\memory_counter[22]_i_4_n_0 ,\memory_counter[22]_i_5_n_0 }));
  FDRE \memory_counter_reg[23] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[22]_i_1_n_6 ),
        .Q(memory_counter_reg[23]),
        .R(clear));
  FDRE \memory_counter_reg[24] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[22]_i_1_n_5 ),
        .Q(memory_counter_reg[24]),
        .R(clear));
  FDRE \memory_counter_reg[25] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[22]_i_1_n_4 ),
        .Q(memory_counter_reg[25]),
        .R(clear));
  FDRE \memory_counter_reg[26] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[26]_i_1_n_7 ),
        .Q(memory_counter_reg[26]),
        .R(clear));
  CARRY4 \memory_counter_reg[26]_i_1 
       (.CI(\memory_counter_reg[22]_i_1_n_0 ),
        .CO({\memory_counter_reg[26]_i_1_n_0 ,\memory_counter_reg[26]_i_1_n_1 ,\memory_counter_reg[26]_i_1_n_2 ,\memory_counter_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memory_counter_reg[26]_i_1_n_4 ,\memory_counter_reg[26]_i_1_n_5 ,\memory_counter_reg[26]_i_1_n_6 ,\memory_counter_reg[26]_i_1_n_7 }),
        .S({\memory_counter[26]_i_2_n_0 ,\memory_counter[26]_i_3_n_0 ,\memory_counter[26]_i_4_n_0 ,\memory_counter[26]_i_5_n_0 }));
  FDRE \memory_counter_reg[27] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[26]_i_1_n_6 ),
        .Q(memory_counter_reg[27]),
        .R(clear));
  FDRE \memory_counter_reg[28] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[26]_i_1_n_5 ),
        .Q(memory_counter_reg[28]),
        .R(clear));
  FDRE \memory_counter_reg[29] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[26]_i_1_n_4 ),
        .Q(memory_counter_reg[29]),
        .R(clear));
  FDRE \memory_counter_reg[2] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[2]_i_1_n_7 ),
        .Q(memory_counter_reg[2]),
        .R(clear));
  CARRY4 \memory_counter_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\memory_counter_reg[2]_i_1_n_0 ,\memory_counter_reg[2]_i_1_n_1 ,\memory_counter_reg[2]_i_1_n_2 ,\memory_counter_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\memory_counter[2]_i_2_n_0 ,1'b0,\memory_counter[2]_i_3_n_0 ,1'b0}),
        .O({\memory_counter_reg[2]_i_1_n_4 ,\memory_counter_reg[2]_i_1_n_5 ,\memory_counter_reg[2]_i_1_n_6 ,\memory_counter_reg[2]_i_1_n_7 }),
        .S({\memory_counter[2]_i_4_n_0 ,\memory_counter[2]_i_5_n_0 ,\memory_counter[2]_i_6_n_0 ,\memory_counter[2]_i_7_n_0 }));
  FDRE \memory_counter_reg[30] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[30]_i_1_n_7 ),
        .Q(memory_counter_reg[30]),
        .R(clear));
  CARRY4 \memory_counter_reg[30]_i_1 
       (.CI(\memory_counter_reg[26]_i_1_n_0 ),
        .CO({\NLW_memory_counter_reg[30]_i_1_CO_UNCONNECTED [3:1],\memory_counter_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_memory_counter_reg[30]_i_1_O_UNCONNECTED [3:2],\memory_counter_reg[30]_i_1_n_6 ,\memory_counter_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,\memory_counter[30]_i_2_n_0 ,\memory_counter[30]_i_3_n_0 }));
  FDRE \memory_counter_reg[31] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[30]_i_1_n_6 ),
        .Q(memory_counter_reg[31]),
        .R(clear));
  FDRE \memory_counter_reg[3] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[2]_i_1_n_6 ),
        .Q(memory_counter_reg[3]),
        .R(clear));
  FDRE \memory_counter_reg[4] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[2]_i_1_n_5 ),
        .Q(memory_counter_reg[4]),
        .R(clear));
  FDRE \memory_counter_reg[5] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[2]_i_1_n_4 ),
        .Q(memory_counter_reg[5]),
        .R(clear));
  FDRE \memory_counter_reg[6] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[6]_i_1_n_7 ),
        .Q(memory_counter_reg[6]),
        .R(clear));
  CARRY4 \memory_counter_reg[6]_i_1 
       (.CI(\memory_counter_reg[2]_i_1_n_0 ),
        .CO({\memory_counter_reg[6]_i_1_n_0 ,\memory_counter_reg[6]_i_1_n_1 ,\memory_counter_reg[6]_i_1_n_2 ,\memory_counter_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\memory_counter[6]_i_2_n_0 ,1'b0,\memory_counter[6]_i_3_n_0 }),
        .O({\memory_counter_reg[6]_i_1_n_4 ,\memory_counter_reg[6]_i_1_n_5 ,\memory_counter_reg[6]_i_1_n_6 ,\memory_counter_reg[6]_i_1_n_7 }),
        .S({\memory_counter[6]_i_4_n_0 ,\memory_counter[6]_i_5_n_0 ,\memory_counter[6]_i_6_n_0 ,\memory_counter[6]_i_7_n_0 }));
  FDRE \memory_counter_reg[7] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[6]_i_1_n_6 ),
        .Q(memory_counter_reg[7]),
        .R(clear));
  FDRE \memory_counter_reg[8] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[6]_i_1_n_5 ),
        .Q(memory_counter_reg[8]),
        .R(clear));
  FDRE \memory_counter_reg[9] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\memory_counter_reg[6]_i_1_n_4 ),
        .Q(memory_counter_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h5555FFFF333300F0)) 
    \mst_exec_state[0]_i_1 
       (.I0(reads_done_reg_n_0),
        .I1(writes_done),
        .I2(init_txn_ff),
        .I3(init_txn_ff2),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(\mst_exec_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070707075707575)) 
    \mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(reads_done_reg_n_0),
        .I2(mst_exec_state[1]),
        .I3(init_txn_ff2),
        .I4(init_txn_ff),
        .I5(\mst_exec_state[1]_i_2_n_0 ),
        .O(\mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBFBFFF)) 
    \mst_exec_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(\mst_exec_state[1]_i_2_n_0 ));
  FDRE \mst_exec_state_reg[0] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(clear));
  FDRE \mst_exec_state_reg[1] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(clear));
  CARRY4 \next_state2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\next_state2_inferred__0/i__carry_n_0 ,\next_state2_inferred__0/i__carry_n_1 ,\next_state2_inferred__0/i__carry_n_2 ,\next_state2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \next_state2_inferred__0/i__carry__0 
       (.CI(\next_state2_inferred__0/i__carry_n_0 ),
        .CO({\next_state2_inferred__0/i__carry__0_n_0 ,\next_state2_inferred__0/i__carry__0_n_1 ,\next_state2_inferred__0/i__carry__0_n_2 ,\next_state2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \next_state2_inferred__0/i__carry__1 
       (.CI(\next_state2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_next_state2_inferred__0/i__carry__1_CO_UNCONNECTED [3],next_state2,\next_state2_inferred__0/i__carry__1_n_2 ,\next_state2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \num_of_row[0]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .I5(axi_lite_aresetn),
        .O(\num_of_row[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \num_of_row[0]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[4]),
        .I4(current_state[0]),
        .O(increament_scan_line));
  LUT1 #(
    .INIT(2'h1)) 
    \num_of_row[0]_i_4 
       (.I0(num_of_row_reg[0]),
        .O(\num_of_row[0]_i_4_n_0 ));
  FDRE \num_of_row_reg[0] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[0]_i_3_n_7 ),
        .Q(num_of_row_reg[0]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\num_of_row_reg[0]_i_3_n_0 ,\num_of_row_reg[0]_i_3_n_1 ,\num_of_row_reg[0]_i_3_n_2 ,\num_of_row_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\num_of_row_reg[0]_i_3_n_4 ,\num_of_row_reg[0]_i_3_n_5 ,\num_of_row_reg[0]_i_3_n_6 ,\num_of_row_reg[0]_i_3_n_7 }),
        .S({num_of_row_reg[3:1],\num_of_row[0]_i_4_n_0 }));
  FDRE \num_of_row_reg[10] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[8]_i_1_n_5 ),
        .Q(num_of_row_reg[10]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[11] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[8]_i_1_n_4 ),
        .Q(num_of_row_reg[11]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[12] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[12]_i_1_n_7 ),
        .Q(num_of_row_reg[12]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[12]_i_1 
       (.CI(\num_of_row_reg[8]_i_1_n_0 ),
        .CO({\num_of_row_reg[12]_i_1_n_0 ,\num_of_row_reg[12]_i_1_n_1 ,\num_of_row_reg[12]_i_1_n_2 ,\num_of_row_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[12]_i_1_n_4 ,\num_of_row_reg[12]_i_1_n_5 ,\num_of_row_reg[12]_i_1_n_6 ,\num_of_row_reg[12]_i_1_n_7 }),
        .S(num_of_row_reg[15:12]));
  FDRE \num_of_row_reg[13] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[12]_i_1_n_6 ),
        .Q(num_of_row_reg[13]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[14] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[12]_i_1_n_5 ),
        .Q(num_of_row_reg[14]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[15] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[12]_i_1_n_4 ),
        .Q(num_of_row_reg[15]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[16] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[16]_i_1_n_7 ),
        .Q(num_of_row_reg[16]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[16]_i_1 
       (.CI(\num_of_row_reg[12]_i_1_n_0 ),
        .CO({\num_of_row_reg[16]_i_1_n_0 ,\num_of_row_reg[16]_i_1_n_1 ,\num_of_row_reg[16]_i_1_n_2 ,\num_of_row_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[16]_i_1_n_4 ,\num_of_row_reg[16]_i_1_n_5 ,\num_of_row_reg[16]_i_1_n_6 ,\num_of_row_reg[16]_i_1_n_7 }),
        .S(num_of_row_reg[19:16]));
  FDRE \num_of_row_reg[17] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[16]_i_1_n_6 ),
        .Q(num_of_row_reg[17]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[18] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[16]_i_1_n_5 ),
        .Q(num_of_row_reg[18]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[19] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[16]_i_1_n_4 ),
        .Q(num_of_row_reg[19]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[1] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[0]_i_3_n_6 ),
        .Q(num_of_row_reg[1]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[20] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[20]_i_1_n_7 ),
        .Q(num_of_row_reg[20]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[20]_i_1 
       (.CI(\num_of_row_reg[16]_i_1_n_0 ),
        .CO({\num_of_row_reg[20]_i_1_n_0 ,\num_of_row_reg[20]_i_1_n_1 ,\num_of_row_reg[20]_i_1_n_2 ,\num_of_row_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[20]_i_1_n_4 ,\num_of_row_reg[20]_i_1_n_5 ,\num_of_row_reg[20]_i_1_n_6 ,\num_of_row_reg[20]_i_1_n_7 }),
        .S(num_of_row_reg[23:20]));
  FDRE \num_of_row_reg[21] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[20]_i_1_n_6 ),
        .Q(num_of_row_reg[21]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[22] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[20]_i_1_n_5 ),
        .Q(num_of_row_reg[22]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[23] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[20]_i_1_n_4 ),
        .Q(num_of_row_reg[23]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[24] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[24]_i_1_n_7 ),
        .Q(num_of_row_reg[24]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[24]_i_1 
       (.CI(\num_of_row_reg[20]_i_1_n_0 ),
        .CO({\num_of_row_reg[24]_i_1_n_0 ,\num_of_row_reg[24]_i_1_n_1 ,\num_of_row_reg[24]_i_1_n_2 ,\num_of_row_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[24]_i_1_n_4 ,\num_of_row_reg[24]_i_1_n_5 ,\num_of_row_reg[24]_i_1_n_6 ,\num_of_row_reg[24]_i_1_n_7 }),
        .S(num_of_row_reg[27:24]));
  FDRE \num_of_row_reg[25] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[24]_i_1_n_6 ),
        .Q(num_of_row_reg[25]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[26] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[24]_i_1_n_5 ),
        .Q(num_of_row_reg[26]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[27] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[24]_i_1_n_4 ),
        .Q(num_of_row_reg[27]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[28] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[28]_i_1_n_7 ),
        .Q(num_of_row_reg[28]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[28]_i_1 
       (.CI(\num_of_row_reg[24]_i_1_n_0 ),
        .CO({\NLW_num_of_row_reg[28]_i_1_CO_UNCONNECTED [3],\num_of_row_reg[28]_i_1_n_1 ,\num_of_row_reg[28]_i_1_n_2 ,\num_of_row_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[28]_i_1_n_4 ,\num_of_row_reg[28]_i_1_n_5 ,\num_of_row_reg[28]_i_1_n_6 ,\num_of_row_reg[28]_i_1_n_7 }),
        .S(num_of_row_reg[31:28]));
  FDRE \num_of_row_reg[29] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[28]_i_1_n_6 ),
        .Q(num_of_row_reg[29]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[2] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[0]_i_3_n_5 ),
        .Q(num_of_row_reg[2]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[30] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[28]_i_1_n_5 ),
        .Q(num_of_row_reg[30]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[31] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[28]_i_1_n_4 ),
        .Q(num_of_row_reg[31]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[3] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[0]_i_3_n_4 ),
        .Q(num_of_row_reg[3]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[4] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[4]_i_1_n_7 ),
        .Q(num_of_row_reg[4]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[4]_i_1 
       (.CI(\num_of_row_reg[0]_i_3_n_0 ),
        .CO({\num_of_row_reg[4]_i_1_n_0 ,\num_of_row_reg[4]_i_1_n_1 ,\num_of_row_reg[4]_i_1_n_2 ,\num_of_row_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[4]_i_1_n_4 ,\num_of_row_reg[4]_i_1_n_5 ,\num_of_row_reg[4]_i_1_n_6 ,\num_of_row_reg[4]_i_1_n_7 }),
        .S(num_of_row_reg[7:4]));
  FDRE \num_of_row_reg[5] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[4]_i_1_n_6 ),
        .Q(num_of_row_reg[5]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[6] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[4]_i_1_n_5 ),
        .Q(num_of_row_reg[6]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[7] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[4]_i_1_n_4 ),
        .Q(num_of_row_reg[7]),
        .R(\num_of_row[0]_i_1_n_0 ));
  FDRE \num_of_row_reg[8] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[8]_i_1_n_7 ),
        .Q(num_of_row_reg[8]),
        .R(\num_of_row[0]_i_1_n_0 ));
  CARRY4 \num_of_row_reg[8]_i_1 
       (.CI(\num_of_row_reg[4]_i_1_n_0 ),
        .CO({\num_of_row_reg[8]_i_1_n_0 ,\num_of_row_reg[8]_i_1_n_1 ,\num_of_row_reg[8]_i_1_n_2 ,\num_of_row_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\num_of_row_reg[8]_i_1_n_4 ,\num_of_row_reg[8]_i_1_n_5 ,\num_of_row_reg[8]_i_1_n_6 ,\num_of_row_reg[8]_i_1_n_7 }),
        .S(num_of_row_reg[11:8]));
  FDRE \num_of_row_reg[9] 
       (.C(axi_lite_aclk),
        .CE(increament_scan_line),
        .D(\num_of_row_reg[8]_i_1_n_6 ),
        .Q(num_of_row_reg[9]),
        .R(\num_of_row[0]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    position_in_frame_buffer0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_position_in_frame_buffer0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_location}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_position_in_frame_buffer0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_position_in_frame_buffer0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_position_in_frame_buffer0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_position_in_frame_buffer0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_position_in_frame_buffer0_OVERFLOW_UNCONNECTED),
        .P({NLW_position_in_frame_buffer0_P_UNCONNECTED[47:25],position_in_frame_buffer0_n_81,position_in_frame_buffer0_n_82,position_in_frame_buffer0_n_83,position_in_frame_buffer0_n_84,position_in_frame_buffer0_n_85,position_in_frame_buffer0_n_86,position_in_frame_buffer0_n_87,position_in_frame_buffer0_n_88,position_in_frame_buffer0_n_89,position_in_frame_buffer0_n_90,position_in_frame_buffer0_n_91,position_in_frame_buffer0_n_92,position_in_frame_buffer0_n_93,position_in_frame_buffer0_n_94,position_in_frame_buffer0_n_95,position_in_frame_buffer0_n_96,position_in_frame_buffer0_n_97,position_in_frame_buffer0_n_98,position_in_frame_buffer0_n_99,position_in_frame_buffer0_n_100,position_in_frame_buffer0_n_101,position_in_frame_buffer0_n_102,position_in_frame_buffer0_n_103,position_in_frame_buffer0_n_104,position_in_frame_buffer0_n_105}),
        .PATTERNBDETECT(NLW_position_in_frame_buffer0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_position_in_frame_buffer0_PATTERNDETECT_UNCONNECTED),
        .PCIN({position_in_frame_buffer2_n_106,position_in_frame_buffer2_n_107,position_in_frame_buffer2_n_108,position_in_frame_buffer2_n_109,position_in_frame_buffer2_n_110,position_in_frame_buffer2_n_111,position_in_frame_buffer2_n_112,position_in_frame_buffer2_n_113,position_in_frame_buffer2_n_114,position_in_frame_buffer2_n_115,position_in_frame_buffer2_n_116,position_in_frame_buffer2_n_117,position_in_frame_buffer2_n_118,position_in_frame_buffer2_n_119,position_in_frame_buffer2_n_120,position_in_frame_buffer2_n_121,position_in_frame_buffer2_n_122,position_in_frame_buffer2_n_123,position_in_frame_buffer2_n_124,position_in_frame_buffer2_n_125,position_in_frame_buffer2_n_126,position_in_frame_buffer2_n_127,position_in_frame_buffer2_n_128,position_in_frame_buffer2_n_129,position_in_frame_buffer2_n_130,position_in_frame_buffer2_n_131,position_in_frame_buffer2_n_132,position_in_frame_buffer2_n_133,position_in_frame_buffer2_n_134,position_in_frame_buffer2_n_135,position_in_frame_buffer2_n_136,position_in_frame_buffer2_n_137,position_in_frame_buffer2_n_138,position_in_frame_buffer2_n_139,position_in_frame_buffer2_n_140,position_in_frame_buffer2_n_141,position_in_frame_buffer2_n_142,position_in_frame_buffer2_n_143,position_in_frame_buffer2_n_144,position_in_frame_buffer2_n_145,position_in_frame_buffer2_n_146,position_in_frame_buffer2_n_147,position_in_frame_buffer2_n_148,position_in_frame_buffer2_n_149,position_in_frame_buffer2_n_150,position_in_frame_buffer2_n_151,position_in_frame_buffer2_n_152,position_in_frame_buffer2_n_153}),
        .PCOUT(NLW_position_in_frame_buffer0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_position_in_frame_buffer0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    position_in_frame_buffer2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_location}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_position_in_frame_buffer2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_position_in_frame_buffer2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_position_in_frame_buffer2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_position_in_frame_buffer2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_position_in_frame_buffer2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_position_in_frame_buffer2_OVERFLOW_UNCONNECTED),
        .P({NLW_position_in_frame_buffer2_P_UNCONNECTED[47:13],position_in_frame_buffer2_n_93,position_in_frame_buffer2_n_94,position_in_frame_buffer2_n_95,position_in_frame_buffer2_n_96,position_in_frame_buffer2_n_97,position_in_frame_buffer2_n_98,position_in_frame_buffer2_n_99,position_in_frame_buffer2_n_100,position_in_frame_buffer2_n_101,position_in_frame_buffer2_n_102,position_in_frame_buffer2_n_103,position_in_frame_buffer2_n_104,position_in_frame_buffer2_n_105}),
        .PATTERNBDETECT(NLW_position_in_frame_buffer2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_position_in_frame_buffer2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({position_in_frame_buffer2_n_106,position_in_frame_buffer2_n_107,position_in_frame_buffer2_n_108,position_in_frame_buffer2_n_109,position_in_frame_buffer2_n_110,position_in_frame_buffer2_n_111,position_in_frame_buffer2_n_112,position_in_frame_buffer2_n_113,position_in_frame_buffer2_n_114,position_in_frame_buffer2_n_115,position_in_frame_buffer2_n_116,position_in_frame_buffer2_n_117,position_in_frame_buffer2_n_118,position_in_frame_buffer2_n_119,position_in_frame_buffer2_n_120,position_in_frame_buffer2_n_121,position_in_frame_buffer2_n_122,position_in_frame_buffer2_n_123,position_in_frame_buffer2_n_124,position_in_frame_buffer2_n_125,position_in_frame_buffer2_n_126,position_in_frame_buffer2_n_127,position_in_frame_buffer2_n_128,position_in_frame_buffer2_n_129,position_in_frame_buffer2_n_130,position_in_frame_buffer2_n_131,position_in_frame_buffer2_n_132,position_in_frame_buffer2_n_133,position_in_frame_buffer2_n_134,position_in_frame_buffer2_n_135,position_in_frame_buffer2_n_136,position_in_frame_buffer2_n_137,position_in_frame_buffer2_n_138,position_in_frame_buffer2_n_139,position_in_frame_buffer2_n_140,position_in_frame_buffer2_n_141,position_in_frame_buffer2_n_142,position_in_frame_buffer2_n_143,position_in_frame_buffer2_n_144,position_in_frame_buffer2_n_145,position_in_frame_buffer2_n_146,position_in_frame_buffer2_n_147,position_in_frame_buffer2_n_148,position_in_frame_buffer2_n_149,position_in_frame_buffer2_n_150,position_in_frame_buffer2_n_151,position_in_frame_buffer2_n_152,position_in_frame_buffer2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_position_in_frame_buffer2_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[0]_i_1 
       (.I0(position_in_frame_buffer0__0[0]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[0]),
        .O(\position_in_frame_buffer[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[0]_i_3 
       (.I0(frame_buffer_location[3]),
        .I1(position_in_frame_buffer0_n_102),
        .O(\position_in_frame_buffer[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[0]_i_4 
       (.I0(frame_buffer_location[2]),
        .I1(position_in_frame_buffer0_n_103),
        .O(\position_in_frame_buffer[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[0]_i_5 
       (.I0(frame_buffer_location[1]),
        .I1(position_in_frame_buffer0_n_104),
        .O(\position_in_frame_buffer[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[0]_i_6 
       (.I0(frame_buffer_location[0]),
        .I1(position_in_frame_buffer0_n_105),
        .O(\position_in_frame_buffer[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[10]_i_10 
       (.I0(frame_buffer_location[14]),
        .I1(position_in_frame_buffer0_n_91),
        .O(\position_in_frame_buffer[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[10]_i_11 
       (.I0(frame_buffer_location[13]),
        .I1(position_in_frame_buffer0_n_92),
        .O(\position_in_frame_buffer[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[10]_i_12 
       (.I0(frame_buffer_location[12]),
        .I1(position_in_frame_buffer0_n_93),
        .O(\position_in_frame_buffer[10]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[10]_i_2 
       (.I0(position_in_frame_buffer0__0[12]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[12]),
        .O(\position_in_frame_buffer[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[10]_i_3 
       (.I0(position_in_frame_buffer0__0[10]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[10]),
        .O(\position_in_frame_buffer[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[10]_i_4 
       (.I0(position_in_frame_buffer0__0[13]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[13]),
        .O(\position_in_frame_buffer[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \position_in_frame_buffer[10]_i_5 
       (.I0(position_in_frame_buffer_reg[12]),
        .I1(position_in_frame_buffer0__0[12]),
        .I2(start),
        .O(\position_in_frame_buffer[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[10]_i_6 
       (.I0(position_in_frame_buffer0__0[11]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[11]),
        .O(\position_in_frame_buffer[10]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \position_in_frame_buffer[10]_i_7 
       (.I0(position_in_frame_buffer_reg[10]),
        .I1(position_in_frame_buffer0__0[10]),
        .I2(start),
        .O(\position_in_frame_buffer[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[10]_i_9 
       (.I0(frame_buffer_location[15]),
        .I1(position_in_frame_buffer0_n_90),
        .O(\position_in_frame_buffer[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[14]_i_10 
       (.I0(frame_buffer_location[16]),
        .I1(position_in_frame_buffer0_n_89),
        .O(\position_in_frame_buffer[14]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[14]_i_2 
       (.I0(position_in_frame_buffer0__0[17]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[17]),
        .O(\position_in_frame_buffer[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[14]_i_3 
       (.I0(position_in_frame_buffer0__0[16]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[16]),
        .O(\position_in_frame_buffer[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[14]_i_4 
       (.I0(position_in_frame_buffer0__0[15]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[15]),
        .O(\position_in_frame_buffer[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[14]_i_5 
       (.I0(position_in_frame_buffer0__0[14]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[14]),
        .O(\position_in_frame_buffer[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[14]_i_7 
       (.I0(frame_buffer_location[19]),
        .I1(position_in_frame_buffer0_n_86),
        .O(\position_in_frame_buffer[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[14]_i_8 
       (.I0(frame_buffer_location[18]),
        .I1(position_in_frame_buffer0_n_87),
        .O(\position_in_frame_buffer[14]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[14]_i_9 
       (.I0(frame_buffer_location[17]),
        .I1(position_in_frame_buffer0_n_88),
        .O(\position_in_frame_buffer[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[18]_i_10 
       (.I0(frame_buffer_location[20]),
        .I1(position_in_frame_buffer0_n_85),
        .O(\position_in_frame_buffer[18]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[18]_i_2 
       (.I0(position_in_frame_buffer0__0[21]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[21]),
        .O(\position_in_frame_buffer[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[18]_i_3 
       (.I0(position_in_frame_buffer0__0[20]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[20]),
        .O(\position_in_frame_buffer[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[18]_i_4 
       (.I0(position_in_frame_buffer0__0[19]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[19]),
        .O(\position_in_frame_buffer[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[18]_i_5 
       (.I0(position_in_frame_buffer0__0[18]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[18]),
        .O(\position_in_frame_buffer[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[18]_i_7 
       (.I0(frame_buffer_location[23]),
        .I1(position_in_frame_buffer0_n_82),
        .O(\position_in_frame_buffer[18]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[18]_i_8 
       (.I0(frame_buffer_location[22]),
        .I1(position_in_frame_buffer0_n_83),
        .O(\position_in_frame_buffer[18]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[18]_i_9 
       (.I0(frame_buffer_location[21]),
        .I1(position_in_frame_buffer0_n_84),
        .O(\position_in_frame_buffer[18]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[1]_i_1 
       (.I0(position_in_frame_buffer0__0[1]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[1]),
        .O(\position_in_frame_buffer[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[22]_i_2 
       (.I0(position_in_frame_buffer0__0[25]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[25]),
        .O(\position_in_frame_buffer[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[22]_i_3 
       (.I0(position_in_frame_buffer0__0[24]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[24]),
        .O(\position_in_frame_buffer[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[22]_i_4 
       (.I0(position_in_frame_buffer0__0[23]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[23]),
        .O(\position_in_frame_buffer[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[22]_i_5 
       (.I0(position_in_frame_buffer0__0[22]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[22]),
        .O(\position_in_frame_buffer[22]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[22]_i_7 
       (.I0(frame_buffer_location[24]),
        .I1(position_in_frame_buffer0_n_81),
        .O(\position_in_frame_buffer[22]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[26]_i_2 
       (.I0(position_in_frame_buffer0__0[29]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[29]),
        .O(\position_in_frame_buffer[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[26]_i_3 
       (.I0(position_in_frame_buffer0__0[28]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[28]),
        .O(\position_in_frame_buffer[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[26]_i_4 
       (.I0(position_in_frame_buffer0__0[27]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[27]),
        .O(\position_in_frame_buffer[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[26]_i_5 
       (.I0(position_in_frame_buffer0__0[26]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[26]),
        .O(\position_in_frame_buffer[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[2]_i_1 
       (.I0(position_in_frame_buffer0__0[2]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[2]),
        .O(\position_in_frame_buffer[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[30]_i_2 
       (.I0(position_in_frame_buffer0__0[31]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[31]),
        .O(\position_in_frame_buffer[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[30]_i_3 
       (.I0(position_in_frame_buffer0__0[30]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[30]),
        .O(\position_in_frame_buffer[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[3]_i_1 
       (.I0(position_in_frame_buffer0__0[3]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[3]),
        .O(\position_in_frame_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[4]_i_1 
       (.I0(position_in_frame_buffer0__0[4]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[4]),
        .O(\position_in_frame_buffer[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[4]_i_3 
       (.I0(frame_buffer_location[7]),
        .I1(position_in_frame_buffer0_n_98),
        .O(\position_in_frame_buffer[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[4]_i_4 
       (.I0(frame_buffer_location[6]),
        .I1(position_in_frame_buffer0_n_99),
        .O(\position_in_frame_buffer[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[4]_i_5 
       (.I0(frame_buffer_location[5]),
        .I1(position_in_frame_buffer0_n_100),
        .O(\position_in_frame_buffer[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[4]_i_6 
       (.I0(frame_buffer_location[4]),
        .I1(position_in_frame_buffer0_n_101),
        .O(\position_in_frame_buffer[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[5]_i_1 
       (.I0(position_in_frame_buffer0__0[5]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[5]),
        .O(\position_in_frame_buffer[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[6]_i_10 
       (.I0(frame_buffer_location[10]),
        .I1(position_in_frame_buffer0_n_95),
        .O(\position_in_frame_buffer[6]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[6]_i_11 
       (.I0(frame_buffer_location[9]),
        .I1(position_in_frame_buffer0_n_96),
        .O(\position_in_frame_buffer[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[6]_i_12 
       (.I0(frame_buffer_location[8]),
        .I1(position_in_frame_buffer0_n_97),
        .O(\position_in_frame_buffer[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[6]_i_2 
       (.I0(position_in_frame_buffer0__0[9]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[9]),
        .O(\position_in_frame_buffer[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[6]_i_3 
       (.I0(position_in_frame_buffer0__0[7]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[7]),
        .O(\position_in_frame_buffer[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \position_in_frame_buffer[6]_i_4 
       (.I0(position_in_frame_buffer_reg[9]),
        .I1(position_in_frame_buffer0__0[9]),
        .I2(start),
        .O(\position_in_frame_buffer[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[6]_i_5 
       (.I0(position_in_frame_buffer0__0[8]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[8]),
        .O(\position_in_frame_buffer[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \position_in_frame_buffer[6]_i_6 
       (.I0(position_in_frame_buffer_reg[7]),
        .I1(position_in_frame_buffer0__0[7]),
        .I2(start),
        .O(\position_in_frame_buffer[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position_in_frame_buffer[6]_i_7 
       (.I0(position_in_frame_buffer0__0[6]),
        .I1(start),
        .I2(position_in_frame_buffer_reg[6]),
        .O(\position_in_frame_buffer[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \position_in_frame_buffer[6]_i_9 
       (.I0(frame_buffer_location[11]),
        .I1(position_in_frame_buffer0_n_94),
        .O(\position_in_frame_buffer[6]_i_9_n_0 ));
  FDRE \position_in_frame_buffer_reg[0] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[0]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[0]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\position_in_frame_buffer_reg[0]_i_2_n_0 ,\position_in_frame_buffer_reg[0]_i_2_n_1 ,\position_in_frame_buffer_reg[0]_i_2_n_2 ,\position_in_frame_buffer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[3:0]),
        .O(position_in_frame_buffer0__0[3:0]),
        .S({\position_in_frame_buffer[0]_i_3_n_0 ,\position_in_frame_buffer[0]_i_4_n_0 ,\position_in_frame_buffer[0]_i_5_n_0 ,\position_in_frame_buffer[0]_i_6_n_0 }));
  FDRE \position_in_frame_buffer_reg[10] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[10]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[10]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[10]_i_1 
       (.CI(\position_in_frame_buffer_reg[6]_i_1_n_0 ),
        .CO({\position_in_frame_buffer_reg[10]_i_1_n_0 ,\position_in_frame_buffer_reg[10]_i_1_n_1 ,\position_in_frame_buffer_reg[10]_i_1_n_2 ,\position_in_frame_buffer_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\position_in_frame_buffer[10]_i_2_n_0 ,1'b0,\position_in_frame_buffer[10]_i_3_n_0 }),
        .O({\position_in_frame_buffer_reg[10]_i_1_n_4 ,\position_in_frame_buffer_reg[10]_i_1_n_5 ,\position_in_frame_buffer_reg[10]_i_1_n_6 ,\position_in_frame_buffer_reg[10]_i_1_n_7 }),
        .S({\position_in_frame_buffer[10]_i_4_n_0 ,\position_in_frame_buffer[10]_i_5_n_0 ,\position_in_frame_buffer[10]_i_6_n_0 ,\position_in_frame_buffer[10]_i_7_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[10]_i_8 
       (.CI(\position_in_frame_buffer_reg[6]_i_8_n_0 ),
        .CO({\position_in_frame_buffer_reg[10]_i_8_n_0 ,\position_in_frame_buffer_reg[10]_i_8_n_1 ,\position_in_frame_buffer_reg[10]_i_8_n_2 ,\position_in_frame_buffer_reg[10]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[15:12]),
        .O(position_in_frame_buffer0__0[15:12]),
        .S({\position_in_frame_buffer[10]_i_9_n_0 ,\position_in_frame_buffer[10]_i_10_n_0 ,\position_in_frame_buffer[10]_i_11_n_0 ,\position_in_frame_buffer[10]_i_12_n_0 }));
  FDRE \position_in_frame_buffer_reg[11] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[10]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[11]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[12] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[10]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[12]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[13] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[10]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[13]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[14] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[14]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[14]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[14]_i_1 
       (.CI(\position_in_frame_buffer_reg[10]_i_1_n_0 ),
        .CO({\position_in_frame_buffer_reg[14]_i_1_n_0 ,\position_in_frame_buffer_reg[14]_i_1_n_1 ,\position_in_frame_buffer_reg[14]_i_1_n_2 ,\position_in_frame_buffer_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_in_frame_buffer_reg[14]_i_1_n_4 ,\position_in_frame_buffer_reg[14]_i_1_n_5 ,\position_in_frame_buffer_reg[14]_i_1_n_6 ,\position_in_frame_buffer_reg[14]_i_1_n_7 }),
        .S({\position_in_frame_buffer[14]_i_2_n_0 ,\position_in_frame_buffer[14]_i_3_n_0 ,\position_in_frame_buffer[14]_i_4_n_0 ,\position_in_frame_buffer[14]_i_5_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[14]_i_6 
       (.CI(\position_in_frame_buffer_reg[10]_i_8_n_0 ),
        .CO({\position_in_frame_buffer_reg[14]_i_6_n_0 ,\position_in_frame_buffer_reg[14]_i_6_n_1 ,\position_in_frame_buffer_reg[14]_i_6_n_2 ,\position_in_frame_buffer_reg[14]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[19:16]),
        .O(position_in_frame_buffer0__0[19:16]),
        .S({\position_in_frame_buffer[14]_i_7_n_0 ,\position_in_frame_buffer[14]_i_8_n_0 ,\position_in_frame_buffer[14]_i_9_n_0 ,\position_in_frame_buffer[14]_i_10_n_0 }));
  FDRE \position_in_frame_buffer_reg[15] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[14]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[15]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[16] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[14]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[16]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[17] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[14]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[17]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[18] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[18]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[18]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[18]_i_1 
       (.CI(\position_in_frame_buffer_reg[14]_i_1_n_0 ),
        .CO({\position_in_frame_buffer_reg[18]_i_1_n_0 ,\position_in_frame_buffer_reg[18]_i_1_n_1 ,\position_in_frame_buffer_reg[18]_i_1_n_2 ,\position_in_frame_buffer_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_in_frame_buffer_reg[18]_i_1_n_4 ,\position_in_frame_buffer_reg[18]_i_1_n_5 ,\position_in_frame_buffer_reg[18]_i_1_n_6 ,\position_in_frame_buffer_reg[18]_i_1_n_7 }),
        .S({\position_in_frame_buffer[18]_i_2_n_0 ,\position_in_frame_buffer[18]_i_3_n_0 ,\position_in_frame_buffer[18]_i_4_n_0 ,\position_in_frame_buffer[18]_i_5_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[18]_i_6 
       (.CI(\position_in_frame_buffer_reg[14]_i_6_n_0 ),
        .CO({\position_in_frame_buffer_reg[18]_i_6_n_0 ,\position_in_frame_buffer_reg[18]_i_6_n_1 ,\position_in_frame_buffer_reg[18]_i_6_n_2 ,\position_in_frame_buffer_reg[18]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[23:20]),
        .O(position_in_frame_buffer0__0[23:20]),
        .S({\position_in_frame_buffer[18]_i_7_n_0 ,\position_in_frame_buffer[18]_i_8_n_0 ,\position_in_frame_buffer[18]_i_9_n_0 ,\position_in_frame_buffer[18]_i_10_n_0 }));
  FDRE \position_in_frame_buffer_reg[19] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[18]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[19]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[1] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[1]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[1]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[20] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[18]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[20]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[21] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[18]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[21]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[22] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[22]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[22]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[22]_i_1 
       (.CI(\position_in_frame_buffer_reg[18]_i_1_n_0 ),
        .CO({\position_in_frame_buffer_reg[22]_i_1_n_0 ,\position_in_frame_buffer_reg[22]_i_1_n_1 ,\position_in_frame_buffer_reg[22]_i_1_n_2 ,\position_in_frame_buffer_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_in_frame_buffer_reg[22]_i_1_n_4 ,\position_in_frame_buffer_reg[22]_i_1_n_5 ,\position_in_frame_buffer_reg[22]_i_1_n_6 ,\position_in_frame_buffer_reg[22]_i_1_n_7 }),
        .S({\position_in_frame_buffer[22]_i_2_n_0 ,\position_in_frame_buffer[22]_i_3_n_0 ,\position_in_frame_buffer[22]_i_4_n_0 ,\position_in_frame_buffer[22]_i_5_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[22]_i_6 
       (.CI(\position_in_frame_buffer_reg[18]_i_6_n_0 ),
        .CO({\position_in_frame_buffer_reg[22]_i_6_n_0 ,\position_in_frame_buffer_reg[22]_i_6_n_1 ,\position_in_frame_buffer_reg[22]_i_6_n_2 ,\position_in_frame_buffer_reg[22]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,frame_buffer_location[24]}),
        .O(position_in_frame_buffer0__0[27:24]),
        .S({frame_buffer_location[27:25],\position_in_frame_buffer[22]_i_7_n_0 }));
  FDRE \position_in_frame_buffer_reg[23] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[22]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[23]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[24] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[22]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[24]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[25] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[22]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[25]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[26] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[26]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[26]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[26]_i_1 
       (.CI(\position_in_frame_buffer_reg[22]_i_1_n_0 ),
        .CO({\position_in_frame_buffer_reg[26]_i_1_n_0 ,\position_in_frame_buffer_reg[26]_i_1_n_1 ,\position_in_frame_buffer_reg[26]_i_1_n_2 ,\position_in_frame_buffer_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_in_frame_buffer_reg[26]_i_1_n_4 ,\position_in_frame_buffer_reg[26]_i_1_n_5 ,\position_in_frame_buffer_reg[26]_i_1_n_6 ,\position_in_frame_buffer_reg[26]_i_1_n_7 }),
        .S({\position_in_frame_buffer[26]_i_2_n_0 ,\position_in_frame_buffer[26]_i_3_n_0 ,\position_in_frame_buffer[26]_i_4_n_0 ,\position_in_frame_buffer[26]_i_5_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[26]_i_6 
       (.CI(\position_in_frame_buffer_reg[22]_i_6_n_0 ),
        .CO({\NLW_position_in_frame_buffer_reg[26]_i_6_CO_UNCONNECTED [3],\position_in_frame_buffer_reg[26]_i_6_n_1 ,\position_in_frame_buffer_reg[26]_i_6_n_2 ,\position_in_frame_buffer_reg[26]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(position_in_frame_buffer0__0[31:28]),
        .S(frame_buffer_location[31:28]));
  FDRE \position_in_frame_buffer_reg[27] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[26]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[27]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[28] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[26]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[28]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[29] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[26]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[29]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[2] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[2]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[2]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[30] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[30]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[30]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[30]_i_1 
       (.CI(\position_in_frame_buffer_reg[26]_i_1_n_0 ),
        .CO({\NLW_position_in_frame_buffer_reg[30]_i_1_CO_UNCONNECTED [3:1],\position_in_frame_buffer_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_position_in_frame_buffer_reg[30]_i_1_O_UNCONNECTED [3:2],\position_in_frame_buffer_reg[30]_i_1_n_6 ,\position_in_frame_buffer_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,\position_in_frame_buffer[30]_i_2_n_0 ,\position_in_frame_buffer[30]_i_3_n_0 }));
  FDRE \position_in_frame_buffer_reg[31] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[30]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[31]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[3] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[3]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[3]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[4] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[4]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[4]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[4]_i_2 
       (.CI(\position_in_frame_buffer_reg[0]_i_2_n_0 ),
        .CO({\position_in_frame_buffer_reg[4]_i_2_n_0 ,\position_in_frame_buffer_reg[4]_i_2_n_1 ,\position_in_frame_buffer_reg[4]_i_2_n_2 ,\position_in_frame_buffer_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[7:4]),
        .O(position_in_frame_buffer0__0[7:4]),
        .S({\position_in_frame_buffer[4]_i_3_n_0 ,\position_in_frame_buffer[4]_i_4_n_0 ,\position_in_frame_buffer[4]_i_5_n_0 ,\position_in_frame_buffer[4]_i_6_n_0 }));
  FDRE \position_in_frame_buffer_reg[5] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer[5]_i_1_n_0 ),
        .Q(position_in_frame_buffer_reg[5]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[6] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[6]_i_1_n_7 ),
        .Q(position_in_frame_buffer_reg[6]),
        .R(clear));
  CARRY4 \position_in_frame_buffer_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\position_in_frame_buffer_reg[6]_i_1_n_0 ,\position_in_frame_buffer_reg[6]_i_1_n_1 ,\position_in_frame_buffer_reg[6]_i_1_n_2 ,\position_in_frame_buffer_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\position_in_frame_buffer[6]_i_2_n_0 ,1'b0,\position_in_frame_buffer[6]_i_3_n_0 ,1'b0}),
        .O({\position_in_frame_buffer_reg[6]_i_1_n_4 ,\position_in_frame_buffer_reg[6]_i_1_n_5 ,\position_in_frame_buffer_reg[6]_i_1_n_6 ,\position_in_frame_buffer_reg[6]_i_1_n_7 }),
        .S({\position_in_frame_buffer[6]_i_4_n_0 ,\position_in_frame_buffer[6]_i_5_n_0 ,\position_in_frame_buffer[6]_i_6_n_0 ,\position_in_frame_buffer[6]_i_7_n_0 }));
  CARRY4 \position_in_frame_buffer_reg[6]_i_8 
       (.CI(\position_in_frame_buffer_reg[4]_i_2_n_0 ),
        .CO({\position_in_frame_buffer_reg[6]_i_8_n_0 ,\position_in_frame_buffer_reg[6]_i_8_n_1 ,\position_in_frame_buffer_reg[6]_i_8_n_2 ,\position_in_frame_buffer_reg[6]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(frame_buffer_location[11:8]),
        .O(position_in_frame_buffer0__0[11:8]),
        .S({\position_in_frame_buffer[6]_i_9_n_0 ,\position_in_frame_buffer[6]_i_10_n_0 ,\position_in_frame_buffer[6]_i_11_n_0 ,\position_in_frame_buffer[6]_i_12_n_0 }));
  FDRE \position_in_frame_buffer_reg[7] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[6]_i_1_n_6 ),
        .Q(position_in_frame_buffer_reg[7]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[8] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[6]_i_1_n_5 ),
        .Q(position_in_frame_buffer_reg[8]),
        .R(clear));
  FDRE \position_in_frame_buffer_reg[9] 
       (.C(axi_lite_aclk),
        .CE(position_in_frame_buffer),
        .D(\position_in_frame_buffer_reg[6]_i_1_n_4 ),
        .Q(position_in_frame_buffer_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h0DD00000)) 
    \read_index[0]_i_1 
       (.I0(axi_lite_araddr[1]),
        .I1(current_state[1]),
        .I2(start_single_read_reg_n_0),
        .I3(read_index),
        .I4(axi_lite_aresetn),
        .O(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\read_index[0]_i_1_n_0 ),
        .Q(read_index),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF7FFFF08000800)) 
    read_issued_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(reads_done_reg_n_0),
        .I3(start_single_read0),
        .I4(axi_lite_rready),
        .I5(read_issued_reg_n_0),
        .O(read_issued_i_1_n_0));
  FDRE read_issued_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(read_issued_i_1_n_0),
        .Q(read_issued_reg_n_0),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFF8080808080)) 
    reads_done_i_1
       (.I0(axi_lite_rvalid),
        .I1(axi_lite_rready),
        .I2(last_read),
        .I3(mst_exec_state[1]),
        .I4(mst_exec_state[0]),
        .I5(reads_done_reg_n_0),
        .O(reads_done_i_1_n_0));
  FDRE reads_done_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done_reg_n_0),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF708000800)) 
    start_single_read_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(reads_done_reg_n_0),
        .I3(start_single_read0),
        .I4(axi_lite_rready),
        .I5(start_single_read_reg_n_0),
        .O(start_single_read_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    start_single_read_i_2
       (.I0(start_single_read_reg_n_0),
        .I1(axi_lite_arvalid),
        .I2(axi_lite_rvalid),
        .I3(last_read),
        .I4(read_issued_reg_n_0),
        .O(start_single_read0));
  FDRE start_single_read_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFD02000200)) 
    start_single_write_i_1
       (.I0(mst_exec_state[0]),
        .I1(writes_done),
        .I2(mst_exec_state[1]),
        .I3(start_single_write0),
        .I4(M_AXI_BREADY),
        .I5(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    start_single_write_i_2
       (.I0(last_write),
        .I1(axi_lite_awvalid),
        .I2(axi_lite_bvalid),
        .I3(write_issued_reg_n_0),
        .I4(axi_lite_wvalid),
        .I5(start_single_write_reg_n_0),
        .O(start_single_write0));
  FDRE start_single_write_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[0]_i_1 
       (.I0(start_single_write_reg_n_0),
        .I1(write_index),
        .O(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\write_index[0]_i_1_n_0 ),
        .Q(write_index),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFF02000200)) 
    write_issued_i_1
       (.I0(mst_exec_state[0]),
        .I1(writes_done),
        .I2(mst_exec_state[1]),
        .I3(start_single_write0),
        .I4(M_AXI_BREADY),
        .I5(write_issued_reg_n_0),
        .O(write_issued_i_1_n_0));
  FDRE write_issued_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(write_issued_i_1_n_0),
        .Q(write_issued_reg_n_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done_i_1
       (.I0(axi_lite_bvalid),
        .I1(last_write),
        .I2(M_AXI_BREADY),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(axi_awvalid_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

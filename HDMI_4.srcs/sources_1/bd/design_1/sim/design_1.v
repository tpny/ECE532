//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Apr  3 20:35:09 2020
//Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=34,numReposBlks=33,numNonXlnxBlks=2,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=6,da_clkrst_cnt=5,da_mb_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    LEDR,
    TMDS_0_clk_n,
    TMDS_0_clk_p,
    TMDS_0_data_n,
    TMDS_0_data_p,
    hdmi_rx_txen,
    mm2s_frame_ptr_in_0,
    reset,
    rx_0,
    sys_clock,
    tx_0,
    usb_uart_rxd,
    usb_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 BA" *) output [2:0]DDR3_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CAS_N" *) output DDR3_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_N" *) output [0:0]DDR3_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_P" *) output [0:0]DDR3_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CKE" *) output [0:0]DDR3_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DM" *) output [1:0]DDR3_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQ" *) inout [15:0]DDR3_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_N" *) inout [1:0]DDR3_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_P" *) inout [1:0]DDR3_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ODT" *) output [0:0]DDR3_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RAS_N" *) output DDR3_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RESET_N" *) output DDR3_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 WE_N" *) output DDR3_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LEDR DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LEDR, LAYERED_METADATA undef" *) output [7:0]LEDR;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_0 CLK_N" *) output TMDS_0_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_0 CLK_P" *) output TMDS_0_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_0 DATA_N" *) output [2:0]TMDS_0_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_0 DATA_P" *) output [2:0]TMDS_0_data_p;
  output [0:0]hdmi_rx_txen;
  input [5:0]mm2s_frame_ptr_in_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input reset;
  input rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  output tx_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;

  wire [3:0]AXI_Periph_M00_AXI_ARADDR;
  wire AXI_Periph_M00_AXI_ARREADY;
  wire AXI_Periph_M00_AXI_ARVALID;
  wire [3:0]AXI_Periph_M00_AXI_AWADDR;
  wire AXI_Periph_M00_AXI_AWREADY;
  wire AXI_Periph_M00_AXI_AWVALID;
  wire AXI_Periph_M00_AXI_BREADY;
  wire [1:0]AXI_Periph_M00_AXI_BRESP;
  wire AXI_Periph_M00_AXI_BVALID;
  wire [31:0]AXI_Periph_M00_AXI_RDATA;
  wire AXI_Periph_M00_AXI_RREADY;
  wire [1:0]AXI_Periph_M00_AXI_RRESP;
  wire AXI_Periph_M00_AXI_RVALID;
  wire [31:0]AXI_Periph_M00_AXI_WDATA;
  wire AXI_Periph_M00_AXI_WREADY;
  wire [3:0]AXI_Periph_M00_AXI_WSTRB;
  wire AXI_Periph_M00_AXI_WVALID;
  wire [8:0]AXI_Periph_M01_AXI_ARADDR;
  wire AXI_Periph_M01_AXI_ARREADY;
  wire AXI_Periph_M01_AXI_ARVALID;
  wire [8:0]AXI_Periph_M01_AXI_AWADDR;
  wire AXI_Periph_M01_AXI_AWREADY;
  wire AXI_Periph_M01_AXI_AWVALID;
  wire AXI_Periph_M01_AXI_BREADY;
  wire [1:0]AXI_Periph_M01_AXI_BRESP;
  wire AXI_Periph_M01_AXI_BVALID;
  wire [31:0]AXI_Periph_M01_AXI_RDATA;
  wire AXI_Periph_M01_AXI_RREADY;
  wire [1:0]AXI_Periph_M01_AXI_RRESP;
  wire AXI_Periph_M01_AXI_RVALID;
  wire [31:0]AXI_Periph_M01_AXI_WDATA;
  wire AXI_Periph_M01_AXI_WREADY;
  wire AXI_Periph_M01_AXI_WVALID;
  wire [8:0]AXI_Periph_M02_AXI_ARADDR;
  wire AXI_Periph_M02_AXI_ARREADY;
  wire AXI_Periph_M02_AXI_ARVALID;
  wire [8:0]AXI_Periph_M02_AXI_AWADDR;
  wire AXI_Periph_M02_AXI_AWREADY;
  wire AXI_Periph_M02_AXI_AWVALID;
  wire AXI_Periph_M02_AXI_BREADY;
  wire [1:0]AXI_Periph_M02_AXI_BRESP;
  wire AXI_Periph_M02_AXI_BVALID;
  wire [31:0]AXI_Periph_M02_AXI_RDATA;
  wire AXI_Periph_M02_AXI_RREADY;
  wire [1:0]AXI_Periph_M02_AXI_RRESP;
  wire AXI_Periph_M02_AXI_RVALID;
  wire [31:0]AXI_Periph_M02_AXI_WDATA;
  wire AXI_Periph_M02_AXI_WREADY;
  wire [3:0]AXI_Periph_M02_AXI_WSTRB;
  wire AXI_Periph_M02_AXI_WVALID;
  wire [4:0]AXI_Periph_M03_AXI_ARADDR;
  wire [2:0]AXI_Periph_M03_AXI_ARPROT;
  wire AXI_Periph_M03_AXI_ARREADY;
  wire AXI_Periph_M03_AXI_ARVALID;
  wire [4:0]AXI_Periph_M03_AXI_AWADDR;
  wire [2:0]AXI_Periph_M03_AXI_AWPROT;
  wire AXI_Periph_M03_AXI_AWREADY;
  wire AXI_Periph_M03_AXI_AWVALID;
  wire AXI_Periph_M03_AXI_BREADY;
  wire [1:0]AXI_Periph_M03_AXI_BRESP;
  wire AXI_Periph_M03_AXI_BVALID;
  wire [31:0]AXI_Periph_M03_AXI_RDATA;
  wire AXI_Periph_M03_AXI_RREADY;
  wire [1:0]AXI_Periph_M03_AXI_RRESP;
  wire AXI_Periph_M03_AXI_RVALID;
  wire [31:0]AXI_Periph_M03_AXI_WDATA;
  wire AXI_Periph_M03_AXI_WREADY;
  wire [3:0]AXI_Periph_M03_AXI_WSTRB;
  wire AXI_Periph_M03_AXI_WVALID;
  wire [31:0]AXI_Periph_M04_AXI_ARADDR;
  wire [1:0]AXI_Periph_M04_AXI_ARBURST;
  wire [3:0]AXI_Periph_M04_AXI_ARCACHE;
  wire [3:0]AXI_Periph_M04_AXI_ARID;
  wire [7:0]AXI_Periph_M04_AXI_ARLEN;
  wire [0:0]AXI_Periph_M04_AXI_ARLOCK;
  wire [2:0]AXI_Periph_M04_AXI_ARPROT;
  wire [3:0]AXI_Periph_M04_AXI_ARQOS;
  wire AXI_Periph_M04_AXI_ARREADY;
  wire [2:0]AXI_Periph_M04_AXI_ARSIZE;
  wire [113:0]AXI_Periph_M04_AXI_ARUSER;
  wire AXI_Periph_M04_AXI_ARVALID;
  wire [31:0]AXI_Periph_M04_AXI_AWADDR;
  wire [1:0]AXI_Periph_M04_AXI_AWBURST;
  wire [3:0]AXI_Periph_M04_AXI_AWCACHE;
  wire [3:0]AXI_Periph_M04_AXI_AWID;
  wire [7:0]AXI_Periph_M04_AXI_AWLEN;
  wire [0:0]AXI_Periph_M04_AXI_AWLOCK;
  wire [2:0]AXI_Periph_M04_AXI_AWPROT;
  wire [3:0]AXI_Periph_M04_AXI_AWQOS;
  wire AXI_Periph_M04_AXI_AWREADY;
  wire [2:0]AXI_Periph_M04_AXI_AWSIZE;
  wire [113:0]AXI_Periph_M04_AXI_AWUSER;
  wire AXI_Periph_M04_AXI_AWVALID;
  wire [3:0]AXI_Periph_M04_AXI_BID;
  wire AXI_Periph_M04_AXI_BREADY;
  wire [1:0]AXI_Periph_M04_AXI_BRESP;
  wire [113:0]AXI_Periph_M04_AXI_BUSER;
  wire AXI_Periph_M04_AXI_BVALID;
  wire [31:0]AXI_Periph_M04_AXI_RDATA;
  wire [3:0]AXI_Periph_M04_AXI_RID;
  wire AXI_Periph_M04_AXI_RLAST;
  wire AXI_Periph_M04_AXI_RREADY;
  wire [1:0]AXI_Periph_M04_AXI_RRESP;
  wire [13:0]AXI_Periph_M04_AXI_RUSER;
  wire AXI_Periph_M04_AXI_RVALID;
  wire [31:0]AXI_Periph_M04_AXI_WDATA;
  wire AXI_Periph_M04_AXI_WLAST;
  wire AXI_Periph_M04_AXI_WREADY;
  wire [3:0]AXI_Periph_M04_AXI_WSTRB;
  wire [13:0]AXI_Periph_M04_AXI_WUSER;
  wire AXI_Periph_M04_AXI_WVALID;
  wire [3:0]AXI_Periph_M05_AXI_ARADDR;
  wire AXI_Periph_M05_AXI_ARREADY;
  wire AXI_Periph_M05_AXI_ARVALID;
  wire [3:0]AXI_Periph_M05_AXI_AWADDR;
  wire AXI_Periph_M05_AXI_AWREADY;
  wire AXI_Periph_M05_AXI_AWVALID;
  wire AXI_Periph_M05_AXI_BREADY;
  wire [1:0]AXI_Periph_M05_AXI_BRESP;
  wire AXI_Periph_M05_AXI_BVALID;
  wire [31:0]AXI_Periph_M05_AXI_RDATA;
  wire AXI_Periph_M05_AXI_RREADY;
  wire [1:0]AXI_Periph_M05_AXI_RRESP;
  wire AXI_Periph_M05_AXI_RVALID;
  wire [31:0]AXI_Periph_M05_AXI_WDATA;
  wire AXI_Periph_M05_AXI_WREADY;
  wire [3:0]AXI_Periph_M05_AXI_WSTRB;
  wire AXI_Periph_M05_AXI_WVALID;
  wire [8:0]AXI_Periph_M06_AXI_ARADDR;
  wire AXI_Periph_M06_AXI_ARREADY;
  wire AXI_Periph_M06_AXI_ARVALID;
  wire [8:0]AXI_Periph_M06_AXI_AWADDR;
  wire AXI_Periph_M06_AXI_AWREADY;
  wire AXI_Periph_M06_AXI_AWVALID;
  wire AXI_Periph_M06_AXI_BREADY;
  wire [1:0]AXI_Periph_M06_AXI_BRESP;
  wire AXI_Periph_M06_AXI_BVALID;
  wire [31:0]AXI_Periph_M06_AXI_RDATA;
  wire AXI_Periph_M06_AXI_RREADY;
  wire [1:0]AXI_Periph_M06_AXI_RRESP;
  wire AXI_Periph_M06_AXI_RVALID;
  wire [31:0]AXI_Periph_M06_AXI_WDATA;
  wire AXI_Periph_M06_AXI_WREADY;
  wire [3:0]AXI_Periph_M06_AXI_WSTRB;
  wire AXI_Periph_M06_AXI_WVALID;
  wire [8:0]AXI_Periph_M07_AXI_ARADDR;
  wire AXI_Periph_M07_AXI_ARREADY;
  wire AXI_Periph_M07_AXI_ARVALID;
  wire [8:0]AXI_Periph_M07_AXI_AWADDR;
  wire AXI_Periph_M07_AXI_AWREADY;
  wire AXI_Periph_M07_AXI_AWVALID;
  wire AXI_Periph_M07_AXI_BREADY;
  wire [1:0]AXI_Periph_M07_AXI_BRESP;
  wire AXI_Periph_M07_AXI_BVALID;
  wire [31:0]AXI_Periph_M07_AXI_RDATA;
  wire AXI_Periph_M07_AXI_RREADY;
  wire [1:0]AXI_Periph_M07_AXI_RRESP;
  wire AXI_Periph_M07_AXI_RVALID;
  wire [31:0]AXI_Periph_M07_AXI_WDATA;
  wire AXI_Periph_M07_AXI_WREADY;
  wire [3:0]AXI_Periph_M07_AXI_WSTRB;
  wire AXI_Periph_M07_AXI_WVALID;
  wire [5:0]AXI_Periph_M08_AXI_ARADDR;
  wire AXI_Periph_M08_AXI_ARREADY;
  wire AXI_Periph_M08_AXI_ARVALID;
  wire [5:0]AXI_Periph_M08_AXI_AWADDR;
  wire AXI_Periph_M08_AXI_AWREADY;
  wire AXI_Periph_M08_AXI_AWVALID;
  wire AXI_Periph_M08_AXI_BREADY;
  wire [1:0]AXI_Periph_M08_AXI_BRESP;
  wire AXI_Periph_M08_AXI_BVALID;
  wire [31:0]AXI_Periph_M08_AXI_RDATA;
  wire AXI_Periph_M08_AXI_RREADY;
  wire [1:0]AXI_Periph_M08_AXI_RRESP;
  wire AXI_Periph_M08_AXI_RVALID;
  wire [31:0]AXI_Periph_M08_AXI_WDATA;
  wire AXI_Periph_M08_AXI_WREADY;
  wire AXI_Periph_M08_AXI_WVALID;
  wire [5:0]AXI_Periph_M09_AXI_ARADDR;
  wire [2:0]AXI_Periph_M09_AXI_ARPROT;
  wire AXI_Periph_M09_AXI_ARREADY;
  wire AXI_Periph_M09_AXI_ARVALID;
  wire [5:0]AXI_Periph_M09_AXI_AWADDR;
  wire [2:0]AXI_Periph_M09_AXI_AWPROT;
  wire AXI_Periph_M09_AXI_AWREADY;
  wire AXI_Periph_M09_AXI_AWVALID;
  wire AXI_Periph_M09_AXI_BREADY;
  wire [1:0]AXI_Periph_M09_AXI_BRESP;
  wire AXI_Periph_M09_AXI_BVALID;
  wire [31:0]AXI_Periph_M09_AXI_RDATA;
  wire AXI_Periph_M09_AXI_RREADY;
  wire [1:0]AXI_Periph_M09_AXI_RRESP;
  wire AXI_Periph_M09_AXI_RVALID;
  wire [31:0]AXI_Periph_M09_AXI_WDATA;
  wire AXI_Periph_M09_AXI_WREADY;
  wire [3:0]AXI_Periph_M09_AXI_WSTRB;
  wire AXI_Periph_M09_AXI_WVALID;
  wire [4:0]AXI_Periph_M10_AXI_ARADDR;
  wire AXI_Periph_M10_AXI_ARREADY;
  wire AXI_Periph_M10_AXI_ARVALID;
  wire [4:0]AXI_Periph_M10_AXI_AWADDR;
  wire AXI_Periph_M10_AXI_AWREADY;
  wire AXI_Periph_M10_AXI_AWVALID;
  wire AXI_Periph_M10_AXI_BREADY;
  wire [1:0]AXI_Periph_M10_AXI_BRESP;
  wire AXI_Periph_M10_AXI_BVALID;
  wire [31:0]AXI_Periph_M10_AXI_RDATA;
  wire AXI_Periph_M10_AXI_RREADY;
  wire [1:0]AXI_Periph_M10_AXI_RRESP;
  wire AXI_Periph_M10_AXI_RVALID;
  wire [31:0]AXI_Periph_M10_AXI_WDATA;
  wire AXI_Periph_M10_AXI_WREADY;
  wire [3:0]AXI_Periph_M10_AXI_WSTRB;
  wire AXI_Periph_M10_AXI_WVALID;
  wire [8:0]AXI_Periph_M11_AXI_ARADDR;
  wire AXI_Periph_M11_AXI_ARREADY;
  wire AXI_Periph_M11_AXI_ARVALID;
  wire [8:0]AXI_Periph_M11_AXI_AWADDR;
  wire AXI_Periph_M11_AXI_AWREADY;
  wire AXI_Periph_M11_AXI_AWVALID;
  wire AXI_Periph_M11_AXI_BREADY;
  wire [1:0]AXI_Periph_M11_AXI_BRESP;
  wire AXI_Periph_M11_AXI_BVALID;
  wire [31:0]AXI_Periph_M11_AXI_RDATA;
  wire AXI_Periph_M11_AXI_RREADY;
  wire [1:0]AXI_Periph_M11_AXI_RRESP;
  wire AXI_Periph_M11_AXI_RVALID;
  wire [31:0]AXI_Periph_M11_AXI_WDATA;
  wire AXI_Periph_M11_AXI_WREADY;
  wire [3:0]AXI_Periph_M11_AXI_WSTRB;
  wire AXI_Periph_M11_AXI_WVALID;
  wire [31:0]CMDA_controller_0_axi_lite_ARADDR;
  wire CMDA_controller_0_axi_lite_ARREADY;
  wire CMDA_controller_0_axi_lite_ARVALID;
  wire [31:0]CMDA_controller_0_axi_lite_AWADDR;
  wire CMDA_controller_0_axi_lite_AWREADY;
  wire CMDA_controller_0_axi_lite_AWVALID;
  wire CMDA_controller_0_axi_lite_BREADY;
  wire [1:0]CMDA_controller_0_axi_lite_BRESP;
  wire CMDA_controller_0_axi_lite_BVALID;
  wire [31:0]CMDA_controller_0_axi_lite_RDATA;
  wire CMDA_controller_0_axi_lite_RREADY;
  wire [1:0]CMDA_controller_0_axi_lite_RRESP;
  wire CMDA_controller_0_axi_lite_RVALID;
  wire [31:0]CMDA_controller_0_axi_lite_WDATA;
  wire CMDA_controller_0_axi_lite_WREADY;
  wire CMDA_controller_0_axi_lite_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire CMDA_controller_0_done;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire GameLogic_0_enemy_shell_req;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_enemy_shell_x;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_enemy_shell_y;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]GameLogic_0_enemy_tank_frame_addr;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire GameLogic_0_enemy_tank_req;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_enemy_tank_x;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_enemy_tank_y;
  wire [7:0]GameLogic_0_player_health;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]GameLogic_0_player_shell_frame_addr;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]GameLogic_0_player_shell_frame_addr1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire GameLogic_0_player_shell_req;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_player_shell_x;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_player_shell_y;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]GameLogic_0_player_tank_frame_addr;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire GameLogic_0_player_tank_req;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_player_tank_x;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]GameLogic_0_player_tank_y;
  wire [31:0]GameLogic_0_wall_frame_addr;
  wire GameLogic_0_wall_req;
  wire [10:0]GameLogic_0_wall_x;
  wire [10:0]GameLogic_0_wall_y;
  wire [28:0]Memory_M00_AXI_ARADDR;
  wire [1:0]Memory_M00_AXI_ARBURST;
  wire [3:0]Memory_M00_AXI_ARCACHE;
  wire [7:0]Memory_M00_AXI_ARLEN;
  wire [0:0]Memory_M00_AXI_ARLOCK;
  wire [2:0]Memory_M00_AXI_ARPROT;
  wire [3:0]Memory_M00_AXI_ARQOS;
  wire Memory_M00_AXI_ARREADY;
  wire [2:0]Memory_M00_AXI_ARSIZE;
  wire Memory_M00_AXI_ARVALID;
  wire [28:0]Memory_M00_AXI_AWADDR;
  wire [1:0]Memory_M00_AXI_AWBURST;
  wire [3:0]Memory_M00_AXI_AWCACHE;
  wire [7:0]Memory_M00_AXI_AWLEN;
  wire [0:0]Memory_M00_AXI_AWLOCK;
  wire [2:0]Memory_M00_AXI_AWPROT;
  wire [3:0]Memory_M00_AXI_AWQOS;
  wire Memory_M00_AXI_AWREADY;
  wire [2:0]Memory_M00_AXI_AWSIZE;
  wire Memory_M00_AXI_AWVALID;
  wire Memory_M00_AXI_BREADY;
  wire [1:0]Memory_M00_AXI_BRESP;
  wire Memory_M00_AXI_BVALID;
  wire [31:0]Memory_M00_AXI_RDATA;
  wire Memory_M00_AXI_RLAST;
  wire Memory_M00_AXI_RREADY;
  wire [1:0]Memory_M00_AXI_RRESP;
  wire Memory_M00_AXI_RVALID;
  wire [31:0]Memory_M00_AXI_WDATA;
  wire Memory_M00_AXI_WLAST;
  wire Memory_M00_AXI_WREADY;
  wire [3:0]Memory_M00_AXI_WSTRB;
  wire Memory_M00_AXI_WVALID;
  wire [31:0]axi_cdma_0_M_AXI_ARADDR;
  wire [1:0]axi_cdma_0_M_AXI_ARBURST;
  wire [3:0]axi_cdma_0_M_AXI_ARCACHE;
  wire [7:0]axi_cdma_0_M_AXI_ARLEN;
  wire [2:0]axi_cdma_0_M_AXI_ARPROT;
  wire axi_cdma_0_M_AXI_ARREADY;
  wire [2:0]axi_cdma_0_M_AXI_ARSIZE;
  wire axi_cdma_0_M_AXI_ARVALID;
  wire [31:0]axi_cdma_0_M_AXI_AWADDR;
  wire [1:0]axi_cdma_0_M_AXI_AWBURST;
  wire [3:0]axi_cdma_0_M_AXI_AWCACHE;
  wire [7:0]axi_cdma_0_M_AXI_AWLEN;
  wire [2:0]axi_cdma_0_M_AXI_AWPROT;
  wire axi_cdma_0_M_AXI_AWREADY;
  wire [2:0]axi_cdma_0_M_AXI_AWSIZE;
  wire axi_cdma_0_M_AXI_AWVALID;
  wire axi_cdma_0_M_AXI_BREADY;
  wire [1:0]axi_cdma_0_M_AXI_BRESP;
  wire axi_cdma_0_M_AXI_BVALID;
  wire [31:0]axi_cdma_0_M_AXI_RDATA;
  wire axi_cdma_0_M_AXI_RLAST;
  wire axi_cdma_0_M_AXI_RREADY;
  wire [1:0]axi_cdma_0_M_AXI_RRESP;
  wire axi_cdma_0_M_AXI_RVALID;
  wire [31:0]axi_cdma_0_M_AXI_WDATA;
  wire axi_cdma_0_M_AXI_WLAST;
  wire axi_cdma_0_M_AXI_WREADY;
  wire [3:0]axi_cdma_0_M_AXI_WSTRB;
  wire axi_cdma_0_M_AXI_WVALID;
  wire [31:0]axi_cdma_1_M_AXI_ARADDR;
  wire [1:0]axi_cdma_1_M_AXI_ARBURST;
  wire [3:0]axi_cdma_1_M_AXI_ARCACHE;
  wire [7:0]axi_cdma_1_M_AXI_ARLEN;
  wire [2:0]axi_cdma_1_M_AXI_ARPROT;
  wire axi_cdma_1_M_AXI_ARREADY;
  wire [2:0]axi_cdma_1_M_AXI_ARSIZE;
  wire axi_cdma_1_M_AXI_ARVALID;
  wire [31:0]axi_cdma_1_M_AXI_AWADDR;
  wire [1:0]axi_cdma_1_M_AXI_AWBURST;
  wire [3:0]axi_cdma_1_M_AXI_AWCACHE;
  wire [7:0]axi_cdma_1_M_AXI_AWLEN;
  wire [2:0]axi_cdma_1_M_AXI_AWPROT;
  wire axi_cdma_1_M_AXI_AWREADY;
  wire [2:0]axi_cdma_1_M_AXI_AWSIZE;
  wire axi_cdma_1_M_AXI_AWVALID;
  wire axi_cdma_1_M_AXI_BREADY;
  wire [1:0]axi_cdma_1_M_AXI_BRESP;
  wire axi_cdma_1_M_AXI_BVALID;
  wire [31:0]axi_cdma_1_M_AXI_RDATA;
  wire axi_cdma_1_M_AXI_RLAST;
  wire axi_cdma_1_M_AXI_RREADY;
  wire [1:0]axi_cdma_1_M_AXI_RRESP;
  wire axi_cdma_1_M_AXI_RVALID;
  wire [31:0]axi_cdma_1_M_AXI_WDATA;
  wire axi_cdma_1_M_AXI_WLAST;
  wire axi_cdma_1_M_AXI_WREADY;
  wire [3:0]axi_cdma_1_M_AXI_WSTRB;
  wire axi_cdma_1_M_AXI_WVALID;
  wire axi_dynclk_0_PXL_CLK_5X_O;
  wire axi_dynclk_0_PXL_CLK_O;
  wire [31:0]axi_gpio_0_gpio2_io_o;
  wire [4:0]axi_gpio_0_gpio_io_o;
  wire [4:0]axi_gpio_1_gpio_io_o;
  wire axi_timer_0_interrupt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_1_interrupt;
  wire axi_uartlite_1_tx;
  wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire [31:0]microblaze_0_M_AXI_IP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_IP_ARPROT;
  wire microblaze_0_M_AXI_IP_ARREADY;
  wire microblaze_0_M_AXI_IP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_IP_RDATA;
  wire microblaze_0_M_AXI_IP_RREADY;
  wire [1:0]microblaze_0_M_AXI_IP_RRESP;
  wire microblaze_0_M_AXI_IP_RVALID;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire microblaze_0_debug_DISABLE;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_1_ABUS;
  wire microblaze_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_1_BE;
  wire microblaze_0_dlmb_1_CE;
  wire [0:31]microblaze_0_dlmb_1_READDBUS;
  wire microblaze_0_dlmb_1_READSTROBE;
  wire microblaze_0_dlmb_1_READY;
  wire microblaze_0_dlmb_1_UE;
  wire microblaze_0_dlmb_1_WAIT;
  wire [0:31]microblaze_0_dlmb_1_WRITEDBUS;
  wire microblaze_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_1_ABUS;
  wire microblaze_0_ilmb_1_ADDRSTROBE;
  wire microblaze_0_ilmb_1_CE;
  wire [0:31]microblaze_0_ilmb_1_READDBUS;
  wire microblaze_0_ilmb_1_READSTROBE;
  wire microblaze_0_ilmb_1_READY;
  wire microblaze_0_ilmb_1_UE;
  wire microblaze_0_ilmb_1_WAIT;
  wire [0:1]microblaze_0_interrupt_ACK;
  wire [31:0]microblaze_0_interrupt_ADDRESS;
  wire microblaze_0_interrupt_INTERRUPT;
  wire [1:0]microblaze_0_intr;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk1;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [5:0]mm2s_frame_ptr_in_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]plot_manage_0_frame_addr;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire plot_manage_0_plot_start;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire plot_manage_0_shell_grant_0;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire plot_manage_0_shell_grant_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire plot_manage_0_tank_grant_0;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire plot_manage_0_tank_grant_1;
  wire plot_manage_0_wall_grant;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]plot_manage_0_x;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [10:0]plot_manage_0_y;
  wire [0:0]proc_sys_reset_0_bus_struct_reset;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire proc_sys_reset_0_mb_reset;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire rx_0_1;
  wire sys_clock_1;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign DDR3_0_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_0_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_0_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_0_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_0_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_0_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_0_dm[1:0] = mig_7series_0_DDR3_DM;
  assign DDR3_0_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_0_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_0_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_0_we_n = mig_7series_0_DDR3_WE_N;
  assign LEDR[7:0] = GameLogic_0_player_health;
  assign TMDS_0_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign TMDS_0_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign TMDS_0_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign TMDS_0_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign axi_uartlite_0_UART_RxD = usb_uart_rxd;
  assign hdmi_rx_txen[0] = xlconstant_0_dout;
  assign mm2s_frame_ptr_in_0_1 = mm2s_frame_ptr_in_0[5:0];
  assign reset_1 = reset;
  assign rx_0_1 = rx_0;
  assign sys_clock_1 = sys_clock;
  assign tx_0 = axi_uartlite_1_tx;
  assign usb_uart_txd = axi_uartlite_0_UART_TxD;
  design_1_smartconnect_0_0 AXI_Periph
       (.M00_AXI_araddr(AXI_Periph_M00_AXI_ARADDR),
        .M00_AXI_arready(AXI_Periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(AXI_Periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(AXI_Periph_M00_AXI_AWADDR),
        .M00_AXI_awready(AXI_Periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(AXI_Periph_M00_AXI_AWVALID),
        .M00_AXI_bready(AXI_Periph_M00_AXI_BREADY),
        .M00_AXI_bresp(AXI_Periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(AXI_Periph_M00_AXI_BVALID),
        .M00_AXI_rdata(AXI_Periph_M00_AXI_RDATA),
        .M00_AXI_rready(AXI_Periph_M00_AXI_RREADY),
        .M00_AXI_rresp(AXI_Periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(AXI_Periph_M00_AXI_RVALID),
        .M00_AXI_wdata(AXI_Periph_M00_AXI_WDATA),
        .M00_AXI_wready(AXI_Periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(AXI_Periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(AXI_Periph_M00_AXI_WVALID),
        .M01_AXI_araddr(AXI_Periph_M01_AXI_ARADDR),
        .M01_AXI_arready(AXI_Periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(AXI_Periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(AXI_Periph_M01_AXI_AWADDR),
        .M01_AXI_awready(AXI_Periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(AXI_Periph_M01_AXI_AWVALID),
        .M01_AXI_bready(AXI_Periph_M01_AXI_BREADY),
        .M01_AXI_bresp(AXI_Periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(AXI_Periph_M01_AXI_BVALID),
        .M01_AXI_rdata(AXI_Periph_M01_AXI_RDATA),
        .M01_AXI_rready(AXI_Periph_M01_AXI_RREADY),
        .M01_AXI_rresp(AXI_Periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(AXI_Periph_M01_AXI_RVALID),
        .M01_AXI_wdata(AXI_Periph_M01_AXI_WDATA),
        .M01_AXI_wready(AXI_Periph_M01_AXI_WREADY),
        .M01_AXI_wvalid(AXI_Periph_M01_AXI_WVALID),
        .M02_AXI_araddr(AXI_Periph_M02_AXI_ARADDR),
        .M02_AXI_arready(AXI_Periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(AXI_Periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(AXI_Periph_M02_AXI_AWADDR),
        .M02_AXI_awready(AXI_Periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(AXI_Periph_M02_AXI_AWVALID),
        .M02_AXI_bready(AXI_Periph_M02_AXI_BREADY),
        .M02_AXI_bresp(AXI_Periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(AXI_Periph_M02_AXI_BVALID),
        .M02_AXI_rdata(AXI_Periph_M02_AXI_RDATA),
        .M02_AXI_rready(AXI_Periph_M02_AXI_RREADY),
        .M02_AXI_rresp(AXI_Periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(AXI_Periph_M02_AXI_RVALID),
        .M02_AXI_wdata(AXI_Periph_M02_AXI_WDATA),
        .M02_AXI_wready(AXI_Periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(AXI_Periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(AXI_Periph_M02_AXI_WVALID),
        .M03_AXI_araddr(AXI_Periph_M03_AXI_ARADDR),
        .M03_AXI_arprot(AXI_Periph_M03_AXI_ARPROT),
        .M03_AXI_arready(AXI_Periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(AXI_Periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(AXI_Periph_M03_AXI_AWADDR),
        .M03_AXI_awprot(AXI_Periph_M03_AXI_AWPROT),
        .M03_AXI_awready(AXI_Periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(AXI_Periph_M03_AXI_AWVALID),
        .M03_AXI_bready(AXI_Periph_M03_AXI_BREADY),
        .M03_AXI_bresp(AXI_Periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(AXI_Periph_M03_AXI_BVALID),
        .M03_AXI_rdata(AXI_Periph_M03_AXI_RDATA),
        .M03_AXI_rready(AXI_Periph_M03_AXI_RREADY),
        .M03_AXI_rresp(AXI_Periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(AXI_Periph_M03_AXI_RVALID),
        .M03_AXI_wdata(AXI_Periph_M03_AXI_WDATA),
        .M03_AXI_wready(AXI_Periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(AXI_Periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(AXI_Periph_M03_AXI_WVALID),
        .M04_AXI_araddr(AXI_Periph_M04_AXI_ARADDR),
        .M04_AXI_arburst(AXI_Periph_M04_AXI_ARBURST),
        .M04_AXI_arcache(AXI_Periph_M04_AXI_ARCACHE),
        .M04_AXI_arid(AXI_Periph_M04_AXI_ARID),
        .M04_AXI_arlen(AXI_Periph_M04_AXI_ARLEN),
        .M04_AXI_arlock(AXI_Periph_M04_AXI_ARLOCK),
        .M04_AXI_arprot(AXI_Periph_M04_AXI_ARPROT),
        .M04_AXI_arqos(AXI_Periph_M04_AXI_ARQOS),
        .M04_AXI_arready(AXI_Periph_M04_AXI_ARREADY),
        .M04_AXI_arsize(AXI_Periph_M04_AXI_ARSIZE),
        .M04_AXI_aruser(AXI_Periph_M04_AXI_ARUSER),
        .M04_AXI_arvalid(AXI_Periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(AXI_Periph_M04_AXI_AWADDR),
        .M04_AXI_awburst(AXI_Periph_M04_AXI_AWBURST),
        .M04_AXI_awcache(AXI_Periph_M04_AXI_AWCACHE),
        .M04_AXI_awid(AXI_Periph_M04_AXI_AWID),
        .M04_AXI_awlen(AXI_Periph_M04_AXI_AWLEN),
        .M04_AXI_awlock(AXI_Periph_M04_AXI_AWLOCK),
        .M04_AXI_awprot(AXI_Periph_M04_AXI_AWPROT),
        .M04_AXI_awqos(AXI_Periph_M04_AXI_AWQOS),
        .M04_AXI_awready(AXI_Periph_M04_AXI_AWREADY),
        .M04_AXI_awsize(AXI_Periph_M04_AXI_AWSIZE),
        .M04_AXI_awuser(AXI_Periph_M04_AXI_AWUSER),
        .M04_AXI_awvalid(AXI_Periph_M04_AXI_AWVALID),
        .M04_AXI_bid(AXI_Periph_M04_AXI_BID),
        .M04_AXI_bready(AXI_Periph_M04_AXI_BREADY),
        .M04_AXI_bresp(AXI_Periph_M04_AXI_BRESP),
        .M04_AXI_buser(AXI_Periph_M04_AXI_BUSER),
        .M04_AXI_bvalid(AXI_Periph_M04_AXI_BVALID),
        .M04_AXI_rdata(AXI_Periph_M04_AXI_RDATA),
        .M04_AXI_rid(AXI_Periph_M04_AXI_RID),
        .M04_AXI_rlast(AXI_Periph_M04_AXI_RLAST),
        .M04_AXI_rready(AXI_Periph_M04_AXI_RREADY),
        .M04_AXI_rresp(AXI_Periph_M04_AXI_RRESP),
        .M04_AXI_ruser(AXI_Periph_M04_AXI_RUSER),
        .M04_AXI_rvalid(AXI_Periph_M04_AXI_RVALID),
        .M04_AXI_wdata(AXI_Periph_M04_AXI_WDATA),
        .M04_AXI_wlast(AXI_Periph_M04_AXI_WLAST),
        .M04_AXI_wready(AXI_Periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(AXI_Periph_M04_AXI_WSTRB),
        .M04_AXI_wuser(AXI_Periph_M04_AXI_WUSER),
        .M04_AXI_wvalid(AXI_Periph_M04_AXI_WVALID),
        .M05_AXI_araddr(AXI_Periph_M05_AXI_ARADDR),
        .M05_AXI_arready(AXI_Periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(AXI_Periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(AXI_Periph_M05_AXI_AWADDR),
        .M05_AXI_awready(AXI_Periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(AXI_Periph_M05_AXI_AWVALID),
        .M05_AXI_bready(AXI_Periph_M05_AXI_BREADY),
        .M05_AXI_bresp(AXI_Periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(AXI_Periph_M05_AXI_BVALID),
        .M05_AXI_rdata(AXI_Periph_M05_AXI_RDATA),
        .M05_AXI_rready(AXI_Periph_M05_AXI_RREADY),
        .M05_AXI_rresp(AXI_Periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(AXI_Periph_M05_AXI_RVALID),
        .M05_AXI_wdata(AXI_Periph_M05_AXI_WDATA),
        .M05_AXI_wready(AXI_Periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(AXI_Periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(AXI_Periph_M05_AXI_WVALID),
        .M06_AXI_araddr(AXI_Periph_M06_AXI_ARADDR),
        .M06_AXI_arready(AXI_Periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(AXI_Periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(AXI_Periph_M06_AXI_AWADDR),
        .M06_AXI_awready(AXI_Periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(AXI_Periph_M06_AXI_AWVALID),
        .M06_AXI_bready(AXI_Periph_M06_AXI_BREADY),
        .M06_AXI_bresp(AXI_Periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(AXI_Periph_M06_AXI_BVALID),
        .M06_AXI_rdata(AXI_Periph_M06_AXI_RDATA),
        .M06_AXI_rready(AXI_Periph_M06_AXI_RREADY),
        .M06_AXI_rresp(AXI_Periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(AXI_Periph_M06_AXI_RVALID),
        .M06_AXI_wdata(AXI_Periph_M06_AXI_WDATA),
        .M06_AXI_wready(AXI_Periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(AXI_Periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(AXI_Periph_M06_AXI_WVALID),
        .M07_AXI_araddr(AXI_Periph_M07_AXI_ARADDR),
        .M07_AXI_arready(AXI_Periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(AXI_Periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(AXI_Periph_M07_AXI_AWADDR),
        .M07_AXI_awready(AXI_Periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(AXI_Periph_M07_AXI_AWVALID),
        .M07_AXI_bready(AXI_Periph_M07_AXI_BREADY),
        .M07_AXI_bresp(AXI_Periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(AXI_Periph_M07_AXI_BVALID),
        .M07_AXI_rdata(AXI_Periph_M07_AXI_RDATA),
        .M07_AXI_rready(AXI_Periph_M07_AXI_RREADY),
        .M07_AXI_rresp(AXI_Periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(AXI_Periph_M07_AXI_RVALID),
        .M07_AXI_wdata(AXI_Periph_M07_AXI_WDATA),
        .M07_AXI_wready(AXI_Periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(AXI_Periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(AXI_Periph_M07_AXI_WVALID),
        .M08_AXI_araddr(AXI_Periph_M08_AXI_ARADDR),
        .M08_AXI_arready(AXI_Periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(AXI_Periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(AXI_Periph_M08_AXI_AWADDR),
        .M08_AXI_awready(AXI_Periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(AXI_Periph_M08_AXI_AWVALID),
        .M08_AXI_bready(AXI_Periph_M08_AXI_BREADY),
        .M08_AXI_bresp(AXI_Periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(AXI_Periph_M08_AXI_BVALID),
        .M08_AXI_rdata(AXI_Periph_M08_AXI_RDATA),
        .M08_AXI_rready(AXI_Periph_M08_AXI_RREADY),
        .M08_AXI_rresp(AXI_Periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(AXI_Periph_M08_AXI_RVALID),
        .M08_AXI_wdata(AXI_Periph_M08_AXI_WDATA),
        .M08_AXI_wready(AXI_Periph_M08_AXI_WREADY),
        .M08_AXI_wvalid(AXI_Periph_M08_AXI_WVALID),
        .M09_AXI_araddr(AXI_Periph_M09_AXI_ARADDR),
        .M09_AXI_arprot(AXI_Periph_M09_AXI_ARPROT),
        .M09_AXI_arready(AXI_Periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(AXI_Periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(AXI_Periph_M09_AXI_AWADDR),
        .M09_AXI_awprot(AXI_Periph_M09_AXI_AWPROT),
        .M09_AXI_awready(AXI_Periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(AXI_Periph_M09_AXI_AWVALID),
        .M09_AXI_bready(AXI_Periph_M09_AXI_BREADY),
        .M09_AXI_bresp(AXI_Periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(AXI_Periph_M09_AXI_BVALID),
        .M09_AXI_rdata(AXI_Periph_M09_AXI_RDATA),
        .M09_AXI_rready(AXI_Periph_M09_AXI_RREADY),
        .M09_AXI_rresp(AXI_Periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(AXI_Periph_M09_AXI_RVALID),
        .M09_AXI_wdata(AXI_Periph_M09_AXI_WDATA),
        .M09_AXI_wready(AXI_Periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(AXI_Periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(AXI_Periph_M09_AXI_WVALID),
        .M10_AXI_araddr(AXI_Periph_M10_AXI_ARADDR),
        .M10_AXI_arready(AXI_Periph_M10_AXI_ARREADY),
        .M10_AXI_arvalid(AXI_Periph_M10_AXI_ARVALID),
        .M10_AXI_awaddr(AXI_Periph_M10_AXI_AWADDR),
        .M10_AXI_awready(AXI_Periph_M10_AXI_AWREADY),
        .M10_AXI_awvalid(AXI_Periph_M10_AXI_AWVALID),
        .M10_AXI_bready(AXI_Periph_M10_AXI_BREADY),
        .M10_AXI_bresp(AXI_Periph_M10_AXI_BRESP),
        .M10_AXI_bvalid(AXI_Periph_M10_AXI_BVALID),
        .M10_AXI_rdata(AXI_Periph_M10_AXI_RDATA),
        .M10_AXI_rready(AXI_Periph_M10_AXI_RREADY),
        .M10_AXI_rresp(AXI_Periph_M10_AXI_RRESP),
        .M10_AXI_rvalid(AXI_Periph_M10_AXI_RVALID),
        .M10_AXI_wdata(AXI_Periph_M10_AXI_WDATA),
        .M10_AXI_wready(AXI_Periph_M10_AXI_WREADY),
        .M10_AXI_wstrb(AXI_Periph_M10_AXI_WSTRB),
        .M10_AXI_wvalid(AXI_Periph_M10_AXI_WVALID),
        .M11_AXI_araddr(AXI_Periph_M11_AXI_ARADDR),
        .M11_AXI_arready(AXI_Periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(AXI_Periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(AXI_Periph_M11_AXI_AWADDR),
        .M11_AXI_awready(AXI_Periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(AXI_Periph_M11_AXI_AWVALID),
        .M11_AXI_bready(AXI_Periph_M11_AXI_BREADY),
        .M11_AXI_bresp(AXI_Periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(AXI_Periph_M11_AXI_BVALID),
        .M11_AXI_rdata(AXI_Periph_M11_AXI_RDATA),
        .M11_AXI_rready(AXI_Periph_M11_AXI_RREADY),
        .M11_AXI_rresp(AXI_Periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(AXI_Periph_M11_AXI_RVALID),
        .M11_AXI_wdata(AXI_Periph_M11_AXI_WDATA),
        .M11_AXI_wready(AXI_Periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(AXI_Periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(AXI_Periph_M11_AXI_WVALID),
        .S00_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID),
        .S01_AXI_araddr(microblaze_0_M_AXI_IP_ARADDR),
        .S01_AXI_arprot(microblaze_0_M_AXI_IP_ARPROT),
        .S01_AXI_arready(microblaze_0_M_AXI_IP_ARREADY),
        .S01_AXI_arvalid(microblaze_0_M_AXI_IP_ARVALID),
        .S01_AXI_rdata(microblaze_0_M_AXI_IP_RDATA),
        .S01_AXI_rready(microblaze_0_M_AXI_IP_RREADY),
        .S01_AXI_rresp(microblaze_0_M_AXI_IP_RRESP),
        .S01_AXI_rvalid(microblaze_0_M_AXI_IP_RVALID),
        .aclk(microblaze_0_Clk),
        .aclk1(mig_7series_0_ui_clk1),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  design_1_CMDA_controller_0_0 CMDA_controller_0
       (.axi_lite_aclk(microblaze_0_Clk),
        .axi_lite_araddr(CMDA_controller_0_axi_lite_ARADDR),
        .axi_lite_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .axi_lite_arready(CMDA_controller_0_axi_lite_ARREADY),
        .axi_lite_arvalid(CMDA_controller_0_axi_lite_ARVALID),
        .axi_lite_awaddr(CMDA_controller_0_axi_lite_AWADDR),
        .axi_lite_awready(CMDA_controller_0_axi_lite_AWREADY),
        .axi_lite_awvalid(CMDA_controller_0_axi_lite_AWVALID),
        .axi_lite_bready(CMDA_controller_0_axi_lite_BREADY),
        .axi_lite_bresp(CMDA_controller_0_axi_lite_BRESP),
        .axi_lite_bvalid(CMDA_controller_0_axi_lite_BVALID),
        .axi_lite_rdata(CMDA_controller_0_axi_lite_RDATA),
        .axi_lite_rready(CMDA_controller_0_axi_lite_RREADY),
        .axi_lite_rresp(CMDA_controller_0_axi_lite_RRESP),
        .axi_lite_rvalid(CMDA_controller_0_axi_lite_RVALID),
        .axi_lite_wdata(CMDA_controller_0_axi_lite_WDATA),
        .axi_lite_wready(CMDA_controller_0_axi_lite_WREADY),
        .axi_lite_wvalid(CMDA_controller_0_axi_lite_WVALID),
        .delay_per_line(axi_gpio_0_gpio2_io_o),
        .done(CMDA_controller_0_done),
        .frame_buffer_location(xlconstant_1_dout),
        .img_addr(plot_manage_0_frame_addr),
        .start(plot_manage_0_plot_start),
        .x_location(plot_manage_0_x),
        .y_location(plot_manage_0_y));
  design_1_GameLogic_0_2 GameLogic_0
       (.BT_input(axi_gpio_0_gpio_io_o),
        .enemy_input(axi_gpio_1_gpio_io_o),
        .enemy_shell_frame_addr(GameLogic_0_player_shell_frame_addr),
        .enemy_shell_grant(plot_manage_0_shell_grant_1),
        .enemy_shell_req(GameLogic_0_enemy_shell_req),
        .enemy_shell_x(GameLogic_0_enemy_shell_x),
        .enemy_shell_y(GameLogic_0_enemy_shell_y),
        .enemy_tank_frame_addr(GameLogic_0_enemy_tank_frame_addr),
        .enemy_tank_grant(plot_manage_0_tank_grant_1),
        .enemy_tank_req(GameLogic_0_enemy_tank_req),
        .enemy_tank_x(GameLogic_0_enemy_tank_x),
        .enemy_tank_y(GameLogic_0_enemy_tank_y),
        .player_health(GameLogic_0_player_health),
        .player_shell_frame_addr(GameLogic_0_player_shell_frame_addr1),
        .player_shell_grant(plot_manage_0_shell_grant_0),
        .player_shell_req(GameLogic_0_player_shell_req),
        .player_shell_x(GameLogic_0_player_shell_x),
        .player_shell_y(GameLogic_0_player_shell_y),
        .player_tank_frame_addr(GameLogic_0_player_tank_frame_addr),
        .player_tank_grant(plot_manage_0_tank_grant_0),
        .player_tank_req(GameLogic_0_player_tank_req),
        .player_tank_x(GameLogic_0_player_tank_x),
        .player_tank_y(GameLogic_0_player_tank_y),
        .s00_axi_aclk(microblaze_0_Clk),
        .s00_axi_araddr(AXI_Periph_M09_AXI_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_arprot(AXI_Periph_M09_AXI_ARPROT),
        .s00_axi_arready(AXI_Periph_M09_AXI_ARREADY),
        .s00_axi_arvalid(AXI_Periph_M09_AXI_ARVALID),
        .s00_axi_awaddr(AXI_Periph_M09_AXI_AWADDR),
        .s00_axi_awprot(AXI_Periph_M09_AXI_AWPROT),
        .s00_axi_awready(AXI_Periph_M09_AXI_AWREADY),
        .s00_axi_awvalid(AXI_Periph_M09_AXI_AWVALID),
        .s00_axi_bready(AXI_Periph_M09_AXI_BREADY),
        .s00_axi_bresp(AXI_Periph_M09_AXI_BRESP),
        .s00_axi_bvalid(AXI_Periph_M09_AXI_BVALID),
        .s00_axi_rdata(AXI_Periph_M09_AXI_RDATA),
        .s00_axi_rready(AXI_Periph_M09_AXI_RREADY),
        .s00_axi_rresp(AXI_Periph_M09_AXI_RRESP),
        .s00_axi_rvalid(AXI_Periph_M09_AXI_RVALID),
        .s00_axi_wdata(AXI_Periph_M09_AXI_WDATA),
        .s00_axi_wready(AXI_Periph_M09_AXI_WREADY),
        .s00_axi_wstrb(AXI_Periph_M09_AXI_WSTRB),
        .s00_axi_wvalid(AXI_Periph_M09_AXI_WVALID),
        .wall_frame_addr(GameLogic_0_wall_frame_addr),
        .wall_grant(plot_manage_0_wall_grant),
        .wall_req(GameLogic_0_wall_req),
        .wall_x(GameLogic_0_wall_x),
        .wall_y(GameLogic_0_wall_y));
  design_1_smartconnect_0_1 Memory
       (.M00_AXI_araddr(Memory_M00_AXI_ARADDR),
        .M00_AXI_arburst(Memory_M00_AXI_ARBURST),
        .M00_AXI_arcache(Memory_M00_AXI_ARCACHE),
        .M00_AXI_arlen(Memory_M00_AXI_ARLEN),
        .M00_AXI_arlock(Memory_M00_AXI_ARLOCK),
        .M00_AXI_arprot(Memory_M00_AXI_ARPROT),
        .M00_AXI_arqos(Memory_M00_AXI_ARQOS),
        .M00_AXI_arready(Memory_M00_AXI_ARREADY),
        .M00_AXI_arsize(Memory_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(Memory_M00_AXI_ARVALID),
        .M00_AXI_awaddr(Memory_M00_AXI_AWADDR),
        .M00_AXI_awburst(Memory_M00_AXI_AWBURST),
        .M00_AXI_awcache(Memory_M00_AXI_AWCACHE),
        .M00_AXI_awlen(Memory_M00_AXI_AWLEN),
        .M00_AXI_awlock(Memory_M00_AXI_AWLOCK),
        .M00_AXI_awprot(Memory_M00_AXI_AWPROT),
        .M00_AXI_awqos(Memory_M00_AXI_AWQOS),
        .M00_AXI_awready(Memory_M00_AXI_AWREADY),
        .M00_AXI_awsize(Memory_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(Memory_M00_AXI_AWVALID),
        .M00_AXI_bready(Memory_M00_AXI_BREADY),
        .M00_AXI_bresp(Memory_M00_AXI_BRESP),
        .M00_AXI_bvalid(Memory_M00_AXI_BVALID),
        .M00_AXI_rdata(Memory_M00_AXI_RDATA),
        .M00_AXI_rlast(Memory_M00_AXI_RLAST),
        .M00_AXI_rready(Memory_M00_AXI_RREADY),
        .M00_AXI_rresp(Memory_M00_AXI_RRESP),
        .M00_AXI_rvalid(Memory_M00_AXI_RVALID),
        .M00_AXI_wdata(Memory_M00_AXI_WDATA),
        .M00_AXI_wlast(Memory_M00_AXI_WLAST),
        .M00_AXI_wready(Memory_M00_AXI_WREADY),
        .M00_AXI_wstrb(Memory_M00_AXI_WSTRB),
        .M00_AXI_wvalid(Memory_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_araddr(AXI_Periph_M04_AXI_ARADDR),
        .S01_AXI_arburst(AXI_Periph_M04_AXI_ARBURST),
        .S01_AXI_arcache(AXI_Periph_M04_AXI_ARCACHE),
        .S01_AXI_arid(AXI_Periph_M04_AXI_ARID),
        .S01_AXI_arlen(AXI_Periph_M04_AXI_ARLEN),
        .S01_AXI_arlock(AXI_Periph_M04_AXI_ARLOCK),
        .S01_AXI_arprot(AXI_Periph_M04_AXI_ARPROT),
        .S01_AXI_arqos(AXI_Periph_M04_AXI_ARQOS),
        .S01_AXI_arready(AXI_Periph_M04_AXI_ARREADY),
        .S01_AXI_arsize(AXI_Periph_M04_AXI_ARSIZE),
        .S01_AXI_aruser(AXI_Periph_M04_AXI_ARUSER),
        .S01_AXI_arvalid(AXI_Periph_M04_AXI_ARVALID),
        .S01_AXI_awaddr(AXI_Periph_M04_AXI_AWADDR),
        .S01_AXI_awburst(AXI_Periph_M04_AXI_AWBURST),
        .S01_AXI_awcache(AXI_Periph_M04_AXI_AWCACHE),
        .S01_AXI_awid(AXI_Periph_M04_AXI_AWID),
        .S01_AXI_awlen(AXI_Periph_M04_AXI_AWLEN),
        .S01_AXI_awlock(AXI_Periph_M04_AXI_AWLOCK),
        .S01_AXI_awprot(AXI_Periph_M04_AXI_AWPROT),
        .S01_AXI_awqos(AXI_Periph_M04_AXI_AWQOS),
        .S01_AXI_awready(AXI_Periph_M04_AXI_AWREADY),
        .S01_AXI_awsize(AXI_Periph_M04_AXI_AWSIZE),
        .S01_AXI_awuser(AXI_Periph_M04_AXI_AWUSER),
        .S01_AXI_awvalid(AXI_Periph_M04_AXI_AWVALID),
        .S01_AXI_bid(AXI_Periph_M04_AXI_BID),
        .S01_AXI_bready(AXI_Periph_M04_AXI_BREADY),
        .S01_AXI_bresp(AXI_Periph_M04_AXI_BRESP),
        .S01_AXI_buser(AXI_Periph_M04_AXI_BUSER),
        .S01_AXI_bvalid(AXI_Periph_M04_AXI_BVALID),
        .S01_AXI_rdata(AXI_Periph_M04_AXI_RDATA),
        .S01_AXI_rid(AXI_Periph_M04_AXI_RID),
        .S01_AXI_rlast(AXI_Periph_M04_AXI_RLAST),
        .S01_AXI_rready(AXI_Periph_M04_AXI_RREADY),
        .S01_AXI_rresp(AXI_Periph_M04_AXI_RRESP),
        .S01_AXI_ruser(AXI_Periph_M04_AXI_RUSER),
        .S01_AXI_rvalid(AXI_Periph_M04_AXI_RVALID),
        .S01_AXI_wdata(AXI_Periph_M04_AXI_WDATA),
        .S01_AXI_wlast(AXI_Periph_M04_AXI_WLAST),
        .S01_AXI_wready(AXI_Periph_M04_AXI_WREADY),
        .S01_AXI_wstrb(AXI_Periph_M04_AXI_WSTRB),
        .S01_AXI_wuser(AXI_Periph_M04_AXI_WUSER),
        .S01_AXI_wvalid(AXI_Periph_M04_AXI_WVALID),
        .S02_AXI_araddr(axi_cdma_0_M_AXI_ARADDR),
        .S02_AXI_arburst(axi_cdma_0_M_AXI_ARBURST),
        .S02_AXI_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .S02_AXI_arlen(axi_cdma_0_M_AXI_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(axi_cdma_0_M_AXI_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(axi_cdma_0_M_AXI_ARREADY),
        .S02_AXI_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .S02_AXI_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .S02_AXI_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .S02_AXI_awburst(axi_cdma_0_M_AXI_AWBURST),
        .S02_AXI_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .S02_AXI_awlen(axi_cdma_0_M_AXI_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(axi_cdma_0_M_AXI_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(axi_cdma_0_M_AXI_AWREADY),
        .S02_AXI_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .S02_AXI_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .S02_AXI_bready(axi_cdma_0_M_AXI_BREADY),
        .S02_AXI_bresp(axi_cdma_0_M_AXI_BRESP),
        .S02_AXI_bvalid(axi_cdma_0_M_AXI_BVALID),
        .S02_AXI_rdata(axi_cdma_0_M_AXI_RDATA),
        .S02_AXI_rlast(axi_cdma_0_M_AXI_RLAST),
        .S02_AXI_rready(axi_cdma_0_M_AXI_RREADY),
        .S02_AXI_rresp(axi_cdma_0_M_AXI_RRESP),
        .S02_AXI_rvalid(axi_cdma_0_M_AXI_RVALID),
        .S02_AXI_wdata(axi_cdma_0_M_AXI_WDATA),
        .S02_AXI_wlast(axi_cdma_0_M_AXI_WLAST),
        .S02_AXI_wready(axi_cdma_0_M_AXI_WREADY),
        .S02_AXI_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .S02_AXI_wvalid(axi_cdma_0_M_AXI_WVALID),
        .S03_AXI_araddr(axi_cdma_1_M_AXI_ARADDR),
        .S03_AXI_arburst(axi_cdma_1_M_AXI_ARBURST),
        .S03_AXI_arcache(axi_cdma_1_M_AXI_ARCACHE),
        .S03_AXI_arlen(axi_cdma_1_M_AXI_ARLEN),
        .S03_AXI_arlock(1'b0),
        .S03_AXI_arprot(axi_cdma_1_M_AXI_ARPROT),
        .S03_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arready(axi_cdma_1_M_AXI_ARREADY),
        .S03_AXI_arsize(axi_cdma_1_M_AXI_ARSIZE),
        .S03_AXI_arvalid(axi_cdma_1_M_AXI_ARVALID),
        .S03_AXI_awaddr(axi_cdma_1_M_AXI_AWADDR),
        .S03_AXI_awburst(axi_cdma_1_M_AXI_AWBURST),
        .S03_AXI_awcache(axi_cdma_1_M_AXI_AWCACHE),
        .S03_AXI_awlen(axi_cdma_1_M_AXI_AWLEN),
        .S03_AXI_awlock(1'b0),
        .S03_AXI_awprot(axi_cdma_1_M_AXI_AWPROT),
        .S03_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awready(axi_cdma_1_M_AXI_AWREADY),
        .S03_AXI_awsize(axi_cdma_1_M_AXI_AWSIZE),
        .S03_AXI_awvalid(axi_cdma_1_M_AXI_AWVALID),
        .S03_AXI_bready(axi_cdma_1_M_AXI_BREADY),
        .S03_AXI_bresp(axi_cdma_1_M_AXI_BRESP),
        .S03_AXI_bvalid(axi_cdma_1_M_AXI_BVALID),
        .S03_AXI_rdata(axi_cdma_1_M_AXI_RDATA),
        .S03_AXI_rlast(axi_cdma_1_M_AXI_RLAST),
        .S03_AXI_rready(axi_cdma_1_M_AXI_RREADY),
        .S03_AXI_rresp(axi_cdma_1_M_AXI_RRESP),
        .S03_AXI_rvalid(axi_cdma_1_M_AXI_RVALID),
        .S03_AXI_wdata(axi_cdma_1_M_AXI_WDATA),
        .S03_AXI_wlast(axi_cdma_1_M_AXI_WLAST),
        .S03_AXI_wready(axi_cdma_1_M_AXI_WREADY),
        .S03_AXI_wstrb(axi_cdma_1_M_AXI_WSTRB),
        .S03_AXI_wvalid(axi_cdma_1_M_AXI_WVALID),
        .aclk(microblaze_0_Clk),
        .aclk1(mig_7series_0_ui_clk1),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  design_1_axi_cdma_0_0 axi_cdma_0
       (.m_axi_aclk(mig_7series_0_ui_clk1),
        .m_axi_araddr(axi_cdma_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdma_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_cdma_0_M_AXI_ARLEN),
        .m_axi_arprot(axi_cdma_0_M_AXI_ARPROT),
        .m_axi_arready(axi_cdma_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdma_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_cdma_0_M_AXI_AWLEN),
        .m_axi_awprot(axi_cdma_0_M_AXI_AWPROT),
        .m_axi_awready(axi_cdma_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .m_axi_bready(axi_cdma_0_M_AXI_BREADY),
        .m_axi_bresp(axi_cdma_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdma_0_M_AXI_BVALID),
        .m_axi_rdata(axi_cdma_0_M_AXI_RDATA),
        .m_axi_rlast(axi_cdma_0_M_AXI_RLAST),
        .m_axi_rready(axi_cdma_0_M_AXI_RREADY),
        .m_axi_rresp(axi_cdma_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdma_0_M_AXI_RVALID),
        .m_axi_wdata(axi_cdma_0_M_AXI_WDATA),
        .m_axi_wlast(axi_cdma_0_M_AXI_WLAST),
        .m_axi_wready(axi_cdma_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdma_0_M_AXI_WVALID),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(CMDA_controller_0_axi_lite_ARADDR[5:0]),
        .s_axi_lite_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_lite_arready(CMDA_controller_0_axi_lite_ARREADY),
        .s_axi_lite_arvalid(CMDA_controller_0_axi_lite_ARVALID),
        .s_axi_lite_awaddr(CMDA_controller_0_axi_lite_AWADDR[5:0]),
        .s_axi_lite_awready(CMDA_controller_0_axi_lite_AWREADY),
        .s_axi_lite_awvalid(CMDA_controller_0_axi_lite_AWVALID),
        .s_axi_lite_bready(CMDA_controller_0_axi_lite_BREADY),
        .s_axi_lite_bresp(CMDA_controller_0_axi_lite_BRESP),
        .s_axi_lite_bvalid(CMDA_controller_0_axi_lite_BVALID),
        .s_axi_lite_rdata(CMDA_controller_0_axi_lite_RDATA),
        .s_axi_lite_rready(CMDA_controller_0_axi_lite_RREADY),
        .s_axi_lite_rresp(CMDA_controller_0_axi_lite_RRESP),
        .s_axi_lite_rvalid(CMDA_controller_0_axi_lite_RVALID),
        .s_axi_lite_wdata(CMDA_controller_0_axi_lite_WDATA),
        .s_axi_lite_wready(CMDA_controller_0_axi_lite_WREADY),
        .s_axi_lite_wvalid(CMDA_controller_0_axi_lite_WVALID));
  design_1_axi_cdma_1_0 axi_cdma_1
       (.m_axi_aclk(mig_7series_0_ui_clk1),
        .m_axi_araddr(axi_cdma_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdma_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdma_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_cdma_1_M_AXI_ARLEN),
        .m_axi_arprot(axi_cdma_1_M_AXI_ARPROT),
        .m_axi_arready(axi_cdma_1_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdma_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdma_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdma_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdma_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdma_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_cdma_1_M_AXI_AWLEN),
        .m_axi_awprot(axi_cdma_1_M_AXI_AWPROT),
        .m_axi_awready(axi_cdma_1_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdma_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdma_1_M_AXI_AWVALID),
        .m_axi_bready(axi_cdma_1_M_AXI_BREADY),
        .m_axi_bresp(axi_cdma_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdma_1_M_AXI_BVALID),
        .m_axi_rdata(axi_cdma_1_M_AXI_RDATA),
        .m_axi_rlast(axi_cdma_1_M_AXI_RLAST),
        .m_axi_rready(axi_cdma_1_M_AXI_RREADY),
        .m_axi_rresp(axi_cdma_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdma_1_M_AXI_RVALID),
        .m_axi_wdata(axi_cdma_1_M_AXI_WDATA),
        .m_axi_wlast(axi_cdma_1_M_AXI_WLAST),
        .m_axi_wready(axi_cdma_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdma_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdma_1_M_AXI_WVALID),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(AXI_Periph_M08_AXI_ARADDR),
        .s_axi_lite_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_lite_arready(AXI_Periph_M08_AXI_ARREADY),
        .s_axi_lite_arvalid(AXI_Periph_M08_AXI_ARVALID),
        .s_axi_lite_awaddr(AXI_Periph_M08_AXI_AWADDR),
        .s_axi_lite_awready(AXI_Periph_M08_AXI_AWREADY),
        .s_axi_lite_awvalid(AXI_Periph_M08_AXI_AWVALID),
        .s_axi_lite_bready(AXI_Periph_M08_AXI_BREADY),
        .s_axi_lite_bresp(AXI_Periph_M08_AXI_BRESP),
        .s_axi_lite_bvalid(AXI_Periph_M08_AXI_BVALID),
        .s_axi_lite_rdata(AXI_Periph_M08_AXI_RDATA),
        .s_axi_lite_rready(AXI_Periph_M08_AXI_RREADY),
        .s_axi_lite_rresp(AXI_Periph_M08_AXI_RRESP),
        .s_axi_lite_rvalid(AXI_Periph_M08_AXI_RVALID),
        .s_axi_lite_wdata(AXI_Periph_M08_AXI_WDATA),
        .s_axi_lite_wready(AXI_Periph_M08_AXI_WREADY),
        .s_axi_lite_wvalid(AXI_Periph_M08_AXI_WVALID));
  design_1_axi_dynclk_0_0 axi_dynclk_0
       (.PXL_CLK_5X_O(axi_dynclk_0_PXL_CLK_5X_O),
        .PXL_CLK_O(axi_dynclk_0_PXL_CLK_O),
        .REF_CLK_I(mig_7series_0_ui_clk1),
        .s00_axi_aclk(microblaze_0_Clk),
        .s00_axi_araddr(AXI_Periph_M03_AXI_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_arprot(AXI_Periph_M03_AXI_ARPROT),
        .s00_axi_arready(AXI_Periph_M03_AXI_ARREADY),
        .s00_axi_arvalid(AXI_Periph_M03_AXI_ARVALID),
        .s00_axi_awaddr(AXI_Periph_M03_AXI_AWADDR),
        .s00_axi_awprot(AXI_Periph_M03_AXI_AWPROT),
        .s00_axi_awready(AXI_Periph_M03_AXI_AWREADY),
        .s00_axi_awvalid(AXI_Periph_M03_AXI_AWVALID),
        .s00_axi_bready(AXI_Periph_M03_AXI_BREADY),
        .s00_axi_bresp(AXI_Periph_M03_AXI_BRESP),
        .s00_axi_bvalid(AXI_Periph_M03_AXI_BVALID),
        .s00_axi_rdata(AXI_Periph_M03_AXI_RDATA),
        .s00_axi_rready(AXI_Periph_M03_AXI_RREADY),
        .s00_axi_rresp(AXI_Periph_M03_AXI_RRESP),
        .s00_axi_rvalid(AXI_Periph_M03_AXI_RVALID),
        .s00_axi_wdata(AXI_Periph_M03_AXI_WDATA),
        .s00_axi_wready(AXI_Periph_M03_AXI_WREADY),
        .s00_axi_wstrb(AXI_Periph_M03_AXI_WSTRB),
        .s00_axi_wvalid(AXI_Periph_M03_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M06_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M06_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M06_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M06_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M06_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M06_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M06_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M06_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M06_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M06_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M06_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M06_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M06_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M06_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M06_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M06_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M06_AXI_WVALID));
  design_1_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M11_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M11_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M11_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M11_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M11_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M11_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M11_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M11_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M11_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M11_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M11_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M11_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M11_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M11_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M11_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M11_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M11_AXI_WVALID));
  design_1_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M10_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M10_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M10_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M10_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M10_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M10_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M10_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M10_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M10_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M10_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M10_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M10_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M10_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M10_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M10_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M10_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M10_AXI_WVALID));
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M00_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M00_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M00_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M00_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M00_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M00_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M00_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M00_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M00_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M00_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M00_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M00_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M00_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M00_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M00_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M00_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  design_1_axi_uartlite_1_0 axi_uartlite_1
       (.interrupt(axi_uartlite_1_interrupt),
        .rx(rx_0_1),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M05_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M05_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M05_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M05_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M05_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M05_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M05_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M05_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M05_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M05_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M05_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M05_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M05_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M05_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M05_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M05_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M05_AXI_WVALID),
        .tx(axi_uartlite_1_tx));
  design_1_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(mig_7series_0_ui_clk1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_aclk(axi_dynclk_0_PXL_CLK_O),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_frame_ptr_in(mm2s_frame_ptr_in_0_1),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(AXI_Periph_M01_AXI_ARADDR),
        .s_axi_lite_arready(AXI_Periph_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(AXI_Periph_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(AXI_Periph_M01_AXI_AWADDR),
        .s_axi_lite_awready(AXI_Periph_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(AXI_Periph_M01_AXI_AWVALID),
        .s_axi_lite_bready(AXI_Periph_M01_AXI_BREADY),
        .s_axi_lite_bresp(AXI_Periph_M01_AXI_BRESP),
        .s_axi_lite_bvalid(AXI_Periph_M01_AXI_BVALID),
        .s_axi_lite_rdata(AXI_Periph_M01_AXI_RDATA),
        .s_axi_lite_rready(AXI_Periph_M01_AXI_RREADY),
        .s_axi_lite_rresp(AXI_Periph_M01_AXI_RRESP),
        .s_axi_lite_rvalid(AXI_Periph_M01_AXI_RVALID),
        .s_axi_lite_wdata(AXI_Periph_M01_AXI_WDATA),
        .s_axi_lite_wready(AXI_Periph_M01_AXI_WREADY),
        .s_axi_lite_wvalid(AXI_Periph_M01_AXI_WVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(microblaze_0_Clk),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .resetn(reset_1));
  design_1_mdm_1_1 mdm_1
       (.Dbg_Capture_0(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_0_debug_CLK),
        .Dbg_Disable_0(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > design_1 microblaze_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_1_CE),
        .DReady(microblaze_0_dlmb_1_READY),
        .DUE(microblaze_0_dlmb_1_UE),
        .DWait(microblaze_0_dlmb_1_WAIT),
        .D_AS(microblaze_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_1_ABUS),
        .Data_Read(microblaze_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Disable(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_1_CE),
        .IFetch(microblaze_0_ilmb_1_READSTROBE),
        .IReady(microblaze_0_ilmb_1_READY),
        .IUE(microblaze_0_ilmb_1_UE),
        .IWAIT(microblaze_0_ilmb_1_WAIT),
        .I_AS(microblaze_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_1_ABUS),
        .Interrupt(microblaze_0_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_0_interrupt_ACK),
        .Interrupt_Address({microblaze_0_interrupt_ADDRESS[31],microblaze_0_interrupt_ADDRESS[30],microblaze_0_interrupt_ADDRESS[29],microblaze_0_interrupt_ADDRESS[28],microblaze_0_interrupt_ADDRESS[27],microblaze_0_interrupt_ADDRESS[26],microblaze_0_interrupt_ADDRESS[25],microblaze_0_interrupt_ADDRESS[24],microblaze_0_interrupt_ADDRESS[23],microblaze_0_interrupt_ADDRESS[22],microblaze_0_interrupt_ADDRESS[21],microblaze_0_interrupt_ADDRESS[20],microblaze_0_interrupt_ADDRESS[19],microblaze_0_interrupt_ADDRESS[18],microblaze_0_interrupt_ADDRESS[17],microblaze_0_interrupt_ADDRESS[16],microblaze_0_interrupt_ADDRESS[15],microblaze_0_interrupt_ADDRESS[14],microblaze_0_interrupt_ADDRESS[13],microblaze_0_interrupt_ADDRESS[12],microblaze_0_interrupt_ADDRESS[11],microblaze_0_interrupt_ADDRESS[10],microblaze_0_interrupt_ADDRESS[9],microblaze_0_interrupt_ADDRESS[8],microblaze_0_interrupt_ADDRESS[7],microblaze_0_interrupt_ADDRESS[6],microblaze_0_interrupt_ADDRESS[5],microblaze_0_interrupt_ADDRESS[4],microblaze_0_interrupt_ADDRESS[3],microblaze_0_interrupt_ADDRESS[2],microblaze_0_interrupt_ADDRESS[1],microblaze_0_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .M_AXI_IP_ARADDR(microblaze_0_M_AXI_IP_ARADDR),
        .M_AXI_IP_ARPROT(microblaze_0_M_AXI_IP_ARPROT),
        .M_AXI_IP_ARREADY(microblaze_0_M_AXI_IP_ARREADY),
        .M_AXI_IP_ARVALID(microblaze_0_M_AXI_IP_ARVALID),
        .M_AXI_IP_AWREADY(1'b0),
        .M_AXI_IP_BRESP({1'b0,1'b0}),
        .M_AXI_IP_BVALID(1'b0),
        .M_AXI_IP_RDATA(microblaze_0_M_AXI_IP_RDATA),
        .M_AXI_IP_RREADY(microblaze_0_M_AXI_IP_RREADY),
        .M_AXI_IP_RRESP(microblaze_0_M_AXI_IP_RRESP),
        .M_AXI_IP_RVALID(microblaze_0_M_AXI_IP_RVALID),
        .M_AXI_IP_WREADY(1'b0),
        .Read_Strobe(microblaze_0_dlmb_1_READSTROBE),
        .Reset(proc_sys_reset_0_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_1_WRITESTROBE));
  design_1_microblaze_0_axi_intc_1 microblaze_0_axi_intc
       (.interrupt_address(microblaze_0_interrupt_ADDRESS),
        .intr(microblaze_0_intr),
        .irq(microblaze_0_interrupt_INTERRUPT),
        .processor_ack({microblaze_0_interrupt_ACK[0],microblaze_0_interrupt_ACK[1]}),
        .processor_clk(microblaze_0_Clk),
        .processor_rst(proc_sys_reset_0_mb_reset),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(AXI_Periph_M07_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M07_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M07_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M07_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M07_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M07_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M07_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M07_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M07_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M07_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M07_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M07_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M07_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M07_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M07_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M07_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M07_AXI_WVALID));
  microblaze_0_local_memory_imp_1K0VQXK microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_1_BE),
        .DLMB_ce(microblaze_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_1_READY),
        .DLMB_ue(microblaze_0_dlmb_1_UE),
        .DLMB_wait(microblaze_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_1_READY),
        .ILMB_ue(microblaze_0_ilmb_1_UE),
        .ILMB_wait(microblaze_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(proc_sys_reset_0_bus_struct_reset));
  design_1_microblaze_0_xlconcat_0 microblaze_0_xlconcat
       (.In0(axi_uartlite_1_interrupt),
        .In1(axi_timer_0_interrupt),
        .dout(microblaze_0_intr));
  design_1_mig_7series_0_0 mig_7series_0
       (.aresetn(proc_sys_reset_1_peripheral_aresetn),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_0_dq[15:0]),
        .ddr3_dqs_n(DDR3_0_dqs_n[1:0]),
        .ddr3_dqs_p(DDR3_0_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(Memory_M00_AXI_ARADDR),
        .s_axi_arburst(Memory_M00_AXI_ARBURST),
        .s_axi_arcache(Memory_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(Memory_M00_AXI_ARLEN),
        .s_axi_arlock(Memory_M00_AXI_ARLOCK),
        .s_axi_arprot(Memory_M00_AXI_ARPROT),
        .s_axi_arqos(Memory_M00_AXI_ARQOS),
        .s_axi_arready(Memory_M00_AXI_ARREADY),
        .s_axi_arsize(Memory_M00_AXI_ARSIZE),
        .s_axi_arvalid(Memory_M00_AXI_ARVALID),
        .s_axi_awaddr(Memory_M00_AXI_AWADDR),
        .s_axi_awburst(Memory_M00_AXI_AWBURST),
        .s_axi_awcache(Memory_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(Memory_M00_AXI_AWLEN),
        .s_axi_awlock(Memory_M00_AXI_AWLOCK),
        .s_axi_awprot(Memory_M00_AXI_AWPROT),
        .s_axi_awqos(Memory_M00_AXI_AWQOS),
        .s_axi_awready(Memory_M00_AXI_AWREADY),
        .s_axi_awsize(Memory_M00_AXI_AWSIZE),
        .s_axi_awvalid(Memory_M00_AXI_AWVALID),
        .s_axi_bready(Memory_M00_AXI_BREADY),
        .s_axi_bresp(Memory_M00_AXI_BRESP),
        .s_axi_bvalid(Memory_M00_AXI_BVALID),
        .s_axi_rdata(Memory_M00_AXI_RDATA),
        .s_axi_rlast(Memory_M00_AXI_RLAST),
        .s_axi_rready(Memory_M00_AXI_RREADY),
        .s_axi_rresp(Memory_M00_AXI_RRESP),
        .s_axi_rvalid(Memory_M00_AXI_RVALID),
        .s_axi_wdata(Memory_M00_AXI_WDATA),
        .s_axi_wlast(Memory_M00_AXI_WLAST),
        .s_axi_wready(Memory_M00_AXI_WREADY),
        .s_axi_wstrb(Memory_M00_AXI_WSTRB),
        .s_axi_wvalid(Memory_M00_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_out2),
        .sys_rst(reset_1),
        .ui_clk(mig_7series_0_ui_clk1),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  design_1_plot_manage_0_0 plot_manage_0
       (.clk(microblaze_0_Clk),
        .frame_addr(plot_manage_0_frame_addr),
        .plot_done(CMDA_controller_0_done),
        .plot_start(plot_manage_0_plot_start),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .shell_frame_addr_0(GameLogic_0_player_shell_frame_addr1),
        .shell_frame_addr_1(GameLogic_0_player_shell_frame_addr),
        .shell_grant_0(plot_manage_0_shell_grant_0),
        .shell_grant_1(plot_manage_0_shell_grant_1),
        .shell_req_0(GameLogic_0_player_shell_req),
        .shell_req_1(GameLogic_0_enemy_shell_req),
        .shell_x_0(GameLogic_0_player_shell_x),
        .shell_x_1(GameLogic_0_enemy_shell_x),
        .shell_y_0(GameLogic_0_player_shell_y),
        .shell_y_1(GameLogic_0_enemy_shell_y),
        .tank_frame_addr_0(GameLogic_0_player_tank_frame_addr),
        .tank_frame_addr_1(GameLogic_0_enemy_tank_frame_addr),
        .tank_grant_0(plot_manage_0_tank_grant_0),
        .tank_grant_1(plot_manage_0_tank_grant_1),
        .tank_req_0(GameLogic_0_player_tank_req),
        .tank_req_1(GameLogic_0_enemy_tank_req),
        .tank_x_0(GameLogic_0_player_tank_x),
        .tank_x_1(GameLogic_0_enemy_tank_x),
        .tank_y_0(GameLogic_0_player_tank_y),
        .tank_y_1(GameLogic_0_enemy_tank_y),
        .wall_frame_addr(GameLogic_0_wall_frame_addr),
        .wall_grant(plot_manage_0_wall_grant),
        .wall_req(GameLogic_0_wall_req),
        .wall_x(GameLogic_0_wall_x),
        .wall_y(GameLogic_0_wall_y),
        .x(plot_manage_0_x),
        .y(plot_manage_0_y));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(proc_sys_reset_0_bus_struct_reset),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  design_1_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk1));
  design_1_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(axi_dynclk_0_PXL_CLK_O),
        .SerialClk(axi_dynclk_0_PXL_CLK_5X_O),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst_n(proc_sys_reset_1_peripheral_aresetn),
        .vid_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC));
  design_1_system_ila_0_0 system_ila_0
       (.clk(microblaze_0_Clk),
        .probe0(CMDA_controller_0_done),
        .probe1(plot_manage_0_frame_addr),
        .probe10(GameLogic_0_player_tank_y),
        .probe11(GameLogic_0_enemy_tank_req),
        .probe12(GameLogic_0_enemy_tank_x),
        .probe13(GameLogic_0_enemy_tank_y),
        .probe14(GameLogic_0_player_shell_req),
        .probe15(GameLogic_0_player_shell_x),
        .probe16(GameLogic_0_player_shell_y),
        .probe17(GameLogic_0_enemy_shell_req),
        .probe18(GameLogic_0_enemy_shell_x),
        .probe19(GameLogic_0_enemy_shell_y),
        .probe2(plot_manage_0_x),
        .probe20(GameLogic_0_player_shell_frame_addr),
        .probe21(GameLogic_0_player_tank_req),
        .probe22(GameLogic_0_player_tank_frame_addr),
        .probe23(GameLogic_0_enemy_tank_frame_addr),
        .probe24(GameLogic_0_player_shell_frame_addr1),
        .probe3(plot_manage_0_y),
        .probe4(plot_manage_0_plot_start),
        .probe5(plot_manage_0_shell_grant_1),
        .probe6(plot_manage_0_shell_grant_0),
        .probe7(plot_manage_0_tank_grant_1),
        .probe8(plot_manage_0_tank_grant_0),
        .probe9(GameLogic_0_player_tank_x));
  design_1_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(axi_dynclk_0_PXL_CLK_O),
        .aclken(1'b1),
        .aresetn(1'b1),
        .fid(1'b0),
        .s_axis_video_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_video_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_video_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_video_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_video_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  design_1_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(axi_dynclk_0_PXL_CLK_O),
        .clken(v_axi4s_vid_out_0_vtg_ce),
        .fsync_in(1'b0),
        .gen_clken(1'b1),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(1'b1),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(AXI_Periph_M02_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(AXI_Periph_M02_AXI_ARREADY),
        .s_axi_arvalid(AXI_Periph_M02_AXI_ARVALID),
        .s_axi_awaddr(AXI_Periph_M02_AXI_AWADDR),
        .s_axi_awready(AXI_Periph_M02_AXI_AWREADY),
        .s_axi_awvalid(AXI_Periph_M02_AXI_AWVALID),
        .s_axi_bready(AXI_Periph_M02_AXI_BREADY),
        .s_axi_bresp(AXI_Periph_M02_AXI_BRESP),
        .s_axi_bvalid(AXI_Periph_M02_AXI_BVALID),
        .s_axi_rdata(AXI_Periph_M02_AXI_RDATA),
        .s_axi_rready(AXI_Periph_M02_AXI_RREADY),
        .s_axi_rresp(AXI_Periph_M02_AXI_RRESP),
        .s_axi_rvalid(AXI_Periph_M02_AXI_RVALID),
        .s_axi_wdata(AXI_Periph_M02_AXI_WDATA),
        .s_axi_wready(AXI_Periph_M02_AXI_WREADY),
        .s_axi_wstrb(AXI_Periph_M02_AXI_WSTRB),
        .s_axi_wvalid(AXI_Periph_M02_AXI_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module microblaze_0_local_memory_imp_1K0VQXK
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 microblaze_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  design_1_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  design_1_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  design_1_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  design_1_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

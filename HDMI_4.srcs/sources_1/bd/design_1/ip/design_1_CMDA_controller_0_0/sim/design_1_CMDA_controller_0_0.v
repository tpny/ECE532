// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:CMDA_controller:1.0
// IP Revision: 49

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_CMDA_controller_0_0 (
  img_addr,
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
  axi_lite_txn_done
);

input wire [31 : 0] img_addr;
input wire [31 : 0] frame_buffer_location;
input wire [10 : 0] y_location;
input wire [10 : 0] x_location;
input wire start;
output wire done;
input wire [31 : 0] delay_per_line;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWADDR" *)
output wire [31 : 0] axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWPROT" *)
output wire [2 : 0] axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWVALID" *)
output wire axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWREADY" *)
input wire axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WDATA" *)
output wire [31 : 0] axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WSTRB" *)
output wire [3 : 0] axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WVALID" *)
output wire axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WREADY" *)
input wire axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BRESP" *)
input wire [1 : 0] axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BVALID" *)
input wire axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BREADY" *)
output wire axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARADDR" *)
output wire [31 : 0] axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARPROT" *)
output wire [2 : 0] axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARVALID" *)
output wire axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARREADY" *)
input wire axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RDATA" *)
input wire [31 : 0] axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RRESP" *)
input wire [1 : 0] axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RVALID" *)
input wire axi_lite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RREADY" *)
output wire axi_lite_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_CLK, ASSOCIATED_BUSIF axi_lite, ASSOCIATED_RESET axi_lite_aresetn:axi_lite_RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_lite_CLK CLK" *)
input wire axi_lite_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_lite_RST RST" *)
input wire axi_lite_aresetn;
output wire axi_lite_error;
output wire axi_lite_txn_done;

  CMDA_controller_v1_0 #(
    .C_axi_lite_START_DATA_VALUE('HAA000000),  // The master will start generating data from the C_M_START_DATA_VALUE value
    .C_axi_lite_TARGET_SLAVE_BASE_ADDR('H44A00000),  // The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
    .C_axi_lite_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_axi_lite_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_axi_lite_TRANSACTIONS_NUM(1)  // Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
  ) inst (
    .img_addr(img_addr),
    .frame_buffer_location(frame_buffer_location),
    .y_location(y_location),
    .x_location(x_location),
    .start(start),
    .done(done),
    .delay_per_line(delay_per_line),
    .axi_lite_awaddr(axi_lite_awaddr),
    .axi_lite_awprot(axi_lite_awprot),
    .axi_lite_awvalid(axi_lite_awvalid),
    .axi_lite_awready(axi_lite_awready),
    .axi_lite_wdata(axi_lite_wdata),
    .axi_lite_wstrb(axi_lite_wstrb),
    .axi_lite_wvalid(axi_lite_wvalid),
    .axi_lite_wready(axi_lite_wready),
    .axi_lite_bresp(axi_lite_bresp),
    .axi_lite_bvalid(axi_lite_bvalid),
    .axi_lite_bready(axi_lite_bready),
    .axi_lite_araddr(axi_lite_araddr),
    .axi_lite_arprot(axi_lite_arprot),
    .axi_lite_arvalid(axi_lite_arvalid),
    .axi_lite_arready(axi_lite_arready),
    .axi_lite_rdata(axi_lite_rdata),
    .axi_lite_rresp(axi_lite_rresp),
    .axi_lite_rvalid(axi_lite_rvalid),
    .axi_lite_rready(axi_lite_rready),
    .axi_lite_aclk(axi_lite_aclk),
    .axi_lite_aresetn(axi_lite_aresetn),
    .axi_lite_error(axi_lite_error),
    .axi_lite_txn_done(axi_lite_txn_done)
  );
endmodule

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


// IP VLNV: xilinx.com:user:GameLogic:2.0
// IP Revision: 71

(* X_CORE_INFO = "GameLogic_v2_0,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_GameLogic_0_2,GameLogic_v2_0,{}" *)
(* CORE_GENERATION_INFO = "design_1_GameLogic_0_2,GameLogic_v2_0,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=GameLogic,x_ipVersion=2.0,x_ipCoreRevision=71,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=6}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_GameLogic_0_2 (
  player_tank_req,
  player_tank_x,
  player_tank_y,
  player_tank_frame_addr,
  player_tank_grant,
  enemy_tank_req,
  enemy_tank_x,
  enemy_tank_y,
  enemy_tank_frame_addr,
  enemy_tank_grant,
  player_shell_req,
  player_shell_x,
  player_shell_y,
  player_shell_frame_addr,
  player_shell_grant,
  enemy_shell_req,
  enemy_shell_x,
  enemy_shell_y,
  enemy_shell_frame_addr,
  enemy_shell_grant,
  wall_req,
  wall_x,
  wall_y,
  wall_frame_addr,
  wall_grant,
  BT_input,
  enemy_input,
  player_health,
  player_tank_x_next,
  player_tank_y_next,
  main_state,
  init_done,
  player_collide_wall,
  player_collide_shell,
  enemy_collide_wall,
  enemy_collide_shell,
  player_shell_collide_wall,
  enemy_shell_collide_wall,
  tank_init,
  player_tank_init_x,
  player_tank_init_y,
  mad,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready,
  s00_axi_aclk,
  s00_axi_aresetn
);

output wire player_tank_req;
output wire [10 : 0] player_tank_x;
output wire [10 : 0] player_tank_y;
output wire [31 : 0] player_tank_frame_addr;
input wire player_tank_grant;
output wire enemy_tank_req;
output wire [10 : 0] enemy_tank_x;
output wire [10 : 0] enemy_tank_y;
output wire [31 : 0] enemy_tank_frame_addr;
input wire enemy_tank_grant;
output wire player_shell_req;
output wire [10 : 0] player_shell_x;
output wire [10 : 0] player_shell_y;
output wire [31 : 0] player_shell_frame_addr;
input wire player_shell_grant;
output wire enemy_shell_req;
output wire [10 : 0] enemy_shell_x;
output wire [10 : 0] enemy_shell_y;
output wire [31 : 0] enemy_shell_frame_addr;
input wire enemy_shell_grant;
output wire wall_req;
output wire [10 : 0] wall_x;
output wire [10 : 0] wall_y;
output wire [31 : 0] wall_frame_addr;
input wire wall_grant;
input wire [4 : 0] BT_input;
input wire [4 : 0] enemy_input;
output wire [7 : 0] player_health;
output wire [10 : 0] player_tank_x_next;
output wire [10 : 0] player_tank_y_next;
output wire [3 : 0] main_state;
output wire init_done;
output wire player_collide_wall;
output wire player_collide_shell;
output wire enemy_collide_wall;
output wire enemy_collide_shell;
output wire player_shell_collide_wall;
output wire enemy_shell_collide_wall;
output wire tank_init;
output wire [10 : 0] player_tank_init_x;
output wire [10 : 0] player_tank_init_y;
output wire [287 : 0] mad;
wire  [1:0] mad_unpacked [0:15][0:8];
assign {>>{mad}} = mad_unpacked;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [5 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [5 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM\
_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input wire s00_axi_aresetn;

  GameLogic_v2_0 #(
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(6)  // Width of S_AXI address bus
  ) inst (
    .player_tank_req(player_tank_req),
    .player_tank_x(player_tank_x),
    .player_tank_y(player_tank_y),
    .player_tank_frame_addr(player_tank_frame_addr),
    .player_tank_grant(player_tank_grant),
    .enemy_tank_req(enemy_tank_req),
    .enemy_tank_x(enemy_tank_x),
    .enemy_tank_y(enemy_tank_y),
    .enemy_tank_frame_addr(enemy_tank_frame_addr),
    .enemy_tank_grant(enemy_tank_grant),
    .player_shell_req(player_shell_req),
    .player_shell_x(player_shell_x),
    .player_shell_y(player_shell_y),
    .player_shell_frame_addr(player_shell_frame_addr),
    .player_shell_grant(player_shell_grant),
    .enemy_shell_req(enemy_shell_req),
    .enemy_shell_x(enemy_shell_x),
    .enemy_shell_y(enemy_shell_y),
    .enemy_shell_frame_addr(enemy_shell_frame_addr),
    .enemy_shell_grant(enemy_shell_grant),
    .wall_req(wall_req),
    .wall_x(wall_x),
    .wall_y(wall_y),
    .wall_frame_addr(wall_frame_addr),
    .wall_grant(wall_grant),
    .BT_input(BT_input),
    .enemy_input(enemy_input),
    .player_health(player_health),
    .player_tank_x_next(player_tank_x_next),
    .player_tank_y_next(player_tank_y_next),
    .main_state(main_state),
    .init_done(init_done),
    .player_collide_wall(player_collide_wall),
    .player_collide_shell(player_collide_shell),
    .enemy_collide_wall(enemy_collide_wall),
    .enemy_collide_shell(enemy_collide_shell),
    .player_shell_collide_wall(player_shell_collide_wall),
    .enemy_shell_collide_wall(enemy_shell_collide_wall),
    .tank_init(tank_init),
    .player_tank_init_x(player_tank_init_x),
    .player_tank_init_y(player_tank_init_y),
    .mad(mad_unpacked),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn)
  );
endmodule

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


// IP VLNV: xilinx.com:user:plot_manage:1.0
// IP Revision: 7

(* X_CORE_INFO = "plot_manage,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_plot_manage_0_0,plot_manage,{}" *)
(* CORE_GENERATION_INFO = "design_1_plot_manage_0_0,plot_manage,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=plot_manage,x_ipVersion=1.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_CLIENTS=2,FSM_WIDTH=3}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_plot_manage_0_0 (
  clk,
  resetn,
  tank_req_0,
  tank_x_0,
  tank_y_0,
  tank_grant_0,
  tank_frame_addr_0,
  tank_req_1,
  tank_x_1,
  tank_y_1,
  tank_grant_1,
  tank_frame_addr_1,
  shell_req_0,
  shell_x_0,
  shell_y_0,
  shell_grant_0,
  shell_frame_addr_0,
  shell_req_1,
  shell_x_1,
  shell_y_1,
  shell_grant_1,
  shell_frame_addr_1,
  wall_req,
  wall_x,
  wall_y,
  wall_frame_addr,
  wall_grant,
  frame_addr,
  frame_buffer,
  x,
  y,
  plot_start,
  plot_done
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire tank_req_0;
input wire [10 : 0] tank_x_0;
input wire [10 : 0] tank_y_0;
output wire tank_grant_0;
input wire [31 : 0] tank_frame_addr_0;
input wire tank_req_1;
input wire [10 : 0] tank_x_1;
input wire [10 : 0] tank_y_1;
output wire tank_grant_1;
input wire [31 : 0] tank_frame_addr_1;
input wire shell_req_0;
input wire [10 : 0] shell_x_0;
input wire [10 : 0] shell_y_0;
output wire shell_grant_0;
input wire [31 : 0] shell_frame_addr_0;
input wire shell_req_1;
input wire [10 : 0] shell_x_1;
input wire [10 : 0] shell_y_1;
output wire shell_grant_1;
input wire [31 : 0] shell_frame_addr_1;
input wire wall_req;
input wire [10 : 0] wall_x;
input wire [10 : 0] wall_y;
input wire [31 : 0] wall_frame_addr;
output wire wall_grant;
output wire [31 : 0] frame_addr;
output wire [0 : 0] frame_buffer;
output wire [10 : 0] x;
output wire [10 : 0] y;
output wire plot_start;
input wire plot_done;

  plot_manage #(
    .NUM_CLIENTS(2),
    .FSM_WIDTH(3)
  ) inst (
    .clk(clk),
    .resetn(resetn),
    .tank_req_0(tank_req_0),
    .tank_x_0(tank_x_0),
    .tank_y_0(tank_y_0),
    .tank_grant_0(tank_grant_0),
    .tank_frame_addr_0(tank_frame_addr_0),
    .tank_req_1(tank_req_1),
    .tank_x_1(tank_x_1),
    .tank_y_1(tank_y_1),
    .tank_grant_1(tank_grant_1),
    .tank_frame_addr_1(tank_frame_addr_1),
    .shell_req_0(shell_req_0),
    .shell_x_0(shell_x_0),
    .shell_y_0(shell_y_0),
    .shell_grant_0(shell_grant_0),
    .shell_frame_addr_0(shell_frame_addr_0),
    .shell_req_1(shell_req_1),
    .shell_x_1(shell_x_1),
    .shell_y_1(shell_y_1),
    .shell_grant_1(shell_grant_1),
    .shell_frame_addr_1(shell_frame_addr_1),
    .wall_req(wall_req),
    .wall_x(wall_x),
    .wall_y(wall_y),
    .wall_frame_addr(wall_frame_addr),
    .wall_grant(wall_grant),
    .frame_addr(frame_addr),
    .frame_buffer(frame_buffer),
    .x(x),
    .y(y),
    .plot_start(plot_start),
    .plot_done(plot_done)
  );
endmodule

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr  3 20:39:53 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_GameLogic_0_2/design_1_GameLogic_0_2_stub.v
// Design      : design_1_GameLogic_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GameLogic_v2_0,Vivado 2018.1" *)
module design_1_GameLogic_0_2(player_tank_req, player_tank_x, 
  player_tank_y, player_tank_frame_addr, player_tank_grant, enemy_tank_req, enemy_tank_x, 
  enemy_tank_y, enemy_tank_frame_addr, enemy_tank_grant, player_shell_req, player_shell_x, 
  player_shell_y, player_shell_frame_addr, player_shell_grant, enemy_shell_req, 
  enemy_shell_x, enemy_shell_y, enemy_shell_frame_addr, enemy_shell_grant, wall_req, wall_x, 
  wall_y, wall_frame_addr, wall_grant, BT_input, enemy_input, player_health, 
  player_tank_x_next, player_tank_y_next, main_state, init_done, player_collide_wall, 
  player_collide_shell, enemy_collide_wall, enemy_collide_shell, 
  player_shell_collide_wall, enemy_shell_collide_wall, tank_init, player_tank_init_x, 
  player_tank_init_y, mad, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, 
  s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="player_tank_req,player_tank_x[10:0],player_tank_y[10:0],player_tank_frame_addr[31:0],player_tank_grant,enemy_tank_req,enemy_tank_x[10:0],enemy_tank_y[10:0],enemy_tank_frame_addr[31:0],enemy_tank_grant,player_shell_req,player_shell_x[10:0],player_shell_y[10:0],player_shell_frame_addr[31:0],player_shell_grant,enemy_shell_req,enemy_shell_x[10:0],enemy_shell_y[10:0],enemy_shell_frame_addr[31:0],enemy_shell_grant,wall_req,wall_x[10:0],wall_y[10:0],wall_frame_addr[31:0],wall_grant,BT_input[4:0],enemy_input[4:0],player_health[7:0],player_tank_x_next[10:0],player_tank_y_next[10:0],main_state[3:0],init_done,player_collide_wall,player_collide_shell,enemy_collide_wall,enemy_collide_shell,player_shell_collide_wall,enemy_shell_collide_wall,tank_init,player_tank_init_x[10:0],player_tank_init_y[10:0],mad[287:0],s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output player_tank_req;
  output [10:0]player_tank_x;
  output [10:0]player_tank_y;
  output [31:0]player_tank_frame_addr;
  input player_tank_grant;
  output enemy_tank_req;
  output [10:0]enemy_tank_x;
  output [10:0]enemy_tank_y;
  output [31:0]enemy_tank_frame_addr;
  input enemy_tank_grant;
  output player_shell_req;
  output [10:0]player_shell_x;
  output [10:0]player_shell_y;
  output [31:0]player_shell_frame_addr;
  input player_shell_grant;
  output enemy_shell_req;
  output [10:0]enemy_shell_x;
  output [10:0]enemy_shell_y;
  output [31:0]enemy_shell_frame_addr;
  input enemy_shell_grant;
  output wall_req;
  output [10:0]wall_x;
  output [10:0]wall_y;
  output [31:0]wall_frame_addr;
  input wall_grant;
  input [4:0]BT_input;
  input [4:0]enemy_input;
  output [7:0]player_health;
  output [10:0]player_tank_x_next;
  output [10:0]player_tank_y_next;
  output [3:0]main_state;
  output init_done;
  output player_collide_wall;
  output player_collide_shell;
  output enemy_collide_wall;
  output enemy_collide_shell;
  output player_shell_collide_wall;
  output enemy_shell_collide_wall;
  output tank_init;
  output [10:0]player_tank_init_x;
  output [10:0]player_tank_init_y;
  output [287:0]mad;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule

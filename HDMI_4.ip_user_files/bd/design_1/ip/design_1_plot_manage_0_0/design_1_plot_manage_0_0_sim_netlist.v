// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Mar 30 14:36:44 2020
// Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_plot_manage_0_0 -prefix
//               design_1_plot_manage_0_0_ design_1_plot_manage_0_0_sim_netlist.v
// Design      : design_1_plot_manage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_plot_manage_0_0,plot_manage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "plot_manage,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_plot_manage_0_0
   (clk,
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
    plot_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW" *) input resetn;
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

  wire clk;
  wire [31:0]frame_addr;
  wire plot_done;
  wire plot_start;
  wire resetn;
  wire [31:0]shell_frame_addr_0;
  wire [31:0]shell_frame_addr_1;
  wire shell_grant_0;
  wire shell_grant_1;
  wire shell_req_0;
  wire shell_req_1;
  wire [10:0]shell_x_0;
  wire [10:0]shell_x_1;
  wire [10:0]shell_y_0;
  wire [10:0]shell_y_1;
  wire [31:0]tank_frame_addr_0;
  wire [31:0]tank_frame_addr_1;
  wire tank_grant_0;
  wire tank_grant_1;
  wire tank_req_0;
  wire tank_req_1;
  wire [10:0]tank_x_0;
  wire [10:0]tank_x_1;
  wire [10:0]tank_y_0;
  wire [10:0]tank_y_1;
  wire [31:0]wall_frame_addr;
  wire wall_grant;
  wire wall_req;
  wire [10:0]wall_x;
  wire [10:0]wall_y;
  wire [10:0]x;
  wire [10:0]y;

  design_1_plot_manage_0_0_plot_manage inst
       (.clk(clk),
        .frame_addr(frame_addr),
        .plot_done(plot_done),
        .plot_start(plot_start),
        .resetn(resetn),
        .shell_frame_addr_0(shell_frame_addr_0),
        .shell_frame_addr_1(shell_frame_addr_1),
        .shell_grant_0(shell_grant_0),
        .shell_grant_1(shell_grant_1),
        .shell_req_0(shell_req_0),
        .shell_req_1(shell_req_1),
        .shell_x_0(shell_x_0),
        .shell_x_1(shell_x_1),
        .shell_y_0(shell_y_0),
        .shell_y_1(shell_y_1),
        .tank_frame_addr_0(tank_frame_addr_0),
        .tank_frame_addr_1(tank_frame_addr_1),
        .tank_grant_0(tank_grant_0),
        .tank_grant_1(tank_grant_1),
        .tank_req_0(tank_req_0),
        .tank_req_1(tank_req_1),
        .tank_x_0(tank_x_0),
        .tank_x_1(tank_x_1),
        .tank_y_0(tank_y_0),
        .tank_y_1(tank_y_1),
        .wall_frame_addr(wall_frame_addr),
        .wall_grant(wall_grant),
        .wall_req(wall_req),
        .wall_x(wall_x),
        .wall_y(wall_y),
        .x(x),
        .y(y));
endmodule

module design_1_plot_manage_0_0_plot_manage
   (plot_start,
    frame_addr,
    x,
    y,
    wall_grant,
    tank_grant_0,
    tank_grant_1,
    shell_grant_0,
    shell_grant_1,
    plot_done,
    clk,
    resetn,
    wall_req,
    shell_req_0,
    shell_req_1,
    tank_req_0,
    tank_req_1,
    shell_frame_addr_1,
    tank_frame_addr_1,
    tank_frame_addr_0,
    shell_x_1,
    tank_x_1,
    tank_x_0,
    shell_y_1,
    tank_y_1,
    tank_y_0,
    shell_y_0,
    wall_y,
    shell_frame_addr_0,
    wall_frame_addr,
    shell_x_0,
    wall_x);
  output plot_start;
  output [31:0]frame_addr;
  output [10:0]x;
  output [10:0]y;
  output wall_grant;
  output tank_grant_0;
  output tank_grant_1;
  output shell_grant_0;
  output shell_grant_1;
  input plot_done;
  input clk;
  input resetn;
  input wall_req;
  input shell_req_0;
  input shell_req_1;
  input tank_req_0;
  input tank_req_1;
  input [31:0]shell_frame_addr_1;
  input [31:0]tank_frame_addr_1;
  input [31:0]tank_frame_addr_0;
  input [10:0]shell_x_1;
  input [10:0]tank_x_1;
  input [10:0]tank_x_0;
  input [10:0]shell_y_1;
  input [10:0]tank_y_1;
  input [10:0]tank_y_0;
  input [10:0]shell_y_0;
  input [10:0]wall_y;
  input [31:0]shell_frame_addr_0;
  input [31:0]wall_frame_addr;
  input [10:0]shell_x_0;
  input [10:0]wall_x;

  wire \FSM_onehot_cur_state[6]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_nxt_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[5]_i_2_n_0 ;
  wire \FSM_onehot_nxt_state_reg[6]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg[6]_i_3_n_0 ;
  wire \FSM_onehot_nxt_state_reg_n_0_[0] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[1] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[2] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[3] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[4] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[5] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[6] ;
  wire clk;
  wire [1:0]cur_shell_grant;
  wire \cur_tank_grant_reg_n_0_[0] ;
  wire [31:0]frame_addr;
  wire \frame_addr[0]_INST_0_i_1_n_0 ;
  wire \frame_addr[0]_INST_0_i_2_n_0 ;
  wire \frame_addr[10]_INST_0_i_1_n_0 ;
  wire \frame_addr[10]_INST_0_i_2_n_0 ;
  wire \frame_addr[11]_INST_0_i_1_n_0 ;
  wire \frame_addr[11]_INST_0_i_2_n_0 ;
  wire \frame_addr[12]_INST_0_i_1_n_0 ;
  wire \frame_addr[12]_INST_0_i_2_n_0 ;
  wire \frame_addr[13]_INST_0_i_1_n_0 ;
  wire \frame_addr[13]_INST_0_i_2_n_0 ;
  wire \frame_addr[14]_INST_0_i_1_n_0 ;
  wire \frame_addr[14]_INST_0_i_2_n_0 ;
  wire \frame_addr[15]_INST_0_i_1_n_0 ;
  wire \frame_addr[15]_INST_0_i_2_n_0 ;
  wire \frame_addr[16]_INST_0_i_1_n_0 ;
  wire \frame_addr[16]_INST_0_i_2_n_0 ;
  wire \frame_addr[17]_INST_0_i_1_n_0 ;
  wire \frame_addr[17]_INST_0_i_2_n_0 ;
  wire \frame_addr[18]_INST_0_i_1_n_0 ;
  wire \frame_addr[18]_INST_0_i_2_n_0 ;
  wire \frame_addr[19]_INST_0_i_1_n_0 ;
  wire \frame_addr[19]_INST_0_i_2_n_0 ;
  wire \frame_addr[1]_INST_0_i_1_n_0 ;
  wire \frame_addr[1]_INST_0_i_2_n_0 ;
  wire \frame_addr[20]_INST_0_i_1_n_0 ;
  wire \frame_addr[20]_INST_0_i_2_n_0 ;
  wire \frame_addr[21]_INST_0_i_1_n_0 ;
  wire \frame_addr[21]_INST_0_i_2_n_0 ;
  wire \frame_addr[22]_INST_0_i_1_n_0 ;
  wire \frame_addr[22]_INST_0_i_2_n_0 ;
  wire \frame_addr[23]_INST_0_i_1_n_0 ;
  wire \frame_addr[23]_INST_0_i_2_n_0 ;
  wire \frame_addr[24]_INST_0_i_1_n_0 ;
  wire \frame_addr[24]_INST_0_i_2_n_0 ;
  wire \frame_addr[25]_INST_0_i_1_n_0 ;
  wire \frame_addr[25]_INST_0_i_2_n_0 ;
  wire \frame_addr[26]_INST_0_i_1_n_0 ;
  wire \frame_addr[26]_INST_0_i_2_n_0 ;
  wire \frame_addr[27]_INST_0_i_1_n_0 ;
  wire \frame_addr[27]_INST_0_i_2_n_0 ;
  wire \frame_addr[28]_INST_0_i_1_n_0 ;
  wire \frame_addr[28]_INST_0_i_2_n_0 ;
  wire \frame_addr[29]_INST_0_i_1_n_0 ;
  wire \frame_addr[29]_INST_0_i_2_n_0 ;
  wire \frame_addr[2]_INST_0_i_1_n_0 ;
  wire \frame_addr[2]_INST_0_i_2_n_0 ;
  wire \frame_addr[30]_INST_0_i_1_n_0 ;
  wire \frame_addr[30]_INST_0_i_2_n_0 ;
  wire \frame_addr[31]_INST_0_i_1_n_0 ;
  wire \frame_addr[31]_INST_0_i_2_n_0 ;
  wire \frame_addr[3]_INST_0_i_1_n_0 ;
  wire \frame_addr[3]_INST_0_i_2_n_0 ;
  wire \frame_addr[4]_INST_0_i_1_n_0 ;
  wire \frame_addr[4]_INST_0_i_2_n_0 ;
  wire \frame_addr[5]_INST_0_i_1_n_0 ;
  wire \frame_addr[5]_INST_0_i_2_n_0 ;
  wire \frame_addr[6]_INST_0_i_1_n_0 ;
  wire \frame_addr[6]_INST_0_i_2_n_0 ;
  wire \frame_addr[7]_INST_0_i_1_n_0 ;
  wire \frame_addr[7]_INST_0_i_2_n_0 ;
  wire \frame_addr[8]_INST_0_i_1_n_0 ;
  wire \frame_addr[8]_INST_0_i_2_n_0 ;
  wire \frame_addr[9]_INST_0_i_1_n_0 ;
  wire \frame_addr[9]_INST_0_i_2_n_0 ;
  wire [1:0]nxt_shell_grant;
  wire \nxt_shell_grant_reg[0]_i_1_n_0 ;
  wire \nxt_shell_grant_reg[1]_i_1_n_0 ;
  wire \nxt_shell_grant_reg[1]_i_2_n_0 ;
  wire nxt_state;
  wire nxt_state3__0;
  wire [1:0]nxt_tank_grant;
  wire \nxt_tank_grant_reg[0]_i_1_n_0 ;
  wire \nxt_tank_grant_reg[1]_i_1_n_0 ;
  wire \nxt_tank_grant_reg[1]_i_2_n_0 ;
  wire p_0_in;
  wire plot_done;
  wire plot_start;
  wire resetn;
  wire [31:0]shell_frame_addr_0;
  wire [31:0]shell_frame_addr_1;
  wire shell_grant_0;
  wire shell_grant_0_i_1_n_0;
  wire shell_grant_1;
  wire shell_grant_1_i_1_n_0;
  wire shell_req_0;
  wire shell_req_1;
  wire [10:0]shell_x_0;
  wire [10:0]shell_x_1;
  wire [10:0]shell_y_0;
  wire [10:0]shell_y_1;
  wire [31:0]tank_frame_addr_0;
  wire [31:0]tank_frame_addr_1;
  wire tank_grant_0;
  wire tank_grant_0_i_1_n_0;
  wire tank_grant_1;
  wire tank_grant_1_i_1_n_0;
  wire tank_req_0;
  wire tank_req_1;
  wire [10:0]tank_x_0;
  wire [10:0]tank_x_1;
  wire [10:0]tank_y_0;
  wire [10:0]tank_y_1;
  wire [31:0]wall_frame_addr;
  wire wall_grant;
  wire wall_grant_i_1_n_0;
  wire wall_req;
  wire [10:0]wall_x;
  wire [10:0]wall_y;
  wire [10:0]x;
  wire \x[0]_INST_0_i_1_n_0 ;
  wire \x[0]_INST_0_i_2_n_0 ;
  wire \x[10]_INST_0_i_1_n_0 ;
  wire \x[10]_INST_0_i_2_n_0 ;
  wire \x[1]_INST_0_i_1_n_0 ;
  wire \x[1]_INST_0_i_2_n_0 ;
  wire \x[2]_INST_0_i_1_n_0 ;
  wire \x[2]_INST_0_i_2_n_0 ;
  wire \x[3]_INST_0_i_1_n_0 ;
  wire \x[3]_INST_0_i_2_n_0 ;
  wire \x[4]_INST_0_i_1_n_0 ;
  wire \x[4]_INST_0_i_2_n_0 ;
  wire \x[5]_INST_0_i_1_n_0 ;
  wire \x[5]_INST_0_i_2_n_0 ;
  wire \x[6]_INST_0_i_1_n_0 ;
  wire \x[6]_INST_0_i_2_n_0 ;
  wire \x[7]_INST_0_i_1_n_0 ;
  wire \x[7]_INST_0_i_2_n_0 ;
  wire \x[8]_INST_0_i_1_n_0 ;
  wire \x[8]_INST_0_i_2_n_0 ;
  wire \x[9]_INST_0_i_1_n_0 ;
  wire \x[9]_INST_0_i_2_n_0 ;
  wire [10:0]y;
  wire \y[0]_INST_0_i_1_n_0 ;
  wire \y[0]_INST_0_i_2_n_0 ;
  wire \y[10]_INST_0_i_1_n_0 ;
  wire \y[10]_INST_0_i_2_n_0 ;
  wire \y[1]_INST_0_i_1_n_0 ;
  wire \y[1]_INST_0_i_2_n_0 ;
  wire \y[2]_INST_0_i_1_n_0 ;
  wire \y[2]_INST_0_i_2_n_0 ;
  wire \y[3]_INST_0_i_1_n_0 ;
  wire \y[3]_INST_0_i_2_n_0 ;
  wire \y[4]_INST_0_i_1_n_0 ;
  wire \y[4]_INST_0_i_2_n_0 ;
  wire \y[5]_INST_0_i_1_n_0 ;
  wire \y[5]_INST_0_i_2_n_0 ;
  wire \y[6]_INST_0_i_1_n_0 ;
  wire \y[6]_INST_0_i_2_n_0 ;
  wire \y[7]_INST_0_i_1_n_0 ;
  wire \y[7]_INST_0_i_2_n_0 ;
  wire \y[8]_INST_0_i_1_n_0 ;
  wire \y[8]_INST_0_i_2_n_0 ;
  wire \y[9]_INST_0_i_1_n_0 ;
  wire \y[9]_INST_0_i_2_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(resetn),
        .O(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .S(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_nxt_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[0]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFF101055101010)) 
    \FSM_onehot_nxt_state_reg[0]_i_1 
       (.I0(wall_req),
        .I1(nxt_state3__0),
        .I2(\FSM_onehot_nxt_state_reg[5]_i_2_n_0 ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I4(plot_done),
        .I5(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .O(\FSM_onehot_nxt_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_nxt_state_reg[0]_i_2 
       (.I0(shell_req_0),
        .I1(shell_req_1),
        .O(nxt_state3__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[1]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_nxt_state_reg[1]_i_1 
       (.I0(tank_req_0),
        .I1(tank_req_1),
        .I2(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .O(\FSM_onehot_nxt_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[2]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_nxt_state_reg[2]_i_1 
       (.I0(plot_done),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\FSM_onehot_nxt_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[3]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_nxt_state_reg[3]_i_1 
       (.I0(\FSM_onehot_nxt_state_reg[5]_i_2_n_0 ),
        .I1(shell_req_1),
        .I2(shell_req_0),
        .O(\FSM_onehot_nxt_state_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[4]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[4] ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_nxt_state_reg[4]_i_1 
       (.I0(plot_done),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(\FSM_onehot_nxt_state_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[5]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h888888F800000000)) 
    \FSM_onehot_nxt_state_reg[5]_i_1 
       (.I0(plot_done),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_nxt_state_reg[5]_i_2_n_0 ),
        .I3(shell_req_1),
        .I4(shell_req_0),
        .I5(wall_req),
        .O(\FSM_onehot_nxt_state_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \FSM_onehot_nxt_state_reg[5]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(tank_req_0),
        .I2(tank_req_1),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(plot_done),
        .O(\FSM_onehot_nxt_state_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[6] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nxt_state_reg[6]_i_1_n_0 ),
        .G(nxt_state),
        .GE(1'b1),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[6] ));
  LUT3 #(
    .INIT(8'hAE)) 
    \FSM_onehot_nxt_state_reg[6]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I2(plot_done),
        .O(\FSM_onehot_nxt_state_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_nxt_state_reg[6]_i_2 
       (.I0(\FSM_onehot_nxt_state_reg[6]_i_3_n_0 ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .O(nxt_state));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_nxt_state_reg[6]_i_3 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\FSM_onehot_nxt_state_reg[6]_i_3_n_0 ));
  FDRE \cur_shell_grant_reg[0] 
       (.C(clk),
        .CE(resetn),
        .D(nxt_shell_grant[0]),
        .Q(cur_shell_grant[0]),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  FDRE \cur_shell_grant_reg[1] 
       (.C(clk),
        .CE(resetn),
        .D(nxt_shell_grant[1]),
        .Q(cur_shell_grant[1]),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  FDRE \cur_tank_grant_reg[0] 
       (.C(clk),
        .CE(resetn),
        .D(nxt_tank_grant[0]),
        .Q(\cur_tank_grant_reg_n_0_[0] ),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  FDRE \cur_tank_grant_reg[1] 
       (.C(clk),
        .CE(resetn),
        .D(nxt_tank_grant[1]),
        .Q(p_0_in),
        .R(\FSM_onehot_cur_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[0]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[0]),
        .I4(\frame_addr[0]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[0]_INST_0_i_2_n_0 ),
        .O(frame_addr[0]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[0]_INST_0_i_1 
       (.I0(shell_frame_addr_0[0]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[0]),
        .O(\frame_addr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[0]_INST_0_i_2 
       (.I0(tank_frame_addr_1[0]),
        .I1(tank_frame_addr_0[0]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[10]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[10]),
        .I4(\frame_addr[10]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[10]_INST_0_i_2_n_0 ),
        .O(frame_addr[10]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[10]_INST_0_i_1 
       (.I0(shell_frame_addr_0[10]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[10]),
        .O(\frame_addr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[10]_INST_0_i_2 
       (.I0(tank_frame_addr_1[10]),
        .I1(tank_frame_addr_0[10]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[11]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[11]),
        .I4(\frame_addr[11]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[11]_INST_0_i_2_n_0 ),
        .O(frame_addr[11]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[11]_INST_0_i_1 
       (.I0(shell_frame_addr_0[11]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[11]),
        .O(\frame_addr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[11]_INST_0_i_2 
       (.I0(tank_frame_addr_1[11]),
        .I1(tank_frame_addr_0[11]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[12]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[12]),
        .I4(\frame_addr[12]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[12]_INST_0_i_2_n_0 ),
        .O(frame_addr[12]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[12]_INST_0_i_1 
       (.I0(shell_frame_addr_0[12]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[12]),
        .O(\frame_addr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[12]_INST_0_i_2 
       (.I0(tank_frame_addr_1[12]),
        .I1(tank_frame_addr_0[12]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[13]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[13]),
        .I4(\frame_addr[13]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[13]_INST_0_i_2_n_0 ),
        .O(frame_addr[13]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[13]_INST_0_i_1 
       (.I0(shell_frame_addr_0[13]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[13]),
        .O(\frame_addr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[13]_INST_0_i_2 
       (.I0(tank_frame_addr_1[13]),
        .I1(tank_frame_addr_0[13]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[14]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[14]),
        .I4(\frame_addr[14]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[14]_INST_0_i_2_n_0 ),
        .O(frame_addr[14]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[14]_INST_0_i_1 
       (.I0(shell_frame_addr_0[14]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[14]),
        .O(\frame_addr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[14]_INST_0_i_2 
       (.I0(tank_frame_addr_1[14]),
        .I1(tank_frame_addr_0[14]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[15]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[15]),
        .I4(\frame_addr[15]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[15]_INST_0_i_2_n_0 ),
        .O(frame_addr[15]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[15]_INST_0_i_1 
       (.I0(shell_frame_addr_0[15]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[15]),
        .O(\frame_addr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[15]_INST_0_i_2 
       (.I0(tank_frame_addr_1[15]),
        .I1(tank_frame_addr_0[15]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[16]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[16]),
        .I4(\frame_addr[16]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[16]_INST_0_i_2_n_0 ),
        .O(frame_addr[16]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[16]_INST_0_i_1 
       (.I0(shell_frame_addr_0[16]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[16]),
        .O(\frame_addr[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[16]_INST_0_i_2 
       (.I0(tank_frame_addr_1[16]),
        .I1(tank_frame_addr_0[16]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[17]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[17]),
        .I4(\frame_addr[17]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[17]_INST_0_i_2_n_0 ),
        .O(frame_addr[17]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[17]_INST_0_i_1 
       (.I0(shell_frame_addr_0[17]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[17]),
        .O(\frame_addr[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[17]_INST_0_i_2 
       (.I0(tank_frame_addr_1[17]),
        .I1(tank_frame_addr_0[17]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[18]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[18]),
        .I4(\frame_addr[18]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[18]_INST_0_i_2_n_0 ),
        .O(frame_addr[18]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[18]_INST_0_i_1 
       (.I0(shell_frame_addr_0[18]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[18]),
        .O(\frame_addr[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[18]_INST_0_i_2 
       (.I0(tank_frame_addr_1[18]),
        .I1(tank_frame_addr_0[18]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[19]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[19]),
        .I4(\frame_addr[19]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[19]_INST_0_i_2_n_0 ),
        .O(frame_addr[19]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[19]_INST_0_i_1 
       (.I0(shell_frame_addr_0[19]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[19]),
        .O(\frame_addr[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[19]_INST_0_i_2 
       (.I0(tank_frame_addr_1[19]),
        .I1(tank_frame_addr_0[19]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[1]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[1]),
        .I4(\frame_addr[1]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[1]_INST_0_i_2_n_0 ),
        .O(frame_addr[1]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[1]_INST_0_i_1 
       (.I0(shell_frame_addr_0[1]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[1]),
        .O(\frame_addr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[1]_INST_0_i_2 
       (.I0(tank_frame_addr_1[1]),
        .I1(tank_frame_addr_0[1]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[20]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[20]),
        .I4(\frame_addr[20]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[20]_INST_0_i_2_n_0 ),
        .O(frame_addr[20]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[20]_INST_0_i_1 
       (.I0(shell_frame_addr_0[20]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[20]),
        .O(\frame_addr[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[20]_INST_0_i_2 
       (.I0(tank_frame_addr_1[20]),
        .I1(tank_frame_addr_0[20]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[21]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[21]),
        .I4(\frame_addr[21]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[21]_INST_0_i_2_n_0 ),
        .O(frame_addr[21]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[21]_INST_0_i_1 
       (.I0(shell_frame_addr_0[21]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[21]),
        .O(\frame_addr[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[21]_INST_0_i_2 
       (.I0(tank_frame_addr_1[21]),
        .I1(tank_frame_addr_0[21]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[22]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[22]),
        .I4(\frame_addr[22]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[22]_INST_0_i_2_n_0 ),
        .O(frame_addr[22]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[22]_INST_0_i_1 
       (.I0(shell_frame_addr_0[22]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[22]),
        .O(\frame_addr[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[22]_INST_0_i_2 
       (.I0(tank_frame_addr_1[22]),
        .I1(tank_frame_addr_0[22]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[23]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[23]),
        .I4(\frame_addr[23]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[23]_INST_0_i_2_n_0 ),
        .O(frame_addr[23]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[23]_INST_0_i_1 
       (.I0(shell_frame_addr_0[23]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[23]),
        .O(\frame_addr[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[23]_INST_0_i_2 
       (.I0(tank_frame_addr_1[23]),
        .I1(tank_frame_addr_0[23]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[24]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[24]),
        .I4(\frame_addr[24]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[24]_INST_0_i_2_n_0 ),
        .O(frame_addr[24]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[24]_INST_0_i_1 
       (.I0(shell_frame_addr_0[24]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[24]),
        .O(\frame_addr[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[24]_INST_0_i_2 
       (.I0(tank_frame_addr_1[24]),
        .I1(tank_frame_addr_0[24]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[25]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[25]),
        .I4(\frame_addr[25]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[25]_INST_0_i_2_n_0 ),
        .O(frame_addr[25]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[25]_INST_0_i_1 
       (.I0(shell_frame_addr_0[25]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[25]),
        .O(\frame_addr[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[25]_INST_0_i_2 
       (.I0(tank_frame_addr_1[25]),
        .I1(tank_frame_addr_0[25]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[26]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[26]),
        .I4(\frame_addr[26]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[26]_INST_0_i_2_n_0 ),
        .O(frame_addr[26]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[26]_INST_0_i_1 
       (.I0(shell_frame_addr_0[26]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[26]),
        .O(\frame_addr[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[26]_INST_0_i_2 
       (.I0(tank_frame_addr_1[26]),
        .I1(tank_frame_addr_0[26]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[27]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[27]),
        .I4(\frame_addr[27]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[27]_INST_0_i_2_n_0 ),
        .O(frame_addr[27]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[27]_INST_0_i_1 
       (.I0(shell_frame_addr_0[27]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[27]),
        .O(\frame_addr[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[27]_INST_0_i_2 
       (.I0(tank_frame_addr_1[27]),
        .I1(tank_frame_addr_0[27]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[28]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[28]),
        .I4(\frame_addr[28]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[28]_INST_0_i_2_n_0 ),
        .O(frame_addr[28]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[28]_INST_0_i_1 
       (.I0(shell_frame_addr_0[28]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[28]),
        .O(\frame_addr[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[28]_INST_0_i_2 
       (.I0(tank_frame_addr_1[28]),
        .I1(tank_frame_addr_0[28]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[29]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[29]),
        .I4(\frame_addr[29]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[29]_INST_0_i_2_n_0 ),
        .O(frame_addr[29]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[29]_INST_0_i_1 
       (.I0(shell_frame_addr_0[29]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[29]),
        .O(\frame_addr[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[29]_INST_0_i_2 
       (.I0(tank_frame_addr_1[29]),
        .I1(tank_frame_addr_0[29]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[2]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[2]),
        .I4(\frame_addr[2]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[2]_INST_0_i_2_n_0 ),
        .O(frame_addr[2]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[2]_INST_0_i_1 
       (.I0(shell_frame_addr_0[2]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[2]),
        .O(\frame_addr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[2]_INST_0_i_2 
       (.I0(tank_frame_addr_1[2]),
        .I1(tank_frame_addr_0[2]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[30]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[30]),
        .I4(\frame_addr[30]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[30]_INST_0_i_2_n_0 ),
        .O(frame_addr[30]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[30]_INST_0_i_1 
       (.I0(shell_frame_addr_0[30]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[30]),
        .O(\frame_addr[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[30]_INST_0_i_2 
       (.I0(tank_frame_addr_1[30]),
        .I1(tank_frame_addr_0[30]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[31]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[31]),
        .I4(\frame_addr[31]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[31]_INST_0_i_2_n_0 ),
        .O(frame_addr[31]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[31]_INST_0_i_1 
       (.I0(shell_frame_addr_0[31]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[31]),
        .O(\frame_addr[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[31]_INST_0_i_2 
       (.I0(tank_frame_addr_1[31]),
        .I1(tank_frame_addr_0[31]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[3]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[3]),
        .I4(\frame_addr[3]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[3]_INST_0_i_2_n_0 ),
        .O(frame_addr[3]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[3]_INST_0_i_1 
       (.I0(shell_frame_addr_0[3]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[3]),
        .O(\frame_addr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[3]_INST_0_i_2 
       (.I0(tank_frame_addr_1[3]),
        .I1(tank_frame_addr_0[3]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[4]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[4]),
        .I4(\frame_addr[4]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[4]_INST_0_i_2_n_0 ),
        .O(frame_addr[4]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[4]_INST_0_i_1 
       (.I0(shell_frame_addr_0[4]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[4]),
        .O(\frame_addr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[4]_INST_0_i_2 
       (.I0(tank_frame_addr_1[4]),
        .I1(tank_frame_addr_0[4]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[5]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[5]),
        .I4(\frame_addr[5]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[5]_INST_0_i_2_n_0 ),
        .O(frame_addr[5]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[5]_INST_0_i_1 
       (.I0(shell_frame_addr_0[5]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[5]),
        .O(\frame_addr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[5]_INST_0_i_2 
       (.I0(tank_frame_addr_1[5]),
        .I1(tank_frame_addr_0[5]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[6]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[6]),
        .I4(\frame_addr[6]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[6]_INST_0_i_2_n_0 ),
        .O(frame_addr[6]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[6]_INST_0_i_1 
       (.I0(shell_frame_addr_0[6]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[6]),
        .O(\frame_addr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[6]_INST_0_i_2 
       (.I0(tank_frame_addr_1[6]),
        .I1(tank_frame_addr_0[6]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[7]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[7]),
        .I4(\frame_addr[7]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[7]_INST_0_i_2_n_0 ),
        .O(frame_addr[7]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[7]_INST_0_i_1 
       (.I0(shell_frame_addr_0[7]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[7]),
        .O(\frame_addr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[7]_INST_0_i_2 
       (.I0(tank_frame_addr_1[7]),
        .I1(tank_frame_addr_0[7]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[8]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[8]),
        .I4(\frame_addr[8]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[8]_INST_0_i_2_n_0 ),
        .O(frame_addr[8]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[8]_INST_0_i_1 
       (.I0(shell_frame_addr_0[8]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[8]),
        .O(\frame_addr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[8]_INST_0_i_2 
       (.I0(tank_frame_addr_1[8]),
        .I1(tank_frame_addr_0[8]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \frame_addr[9]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_frame_addr_1[9]),
        .I4(\frame_addr[9]_INST_0_i_1_n_0 ),
        .I5(\frame_addr[9]_INST_0_i_2_n_0 ),
        .O(frame_addr[9]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \frame_addr[9]_INST_0_i_1 
       (.I0(shell_frame_addr_0[9]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_frame_addr[9]),
        .O(\frame_addr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \frame_addr[9]_INST_0_i_2 
       (.I0(tank_frame_addr_1[9]),
        .I1(tank_frame_addr_0[9]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\frame_addr[9]_INST_0_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_shell_grant_reg[0] 
       (.CLR(1'b0),
        .D(\nxt_shell_grant_reg[0]_i_1_n_0 ),
        .G(\nxt_shell_grant_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nxt_shell_grant[0]));
  LUT4 #(
    .INIT(16'hEFA0)) 
    \nxt_shell_grant_reg[0]_i_1 
       (.I0(shell_req_0),
        .I1(cur_shell_grant[1]),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I3(cur_shell_grant[0]),
        .O(\nxt_shell_grant_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_shell_grant_reg[1] 
       (.CLR(1'b0),
        .D(\nxt_shell_grant_reg[1]_i_1_n_0 ),
        .G(\nxt_shell_grant_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nxt_shell_grant[1]));
  LUT5 #(
    .INIT(32'h333F0808)) 
    \nxt_shell_grant_reg[1]_i_1 
       (.I0(shell_req_1),
        .I1(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I2(shell_req_0),
        .I3(cur_shell_grant[0]),
        .I4(cur_shell_grant[1]),
        .O(\nxt_shell_grant_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \nxt_shell_grant_reg[1]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\nxt_shell_grant_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_tank_grant_reg[0] 
       (.CLR(1'b0),
        .D(\nxt_tank_grant_reg[0]_i_1_n_0 ),
        .G(\nxt_tank_grant_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nxt_tank_grant[0]));
  LUT4 #(
    .INIT(16'hEFC0)) 
    \nxt_tank_grant_reg[0]_i_1 
       (.I0(p_0_in),
        .I1(tank_req_0),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(\cur_tank_grant_reg_n_0_[0] ),
        .O(\nxt_tank_grant_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_tank_grant_reg[1] 
       (.CLR(1'b0),
        .D(\nxt_tank_grant_reg[1]_i_1_n_0 ),
        .G(\nxt_tank_grant_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nxt_tank_grant[1]));
  LUT5 #(
    .INIT(32'h303038F8)) 
    \nxt_tank_grant_reg[1]_i_1 
       (.I0(tank_req_1),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(\cur_tank_grant_reg_n_0_[0] ),
        .I4(tank_req_0),
        .O(\nxt_tank_grant_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \nxt_tank_grant_reg[1]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(\nxt_tank_grant_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    plot_start_INST_0
       (.I0(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(plot_start));
  LUT6 #(
    .INIT(64'hAA00AB00AA00A800)) 
    shell_grant_0_i_1
       (.I0(cur_shell_grant[0]),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(plot_done),
        .I3(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I5(shell_grant_0),
        .O(shell_grant_0_i_1_n_0));
  FDRE shell_grant_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(shell_grant_0_i_1_n_0),
        .Q(shell_grant_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA00AB00AA00A800)) 
    shell_grant_1_i_1
       (.I0(cur_shell_grant[1]),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(plot_done),
        .I3(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I5(shell_grant_1),
        .O(shell_grant_1_i_1_n_0));
  FDRE shell_grant_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(shell_grant_1_i_1_n_0),
        .Q(shell_grant_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA00AB00AA00A800)) 
    tank_grant_0_i_1
       (.I0(\cur_tank_grant_reg_n_0_[0] ),
        .I1(plot_done),
        .I2(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I5(tank_grant_0),
        .O(tank_grant_0_i_1_n_0));
  FDRE tank_grant_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(tank_grant_0_i_1_n_0),
        .Q(tank_grant_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA00AB00AA00A800)) 
    tank_grant_1_i_1
       (.I0(p_0_in),
        .I1(plot_done),
        .I2(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I5(tank_grant_1),
        .O(tank_grant_1_i_1_n_0));
  FDRE tank_grant_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(tank_grant_1_i_1_n_0),
        .Q(tank_grant_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF010F000)) 
    wall_grant_i_1
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I3(plot_done),
        .I4(wall_grant),
        .O(wall_grant_i_1_n_0));
  FDRE wall_grant_reg
       (.C(clk),
        .CE(1'b1),
        .D(wall_grant_i_1_n_0),
        .Q(wall_grant),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[0]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[0]),
        .I4(\x[0]_INST_0_i_1_n_0 ),
        .I5(\x[0]_INST_0_i_2_n_0 ),
        .O(x[0]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[0]_INST_0_i_1 
       (.I0(shell_x_0[0]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[0]),
        .O(\x[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[0]_INST_0_i_2 
       (.I0(tank_x_1[0]),
        .I1(tank_x_0[0]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[10]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[10]),
        .I4(\x[10]_INST_0_i_1_n_0 ),
        .I5(\x[10]_INST_0_i_2_n_0 ),
        .O(x[10]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[10]_INST_0_i_1 
       (.I0(shell_x_0[10]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[10]),
        .O(\x[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[10]_INST_0_i_2 
       (.I0(tank_x_1[10]),
        .I1(tank_x_0[10]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[1]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[1]),
        .I4(\x[1]_INST_0_i_1_n_0 ),
        .I5(\x[1]_INST_0_i_2_n_0 ),
        .O(x[1]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[1]_INST_0_i_1 
       (.I0(shell_x_0[1]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[1]),
        .O(\x[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[1]_INST_0_i_2 
       (.I0(tank_x_1[1]),
        .I1(tank_x_0[1]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[2]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[2]),
        .I4(\x[2]_INST_0_i_1_n_0 ),
        .I5(\x[2]_INST_0_i_2_n_0 ),
        .O(x[2]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[2]_INST_0_i_1 
       (.I0(shell_x_0[2]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[2]),
        .O(\x[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[2]_INST_0_i_2 
       (.I0(tank_x_1[2]),
        .I1(tank_x_0[2]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[3]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[3]),
        .I4(\x[3]_INST_0_i_1_n_0 ),
        .I5(\x[3]_INST_0_i_2_n_0 ),
        .O(x[3]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[3]_INST_0_i_1 
       (.I0(shell_x_0[3]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[3]),
        .O(\x[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[3]_INST_0_i_2 
       (.I0(tank_x_1[3]),
        .I1(tank_x_0[3]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[4]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[4]),
        .I4(\x[4]_INST_0_i_1_n_0 ),
        .I5(\x[4]_INST_0_i_2_n_0 ),
        .O(x[4]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[4]_INST_0_i_1 
       (.I0(shell_x_0[4]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[4]),
        .O(\x[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[4]_INST_0_i_2 
       (.I0(tank_x_1[4]),
        .I1(tank_x_0[4]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[5]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[5]),
        .I4(\x[5]_INST_0_i_1_n_0 ),
        .I5(\x[5]_INST_0_i_2_n_0 ),
        .O(x[5]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[5]_INST_0_i_1 
       (.I0(shell_x_0[5]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[5]),
        .O(\x[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[5]_INST_0_i_2 
       (.I0(tank_x_1[5]),
        .I1(tank_x_0[5]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[6]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[6]),
        .I4(\x[6]_INST_0_i_1_n_0 ),
        .I5(\x[6]_INST_0_i_2_n_0 ),
        .O(x[6]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[6]_INST_0_i_1 
       (.I0(shell_x_0[6]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[6]),
        .O(\x[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[6]_INST_0_i_2 
       (.I0(tank_x_1[6]),
        .I1(tank_x_0[6]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[7]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[7]),
        .I4(\x[7]_INST_0_i_1_n_0 ),
        .I5(\x[7]_INST_0_i_2_n_0 ),
        .O(x[7]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[7]_INST_0_i_1 
       (.I0(shell_x_0[7]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[7]),
        .O(\x[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[7]_INST_0_i_2 
       (.I0(tank_x_1[7]),
        .I1(tank_x_0[7]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[8]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[8]),
        .I4(\x[8]_INST_0_i_1_n_0 ),
        .I5(\x[8]_INST_0_i_2_n_0 ),
        .O(x[8]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[8]_INST_0_i_1 
       (.I0(shell_x_0[8]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[8]),
        .O(\x[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[8]_INST_0_i_2 
       (.I0(tank_x_1[8]),
        .I1(tank_x_0[8]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \x[9]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_x_1[9]),
        .I4(\x[9]_INST_0_i_1_n_0 ),
        .I5(\x[9]_INST_0_i_2_n_0 ),
        .O(x[9]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \x[9]_INST_0_i_1 
       (.I0(shell_x_0[9]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_x[9]),
        .O(\x[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \x[9]_INST_0_i_2 
       (.I0(tank_x_1[9]),
        .I1(tank_x_0[9]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\x[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[0]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[0]),
        .I4(\y[0]_INST_0_i_1_n_0 ),
        .I5(\y[0]_INST_0_i_2_n_0 ),
        .O(y[0]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[0]_INST_0_i_1 
       (.I0(shell_y_0[0]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[0]),
        .O(\y[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[0]_INST_0_i_2 
       (.I0(tank_y_1[0]),
        .I1(tank_y_0[0]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[10]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[10]),
        .I4(\y[10]_INST_0_i_1_n_0 ),
        .I5(\y[10]_INST_0_i_2_n_0 ),
        .O(y[10]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[10]_INST_0_i_1 
       (.I0(shell_y_0[10]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[10]),
        .O(\y[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[10]_INST_0_i_2 
       (.I0(tank_y_1[10]),
        .I1(tank_y_0[10]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[1]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[1]),
        .I4(\y[1]_INST_0_i_1_n_0 ),
        .I5(\y[1]_INST_0_i_2_n_0 ),
        .O(y[1]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[1]_INST_0_i_1 
       (.I0(shell_y_0[1]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[1]),
        .O(\y[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[1]_INST_0_i_2 
       (.I0(tank_y_1[1]),
        .I1(tank_y_0[1]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[2]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[2]),
        .I4(\y[2]_INST_0_i_1_n_0 ),
        .I5(\y[2]_INST_0_i_2_n_0 ),
        .O(y[2]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[2]_INST_0_i_1 
       (.I0(shell_y_0[2]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[2]),
        .O(\y[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[2]_INST_0_i_2 
       (.I0(tank_y_1[2]),
        .I1(tank_y_0[2]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[3]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[3]),
        .I4(\y[3]_INST_0_i_1_n_0 ),
        .I5(\y[3]_INST_0_i_2_n_0 ),
        .O(y[3]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[3]_INST_0_i_1 
       (.I0(shell_y_0[3]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[3]),
        .O(\y[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[3]_INST_0_i_2 
       (.I0(tank_y_1[3]),
        .I1(tank_y_0[3]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[4]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[4]),
        .I4(\y[4]_INST_0_i_1_n_0 ),
        .I5(\y[4]_INST_0_i_2_n_0 ),
        .O(y[4]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[4]_INST_0_i_1 
       (.I0(shell_y_0[4]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[4]),
        .O(\y[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[4]_INST_0_i_2 
       (.I0(tank_y_1[4]),
        .I1(tank_y_0[4]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[5]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[5]),
        .I4(\y[5]_INST_0_i_1_n_0 ),
        .I5(\y[5]_INST_0_i_2_n_0 ),
        .O(y[5]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[5]_INST_0_i_1 
       (.I0(shell_y_0[5]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[5]),
        .O(\y[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[5]_INST_0_i_2 
       (.I0(tank_y_1[5]),
        .I1(tank_y_0[5]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[6]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[6]),
        .I4(\y[6]_INST_0_i_1_n_0 ),
        .I5(\y[6]_INST_0_i_2_n_0 ),
        .O(y[6]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[6]_INST_0_i_1 
       (.I0(shell_y_0[6]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[6]),
        .O(\y[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[6]_INST_0_i_2 
       (.I0(tank_y_1[6]),
        .I1(tank_y_0[6]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[7]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[7]),
        .I4(\y[7]_INST_0_i_1_n_0 ),
        .I5(\y[7]_INST_0_i_2_n_0 ),
        .O(y[7]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[7]_INST_0_i_1 
       (.I0(shell_y_0[7]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[7]),
        .O(\y[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[7]_INST_0_i_2 
       (.I0(tank_y_1[7]),
        .I1(tank_y_0[7]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[8]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[8]),
        .I4(\y[8]_INST_0_i_1_n_0 ),
        .I5(\y[8]_INST_0_i_2_n_0 ),
        .O(y[8]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[8]_INST_0_i_1 
       (.I0(shell_y_0[8]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[8]),
        .O(\y[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[8]_INST_0_i_2 
       (.I0(tank_y_1[8]),
        .I1(tank_y_0[8]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \y[9]_INST_0 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(shell_y_1[9]),
        .I4(\y[9]_INST_0_i_1_n_0 ),
        .I5(\y[9]_INST_0_i_2_n_0 ),
        .O(y[9]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \y[9]_INST_0_i_1 
       (.I0(shell_y_0[9]),
        .I1(nxt_shell_grant[1]),
        .I2(nxt_shell_grant[0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I5(wall_y[9]),
        .O(\y[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \y[9]_INST_0_i_2 
       (.I0(tank_y_1[9]),
        .I1(tank_y_0[9]),
        .I2(nxt_tank_grant[1]),
        .I3(nxt_tank_grant[0]),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\y[9]_INST_0_i_2_n_0 ));
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

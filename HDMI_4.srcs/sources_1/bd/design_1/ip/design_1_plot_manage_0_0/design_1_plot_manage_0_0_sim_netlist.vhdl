-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Mar 30 14:36:44 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_plot_manage_0_0 -prefix
--               design_1_plot_manage_0_0_ design_1_plot_manage_0_0_sim_netlist.vhdl
-- Design      : design_1_plot_manage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_plot_manage_0_0_plot_manage is
  port (
    plot_start : out STD_LOGIC;
    frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_grant : out STD_LOGIC;
    tank_grant_0 : out STD_LOGIC;
    tank_grant_1 : out STD_LOGIC;
    shell_grant_0 : out STD_LOGIC;
    shell_grant_1 : out STD_LOGIC;
    plot_done : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    wall_req : in STD_LOGIC;
    shell_req_0 : in STD_LOGIC;
    shell_req_1 : in STD_LOGIC;
    tank_req_0 : in STD_LOGIC;
    tank_req_1 : in STD_LOGIC;
    shell_frame_addr_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tank_frame_addr_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tank_frame_addr_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    shell_x_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_x_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_x_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_y_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_y_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_y_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_y_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_frame_addr_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wall_frame_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    shell_x_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_x : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_plot_manage_0_0_plot_manage;

architecture STRUCTURE of design_1_plot_manage_0_0_plot_manage is
  signal \FSM_onehot_cur_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_nxt_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_nxt_state_reg_n_0_[6]\ : STD_LOGIC;
  signal cur_shell_grant : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cur_tank_grant_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_addr[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \frame_addr[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \frame_addr[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal nxt_shell_grant : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \nxt_shell_grant_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_shell_grant_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_shell_grant_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal nxt_state : STD_LOGIC;
  signal \nxt_state3__0\ : STD_LOGIC;
  signal nxt_tank_grant : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \nxt_tank_grant_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_tank_grant_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_tank_grant_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^shell_grant_0\ : STD_LOGIC;
  signal shell_grant_0_i_1_n_0 : STD_LOGIC;
  signal \^shell_grant_1\ : STD_LOGIC;
  signal shell_grant_1_i_1_n_0 : STD_LOGIC;
  signal \^tank_grant_0\ : STD_LOGIC;
  signal tank_grant_0_i_1_n_0 : STD_LOGIC;
  signal \^tank_grant_1\ : STD_LOGIC;
  signal tank_grant_1_i_1_n_0 : STD_LOGIC;
  signal \^wall_grant\ : STD_LOGIC;
  signal wall_grant_i_1_n_0 : STD_LOGIC;
  signal \x[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \x[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[0]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_cur_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[1]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[2]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[3]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[4]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[5]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[6]\ : label is "S_PLOT_TANK:0000010,S_WAIT_TANK:0000100,S_PLOT_SHELL:0001000,S_WAIT_SHELL:0010000,S_PLOT_WALL:0100000,S_WAIT_WALL:1000000,S_IDLE:0000001";
  attribute KEEP of \FSM_onehot_cur_state_reg[6]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_nxt_state_reg[0]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nxt_state_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nxt_state_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_shell_grant_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_shell_grant_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_tank_grant_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_tank_grant_reg[1]\ : label is "LD";
begin
  shell_grant_0 <= \^shell_grant_0\;
  shell_grant_1 <= \^shell_grant_1\;
  tank_grant_0 <= \^tank_grant_0\;
  tank_grant_1 <= \^tank_grant_1\;
  wall_grant <= \^wall_grant\;
\FSM_onehot_cur_state[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[0]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[0]\,
      S => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[1]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[1]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[2]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[2]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[3]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[3]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[4]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[4]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[5]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[5]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nxt_state_reg_n_0_[6]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[6]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[0]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[0]\
    );
\FSM_onehot_nxt_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF101055101010"
    )
        port map (
      I0 => wall_req,
      I1 => \nxt_state3__0\,
      I2 => \FSM_onehot_nxt_state_reg[5]_i_2_n_0\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I4 => plot_done,
      I5 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      O => \FSM_onehot_nxt_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shell_req_0,
      I1 => shell_req_1,
      O => \nxt_state3__0\
    );
\FSM_onehot_nxt_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[1]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[1]\
    );
\FSM_onehot_nxt_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => tank_req_0,
      I1 => tank_req_1,
      I2 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      O => \FSM_onehot_nxt_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[2]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[2]\
    );
\FSM_onehot_nxt_state_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => plot_done,
      I1 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \FSM_onehot_nxt_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[3]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[3]\
    );
\FSM_onehot_nxt_state_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_nxt_state_reg[5]_i_2_n_0\,
      I1 => shell_req_1,
      I2 => shell_req_0,
      O => \FSM_onehot_nxt_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[4]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[4]\
    );
\FSM_onehot_nxt_state_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => plot_done,
      I1 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      O => \FSM_onehot_nxt_state_reg[4]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[5]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[5]\
    );
\FSM_onehot_nxt_state_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888F800000000"
    )
        port map (
      I0 => plot_done,
      I1 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_nxt_state_reg[5]_i_2_n_0\,
      I3 => shell_req_1,
      I4 => shell_req_0,
      I5 => wall_req,
      O => \FSM_onehot_nxt_state_reg[5]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => tank_req_0,
      I2 => tank_req_1,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => plot_done,
      O => \FSM_onehot_nxt_state_reg[5]_i_2_n_0\
    );
\FSM_onehot_nxt_state_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nxt_state_reg[6]_i_1_n_0\,
      G => nxt_state,
      GE => '1',
      Q => \FSM_onehot_nxt_state_reg_n_0_[6]\
    );
\FSM_onehot_nxt_state_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I2 => plot_done,
      O => \FSM_onehot_nxt_state_reg[6]_i_1_n_0\
    );
\FSM_onehot_nxt_state_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_nxt_state_reg[6]_i_3_n_0\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      O => nxt_state
    );
\FSM_onehot_nxt_state_reg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => \FSM_onehot_nxt_state_reg[6]_i_3_n_0\
    );
\cur_shell_grant_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => nxt_shell_grant(0),
      Q => cur_shell_grant(0),
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\cur_shell_grant_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => nxt_shell_grant(1),
      Q => cur_shell_grant(1),
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\cur_tank_grant_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => nxt_tank_grant(0),
      Q => \cur_tank_grant_reg_n_0_[0]\,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\cur_tank_grant_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => nxt_tank_grant(1),
      Q => p_0_in,
      R => \FSM_onehot_cur_state[6]_i_1_n_0\
    );
\frame_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(0),
      I4 => \frame_addr[0]_INST_0_i_1_n_0\,
      I5 => \frame_addr[0]_INST_0_i_2_n_0\,
      O => frame_addr(0)
    );
\frame_addr[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(0),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(0),
      O => \frame_addr[0]_INST_0_i_1_n_0\
    );
\frame_addr[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(0),
      I1 => tank_frame_addr_0(0),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[0]_INST_0_i_2_n_0\
    );
\frame_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(10),
      I4 => \frame_addr[10]_INST_0_i_1_n_0\,
      I5 => \frame_addr[10]_INST_0_i_2_n_0\,
      O => frame_addr(10)
    );
\frame_addr[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(10),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(10),
      O => \frame_addr[10]_INST_0_i_1_n_0\
    );
\frame_addr[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(10),
      I1 => tank_frame_addr_0(10),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[10]_INST_0_i_2_n_0\
    );
\frame_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(11),
      I4 => \frame_addr[11]_INST_0_i_1_n_0\,
      I5 => \frame_addr[11]_INST_0_i_2_n_0\,
      O => frame_addr(11)
    );
\frame_addr[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(11),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(11),
      O => \frame_addr[11]_INST_0_i_1_n_0\
    );
\frame_addr[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(11),
      I1 => tank_frame_addr_0(11),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[11]_INST_0_i_2_n_0\
    );
\frame_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(12),
      I4 => \frame_addr[12]_INST_0_i_1_n_0\,
      I5 => \frame_addr[12]_INST_0_i_2_n_0\,
      O => frame_addr(12)
    );
\frame_addr[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(12),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(12),
      O => \frame_addr[12]_INST_0_i_1_n_0\
    );
\frame_addr[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(12),
      I1 => tank_frame_addr_0(12),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[12]_INST_0_i_2_n_0\
    );
\frame_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(13),
      I4 => \frame_addr[13]_INST_0_i_1_n_0\,
      I5 => \frame_addr[13]_INST_0_i_2_n_0\,
      O => frame_addr(13)
    );
\frame_addr[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(13),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(13),
      O => \frame_addr[13]_INST_0_i_1_n_0\
    );
\frame_addr[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(13),
      I1 => tank_frame_addr_0(13),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[13]_INST_0_i_2_n_0\
    );
\frame_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(14),
      I4 => \frame_addr[14]_INST_0_i_1_n_0\,
      I5 => \frame_addr[14]_INST_0_i_2_n_0\,
      O => frame_addr(14)
    );
\frame_addr[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(14),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(14),
      O => \frame_addr[14]_INST_0_i_1_n_0\
    );
\frame_addr[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(14),
      I1 => tank_frame_addr_0(14),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[14]_INST_0_i_2_n_0\
    );
\frame_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(15),
      I4 => \frame_addr[15]_INST_0_i_1_n_0\,
      I5 => \frame_addr[15]_INST_0_i_2_n_0\,
      O => frame_addr(15)
    );
\frame_addr[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(15),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(15),
      O => \frame_addr[15]_INST_0_i_1_n_0\
    );
\frame_addr[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(15),
      I1 => tank_frame_addr_0(15),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[15]_INST_0_i_2_n_0\
    );
\frame_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(16),
      I4 => \frame_addr[16]_INST_0_i_1_n_0\,
      I5 => \frame_addr[16]_INST_0_i_2_n_0\,
      O => frame_addr(16)
    );
\frame_addr[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(16),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(16),
      O => \frame_addr[16]_INST_0_i_1_n_0\
    );
\frame_addr[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(16),
      I1 => tank_frame_addr_0(16),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[16]_INST_0_i_2_n_0\
    );
\frame_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(17),
      I4 => \frame_addr[17]_INST_0_i_1_n_0\,
      I5 => \frame_addr[17]_INST_0_i_2_n_0\,
      O => frame_addr(17)
    );
\frame_addr[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(17),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(17),
      O => \frame_addr[17]_INST_0_i_1_n_0\
    );
\frame_addr[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(17),
      I1 => tank_frame_addr_0(17),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[17]_INST_0_i_2_n_0\
    );
\frame_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(18),
      I4 => \frame_addr[18]_INST_0_i_1_n_0\,
      I5 => \frame_addr[18]_INST_0_i_2_n_0\,
      O => frame_addr(18)
    );
\frame_addr[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(18),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(18),
      O => \frame_addr[18]_INST_0_i_1_n_0\
    );
\frame_addr[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(18),
      I1 => tank_frame_addr_0(18),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[18]_INST_0_i_2_n_0\
    );
\frame_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(19),
      I4 => \frame_addr[19]_INST_0_i_1_n_0\,
      I5 => \frame_addr[19]_INST_0_i_2_n_0\,
      O => frame_addr(19)
    );
\frame_addr[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(19),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(19),
      O => \frame_addr[19]_INST_0_i_1_n_0\
    );
\frame_addr[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(19),
      I1 => tank_frame_addr_0(19),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[19]_INST_0_i_2_n_0\
    );
\frame_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(1),
      I4 => \frame_addr[1]_INST_0_i_1_n_0\,
      I5 => \frame_addr[1]_INST_0_i_2_n_0\,
      O => frame_addr(1)
    );
\frame_addr[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(1),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(1),
      O => \frame_addr[1]_INST_0_i_1_n_0\
    );
\frame_addr[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(1),
      I1 => tank_frame_addr_0(1),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[1]_INST_0_i_2_n_0\
    );
\frame_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(20),
      I4 => \frame_addr[20]_INST_0_i_1_n_0\,
      I5 => \frame_addr[20]_INST_0_i_2_n_0\,
      O => frame_addr(20)
    );
\frame_addr[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(20),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(20),
      O => \frame_addr[20]_INST_0_i_1_n_0\
    );
\frame_addr[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(20),
      I1 => tank_frame_addr_0(20),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[20]_INST_0_i_2_n_0\
    );
\frame_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(21),
      I4 => \frame_addr[21]_INST_0_i_1_n_0\,
      I5 => \frame_addr[21]_INST_0_i_2_n_0\,
      O => frame_addr(21)
    );
\frame_addr[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(21),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(21),
      O => \frame_addr[21]_INST_0_i_1_n_0\
    );
\frame_addr[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(21),
      I1 => tank_frame_addr_0(21),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[21]_INST_0_i_2_n_0\
    );
\frame_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(22),
      I4 => \frame_addr[22]_INST_0_i_1_n_0\,
      I5 => \frame_addr[22]_INST_0_i_2_n_0\,
      O => frame_addr(22)
    );
\frame_addr[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(22),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(22),
      O => \frame_addr[22]_INST_0_i_1_n_0\
    );
\frame_addr[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(22),
      I1 => tank_frame_addr_0(22),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[22]_INST_0_i_2_n_0\
    );
\frame_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(23),
      I4 => \frame_addr[23]_INST_0_i_1_n_0\,
      I5 => \frame_addr[23]_INST_0_i_2_n_0\,
      O => frame_addr(23)
    );
\frame_addr[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(23),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(23),
      O => \frame_addr[23]_INST_0_i_1_n_0\
    );
\frame_addr[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(23),
      I1 => tank_frame_addr_0(23),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[23]_INST_0_i_2_n_0\
    );
\frame_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(24),
      I4 => \frame_addr[24]_INST_0_i_1_n_0\,
      I5 => \frame_addr[24]_INST_0_i_2_n_0\,
      O => frame_addr(24)
    );
\frame_addr[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(24),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(24),
      O => \frame_addr[24]_INST_0_i_1_n_0\
    );
\frame_addr[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(24),
      I1 => tank_frame_addr_0(24),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[24]_INST_0_i_2_n_0\
    );
\frame_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(25),
      I4 => \frame_addr[25]_INST_0_i_1_n_0\,
      I5 => \frame_addr[25]_INST_0_i_2_n_0\,
      O => frame_addr(25)
    );
\frame_addr[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(25),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(25),
      O => \frame_addr[25]_INST_0_i_1_n_0\
    );
\frame_addr[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(25),
      I1 => tank_frame_addr_0(25),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[25]_INST_0_i_2_n_0\
    );
\frame_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(26),
      I4 => \frame_addr[26]_INST_0_i_1_n_0\,
      I5 => \frame_addr[26]_INST_0_i_2_n_0\,
      O => frame_addr(26)
    );
\frame_addr[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(26),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(26),
      O => \frame_addr[26]_INST_0_i_1_n_0\
    );
\frame_addr[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(26),
      I1 => tank_frame_addr_0(26),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[26]_INST_0_i_2_n_0\
    );
\frame_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(27),
      I4 => \frame_addr[27]_INST_0_i_1_n_0\,
      I5 => \frame_addr[27]_INST_0_i_2_n_0\,
      O => frame_addr(27)
    );
\frame_addr[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(27),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(27),
      O => \frame_addr[27]_INST_0_i_1_n_0\
    );
\frame_addr[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(27),
      I1 => tank_frame_addr_0(27),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[27]_INST_0_i_2_n_0\
    );
\frame_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(28),
      I4 => \frame_addr[28]_INST_0_i_1_n_0\,
      I5 => \frame_addr[28]_INST_0_i_2_n_0\,
      O => frame_addr(28)
    );
\frame_addr[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(28),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(28),
      O => \frame_addr[28]_INST_0_i_1_n_0\
    );
\frame_addr[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(28),
      I1 => tank_frame_addr_0(28),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[28]_INST_0_i_2_n_0\
    );
\frame_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(29),
      I4 => \frame_addr[29]_INST_0_i_1_n_0\,
      I5 => \frame_addr[29]_INST_0_i_2_n_0\,
      O => frame_addr(29)
    );
\frame_addr[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(29),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(29),
      O => \frame_addr[29]_INST_0_i_1_n_0\
    );
\frame_addr[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(29),
      I1 => tank_frame_addr_0(29),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[29]_INST_0_i_2_n_0\
    );
\frame_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(2),
      I4 => \frame_addr[2]_INST_0_i_1_n_0\,
      I5 => \frame_addr[2]_INST_0_i_2_n_0\,
      O => frame_addr(2)
    );
\frame_addr[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(2),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(2),
      O => \frame_addr[2]_INST_0_i_1_n_0\
    );
\frame_addr[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(2),
      I1 => tank_frame_addr_0(2),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[2]_INST_0_i_2_n_0\
    );
\frame_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(30),
      I4 => \frame_addr[30]_INST_0_i_1_n_0\,
      I5 => \frame_addr[30]_INST_0_i_2_n_0\,
      O => frame_addr(30)
    );
\frame_addr[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(30),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(30),
      O => \frame_addr[30]_INST_0_i_1_n_0\
    );
\frame_addr[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(30),
      I1 => tank_frame_addr_0(30),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[30]_INST_0_i_2_n_0\
    );
\frame_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(31),
      I4 => \frame_addr[31]_INST_0_i_1_n_0\,
      I5 => \frame_addr[31]_INST_0_i_2_n_0\,
      O => frame_addr(31)
    );
\frame_addr[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(31),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(31),
      O => \frame_addr[31]_INST_0_i_1_n_0\
    );
\frame_addr[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(31),
      I1 => tank_frame_addr_0(31),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[31]_INST_0_i_2_n_0\
    );
\frame_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(3),
      I4 => \frame_addr[3]_INST_0_i_1_n_0\,
      I5 => \frame_addr[3]_INST_0_i_2_n_0\,
      O => frame_addr(3)
    );
\frame_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(3),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(3),
      O => \frame_addr[3]_INST_0_i_1_n_0\
    );
\frame_addr[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(3),
      I1 => tank_frame_addr_0(3),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[3]_INST_0_i_2_n_0\
    );
\frame_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(4),
      I4 => \frame_addr[4]_INST_0_i_1_n_0\,
      I5 => \frame_addr[4]_INST_0_i_2_n_0\,
      O => frame_addr(4)
    );
\frame_addr[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(4),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(4),
      O => \frame_addr[4]_INST_0_i_1_n_0\
    );
\frame_addr[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(4),
      I1 => tank_frame_addr_0(4),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[4]_INST_0_i_2_n_0\
    );
\frame_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(5),
      I4 => \frame_addr[5]_INST_0_i_1_n_0\,
      I5 => \frame_addr[5]_INST_0_i_2_n_0\,
      O => frame_addr(5)
    );
\frame_addr[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(5),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(5),
      O => \frame_addr[5]_INST_0_i_1_n_0\
    );
\frame_addr[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(5),
      I1 => tank_frame_addr_0(5),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[5]_INST_0_i_2_n_0\
    );
\frame_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(6),
      I4 => \frame_addr[6]_INST_0_i_1_n_0\,
      I5 => \frame_addr[6]_INST_0_i_2_n_0\,
      O => frame_addr(6)
    );
\frame_addr[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(6),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(6),
      O => \frame_addr[6]_INST_0_i_1_n_0\
    );
\frame_addr[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(6),
      I1 => tank_frame_addr_0(6),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[6]_INST_0_i_2_n_0\
    );
\frame_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(7),
      I4 => \frame_addr[7]_INST_0_i_1_n_0\,
      I5 => \frame_addr[7]_INST_0_i_2_n_0\,
      O => frame_addr(7)
    );
\frame_addr[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(7),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(7),
      O => \frame_addr[7]_INST_0_i_1_n_0\
    );
\frame_addr[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(7),
      I1 => tank_frame_addr_0(7),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[7]_INST_0_i_2_n_0\
    );
\frame_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(8),
      I4 => \frame_addr[8]_INST_0_i_1_n_0\,
      I5 => \frame_addr[8]_INST_0_i_2_n_0\,
      O => frame_addr(8)
    );
\frame_addr[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(8),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(8),
      O => \frame_addr[8]_INST_0_i_1_n_0\
    );
\frame_addr[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(8),
      I1 => tank_frame_addr_0(8),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[8]_INST_0_i_2_n_0\
    );
\frame_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_frame_addr_1(9),
      I4 => \frame_addr[9]_INST_0_i_1_n_0\,
      I5 => \frame_addr[9]_INST_0_i_2_n_0\,
      O => frame_addr(9)
    );
\frame_addr[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_frame_addr_0(9),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_frame_addr(9),
      O => \frame_addr[9]_INST_0_i_1_n_0\
    );
\frame_addr[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_frame_addr_1(9),
      I1 => tank_frame_addr_0(9),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \frame_addr[9]_INST_0_i_2_n_0\
    );
\nxt_shell_grant_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \nxt_shell_grant_reg[0]_i_1_n_0\,
      G => \nxt_shell_grant_reg[1]_i_2_n_0\,
      GE => '1',
      Q => nxt_shell_grant(0)
    );
\nxt_shell_grant_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFA0"
    )
        port map (
      I0 => shell_req_0,
      I1 => cur_shell_grant(1),
      I2 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I3 => cur_shell_grant(0),
      O => \nxt_shell_grant_reg[0]_i_1_n_0\
    );
\nxt_shell_grant_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \nxt_shell_grant_reg[1]_i_1_n_0\,
      G => \nxt_shell_grant_reg[1]_i_2_n_0\,
      GE => '1',
      Q => nxt_shell_grant(1)
    );
\nxt_shell_grant_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333F0808"
    )
        port map (
      I0 => shell_req_1,
      I1 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I2 => shell_req_0,
      I3 => cur_shell_grant(0),
      I4 => cur_shell_grant(1),
      O => \nxt_shell_grant_reg[1]_i_1_n_0\
    );
\nxt_shell_grant_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \nxt_shell_grant_reg[1]_i_2_n_0\
    );
\nxt_tank_grant_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \nxt_tank_grant_reg[0]_i_1_n_0\,
      G => \nxt_tank_grant_reg[1]_i_2_n_0\,
      GE => '1',
      Q => nxt_tank_grant(0)
    );
\nxt_tank_grant_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFC0"
    )
        port map (
      I0 => p_0_in,
      I1 => tank_req_0,
      I2 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I3 => \cur_tank_grant_reg_n_0_[0]\,
      O => \nxt_tank_grant_reg[0]_i_1_n_0\
    );
\nxt_tank_grant_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \nxt_tank_grant_reg[1]_i_1_n_0\,
      G => \nxt_tank_grant_reg[1]_i_2_n_0\,
      GE => '1',
      Q => nxt_tank_grant(1)
    );
\nxt_tank_grant_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303038F8"
    )
        port map (
      I0 => tank_req_1,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I2 => p_0_in,
      I3 => \cur_tank_grant_reg_n_0_[0]\,
      I4 => tank_req_0,
      O => \nxt_tank_grant_reg[1]_i_1_n_0\
    );
\nxt_tank_grant_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      O => \nxt_tank_grant_reg[1]_i_2_n_0\
    );
plot_start_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      O => plot_start
    );
shell_grant_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AB00AA00A800"
    )
        port map (
      I0 => cur_shell_grant(0),
      I1 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I2 => plot_done,
      I3 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I5 => \^shell_grant_0\,
      O => shell_grant_0_i_1_n_0
    );
shell_grant_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => shell_grant_0_i_1_n_0,
      Q => \^shell_grant_0\,
      R => '0'
    );
shell_grant_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AB00AA00A800"
    )
        port map (
      I0 => cur_shell_grant(1),
      I1 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I2 => plot_done,
      I3 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I5 => \^shell_grant_1\,
      O => shell_grant_1_i_1_n_0
    );
shell_grant_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => shell_grant_1_i_1_n_0,
      Q => \^shell_grant_1\,
      R => '0'
    );
tank_grant_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AB00AA00A800"
    )
        port map (
      I0 => \cur_tank_grant_reg_n_0_[0]\,
      I1 => plot_done,
      I2 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I5 => \^tank_grant_0\,
      O => tank_grant_0_i_1_n_0
    );
tank_grant_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tank_grant_0_i_1_n_0,
      Q => \^tank_grant_0\,
      R => '0'
    );
tank_grant_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AB00AA00A800"
    )
        port map (
      I0 => p_0_in,
      I1 => plot_done,
      I2 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I5 => \^tank_grant_1\,
      O => tank_grant_1_i_1_n_0
    );
tank_grant_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tank_grant_1_i_1_n_0,
      Q => \^tank_grant_1\,
      R => '0'
    );
wall_grant_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F010F000"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[6]\,
      I3 => plot_done,
      I4 => \^wall_grant\,
      O => wall_grant_i_1_n_0
    );
wall_grant_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wall_grant_i_1_n_0,
      Q => \^wall_grant\,
      R => '0'
    );
\x[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(0),
      I4 => \x[0]_INST_0_i_1_n_0\,
      I5 => \x[0]_INST_0_i_2_n_0\,
      O => x(0)
    );
\x[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(0),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(0),
      O => \x[0]_INST_0_i_1_n_0\
    );
\x[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(0),
      I1 => tank_x_0(0),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[0]_INST_0_i_2_n_0\
    );
\x[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(10),
      I4 => \x[10]_INST_0_i_1_n_0\,
      I5 => \x[10]_INST_0_i_2_n_0\,
      O => x(10)
    );
\x[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(10),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(10),
      O => \x[10]_INST_0_i_1_n_0\
    );
\x[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(10),
      I1 => tank_x_0(10),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[10]_INST_0_i_2_n_0\
    );
\x[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(1),
      I4 => \x[1]_INST_0_i_1_n_0\,
      I5 => \x[1]_INST_0_i_2_n_0\,
      O => x(1)
    );
\x[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(1),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(1),
      O => \x[1]_INST_0_i_1_n_0\
    );
\x[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(1),
      I1 => tank_x_0(1),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[1]_INST_0_i_2_n_0\
    );
\x[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(2),
      I4 => \x[2]_INST_0_i_1_n_0\,
      I5 => \x[2]_INST_0_i_2_n_0\,
      O => x(2)
    );
\x[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(2),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(2),
      O => \x[2]_INST_0_i_1_n_0\
    );
\x[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(2),
      I1 => tank_x_0(2),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[2]_INST_0_i_2_n_0\
    );
\x[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(3),
      I4 => \x[3]_INST_0_i_1_n_0\,
      I5 => \x[3]_INST_0_i_2_n_0\,
      O => x(3)
    );
\x[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(3),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(3),
      O => \x[3]_INST_0_i_1_n_0\
    );
\x[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(3),
      I1 => tank_x_0(3),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[3]_INST_0_i_2_n_0\
    );
\x[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(4),
      I4 => \x[4]_INST_0_i_1_n_0\,
      I5 => \x[4]_INST_0_i_2_n_0\,
      O => x(4)
    );
\x[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(4),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(4),
      O => \x[4]_INST_0_i_1_n_0\
    );
\x[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(4),
      I1 => tank_x_0(4),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[4]_INST_0_i_2_n_0\
    );
\x[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(5),
      I4 => \x[5]_INST_0_i_1_n_0\,
      I5 => \x[5]_INST_0_i_2_n_0\,
      O => x(5)
    );
\x[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(5),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(5),
      O => \x[5]_INST_0_i_1_n_0\
    );
\x[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(5),
      I1 => tank_x_0(5),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[5]_INST_0_i_2_n_0\
    );
\x[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(6),
      I4 => \x[6]_INST_0_i_1_n_0\,
      I5 => \x[6]_INST_0_i_2_n_0\,
      O => x(6)
    );
\x[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(6),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(6),
      O => \x[6]_INST_0_i_1_n_0\
    );
\x[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(6),
      I1 => tank_x_0(6),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[6]_INST_0_i_2_n_0\
    );
\x[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(7),
      I4 => \x[7]_INST_0_i_1_n_0\,
      I5 => \x[7]_INST_0_i_2_n_0\,
      O => x(7)
    );
\x[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(7),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(7),
      O => \x[7]_INST_0_i_1_n_0\
    );
\x[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(7),
      I1 => tank_x_0(7),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[7]_INST_0_i_2_n_0\
    );
\x[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(8),
      I4 => \x[8]_INST_0_i_1_n_0\,
      I5 => \x[8]_INST_0_i_2_n_0\,
      O => x(8)
    );
\x[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(8),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(8),
      O => \x[8]_INST_0_i_1_n_0\
    );
\x[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(8),
      I1 => tank_x_0(8),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[8]_INST_0_i_2_n_0\
    );
\x[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_x_1(9),
      I4 => \x[9]_INST_0_i_1_n_0\,
      I5 => \x[9]_INST_0_i_2_n_0\,
      O => x(9)
    );
\x[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_x_0(9),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_x(9),
      O => \x[9]_INST_0_i_1_n_0\
    );
\x[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_x_1(9),
      I1 => tank_x_0(9),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \x[9]_INST_0_i_2_n_0\
    );
\y[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(0),
      I4 => \y[0]_INST_0_i_1_n_0\,
      I5 => \y[0]_INST_0_i_2_n_0\,
      O => y(0)
    );
\y[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(0),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(0),
      O => \y[0]_INST_0_i_1_n_0\
    );
\y[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(0),
      I1 => tank_y_0(0),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[0]_INST_0_i_2_n_0\
    );
\y[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(10),
      I4 => \y[10]_INST_0_i_1_n_0\,
      I5 => \y[10]_INST_0_i_2_n_0\,
      O => y(10)
    );
\y[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(10),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(10),
      O => \y[10]_INST_0_i_1_n_0\
    );
\y[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(10),
      I1 => tank_y_0(10),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[10]_INST_0_i_2_n_0\
    );
\y[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(1),
      I4 => \y[1]_INST_0_i_1_n_0\,
      I5 => \y[1]_INST_0_i_2_n_0\,
      O => y(1)
    );
\y[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(1),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(1),
      O => \y[1]_INST_0_i_1_n_0\
    );
\y[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(1),
      I1 => tank_y_0(1),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[1]_INST_0_i_2_n_0\
    );
\y[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(2),
      I4 => \y[2]_INST_0_i_1_n_0\,
      I5 => \y[2]_INST_0_i_2_n_0\,
      O => y(2)
    );
\y[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(2),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(2),
      O => \y[2]_INST_0_i_1_n_0\
    );
\y[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(2),
      I1 => tank_y_0(2),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[2]_INST_0_i_2_n_0\
    );
\y[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(3),
      I4 => \y[3]_INST_0_i_1_n_0\,
      I5 => \y[3]_INST_0_i_2_n_0\,
      O => y(3)
    );
\y[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(3),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(3),
      O => \y[3]_INST_0_i_1_n_0\
    );
\y[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(3),
      I1 => tank_y_0(3),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[3]_INST_0_i_2_n_0\
    );
\y[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(4),
      I4 => \y[4]_INST_0_i_1_n_0\,
      I5 => \y[4]_INST_0_i_2_n_0\,
      O => y(4)
    );
\y[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(4),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(4),
      O => \y[4]_INST_0_i_1_n_0\
    );
\y[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(4),
      I1 => tank_y_0(4),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[4]_INST_0_i_2_n_0\
    );
\y[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(5),
      I4 => \y[5]_INST_0_i_1_n_0\,
      I5 => \y[5]_INST_0_i_2_n_0\,
      O => y(5)
    );
\y[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(5),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(5),
      O => \y[5]_INST_0_i_1_n_0\
    );
\y[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(5),
      I1 => tank_y_0(5),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[5]_INST_0_i_2_n_0\
    );
\y[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(6),
      I4 => \y[6]_INST_0_i_1_n_0\,
      I5 => \y[6]_INST_0_i_2_n_0\,
      O => y(6)
    );
\y[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(6),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(6),
      O => \y[6]_INST_0_i_1_n_0\
    );
\y[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(6),
      I1 => tank_y_0(6),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[6]_INST_0_i_2_n_0\
    );
\y[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(7),
      I4 => \y[7]_INST_0_i_1_n_0\,
      I5 => \y[7]_INST_0_i_2_n_0\,
      O => y(7)
    );
\y[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(7),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(7),
      O => \y[7]_INST_0_i_1_n_0\
    );
\y[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(7),
      I1 => tank_y_0(7),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[7]_INST_0_i_2_n_0\
    );
\y[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(8),
      I4 => \y[8]_INST_0_i_1_n_0\,
      I5 => \y[8]_INST_0_i_2_n_0\,
      O => y(8)
    );
\y[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(8),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(8),
      O => \y[8]_INST_0_i_1_n_0\
    );
\y[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(8),
      I1 => tank_y_0(8),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[8]_INST_0_i_2_n_0\
    );
\y[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => shell_y_1(9),
      I4 => \y[9]_INST_0_i_1_n_0\,
      I5 => \y[9]_INST_0_i_2_n_0\,
      O => y(9)
    );
\y[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => shell_y_0(9),
      I1 => nxt_shell_grant(1),
      I2 => nxt_shell_grant(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I5 => wall_y(9),
      O => \y[9]_INST_0_i_1_n_0\
    );
\y[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => tank_y_1(9),
      I1 => tank_y_0(9),
      I2 => nxt_tank_grant(1),
      I3 => nxt_tank_grant(0),
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \y[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_plot_manage_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    tank_req_0 : in STD_LOGIC;
    tank_x_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_y_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_grant_0 : out STD_LOGIC;
    tank_frame_addr_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tank_req_1 : in STD_LOGIC;
    tank_x_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_y_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tank_grant_1 : out STD_LOGIC;
    tank_frame_addr_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    shell_req_0 : in STD_LOGIC;
    shell_x_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_y_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_grant_0 : out STD_LOGIC;
    shell_frame_addr_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    shell_req_1 : in STD_LOGIC;
    shell_x_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_y_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    shell_grant_1 : out STD_LOGIC;
    shell_frame_addr_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wall_req : in STD_LOGIC;
    wall_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_frame_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wall_grant : out STD_LOGIC;
    frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_buffer : out STD_LOGIC_VECTOR ( 0 to 0 );
    x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    plot_start : out STD_LOGIC;
    plot_done : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_plot_manage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_plot_manage_0_0 : entity is "design_1_plot_manage_0_0,plot_manage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_plot_manage_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_plot_manage_0_0 : entity is "plot_manage,Vivado 2018.1";
end design_1_plot_manage_0_0;

architecture STRUCTURE of design_1_plot_manage_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW";
begin
  frame_buffer(0) <= 'Z';
inst: entity work.design_1_plot_manage_0_0_plot_manage
     port map (
      clk => clk,
      frame_addr(31 downto 0) => frame_addr(31 downto 0),
      plot_done => plot_done,
      plot_start => plot_start,
      resetn => resetn,
      shell_frame_addr_0(31 downto 0) => shell_frame_addr_0(31 downto 0),
      shell_frame_addr_1(31 downto 0) => shell_frame_addr_1(31 downto 0),
      shell_grant_0 => shell_grant_0,
      shell_grant_1 => shell_grant_1,
      shell_req_0 => shell_req_0,
      shell_req_1 => shell_req_1,
      shell_x_0(10 downto 0) => shell_x_0(10 downto 0),
      shell_x_1(10 downto 0) => shell_x_1(10 downto 0),
      shell_y_0(10 downto 0) => shell_y_0(10 downto 0),
      shell_y_1(10 downto 0) => shell_y_1(10 downto 0),
      tank_frame_addr_0(31 downto 0) => tank_frame_addr_0(31 downto 0),
      tank_frame_addr_1(31 downto 0) => tank_frame_addr_1(31 downto 0),
      tank_grant_0 => tank_grant_0,
      tank_grant_1 => tank_grant_1,
      tank_req_0 => tank_req_0,
      tank_req_1 => tank_req_1,
      tank_x_0(10 downto 0) => tank_x_0(10 downto 0),
      tank_x_1(10 downto 0) => tank_x_1(10 downto 0),
      tank_y_0(10 downto 0) => tank_y_0(10 downto 0),
      tank_y_1(10 downto 0) => tank_y_1(10 downto 0),
      wall_frame_addr(31 downto 0) => wall_frame_addr(31 downto 0),
      wall_grant => wall_grant,
      wall_req => wall_req,
      wall_x(10 downto 0) => wall_x(10 downto 0),
      wall_y(10 downto 0) => wall_y(10 downto 0),
      x(10 downto 0) => x(10 downto 0),
      y(10 downto 0) => y(10 downto 0)
    );
end STRUCTURE;

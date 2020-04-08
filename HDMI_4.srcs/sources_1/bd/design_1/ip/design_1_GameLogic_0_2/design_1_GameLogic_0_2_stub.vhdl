-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr  3 20:39:53 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_GameLogic_0_2/design_1_GameLogic_0_2_stub.vhdl
-- Design      : design_1_GameLogic_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_GameLogic_0_2 is
  Port ( 
    player_tank_req : out STD_LOGIC;
    player_tank_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_tank_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_tank_frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    player_tank_grant : in STD_LOGIC;
    enemy_tank_req : out STD_LOGIC;
    enemy_tank_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    enemy_tank_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    enemy_tank_frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    enemy_tank_grant : in STD_LOGIC;
    player_shell_req : out STD_LOGIC;
    player_shell_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_shell_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_shell_frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    player_shell_grant : in STD_LOGIC;
    enemy_shell_req : out STD_LOGIC;
    enemy_shell_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    enemy_shell_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    enemy_shell_frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    enemy_shell_grant : in STD_LOGIC;
    wall_req : out STD_LOGIC;
    wall_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_frame_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wall_grant : in STD_LOGIC;
    BT_input : in STD_LOGIC_VECTOR ( 4 downto 0 );
    enemy_input : in STD_LOGIC_VECTOR ( 4 downto 0 );
    player_health : out STD_LOGIC_VECTOR ( 7 downto 0 );
    player_tank_x_next : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_tank_y_next : out STD_LOGIC_VECTOR ( 10 downto 0 );
    main_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    init_done : out STD_LOGIC;
    player_collide_wall : out STD_LOGIC;
    player_collide_shell : out STD_LOGIC;
    enemy_collide_wall : out STD_LOGIC;
    enemy_collide_shell : out STD_LOGIC;
    player_shell_collide_wall : out STD_LOGIC;
    enemy_shell_collide_wall : out STD_LOGIC;
    tank_init : out STD_LOGIC;
    player_tank_init_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    player_tank_init_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    mad : out STD_LOGIC_VECTOR ( 287 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end design_1_GameLogic_0_2;

architecture stub of design_1_GameLogic_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "player_tank_req,player_tank_x[10:0],player_tank_y[10:0],player_tank_frame_addr[31:0],player_tank_grant,enemy_tank_req,enemy_tank_x[10:0],enemy_tank_y[10:0],enemy_tank_frame_addr[31:0],enemy_tank_grant,player_shell_req,player_shell_x[10:0],player_shell_y[10:0],player_shell_frame_addr[31:0],player_shell_grant,enemy_shell_req,enemy_shell_x[10:0],enemy_shell_y[10:0],enemy_shell_frame_addr[31:0],enemy_shell_grant,wall_req,wall_x[10:0],wall_y[10:0],wall_frame_addr[31:0],wall_grant,BT_input[4:0],enemy_input[4:0],player_health[7:0],player_tank_x_next[10:0],player_tank_y_next[10:0],main_state[3:0],init_done,player_collide_wall,player_collide_shell,enemy_collide_wall,enemy_collide_shell,player_shell_collide_wall,enemy_shell_collide_wall,tank_init,player_tank_init_x[10:0],player_tank_init_y[10:0],mad[287:0],s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "GameLogic_v2_0,Vivado 2018.1";
begin
end;

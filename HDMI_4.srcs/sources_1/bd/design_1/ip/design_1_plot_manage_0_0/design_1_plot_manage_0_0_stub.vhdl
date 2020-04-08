-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Mar 30 14:36:44 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_plot_manage_0_0 -prefix
--               design_1_plot_manage_0_0_ design_1_plot_manage_0_0_stub.vhdl
-- Design      : design_1_plot_manage_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_plot_manage_0_0 is
  Port ( 
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

end design_1_plot_manage_0_0;

architecture stub of design_1_plot_manage_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,tank_req_0,tank_x_0[10:0],tank_y_0[10:0],tank_grant_0,tank_frame_addr_0[31:0],tank_req_1,tank_x_1[10:0],tank_y_1[10:0],tank_grant_1,tank_frame_addr_1[31:0],shell_req_0,shell_x_0[10:0],shell_y_0[10:0],shell_grant_0,shell_frame_addr_0[31:0],shell_req_1,shell_x_1[10:0],shell_y_1[10:0],shell_grant_1,shell_frame_addr_1[31:0],wall_req,wall_x[10:0],wall_y[10:0],wall_frame_addr[31:0],wall_grant,frame_addr[31:0],frame_buffer[0:0],x[10:0],y[10:0],plot_start,plot_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "plot_manage,Vivado 2018.1";
begin
end;

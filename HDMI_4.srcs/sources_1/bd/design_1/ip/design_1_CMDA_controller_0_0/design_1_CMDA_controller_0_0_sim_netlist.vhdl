-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr  3 19:47:13 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_CMDA_controller_0_0/design_1_CMDA_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_CMDA_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite is
  port (
    axi_lite_rready : out STD_LOGIC;
    axi_lite_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    axi_lite_arvalid : out STD_LOGIC;
    axi_lite_awvalid : out STD_LOGIC;
    axi_lite_wvalid : out STD_LOGIC;
    axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    done : out STD_LOGIC;
    axi_lite_aresetn : in STD_LOGIC;
    axi_lite_rdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_lite_rvalid : in STD_LOGIC;
    start : in STD_LOGIC;
    img_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_aclk : in STD_LOGIC;
    x_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    y_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    frame_buffer_location : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_bvalid : in STD_LOGIC;
    delay_per_line : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_arready : in STD_LOGIC;
    axi_lite_wready : in STD_LOGIC;
    axi_lite_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite : entity is "CMDA_controller_v1_0_axi_lite";
end design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite;

architecture STRUCTURE of design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite is
  signal INIT_AXI_TXN : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal assert_done : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal \^axi_lite_araddr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^axi_lite_arvalid\ : STD_LOGIC;
  signal \^axi_lite_awaddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^axi_lite_awvalid\ : STD_LOGIC;
  signal \^axi_lite_rready\ : STD_LOGIC;
  signal \axi_lite_wdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \axi_lite_wdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^axi_lite_wvalid\ : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \current_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_14_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_15_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_16_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_17_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_18_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_10_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_11_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_14_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_15_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_9_n_0\ : STD_LOGIC;
  signal done_INST_0_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal increament_line_to_line_counter : STD_LOGIC;
  signal increament_scan_line : STD_LOGIC;
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2 : STD_LOGIC;
  signal internal_assert_done : STD_LOGIC;
  signal internal_counter0 : STD_LOGIC;
  signal \internal_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal internal_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \internal_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \internal_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal internal_done_i_1_n_0 : STD_LOGIC;
  signal internal_done_i_2_n_0 : STD_LOGIC;
  signal internal_done_reg_n_0 : STD_LOGIC;
  signal last_read : STD_LOGIC;
  signal last_read_i_1_n_0 : STD_LOGIC;
  signal last_write : STD_LOGIC;
  signal last_write_i_1_n_0 : STD_LOGIC;
  signal \line_to_line_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal line_to_line_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \line_to_line_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \line_to_line_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[14]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[14]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[14]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[18]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[18]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[18]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[18]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter[22]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[22]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[22]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[22]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[26]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[26]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[26]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[26]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_6_n_0\ : STD_LOGIC;
  signal \memory_counter[2]_i_7_n_0\ : STD_LOGIC;
  signal \memory_counter[30]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[30]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_4_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_5_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_6_n_0\ : STD_LOGIC;
  signal \memory_counter[6]_i_7_n_0\ : STD_LOGIC;
  signal memory_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \memory_counter_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \memory_counter_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal next_state2 : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \next_state2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \num_of_row[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row[0]_i_4_n_0\ : STD_LOGIC;
  signal num_of_row_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \num_of_row_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \num_of_row_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal position_in_frame_buffer : STD_LOGIC;
  signal \position_in_frame_buffer0__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal position_in_frame_buffer0_n_100 : STD_LOGIC;
  signal position_in_frame_buffer0_n_101 : STD_LOGIC;
  signal position_in_frame_buffer0_n_102 : STD_LOGIC;
  signal position_in_frame_buffer0_n_103 : STD_LOGIC;
  signal position_in_frame_buffer0_n_104 : STD_LOGIC;
  signal position_in_frame_buffer0_n_105 : STD_LOGIC;
  signal position_in_frame_buffer0_n_81 : STD_LOGIC;
  signal position_in_frame_buffer0_n_82 : STD_LOGIC;
  signal position_in_frame_buffer0_n_83 : STD_LOGIC;
  signal position_in_frame_buffer0_n_84 : STD_LOGIC;
  signal position_in_frame_buffer0_n_85 : STD_LOGIC;
  signal position_in_frame_buffer0_n_86 : STD_LOGIC;
  signal position_in_frame_buffer0_n_87 : STD_LOGIC;
  signal position_in_frame_buffer0_n_88 : STD_LOGIC;
  signal position_in_frame_buffer0_n_89 : STD_LOGIC;
  signal position_in_frame_buffer0_n_90 : STD_LOGIC;
  signal position_in_frame_buffer0_n_91 : STD_LOGIC;
  signal position_in_frame_buffer0_n_92 : STD_LOGIC;
  signal position_in_frame_buffer0_n_93 : STD_LOGIC;
  signal position_in_frame_buffer0_n_94 : STD_LOGIC;
  signal position_in_frame_buffer0_n_95 : STD_LOGIC;
  signal position_in_frame_buffer0_n_96 : STD_LOGIC;
  signal position_in_frame_buffer0_n_97 : STD_LOGIC;
  signal position_in_frame_buffer0_n_98 : STD_LOGIC;
  signal position_in_frame_buffer0_n_99 : STD_LOGIC;
  signal position_in_frame_buffer2_n_100 : STD_LOGIC;
  signal position_in_frame_buffer2_n_101 : STD_LOGIC;
  signal position_in_frame_buffer2_n_102 : STD_LOGIC;
  signal position_in_frame_buffer2_n_103 : STD_LOGIC;
  signal position_in_frame_buffer2_n_104 : STD_LOGIC;
  signal position_in_frame_buffer2_n_105 : STD_LOGIC;
  signal position_in_frame_buffer2_n_106 : STD_LOGIC;
  signal position_in_frame_buffer2_n_107 : STD_LOGIC;
  signal position_in_frame_buffer2_n_108 : STD_LOGIC;
  signal position_in_frame_buffer2_n_109 : STD_LOGIC;
  signal position_in_frame_buffer2_n_110 : STD_LOGIC;
  signal position_in_frame_buffer2_n_111 : STD_LOGIC;
  signal position_in_frame_buffer2_n_112 : STD_LOGIC;
  signal position_in_frame_buffer2_n_113 : STD_LOGIC;
  signal position_in_frame_buffer2_n_114 : STD_LOGIC;
  signal position_in_frame_buffer2_n_115 : STD_LOGIC;
  signal position_in_frame_buffer2_n_116 : STD_LOGIC;
  signal position_in_frame_buffer2_n_117 : STD_LOGIC;
  signal position_in_frame_buffer2_n_118 : STD_LOGIC;
  signal position_in_frame_buffer2_n_119 : STD_LOGIC;
  signal position_in_frame_buffer2_n_120 : STD_LOGIC;
  signal position_in_frame_buffer2_n_121 : STD_LOGIC;
  signal position_in_frame_buffer2_n_122 : STD_LOGIC;
  signal position_in_frame_buffer2_n_123 : STD_LOGIC;
  signal position_in_frame_buffer2_n_124 : STD_LOGIC;
  signal position_in_frame_buffer2_n_125 : STD_LOGIC;
  signal position_in_frame_buffer2_n_126 : STD_LOGIC;
  signal position_in_frame_buffer2_n_127 : STD_LOGIC;
  signal position_in_frame_buffer2_n_128 : STD_LOGIC;
  signal position_in_frame_buffer2_n_129 : STD_LOGIC;
  signal position_in_frame_buffer2_n_130 : STD_LOGIC;
  signal position_in_frame_buffer2_n_131 : STD_LOGIC;
  signal position_in_frame_buffer2_n_132 : STD_LOGIC;
  signal position_in_frame_buffer2_n_133 : STD_LOGIC;
  signal position_in_frame_buffer2_n_134 : STD_LOGIC;
  signal position_in_frame_buffer2_n_135 : STD_LOGIC;
  signal position_in_frame_buffer2_n_136 : STD_LOGIC;
  signal position_in_frame_buffer2_n_137 : STD_LOGIC;
  signal position_in_frame_buffer2_n_138 : STD_LOGIC;
  signal position_in_frame_buffer2_n_139 : STD_LOGIC;
  signal position_in_frame_buffer2_n_140 : STD_LOGIC;
  signal position_in_frame_buffer2_n_141 : STD_LOGIC;
  signal position_in_frame_buffer2_n_142 : STD_LOGIC;
  signal position_in_frame_buffer2_n_143 : STD_LOGIC;
  signal position_in_frame_buffer2_n_144 : STD_LOGIC;
  signal position_in_frame_buffer2_n_145 : STD_LOGIC;
  signal position_in_frame_buffer2_n_146 : STD_LOGIC;
  signal position_in_frame_buffer2_n_147 : STD_LOGIC;
  signal position_in_frame_buffer2_n_148 : STD_LOGIC;
  signal position_in_frame_buffer2_n_149 : STD_LOGIC;
  signal position_in_frame_buffer2_n_150 : STD_LOGIC;
  signal position_in_frame_buffer2_n_151 : STD_LOGIC;
  signal position_in_frame_buffer2_n_152 : STD_LOGIC;
  signal position_in_frame_buffer2_n_153 : STD_LOGIC;
  signal position_in_frame_buffer2_n_93 : STD_LOGIC;
  signal position_in_frame_buffer2_n_94 : STD_LOGIC;
  signal position_in_frame_buffer2_n_95 : STD_LOGIC;
  signal position_in_frame_buffer2_n_96 : STD_LOGIC;
  signal position_in_frame_buffer2_n_97 : STD_LOGIC;
  signal position_in_frame_buffer2_n_98 : STD_LOGIC;
  signal position_in_frame_buffer2_n_99 : STD_LOGIC;
  signal \position_in_frame_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[0]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[0]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[0]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[0]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_10_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_11_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_12_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_7_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[10]_i_9_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_10_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_7_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_8_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[14]_i_9_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_10_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_7_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_8_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[18]_i_9_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[22]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[22]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[22]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[22]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[22]_i_7_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[26]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[26]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[26]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[26]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[30]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[30]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[4]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[4]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[4]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[4]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_10_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_11_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_12_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_3_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_4_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_5_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_7_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer[6]_i_9_n_0\ : STD_LOGIC;
  signal position_in_frame_buffer_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \position_in_frame_buffer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_8_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_8_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_8_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[10]_i_8_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_6_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_6_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[14]_i_6_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_6_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_6_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[18]_i_6_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_6_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_6_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_6_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[22]_i_6_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_6_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_6_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[26]_i_6_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_8_n_1\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_8_n_2\ : STD_LOGIC;
  signal \position_in_frame_buffer_reg[6]_i_8_n_3\ : STD_LOGIC;
  signal read_index : STD_LOGIC;
  signal \read_index[0]_i_1_n_0\ : STD_LOGIC;
  signal read_issued_i_1_n_0 : STD_LOGIC;
  signal read_issued_reg_n_0 : STD_LOGIC;
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal reads_done_reg_n_0 : STD_LOGIC;
  signal start_single_read0 : STD_LOGIC;
  signal start_single_read_i_1_n_0 : STD_LOGIC;
  signal start_single_read_reg_n_0 : STD_LOGIC;
  signal start_single_write0 : STD_LOGIC;
  signal start_single_write_i_1_n_0 : STD_LOGIC;
  signal start_single_write_reg_n_0 : STD_LOGIC;
  signal write_index : STD_LOGIC;
  signal \write_index[0]_i_1_n_0\ : STD_LOGIC;
  signal write_issued_i_1_n_0 : STD_LOGIC;
  signal write_issued_reg_n_0 : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal \NLW_internal_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_to_line_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_memory_counter_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_memory_counter_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_state2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_state2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_num_of_row_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_position_in_frame_buffer0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_position_in_frame_buffer0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_position_in_frame_buffer0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_position_in_frame_buffer0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_position_in_frame_buffer0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_position_in_frame_buffer2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_position_in_frame_buffer2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_position_in_frame_buffer2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_position_in_frame_buffer2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_position_in_frame_buffer2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 13 );
  signal \NLW_position_in_frame_buffer_reg[26]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_position_in_frame_buffer_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_position_in_frame_buffer_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of assert_done_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_awvalid_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_lite_araddr[21]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_lite_araddr[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_lite_awaddr[21]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_lite_awaddr[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_lite_awaddr[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_lite_awaddr[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_lite_awaddr[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_lite_wdata[2]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_lite_wdata[31]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_lite_wdata[3]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_lite_wdata[6]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_lite_wdata[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_lite_wdata[8]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current_state[0]_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_state[0]_i_13\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_state[0]_i_14\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_state[0]_i_17\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_state[0]_i_18\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current_state[0]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \current_state[0]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_state[0]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_state[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_state[1]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current_state[1]_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_state[1]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_state[2]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[2]_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[2]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current_state[2]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[3]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_state[4]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_state[4]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of done_INST_0_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of init_txn_ff_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of internal_done_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of last_read_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of last_write_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \memory_counter[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \memory_counter[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mst_exec_state[1]_i_2\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of position_in_frame_buffer0 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of position_in_frame_buffer2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \position_in_frame_buffer[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair16";
begin
  M_AXI_BREADY <= \^m_axi_bready\;
  axi_lite_araddr(1 downto 0) <= \^axi_lite_araddr\(1 downto 0);
  axi_lite_arvalid <= \^axi_lite_arvalid\;
  axi_lite_awaddr(4 downto 0) <= \^axi_lite_awaddr\(4 downto 0);
  axi_lite_awvalid <= \^axi_lite_awvalid\;
  axi_lite_rready <= \^axi_lite_rready\;
  axi_lite_wvalid <= \^axi_lite_wvalid\;
assert_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(4),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      O => internal_assert_done
    );
assert_done_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => internal_assert_done,
      Q => assert_done,
      R => clear
    );
axi_arvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_read_reg_n_0,
      I1 => \^axi_lite_arvalid\,
      I2 => axi_lite_arready,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^axi_lite_arvalid\,
      R => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      I2 => axi_lite_aresetn,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => axi_lite_awready,
      I2 => \^axi_lite_awvalid\,
      O => axi_awvalid_i_2_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => axi_awvalid_i_2_n_0,
      Q => \^axi_lite_awvalid\,
      R => axi_awvalid_i_1_n_0
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_lite_bvalid,
      I1 => \^m_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => axi_bready0,
      Q => \^m_axi_bready\,
      R => axi_awvalid_i_1_n_0
    );
\axi_lite_araddr[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      I2 => current_state(2),
      I3 => current_state(0),
      O => \^axi_lite_araddr\(1)
    );
\axi_lite_araddr[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(4),
      O => \^axi_lite_araddr\(0)
    );
\axi_lite_awaddr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F1AFE"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(4),
      I4 => current_state(3),
      O => \^axi_lite_awaddr\(4)
    );
\axi_lite_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(2),
      O => \^axi_lite_awaddr\(0)
    );
\axi_lite_awaddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000017C0"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => current_state(4),
      O => \^axi_lite_awaddr\(1)
    );
\axi_lite_awaddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => \^axi_lite_awaddr\(2)
    );
\axi_lite_awaddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005780"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(4),
      O => \^axi_lite_awaddr\(3)
    );
\axi_lite_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(0),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(0),
      O => axi_lite_wdata(0)
    );
\axi_lite_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(10),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(10),
      O => axi_lite_wdata(10)
    );
\axi_lite_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(11),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(11),
      O => axi_lite_wdata(11)
    );
\axi_lite_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(12),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(12),
      O => axi_lite_wdata(12)
    );
\axi_lite_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(13),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(13),
      O => axi_lite_wdata(13)
    );
\axi_lite_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(14),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(14),
      O => axi_lite_wdata(14)
    );
\axi_lite_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(15),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(15),
      O => axi_lite_wdata(15)
    );
\axi_lite_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(16),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(16),
      O => axi_lite_wdata(16)
    );
\axi_lite_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(17),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(17),
      O => axi_lite_wdata(17)
    );
\axi_lite_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(18),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(18),
      O => axi_lite_wdata(18)
    );
\axi_lite_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(19),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(19),
      O => axi_lite_wdata(19)
    );
\axi_lite_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(1),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(1),
      O => axi_lite_wdata(1)
    );
\axi_lite_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(20),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(20),
      O => axi_lite_wdata(20)
    );
\axi_lite_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(21),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(21),
      O => axi_lite_wdata(21)
    );
\axi_lite_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(22),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(22),
      O => axi_lite_wdata(22)
    );
\axi_lite_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(23),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(23),
      O => axi_lite_wdata(23)
    );
\axi_lite_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(24),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(24),
      O => axi_lite_wdata(24)
    );
\axi_lite_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(25),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(25),
      O => axi_lite_wdata(25)
    );
\axi_lite_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(26),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(26),
      O => axi_lite_wdata(26)
    );
\axi_lite_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(27),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(27),
      O => axi_lite_wdata(27)
    );
\axi_lite_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(28),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(28),
      O => axi_lite_wdata(28)
    );
\axi_lite_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(29),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(29),
      O => axi_lite_wdata(29)
    );
\axi_lite_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1404FFFF14040000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      I2 => current_state(2),
      I3 => position_in_frame_buffer_reg(2),
      I4 => \axi_lite_wdata[2]_INST_0_i_1_n_0\,
      I5 => \axi_lite_wdata[2]_INST_0_i_2_n_0\,
      O => axi_lite_wdata(2)
    );
\axi_lite_wdata[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA2"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(4),
      O => \axi_lite_wdata[2]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111000040C840C8"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(2),
      I2 => memory_counter_reg(2),
      I3 => current_state(0),
      I4 => position_in_frame_buffer_reg(2),
      I5 => current_state(3),
      O => \axi_lite_wdata[2]_INST_0_i_2_n_0\
    );
\axi_lite_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(30),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(30),
      O => axi_lite_wdata(30)
    );
\axi_lite_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(31),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(31),
      O => axi_lite_wdata(31)
    );
\axi_lite_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(4),
      O => \axi_lite_wdata[31]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => memory_counter_reg(3),
      I1 => current_state(3),
      I2 => \axi_lite_wdata[8]_INST_0_i_1_n_0\,
      I3 => \axi_lite_wdata[3]_INST_0_i_1_n_0\,
      O => axi_lite_wdata(3)
    );
\axi_lite_wdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000080EE00"
    )
        port map (
      I0 => position_in_frame_buffer_reg(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => current_state(4),
      O => \axi_lite_wdata[3]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(4),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(4),
      O => axi_lite_wdata(4)
    );
\axi_lite_wdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => memory_counter_reg(5),
      I1 => current_state(3),
      I2 => \axi_lite_wdata[8]_INST_0_i_1_n_0\,
      I3 => \axi_lite_wdata[5]_INST_0_i_1_n_0\,
      O => axi_lite_wdata(5)
    );
\axi_lite_wdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000080EE00"
    )
        port map (
      I0 => position_in_frame_buffer_reg(5),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => current_state(4),
      O => \axi_lite_wdata[5]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => memory_counter_reg(6),
      I1 => current_state(3),
      I2 => \axi_lite_wdata[8]_INST_0_i_1_n_0\,
      I3 => \axi_lite_wdata[6]_INST_0_i_1_n_0\,
      O => axi_lite_wdata(6)
    );
\axi_lite_wdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000080EE00"
    )
        port map (
      I0 => position_in_frame_buffer_reg(6),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => current_state(4),
      O => \axi_lite_wdata[6]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(7),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(7),
      O => axi_lite_wdata(7)
    );
\axi_lite_wdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => memory_counter_reg(8),
      I1 => current_state(3),
      I2 => \axi_lite_wdata[8]_INST_0_i_1_n_0\,
      I3 => \axi_lite_wdata[8]_INST_0_i_2_n_0\,
      O => axi_lite_wdata(8)
    );
\axi_lite_wdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040444"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(0),
      O => \axi_lite_wdata[8]_INST_0_i_1_n_0\
    );
\axi_lite_wdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000080EE00"
    )
        port map (
      I0 => position_in_frame_buffer_reg(8),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => current_state(4),
      O => \axi_lite_wdata[8]_INST_0_i_2_n_0\
    );
\axi_lite_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0808A8A00808080"
    )
        port map (
      I0 => \axi_lite_wdata[31]_INST_0_i_1_n_0\,
      I1 => memory_counter_reg(9),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => position_in_frame_buffer_reg(9),
      O => axi_lite_wdata(9)
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^axi_lite_rready\,
      I1 => axi_lite_rvalid,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^axi_lite_rready\,
      R => axi_awvalid_i_1_n_0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^axi_lite_wvalid\,
      I2 => axi_lite_wready,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^axi_lite_wvalid\,
      R => axi_awvalid_i_1_n_0
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF4FFFF"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_state[0]_i_4_n_0\,
      I3 => \current_state[0]_i_5_n_0\,
      I4 => \current_state[0]_i_6_n_0\,
      I5 => \current_state[0]_i_7_n_0\,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => current_state(0),
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => writes_done,
      O => \current_state[0]_i_10_n_0\
    );
\current_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5577777F777777"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => \current_state[3]_i_5_n_0\,
      I3 => axi_lite_rdata(1),
      I4 => current_state(1),
      I5 => \current_state[0]_i_14_n_0\,
      O => \current_state[0]_i_11_n_0\
    );
\current_state[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0FF0000"
    )
        port map (
      I0 => \current_state[3]_i_5_n_0\,
      I1 => axi_lite_rdata(2),
      I2 => current_state(0),
      I3 => \current_state[1]_i_9_n_0\,
      I4 => \current_state[4]_i_4_n_0\,
      I5 => \current_state[0]_i_17_n_0\,
      O => \current_state[0]_i_12_n_0\
    );
\current_state[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(0),
      O => \current_state[0]_i_13_n_0\
    );
\current_state[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      O => \current_state[0]_i_14_n_0\
    );
\current_state[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => writes_done,
      O => \current_state[0]_i_15_n_0\
    );
\current_state[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001011110010"
    )
        port map (
      I0 => \current_state[0]_i_18_n_0\,
      I1 => current_state(2),
      I2 => start,
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => writes_done,
      O => \current_state[0]_i_16_n_0\
    );
\current_state[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      O => \current_state[0]_i_17_n_0\
    );
\current_state[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      O => \current_state[0]_i_18_n_0\
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C00AAFFAAF3"
    )
        port map (
      I0 => writes_done,
      I1 => \current_state[2]_i_12_n_0\,
      I2 => \current_state[2]_i_9_n_0\,
      I3 => current_state(0),
      I4 => \current_state[2]_i_10_n_0\,
      I5 => current_state(1),
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(2),
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA80AAAAAAAA"
    )
        port map (
      I0 => \current_state[0]_i_8_n_0\,
      I1 => next_state2,
      I2 => \current_state[0]_i_9_n_0\,
      I3 => \current_state[0]_i_10_n_0\,
      I4 => done_INST_0_i_1_n_0,
      I5 => \current_state[0]_i_11_n_0\,
      O => \current_state[0]_i_4_n_0\
    );
\current_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAABA"
    )
        port map (
      I0 => \current_state[0]_i_12_n_0\,
      I1 => \current_state[0]_i_13_n_0\,
      I2 => current_state(4),
      I3 => \current_state[0]_i_14_n_0\,
      I4 => \current_state[0]_i_15_n_0\,
      I5 => \current_state[0]_i_16_n_0\,
      O => \current_state[0]_i_5_n_0\
    );
\current_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \current_state[2]_i_12_n_0\,
      I1 => \current_state[2]_i_9_n_0\,
      I2 => current_state(0),
      I3 => \current_state[2]_i_10_n_0\,
      O => \current_state[0]_i_6_n_0\
    );
\current_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBD"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(4),
      I3 => current_state(3),
      O => \current_state[0]_i_7_n_0\
    );
\current_state[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      O => \current_state[0]_i_8_n_0\
    );
\current_state[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => current_state(0),
      O => \current_state[0]_i_9_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => \current_state[2]_i_3_n_0\,
      I1 => \current_state[1]_i_2_n_0\,
      I2 => \current_state[1]_i_3_n_0\,
      I3 => \current_state[1]_i_4_n_0\,
      I4 => \current_state[1]_i_5_n_0\,
      I5 => \current_state[1]_i_6_n_0\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010101000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(4),
      I2 => current_state(3),
      I3 => current_state(1),
      I4 => writes_done,
      I5 => current_state(0),
      O => \current_state[1]_i_10_n_0\
    );
\current_state[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => current_state(2),
      I1 => writes_done,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      I4 => current_state(0),
      I5 => current_state(1),
      O => \current_state[1]_i_11_n_0\
    );
\current_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00045555FFFFFFFF"
    )
        port map (
      I0 => \current_state[1]_i_4_n_0\,
      I1 => current_state(0),
      I2 => axi_lite_rdata(1),
      I3 => \current_state[3]_i_5_n_0\,
      I4 => \current_state[1]_i_9_n_0\,
      I5 => \current_state[0]_i_8_n_0\,
      O => \current_state[1]_i_12_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0007FFFFFFFF"
    )
        port map (
      I0 => writes_done,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => current_state(4),
      I5 => current_state(3),
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554FFFF00000000"
    )
        port map (
      I0 => \current_state[1]_i_7_n_0\,
      I1 => \current_state[4]_i_7_n_0\,
      I2 => \current_state[4]_i_6_n_0\,
      I3 => \current_state[1]_i_8_n_0\,
      I4 => current_state(0),
      I5 => \current_state[1]_i_9_n_0\,
      O => \current_state[1]_i_3_n_0\
    );
\current_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"32FF"
    )
        port map (
      I0 => writes_done,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \current_state[1]_i_4_n_0\
    );
\current_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEAAAAAAAA"
    )
        port map (
      I0 => \current_state[1]_i_10_n_0\,
      I1 => current_state(1),
      I2 => \current_state[2]_i_10_n_0\,
      I3 => \current_state[2]_i_13_n_0\,
      I4 => \current_state[2]_i_12_n_0\,
      I5 => \^axi_lite_awaddr\(2),
      O => \current_state[1]_i_5_n_0\
    );
\current_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEAEEEE"
    )
        port map (
      I0 => \current_state[1]_i_11_n_0\,
      I1 => current_state(1),
      I2 => \current_state[2]_i_10_n_0\,
      I3 => \current_state[2]_i_13_n_0\,
      I4 => \current_state[2]_i_12_n_0\,
      I5 => \current_state[1]_i_12_n_0\,
      O => \current_state[1]_i_6_n_0\
    );
\current_state[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_lite_rdata(2),
      I1 => \^axi_lite_rready\,
      I2 => axi_lite_rvalid,
      O => \current_state[1]_i_7_n_0\
    );
\current_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^axi_lite_rready\,
      I1 => axi_lite_rvalid,
      I2 => axi_lite_rdata(0),
      O => \current_state[1]_i_8_n_0\
    );
\current_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      O => \current_state[1]_i_9_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FDF0F0FFFDF0"
    )
        port map (
      I0 => \current_state[2]_i_2_n_0\,
      I1 => \current_state[2]_i_3_n_0\,
      I2 => \current_state[2]_i_4_n_0\,
      I3 => current_state(3),
      I4 => current_state(4),
      I5 => \current_state[2]_i_5_n_0\,
      O => \current_state[2]_i_1_n_0\
    );
\current_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => internal_counter_reg(25),
      I1 => internal_counter_reg(0),
      I2 => internal_counter_reg(26),
      I3 => internal_counter_reg(1),
      I4 => \current_state[2]_i_15_n_0\,
      I5 => \current_state[2]_i_16_n_0\,
      O => \current_state[2]_i_10_n_0\
    );
\current_state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => axi_lite_rvalid,
      I3 => \^axi_lite_rready\,
      I4 => axi_lite_rdata(1),
      O => \current_state[2]_i_11_n_0\
    );
\current_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \current_state[2]_i_14_n_0\,
      I1 => internal_counter_reg(19),
      I2 => internal_counter_reg(8),
      I3 => internal_counter_reg(18),
      I4 => internal_counter_reg(17),
      I5 => \current_state[2]_i_8_n_0\,
      O => \current_state[2]_i_12_n_0\
    );
\current_state[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => internal_counter_reg(6),
      I1 => internal_counter_reg(7),
      I2 => internal_counter_reg(4),
      I3 => internal_counter_reg(5),
      I4 => current_state(0),
      O => \current_state[2]_i_13_n_0\
    );
\current_state[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => internal_counter_reg(23),
      I1 => internal_counter_reg(22),
      I2 => internal_counter_reg(15),
      I3 => internal_counter_reg(16),
      I4 => internal_counter_reg(20),
      I5 => internal_counter_reg(21),
      O => \current_state[2]_i_14_n_0\
    );
\current_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => internal_counter_reg(27),
      I1 => internal_counter_reg(29),
      I2 => internal_counter_reg(28),
      I3 => internal_counter_reg(3),
      O => \current_state[2]_i_15_n_0\
    );
\current_state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => internal_counter_reg(30),
      I1 => internal_counter_reg(31),
      I2 => internal_counter_reg(24),
      I3 => internal_counter_reg(2),
      O => \current_state[2]_i_16_n_0\
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0800000FFFFFFFF"
    )
        port map (
      I0 => axi_lite_rdata(0),
      I1 => axi_lite_rvalid,
      I2 => \^axi_lite_rready\,
      I3 => axi_lite_rdata(2),
      I4 => \current_state[3]_i_4_n_0\,
      I5 => current_state(2),
      O => \current_state[2]_i_2_n_0\
    );
\current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \current_state[2]_i_6_n_0\,
      I1 => \current_state[2]_i_7_n_0\,
      I2 => current_state(0),
      I3 => \current_state[2]_i_8_n_0\,
      I4 => \current_state[2]_i_9_n_0\,
      I5 => \current_state[2]_i_10_n_0\,
      O => \current_state[2]_i_3_n_0\
    );
\current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006C4C"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => writes_done,
      I4 => current_state(4),
      I5 => current_state(3),
      O => \current_state[2]_i_4_n_0\
    );
\current_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB8BBB"
    )
        port map (
      I0 => \current_state[2]_i_11_n_0\,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \current_state[2]_i_12_n_0\,
      I4 => \current_state[2]_i_13_n_0\,
      I5 => \current_state[2]_i_10_n_0\,
      O => \current_state[2]_i_5_n_0\
    );
\current_state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      O => \current_state[2]_i_6_n_0\
    );
\current_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => internal_counter_reg(17),
      I1 => internal_counter_reg(18),
      I2 => internal_counter_reg(8),
      I3 => internal_counter_reg(19),
      I4 => \current_state[2]_i_14_n_0\,
      O => \current_state[2]_i_7_n_0\
    );
\current_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => internal_counter_reg(10),
      I1 => internal_counter_reg(9),
      I2 => internal_counter_reg(11),
      I3 => internal_counter_reg(13),
      I4 => internal_counter_reg(12),
      I5 => internal_counter_reg(14),
      O => \current_state[2]_i_8_n_0\
    );
\current_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => internal_counter_reg(5),
      I1 => internal_counter_reg(4),
      I2 => internal_counter_reg(7),
      I3 => internal_counter_reg(6),
      O => \current_state[2]_i_9_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D3F3F0C3F0C3F0C"
    )
        port map (
      I0 => \current_state[3]_i_2_n_0\,
      I1 => current_state(4),
      I2 => \current_state[3]_i_3_n_0\,
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => \current_state[3]_i_4_n_0\,
      O => \current_state[3]_i_1_n_0\
    );
\current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAA000000000000"
    )
        port map (
      I0 => axi_lite_rdata(2),
      I1 => \current_state[4]_i_7_n_0\,
      I2 => \current_state[4]_i_6_n_0\,
      I3 => axi_lite_rdata(0),
      I4 => axi_lite_rvalid,
      I5 => \^axi_lite_rready\,
      O => \current_state[3]_i_2_n_0\
    );
\current_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFFFDFFBDFF"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => \current_state[3]_i_5_n_0\,
      I5 => axi_lite_rdata(1),
      O => \current_state[3]_i_3_n_0\
    );
\current_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \current_state[3]_i_4_n_0\
    );
\current_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => axi_lite_rvalid,
      I1 => \^axi_lite_rready\,
      O => \current_state[3]_i_5_n_0\
    );
\current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0000000"
    )
        port map (
      I0 => axi_lite_rdata(2),
      I1 => \current_state[4]_i_2_n_0\,
      I2 => \current_state[4]_i_3_n_0\,
      I3 => \current_state[4]_i_4_n_0\,
      I4 => current_state(2),
      I5 => \current_state[4]_i_5_n_0\,
      O => \current_state[4]_i_1_n_0\
    );
\current_state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => num_of_row_reg(19),
      I1 => num_of_row_reg(16),
      I2 => num_of_row_reg(22),
      I3 => num_of_row_reg(21),
      O => \current_state[4]_i_10_n_0\
    );
\current_state[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => num_of_row_reg(18),
      I1 => num_of_row_reg(17),
      I2 => num_of_row_reg(23),
      I3 => num_of_row_reg(20),
      O => \current_state[4]_i_11_n_0\
    );
\current_state[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => num_of_row_reg(7),
      I1 => num_of_row_reg(2),
      I2 => num_of_row_reg(1),
      I3 => num_of_row_reg(0),
      O => \current_state[4]_i_12_n_0\
    );
\current_state[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => num_of_row_reg(31),
      I1 => num_of_row_reg(28),
      I2 => num_of_row_reg(29),
      I3 => num_of_row_reg(30),
      O => \current_state[4]_i_13_n_0\
    );
\current_state[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => num_of_row_reg(11),
      I1 => num_of_row_reg(8),
      I2 => num_of_row_reg(14),
      I3 => num_of_row_reg(13),
      O => \current_state[4]_i_14_n_0\
    );
\current_state[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => num_of_row_reg(10),
      I1 => num_of_row_reg(9),
      I2 => num_of_row_reg(15),
      I3 => num_of_row_reg(12),
      O => \current_state[4]_i_15_n_0\
    );
\current_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_state[4]_i_6_n_0\,
      I1 => \current_state[4]_i_7_n_0\,
      O => \current_state[4]_i_2_n_0\
    );
\current_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800000080000000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => axi_lite_rdata(2),
      I3 => \^axi_lite_rready\,
      I4 => axi_lite_rvalid,
      I5 => axi_lite_rdata(0),
      O => \current_state[4]_i_3_n_0\
    );
\current_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      O => \current_state[4]_i_4_n_0\
    );
\current_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF7"
    )
        port map (
      I0 => internal_done_i_2_n_0,
      I1 => next_state2,
      I2 => current_state(0),
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      I5 => \current_state[4]_i_8_n_0\,
      O => \current_state[4]_i_5_n_0\
    );
\current_state[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => num_of_row_reg(25),
      I1 => num_of_row_reg(26),
      I2 => num_of_row_reg(5),
      I3 => num_of_row_reg(4),
      I4 => \current_state[4]_i_9_n_0\,
      O => \current_state[4]_i_6_n_0\
    );
\current_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \current_state[4]_i_10_n_0\,
      I1 => \current_state[4]_i_11_n_0\,
      I2 => \current_state[4]_i_12_n_0\,
      I3 => \current_state[4]_i_13_n_0\,
      I4 => \current_state[4]_i_14_n_0\,
      I5 => \current_state[4]_i_15_n_0\,
      O => \current_state[4]_i_7_n_0\
    );
\current_state[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDD55D"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(2),
      O => \current_state[4]_i_8_n_0\
    );
\current_state[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => num_of_row_reg(6),
      I1 => num_of_row_reg(3),
      I2 => num_of_row_reg(27),
      I3 => num_of_row_reg(24),
      O => \current_state[4]_i_9_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => clear
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => clear
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \current_state[2]_i_1_n_0\,
      Q => current_state(2),
      R => clear
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \current_state[3]_i_1_n_0\,
      Q => current_state(3),
      R => clear
    );
\current_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \current_state[4]_i_1_n_0\,
      Q => current_state(4),
      R => clear
    );
done_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => assert_done,
      I1 => current_state(4),
      I2 => current_state(0),
      I3 => done_INST_0_i_1_n_0,
      I4 => current_state(3),
      I5 => internal_done_reg_n_0,
      O => done
    );
done_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      O => done_INST_0_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(22),
      I1 => line_to_line_counter_reg(22),
      I2 => delay_per_line(21),
      I3 => line_to_line_counter_reg(21),
      I4 => line_to_line_counter_reg(23),
      I5 => delay_per_line(23),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(20),
      I1 => line_to_line_counter_reg(20),
      I2 => delay_per_line(18),
      I3 => line_to_line_counter_reg(18),
      I4 => line_to_line_counter_reg(19),
      I5 => delay_per_line(19),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(17),
      I1 => line_to_line_counter_reg(17),
      I2 => delay_per_line(15),
      I3 => line_to_line_counter_reg(15),
      I4 => line_to_line_counter_reg(16),
      I5 => delay_per_line(16),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(12),
      I1 => line_to_line_counter_reg(12),
      I2 => delay_per_line(13),
      I3 => line_to_line_counter_reg(13),
      I4 => line_to_line_counter_reg(14),
      I5 => delay_per_line(14),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_to_line_counter_reg(31),
      I1 => delay_per_line(31),
      I2 => line_to_line_counter_reg(30),
      I3 => delay_per_line(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(27),
      I1 => line_to_line_counter_reg(27),
      I2 => delay_per_line(28),
      I3 => line_to_line_counter_reg(28),
      I4 => line_to_line_counter_reg(29),
      I5 => delay_per_line(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(24),
      I1 => line_to_line_counter_reg(24),
      I2 => delay_per_line(25),
      I3 => line_to_line_counter_reg(25),
      I4 => line_to_line_counter_reg(26),
      I5 => delay_per_line(26),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(9),
      I1 => line_to_line_counter_reg(9),
      I2 => delay_per_line(10),
      I3 => line_to_line_counter_reg(10),
      I4 => line_to_line_counter_reg(11),
      I5 => delay_per_line(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(6),
      I1 => line_to_line_counter_reg(6),
      I2 => delay_per_line(7),
      I3 => line_to_line_counter_reg(7),
      I4 => line_to_line_counter_reg(8),
      I5 => delay_per_line(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_per_line(3),
      I1 => line_to_line_counter_reg(3),
      I2 => delay_per_line(4),
      I3 => line_to_line_counter_reg(4),
      I4 => line_to_line_counter_reg(5),
      I5 => delay_per_line(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_to_line_counter_reg(0),
      I1 => delay_per_line(0),
      I2 => delay_per_line(2),
      I3 => line_to_line_counter_reg(2),
      I4 => delay_per_line(1),
      I5 => line_to_line_counter_reg(1),
      O => \i__carry_i_4_n_0\
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2,
      R => clear
    );
init_txn_ff_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_lite_aresetn,
      O => clear
    );
init_txn_ff_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010160"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(4),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => current_state(0),
      O => INIT_AXI_TXN
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => INIT_AXI_TXN,
      Q => init_txn_ff,
      R => clear
    );
\internal_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57555555557D5755"
    )
        port map (
      I0 => axi_lite_aresetn,
      I1 => current_state(4),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => current_state(0),
      O => internal_counter0
    );
\internal_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => internal_counter_reg(0),
      O => \internal_counter[0]_i_3_n_0\
    );
\internal_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[0]_i_2_n_7\,
      Q => internal_counter_reg(0),
      R => internal_counter0
    );
\internal_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \internal_counter_reg[0]_i_2_n_0\,
      CO(2) => \internal_counter_reg[0]_i_2_n_1\,
      CO(1) => \internal_counter_reg[0]_i_2_n_2\,
      CO(0) => \internal_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \internal_counter_reg[0]_i_2_n_4\,
      O(2) => \internal_counter_reg[0]_i_2_n_5\,
      O(1) => \internal_counter_reg[0]_i_2_n_6\,
      O(0) => \internal_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => internal_counter_reg(3 downto 1),
      S(0) => \internal_counter[0]_i_3_n_0\
    );
\internal_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[8]_i_1_n_5\,
      Q => internal_counter_reg(10),
      R => internal_counter0
    );
\internal_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[8]_i_1_n_4\,
      Q => internal_counter_reg(11),
      R => internal_counter0
    );
\internal_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[12]_i_1_n_7\,
      Q => internal_counter_reg(12),
      R => internal_counter0
    );
\internal_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[8]_i_1_n_0\,
      CO(3) => \internal_counter_reg[12]_i_1_n_0\,
      CO(2) => \internal_counter_reg[12]_i_1_n_1\,
      CO(1) => \internal_counter_reg[12]_i_1_n_2\,
      CO(0) => \internal_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[12]_i_1_n_4\,
      O(2) => \internal_counter_reg[12]_i_1_n_5\,
      O(1) => \internal_counter_reg[12]_i_1_n_6\,
      O(0) => \internal_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(15 downto 12)
    );
\internal_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[12]_i_1_n_6\,
      Q => internal_counter_reg(13),
      R => internal_counter0
    );
\internal_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[12]_i_1_n_5\,
      Q => internal_counter_reg(14),
      R => internal_counter0
    );
\internal_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[12]_i_1_n_4\,
      Q => internal_counter_reg(15),
      R => internal_counter0
    );
\internal_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[16]_i_1_n_7\,
      Q => internal_counter_reg(16),
      R => internal_counter0
    );
\internal_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[12]_i_1_n_0\,
      CO(3) => \internal_counter_reg[16]_i_1_n_0\,
      CO(2) => \internal_counter_reg[16]_i_1_n_1\,
      CO(1) => \internal_counter_reg[16]_i_1_n_2\,
      CO(0) => \internal_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[16]_i_1_n_4\,
      O(2) => \internal_counter_reg[16]_i_1_n_5\,
      O(1) => \internal_counter_reg[16]_i_1_n_6\,
      O(0) => \internal_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(19 downto 16)
    );
\internal_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[16]_i_1_n_6\,
      Q => internal_counter_reg(17),
      R => internal_counter0
    );
\internal_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[16]_i_1_n_5\,
      Q => internal_counter_reg(18),
      R => internal_counter0
    );
\internal_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[16]_i_1_n_4\,
      Q => internal_counter_reg(19),
      R => internal_counter0
    );
\internal_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[0]_i_2_n_6\,
      Q => internal_counter_reg(1),
      R => internal_counter0
    );
\internal_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[20]_i_1_n_7\,
      Q => internal_counter_reg(20),
      R => internal_counter0
    );
\internal_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[16]_i_1_n_0\,
      CO(3) => \internal_counter_reg[20]_i_1_n_0\,
      CO(2) => \internal_counter_reg[20]_i_1_n_1\,
      CO(1) => \internal_counter_reg[20]_i_1_n_2\,
      CO(0) => \internal_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[20]_i_1_n_4\,
      O(2) => \internal_counter_reg[20]_i_1_n_5\,
      O(1) => \internal_counter_reg[20]_i_1_n_6\,
      O(0) => \internal_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(23 downto 20)
    );
\internal_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[20]_i_1_n_6\,
      Q => internal_counter_reg(21),
      R => internal_counter0
    );
\internal_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[20]_i_1_n_5\,
      Q => internal_counter_reg(22),
      R => internal_counter0
    );
\internal_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[20]_i_1_n_4\,
      Q => internal_counter_reg(23),
      R => internal_counter0
    );
\internal_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[24]_i_1_n_7\,
      Q => internal_counter_reg(24),
      R => internal_counter0
    );
\internal_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[20]_i_1_n_0\,
      CO(3) => \internal_counter_reg[24]_i_1_n_0\,
      CO(2) => \internal_counter_reg[24]_i_1_n_1\,
      CO(1) => \internal_counter_reg[24]_i_1_n_2\,
      CO(0) => \internal_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[24]_i_1_n_4\,
      O(2) => \internal_counter_reg[24]_i_1_n_5\,
      O(1) => \internal_counter_reg[24]_i_1_n_6\,
      O(0) => \internal_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(27 downto 24)
    );
\internal_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[24]_i_1_n_6\,
      Q => internal_counter_reg(25),
      R => internal_counter0
    );
\internal_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[24]_i_1_n_5\,
      Q => internal_counter_reg(26),
      R => internal_counter0
    );
\internal_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[24]_i_1_n_4\,
      Q => internal_counter_reg(27),
      R => internal_counter0
    );
\internal_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[28]_i_1_n_7\,
      Q => internal_counter_reg(28),
      R => internal_counter0
    );
\internal_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_internal_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \internal_counter_reg[28]_i_1_n_1\,
      CO(1) => \internal_counter_reg[28]_i_1_n_2\,
      CO(0) => \internal_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[28]_i_1_n_4\,
      O(2) => \internal_counter_reg[28]_i_1_n_5\,
      O(1) => \internal_counter_reg[28]_i_1_n_6\,
      O(0) => \internal_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(31 downto 28)
    );
\internal_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[28]_i_1_n_6\,
      Q => internal_counter_reg(29),
      R => internal_counter0
    );
\internal_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[0]_i_2_n_5\,
      Q => internal_counter_reg(2),
      R => internal_counter0
    );
\internal_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[28]_i_1_n_5\,
      Q => internal_counter_reg(30),
      R => internal_counter0
    );
\internal_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[28]_i_1_n_4\,
      Q => internal_counter_reg(31),
      R => internal_counter0
    );
\internal_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[0]_i_2_n_4\,
      Q => internal_counter_reg(3),
      R => internal_counter0
    );
\internal_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[4]_i_1_n_7\,
      Q => internal_counter_reg(4),
      R => internal_counter0
    );
\internal_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[0]_i_2_n_0\,
      CO(3) => \internal_counter_reg[4]_i_1_n_0\,
      CO(2) => \internal_counter_reg[4]_i_1_n_1\,
      CO(1) => \internal_counter_reg[4]_i_1_n_2\,
      CO(0) => \internal_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[4]_i_1_n_4\,
      O(2) => \internal_counter_reg[4]_i_1_n_5\,
      O(1) => \internal_counter_reg[4]_i_1_n_6\,
      O(0) => \internal_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(7 downto 4)
    );
\internal_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[4]_i_1_n_6\,
      Q => internal_counter_reg(5),
      R => internal_counter0
    );
\internal_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[4]_i_1_n_5\,
      Q => internal_counter_reg(6),
      R => internal_counter0
    );
\internal_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[4]_i_1_n_4\,
      Q => internal_counter_reg(7),
      R => internal_counter0
    );
\internal_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[8]_i_1_n_7\,
      Q => internal_counter_reg(8),
      R => internal_counter0
    );
\internal_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \internal_counter_reg[4]_i_1_n_0\,
      CO(3) => \internal_counter_reg[8]_i_1_n_0\,
      CO(2) => \internal_counter_reg[8]_i_1_n_1\,
      CO(1) => \internal_counter_reg[8]_i_1_n_2\,
      CO(0) => \internal_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \internal_counter_reg[8]_i_1_n_4\,
      O(2) => \internal_counter_reg[8]_i_1_n_5\,
      O(1) => \internal_counter_reg[8]_i_1_n_6\,
      O(0) => \internal_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => internal_counter_reg(11 downto 8)
    );
\internal_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \internal_counter_reg[8]_i_1_n_6\,
      Q => internal_counter_reg(9),
      R => internal_counter0
    );
internal_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF000000FFFFFFFF"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(0),
      I2 => internal_done_i_2_n_0,
      I3 => axi_lite_aresetn,
      I4 => internal_done_reg_n_0,
      I5 => \current_state[4]_i_2_n_0\,
      O => internal_done_i_1_n_0
    );
internal_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      O => internal_done_i_2_n_0
    );
internal_done_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => internal_done_i_1_n_0,
      Q => internal_done_reg_n_0,
      R => '0'
    );
last_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => read_index,
      I1 => axi_lite_arready,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      I4 => last_read,
      O => last_read_i_1_n_0
    );
last_read_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => last_read_i_1_n_0,
      Q => last_read,
      R => axi_awvalid_i_1_n_0
    );
last_write_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => write_index,
      I1 => axi_lite_awready,
      I2 => last_write,
      O => last_write_i_1_n_0
    );
last_write_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => last_write_i_1_n_0,
      Q => last_write,
      R => axi_awvalid_i_1_n_0
    );
\line_to_line_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => axi_lite_aresetn,
      O => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(4),
      I4 => current_state(0),
      O => increament_line_to_line_counter
    );
\line_to_line_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_to_line_counter_reg(0),
      O => \line_to_line_counter[0]_i_4_n_0\
    );
\line_to_line_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[0]_i_3_n_7\,
      Q => line_to_line_counter_reg(0),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_to_line_counter_reg[0]_i_3_n_0\,
      CO(2) => \line_to_line_counter_reg[0]_i_3_n_1\,
      CO(1) => \line_to_line_counter_reg[0]_i_3_n_2\,
      CO(0) => \line_to_line_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \line_to_line_counter_reg[0]_i_3_n_4\,
      O(2) => \line_to_line_counter_reg[0]_i_3_n_5\,
      O(1) => \line_to_line_counter_reg[0]_i_3_n_6\,
      O(0) => \line_to_line_counter_reg[0]_i_3_n_7\,
      S(3 downto 1) => line_to_line_counter_reg(3 downto 1),
      S(0) => \line_to_line_counter[0]_i_4_n_0\
    );
\line_to_line_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[8]_i_1_n_5\,
      Q => line_to_line_counter_reg(10),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[8]_i_1_n_4\,
      Q => line_to_line_counter_reg(11),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[12]_i_1_n_7\,
      Q => line_to_line_counter_reg(12),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[8]_i_1_n_0\,
      CO(3) => \line_to_line_counter_reg[12]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[12]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[12]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[12]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[12]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[12]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(15 downto 12)
    );
\line_to_line_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[12]_i_1_n_6\,
      Q => line_to_line_counter_reg(13),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[12]_i_1_n_5\,
      Q => line_to_line_counter_reg(14),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[12]_i_1_n_4\,
      Q => line_to_line_counter_reg(15),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[16]_i_1_n_7\,
      Q => line_to_line_counter_reg(16),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[12]_i_1_n_0\,
      CO(3) => \line_to_line_counter_reg[16]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[16]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[16]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[16]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[16]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[16]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(19 downto 16)
    );
\line_to_line_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[16]_i_1_n_6\,
      Q => line_to_line_counter_reg(17),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[16]_i_1_n_5\,
      Q => line_to_line_counter_reg(18),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[16]_i_1_n_4\,
      Q => line_to_line_counter_reg(19),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[0]_i_3_n_6\,
      Q => line_to_line_counter_reg(1),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[20]_i_1_n_7\,
      Q => line_to_line_counter_reg(20),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[16]_i_1_n_0\,
      CO(3) => \line_to_line_counter_reg[20]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[20]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[20]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[20]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[20]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[20]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(23 downto 20)
    );
\line_to_line_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[20]_i_1_n_6\,
      Q => line_to_line_counter_reg(21),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[20]_i_1_n_5\,
      Q => line_to_line_counter_reg(22),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[20]_i_1_n_4\,
      Q => line_to_line_counter_reg(23),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[24]_i_1_n_7\,
      Q => line_to_line_counter_reg(24),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[20]_i_1_n_0\,
      CO(3) => \line_to_line_counter_reg[24]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[24]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[24]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[24]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[24]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[24]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(27 downto 24)
    );
\line_to_line_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[24]_i_1_n_6\,
      Q => line_to_line_counter_reg(25),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[24]_i_1_n_5\,
      Q => line_to_line_counter_reg(26),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[24]_i_1_n_4\,
      Q => line_to_line_counter_reg(27),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[28]_i_1_n_7\,
      Q => line_to_line_counter_reg(28),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_line_to_line_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \line_to_line_counter_reg[28]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[28]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[28]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[28]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[28]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(31 downto 28)
    );
\line_to_line_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[28]_i_1_n_6\,
      Q => line_to_line_counter_reg(29),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[0]_i_3_n_5\,
      Q => line_to_line_counter_reg(2),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[28]_i_1_n_5\,
      Q => line_to_line_counter_reg(30),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[28]_i_1_n_4\,
      Q => line_to_line_counter_reg(31),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[0]_i_3_n_4\,
      Q => line_to_line_counter_reg(3),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[4]_i_1_n_7\,
      Q => line_to_line_counter_reg(4),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[0]_i_3_n_0\,
      CO(3) => \line_to_line_counter_reg[4]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[4]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[4]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[4]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[4]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[4]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(7 downto 4)
    );
\line_to_line_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[4]_i_1_n_6\,
      Q => line_to_line_counter_reg(5),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[4]_i_1_n_5\,
      Q => line_to_line_counter_reg(6),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[4]_i_1_n_4\,
      Q => line_to_line_counter_reg(7),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[8]_i_1_n_7\,
      Q => line_to_line_counter_reg(8),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\line_to_line_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_to_line_counter_reg[4]_i_1_n_0\,
      CO(3) => \line_to_line_counter_reg[8]_i_1_n_0\,
      CO(2) => \line_to_line_counter_reg[8]_i_1_n_1\,
      CO(1) => \line_to_line_counter_reg[8]_i_1_n_2\,
      CO(0) => \line_to_line_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_to_line_counter_reg[8]_i_1_n_4\,
      O(2) => \line_to_line_counter_reg[8]_i_1_n_5\,
      O(1) => \line_to_line_counter_reg[8]_i_1_n_6\,
      O(0) => \line_to_line_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => line_to_line_counter_reg(11 downto 8)
    );
\line_to_line_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_line_to_line_counter,
      D => \line_to_line_counter_reg[8]_i_1_n_6\,
      Q => line_to_line_counter_reg(9),
      R => \line_to_line_counter[0]_i_1_n_0\
    );
\memory_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => start,
      I1 => current_state(0),
      I2 => current_state(4),
      I3 => current_state(3),
      I4 => current_state(1),
      I5 => current_state(2),
      O => position_in_frame_buffer
    );
\memory_counter[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(0),
      I1 => start,
      I2 => memory_counter_reg(0),
      O => \memory_counter[0]_i_2_n_0\
    );
\memory_counter[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(13),
      I1 => start,
      I2 => memory_counter_reg(13),
      O => \memory_counter[10]_i_2_n_0\
    );
\memory_counter[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(12),
      I1 => start,
      I2 => memory_counter_reg(12),
      O => \memory_counter[10]_i_3_n_0\
    );
\memory_counter[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(11),
      I1 => start,
      I2 => memory_counter_reg(11),
      O => \memory_counter[10]_i_4_n_0\
    );
\memory_counter[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(10),
      I1 => start,
      I2 => memory_counter_reg(10),
      O => \memory_counter[10]_i_5_n_0\
    );
\memory_counter[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(17),
      I1 => start,
      I2 => memory_counter_reg(17),
      O => \memory_counter[14]_i_2_n_0\
    );
\memory_counter[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(16),
      I1 => start,
      I2 => memory_counter_reg(16),
      O => \memory_counter[14]_i_3_n_0\
    );
\memory_counter[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(15),
      I1 => start,
      I2 => memory_counter_reg(15),
      O => \memory_counter[14]_i_4_n_0\
    );
\memory_counter[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(14),
      I1 => start,
      I2 => memory_counter_reg(14),
      O => \memory_counter[14]_i_5_n_0\
    );
\memory_counter[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(21),
      I1 => start,
      I2 => memory_counter_reg(21),
      O => \memory_counter[18]_i_2_n_0\
    );
\memory_counter[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(20),
      I1 => start,
      I2 => memory_counter_reg(20),
      O => \memory_counter[18]_i_3_n_0\
    );
\memory_counter[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(19),
      I1 => start,
      I2 => memory_counter_reg(19),
      O => \memory_counter[18]_i_4_n_0\
    );
\memory_counter[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(18),
      I1 => start,
      I2 => memory_counter_reg(18),
      O => \memory_counter[18]_i_5_n_0\
    );
\memory_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(1),
      I1 => start,
      I2 => memory_counter_reg(1),
      O => \memory_counter[1]_i_1_n_0\
    );
\memory_counter[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(25),
      I1 => start,
      I2 => memory_counter_reg(25),
      O => \memory_counter[22]_i_2_n_0\
    );
\memory_counter[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(24),
      I1 => start,
      I2 => memory_counter_reg(24),
      O => \memory_counter[22]_i_3_n_0\
    );
\memory_counter[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(23),
      I1 => start,
      I2 => memory_counter_reg(23),
      O => \memory_counter[22]_i_4_n_0\
    );
\memory_counter[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(22),
      I1 => start,
      I2 => memory_counter_reg(22),
      O => \memory_counter[22]_i_5_n_0\
    );
\memory_counter[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(29),
      I1 => start,
      I2 => memory_counter_reg(29),
      O => \memory_counter[26]_i_2_n_0\
    );
\memory_counter[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(28),
      I1 => start,
      I2 => memory_counter_reg(28),
      O => \memory_counter[26]_i_3_n_0\
    );
\memory_counter[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(27),
      I1 => start,
      I2 => memory_counter_reg(27),
      O => \memory_counter[26]_i_4_n_0\
    );
\memory_counter[26]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(26),
      I1 => start,
      I2 => memory_counter_reg(26),
      O => \memory_counter[26]_i_5_n_0\
    );
\memory_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(5),
      I1 => start,
      I2 => memory_counter_reg(5),
      O => \memory_counter[2]_i_2_n_0\
    );
\memory_counter[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(3),
      I1 => start,
      I2 => memory_counter_reg(3),
      O => \memory_counter[2]_i_3_n_0\
    );
\memory_counter[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => memory_counter_reg(5),
      I1 => img_addr(5),
      I2 => start,
      O => \memory_counter[2]_i_4_n_0\
    );
\memory_counter[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(4),
      I1 => start,
      I2 => memory_counter_reg(4),
      O => \memory_counter[2]_i_5_n_0\
    );
\memory_counter[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => memory_counter_reg(3),
      I1 => img_addr(3),
      I2 => start,
      O => \memory_counter[2]_i_6_n_0\
    );
\memory_counter[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(2),
      I1 => start,
      I2 => memory_counter_reg(2),
      O => \memory_counter[2]_i_7_n_0\
    );
\memory_counter[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(31),
      I1 => start,
      I2 => memory_counter_reg(31),
      O => \memory_counter[30]_i_2_n_0\
    );
\memory_counter[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(30),
      I1 => start,
      I2 => memory_counter_reg(30),
      O => \memory_counter[30]_i_3_n_0\
    );
\memory_counter[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(8),
      I1 => start,
      I2 => memory_counter_reg(8),
      O => \memory_counter[6]_i_2_n_0\
    );
\memory_counter[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(6),
      I1 => start,
      I2 => memory_counter_reg(6),
      O => \memory_counter[6]_i_3_n_0\
    );
\memory_counter[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(9),
      I1 => start,
      I2 => memory_counter_reg(9),
      O => \memory_counter[6]_i_4_n_0\
    );
\memory_counter[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => memory_counter_reg(8),
      I1 => img_addr(8),
      I2 => start,
      O => \memory_counter[6]_i_5_n_0\
    );
\memory_counter[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => img_addr(7),
      I1 => start,
      I2 => memory_counter_reg(7),
      O => \memory_counter[6]_i_6_n_0\
    );
\memory_counter[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => memory_counter_reg(6),
      I1 => img_addr(6),
      I2 => start,
      O => \memory_counter[6]_i_7_n_0\
    );
\memory_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter[0]_i_2_n_0\,
      Q => memory_counter_reg(0),
      R => clear
    );
\memory_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[10]_i_1_n_7\,
      Q => memory_counter_reg(10),
      R => clear
    );
\memory_counter_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[6]_i_1_n_0\,
      CO(3) => \memory_counter_reg[10]_i_1_n_0\,
      CO(2) => \memory_counter_reg[10]_i_1_n_1\,
      CO(1) => \memory_counter_reg[10]_i_1_n_2\,
      CO(0) => \memory_counter_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memory_counter_reg[10]_i_1_n_4\,
      O(2) => \memory_counter_reg[10]_i_1_n_5\,
      O(1) => \memory_counter_reg[10]_i_1_n_6\,
      O(0) => \memory_counter_reg[10]_i_1_n_7\,
      S(3) => \memory_counter[10]_i_2_n_0\,
      S(2) => \memory_counter[10]_i_3_n_0\,
      S(1) => \memory_counter[10]_i_4_n_0\,
      S(0) => \memory_counter[10]_i_5_n_0\
    );
\memory_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[10]_i_1_n_6\,
      Q => memory_counter_reg(11),
      R => clear
    );
\memory_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[10]_i_1_n_5\,
      Q => memory_counter_reg(12),
      R => clear
    );
\memory_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[10]_i_1_n_4\,
      Q => memory_counter_reg(13),
      R => clear
    );
\memory_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[14]_i_1_n_7\,
      Q => memory_counter_reg(14),
      R => clear
    );
\memory_counter_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[10]_i_1_n_0\,
      CO(3) => \memory_counter_reg[14]_i_1_n_0\,
      CO(2) => \memory_counter_reg[14]_i_1_n_1\,
      CO(1) => \memory_counter_reg[14]_i_1_n_2\,
      CO(0) => \memory_counter_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memory_counter_reg[14]_i_1_n_4\,
      O(2) => \memory_counter_reg[14]_i_1_n_5\,
      O(1) => \memory_counter_reg[14]_i_1_n_6\,
      O(0) => \memory_counter_reg[14]_i_1_n_7\,
      S(3) => \memory_counter[14]_i_2_n_0\,
      S(2) => \memory_counter[14]_i_3_n_0\,
      S(1) => \memory_counter[14]_i_4_n_0\,
      S(0) => \memory_counter[14]_i_5_n_0\
    );
\memory_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[14]_i_1_n_6\,
      Q => memory_counter_reg(15),
      R => clear
    );
\memory_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[14]_i_1_n_5\,
      Q => memory_counter_reg(16),
      R => clear
    );
\memory_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[14]_i_1_n_4\,
      Q => memory_counter_reg(17),
      R => clear
    );
\memory_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[18]_i_1_n_7\,
      Q => memory_counter_reg(18),
      R => clear
    );
\memory_counter_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[14]_i_1_n_0\,
      CO(3) => \memory_counter_reg[18]_i_1_n_0\,
      CO(2) => \memory_counter_reg[18]_i_1_n_1\,
      CO(1) => \memory_counter_reg[18]_i_1_n_2\,
      CO(0) => \memory_counter_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memory_counter_reg[18]_i_1_n_4\,
      O(2) => \memory_counter_reg[18]_i_1_n_5\,
      O(1) => \memory_counter_reg[18]_i_1_n_6\,
      O(0) => \memory_counter_reg[18]_i_1_n_7\,
      S(3) => \memory_counter[18]_i_2_n_0\,
      S(2) => \memory_counter[18]_i_3_n_0\,
      S(1) => \memory_counter[18]_i_4_n_0\,
      S(0) => \memory_counter[18]_i_5_n_0\
    );
\memory_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[18]_i_1_n_6\,
      Q => memory_counter_reg(19),
      R => clear
    );
\memory_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter[1]_i_1_n_0\,
      Q => memory_counter_reg(1),
      R => clear
    );
\memory_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[18]_i_1_n_5\,
      Q => memory_counter_reg(20),
      R => clear
    );
\memory_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[18]_i_1_n_4\,
      Q => memory_counter_reg(21),
      R => clear
    );
\memory_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[22]_i_1_n_7\,
      Q => memory_counter_reg(22),
      R => clear
    );
\memory_counter_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[18]_i_1_n_0\,
      CO(3) => \memory_counter_reg[22]_i_1_n_0\,
      CO(2) => \memory_counter_reg[22]_i_1_n_1\,
      CO(1) => \memory_counter_reg[22]_i_1_n_2\,
      CO(0) => \memory_counter_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memory_counter_reg[22]_i_1_n_4\,
      O(2) => \memory_counter_reg[22]_i_1_n_5\,
      O(1) => \memory_counter_reg[22]_i_1_n_6\,
      O(0) => \memory_counter_reg[22]_i_1_n_7\,
      S(3) => \memory_counter[22]_i_2_n_0\,
      S(2) => \memory_counter[22]_i_3_n_0\,
      S(1) => \memory_counter[22]_i_4_n_0\,
      S(0) => \memory_counter[22]_i_5_n_0\
    );
\memory_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[22]_i_1_n_6\,
      Q => memory_counter_reg(23),
      R => clear
    );
\memory_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[22]_i_1_n_5\,
      Q => memory_counter_reg(24),
      R => clear
    );
\memory_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[22]_i_1_n_4\,
      Q => memory_counter_reg(25),
      R => clear
    );
\memory_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[26]_i_1_n_7\,
      Q => memory_counter_reg(26),
      R => clear
    );
\memory_counter_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[22]_i_1_n_0\,
      CO(3) => \memory_counter_reg[26]_i_1_n_0\,
      CO(2) => \memory_counter_reg[26]_i_1_n_1\,
      CO(1) => \memory_counter_reg[26]_i_1_n_2\,
      CO(0) => \memory_counter_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memory_counter_reg[26]_i_1_n_4\,
      O(2) => \memory_counter_reg[26]_i_1_n_5\,
      O(1) => \memory_counter_reg[26]_i_1_n_6\,
      O(0) => \memory_counter_reg[26]_i_1_n_7\,
      S(3) => \memory_counter[26]_i_2_n_0\,
      S(2) => \memory_counter[26]_i_3_n_0\,
      S(1) => \memory_counter[26]_i_4_n_0\,
      S(0) => \memory_counter[26]_i_5_n_0\
    );
\memory_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[26]_i_1_n_6\,
      Q => memory_counter_reg(27),
      R => clear
    );
\memory_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[26]_i_1_n_5\,
      Q => memory_counter_reg(28),
      R => clear
    );
\memory_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[26]_i_1_n_4\,
      Q => memory_counter_reg(29),
      R => clear
    );
\memory_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[2]_i_1_n_7\,
      Q => memory_counter_reg(2),
      R => clear
    );
\memory_counter_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \memory_counter_reg[2]_i_1_n_0\,
      CO(2) => \memory_counter_reg[2]_i_1_n_1\,
      CO(1) => \memory_counter_reg[2]_i_1_n_2\,
      CO(0) => \memory_counter_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \memory_counter[2]_i_2_n_0\,
      DI(2) => '0',
      DI(1) => \memory_counter[2]_i_3_n_0\,
      DI(0) => '0',
      O(3) => \memory_counter_reg[2]_i_1_n_4\,
      O(2) => \memory_counter_reg[2]_i_1_n_5\,
      O(1) => \memory_counter_reg[2]_i_1_n_6\,
      O(0) => \memory_counter_reg[2]_i_1_n_7\,
      S(3) => \memory_counter[2]_i_4_n_0\,
      S(2) => \memory_counter[2]_i_5_n_0\,
      S(1) => \memory_counter[2]_i_6_n_0\,
      S(0) => \memory_counter[2]_i_7_n_0\
    );
\memory_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[30]_i_1_n_7\,
      Q => memory_counter_reg(30),
      R => clear
    );
\memory_counter_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_memory_counter_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \memory_counter_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_memory_counter_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \memory_counter_reg[30]_i_1_n_6\,
      O(0) => \memory_counter_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \memory_counter[30]_i_2_n_0\,
      S(0) => \memory_counter[30]_i_3_n_0\
    );
\memory_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[30]_i_1_n_6\,
      Q => memory_counter_reg(31),
      R => clear
    );
\memory_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[2]_i_1_n_6\,
      Q => memory_counter_reg(3),
      R => clear
    );
\memory_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[2]_i_1_n_5\,
      Q => memory_counter_reg(4),
      R => clear
    );
\memory_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[2]_i_1_n_4\,
      Q => memory_counter_reg(5),
      R => clear
    );
\memory_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[6]_i_1_n_7\,
      Q => memory_counter_reg(6),
      R => clear
    );
\memory_counter_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memory_counter_reg[2]_i_1_n_0\,
      CO(3) => \memory_counter_reg[6]_i_1_n_0\,
      CO(2) => \memory_counter_reg[6]_i_1_n_1\,
      CO(1) => \memory_counter_reg[6]_i_1_n_2\,
      CO(0) => \memory_counter_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \memory_counter[6]_i_2_n_0\,
      DI(1) => '0',
      DI(0) => \memory_counter[6]_i_3_n_0\,
      O(3) => \memory_counter_reg[6]_i_1_n_4\,
      O(2) => \memory_counter_reg[6]_i_1_n_5\,
      O(1) => \memory_counter_reg[6]_i_1_n_6\,
      O(0) => \memory_counter_reg[6]_i_1_n_7\,
      S(3) => \memory_counter[6]_i_4_n_0\,
      S(2) => \memory_counter[6]_i_5_n_0\,
      S(1) => \memory_counter[6]_i_6_n_0\,
      S(0) => \memory_counter[6]_i_7_n_0\
    );
\memory_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[6]_i_1_n_6\,
      Q => memory_counter_reg(7),
      R => clear
    );
\memory_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[6]_i_1_n_5\,
      Q => memory_counter_reg(8),
      R => clear
    );
\memory_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \memory_counter_reg[6]_i_1_n_4\,
      Q => memory_counter_reg(9),
      R => clear
    );
\mst_exec_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF333300F0"
    )
        port map (
      I0 => reads_done_reg_n_0,
      I1 => writes_done,
      I2 => init_txn_ff,
      I3 => init_txn_ff2,
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => \mst_exec_state[0]_i_1_n_0\
    );
\mst_exec_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070707075707575"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => reads_done_reg_n_0,
      I2 => mst_exec_state(1),
      I3 => init_txn_ff2,
      I4 => init_txn_ff,
      I5 => \mst_exec_state[1]_i_2_n_0\,
      O => \mst_exec_state[1]_i_1_n_0\
    );
\mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFBFFF"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(4),
      I4 => current_state(3),
      O => \mst_exec_state[1]_i_2_n_0\
    );
\mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => clear
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => clear
    );
\next_state2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_state2_inferred__0/i__carry_n_0\,
      CO(2) => \next_state2_inferred__0/i__carry_n_1\,
      CO(1) => \next_state2_inferred__0/i__carry_n_2\,
      CO(0) => \next_state2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\next_state2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_inferred__0/i__carry_n_0\,
      CO(3) => \next_state2_inferred__0/i__carry__0_n_0\,
      CO(2) => \next_state2_inferred__0/i__carry__0_n_1\,
      CO(1) => \next_state2_inferred__0/i__carry__0_n_2\,
      CO(0) => \next_state2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\next_state2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_next_state2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => next_state2,
      CO(1) => \next_state2_inferred__0/i__carry__1_n_2\,
      CO(0) => \next_state2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\num_of_row[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(4),
      I5 => axi_lite_aresetn,
      O => \num_of_row[0]_i_1_n_0\
    );
\num_of_row[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(4),
      I4 => current_state(0),
      O => increament_scan_line
    );
\num_of_row[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_of_row_reg(0),
      O => \num_of_row[0]_i_4_n_0\
    );
\num_of_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[0]_i_3_n_7\,
      Q => num_of_row_reg(0),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \num_of_row_reg[0]_i_3_n_0\,
      CO(2) => \num_of_row_reg[0]_i_3_n_1\,
      CO(1) => \num_of_row_reg[0]_i_3_n_2\,
      CO(0) => \num_of_row_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \num_of_row_reg[0]_i_3_n_4\,
      O(2) => \num_of_row_reg[0]_i_3_n_5\,
      O(1) => \num_of_row_reg[0]_i_3_n_6\,
      O(0) => \num_of_row_reg[0]_i_3_n_7\,
      S(3 downto 1) => num_of_row_reg(3 downto 1),
      S(0) => \num_of_row[0]_i_4_n_0\
    );
\num_of_row_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[8]_i_1_n_5\,
      Q => num_of_row_reg(10),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[8]_i_1_n_4\,
      Q => num_of_row_reg(11),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[12]_i_1_n_7\,
      Q => num_of_row_reg(12),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[8]_i_1_n_0\,
      CO(3) => \num_of_row_reg[12]_i_1_n_0\,
      CO(2) => \num_of_row_reg[12]_i_1_n_1\,
      CO(1) => \num_of_row_reg[12]_i_1_n_2\,
      CO(0) => \num_of_row_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[12]_i_1_n_4\,
      O(2) => \num_of_row_reg[12]_i_1_n_5\,
      O(1) => \num_of_row_reg[12]_i_1_n_6\,
      O(0) => \num_of_row_reg[12]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(15 downto 12)
    );
\num_of_row_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[12]_i_1_n_6\,
      Q => num_of_row_reg(13),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[12]_i_1_n_5\,
      Q => num_of_row_reg(14),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[12]_i_1_n_4\,
      Q => num_of_row_reg(15),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[16]_i_1_n_7\,
      Q => num_of_row_reg(16),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[12]_i_1_n_0\,
      CO(3) => \num_of_row_reg[16]_i_1_n_0\,
      CO(2) => \num_of_row_reg[16]_i_1_n_1\,
      CO(1) => \num_of_row_reg[16]_i_1_n_2\,
      CO(0) => \num_of_row_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[16]_i_1_n_4\,
      O(2) => \num_of_row_reg[16]_i_1_n_5\,
      O(1) => \num_of_row_reg[16]_i_1_n_6\,
      O(0) => \num_of_row_reg[16]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(19 downto 16)
    );
\num_of_row_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[16]_i_1_n_6\,
      Q => num_of_row_reg(17),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[16]_i_1_n_5\,
      Q => num_of_row_reg(18),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[16]_i_1_n_4\,
      Q => num_of_row_reg(19),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[0]_i_3_n_6\,
      Q => num_of_row_reg(1),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[20]_i_1_n_7\,
      Q => num_of_row_reg(20),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[16]_i_1_n_0\,
      CO(3) => \num_of_row_reg[20]_i_1_n_0\,
      CO(2) => \num_of_row_reg[20]_i_1_n_1\,
      CO(1) => \num_of_row_reg[20]_i_1_n_2\,
      CO(0) => \num_of_row_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[20]_i_1_n_4\,
      O(2) => \num_of_row_reg[20]_i_1_n_5\,
      O(1) => \num_of_row_reg[20]_i_1_n_6\,
      O(0) => \num_of_row_reg[20]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(23 downto 20)
    );
\num_of_row_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[20]_i_1_n_6\,
      Q => num_of_row_reg(21),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[20]_i_1_n_5\,
      Q => num_of_row_reg(22),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[20]_i_1_n_4\,
      Q => num_of_row_reg(23),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[24]_i_1_n_7\,
      Q => num_of_row_reg(24),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[20]_i_1_n_0\,
      CO(3) => \num_of_row_reg[24]_i_1_n_0\,
      CO(2) => \num_of_row_reg[24]_i_1_n_1\,
      CO(1) => \num_of_row_reg[24]_i_1_n_2\,
      CO(0) => \num_of_row_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[24]_i_1_n_4\,
      O(2) => \num_of_row_reg[24]_i_1_n_5\,
      O(1) => \num_of_row_reg[24]_i_1_n_6\,
      O(0) => \num_of_row_reg[24]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(27 downto 24)
    );
\num_of_row_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[24]_i_1_n_6\,
      Q => num_of_row_reg(25),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[24]_i_1_n_5\,
      Q => num_of_row_reg(26),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[24]_i_1_n_4\,
      Q => num_of_row_reg(27),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[28]_i_1_n_7\,
      Q => num_of_row_reg(28),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[24]_i_1_n_0\,
      CO(3) => \NLW_num_of_row_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \num_of_row_reg[28]_i_1_n_1\,
      CO(1) => \num_of_row_reg[28]_i_1_n_2\,
      CO(0) => \num_of_row_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[28]_i_1_n_4\,
      O(2) => \num_of_row_reg[28]_i_1_n_5\,
      O(1) => \num_of_row_reg[28]_i_1_n_6\,
      O(0) => \num_of_row_reg[28]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(31 downto 28)
    );
\num_of_row_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[28]_i_1_n_6\,
      Q => num_of_row_reg(29),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[0]_i_3_n_5\,
      Q => num_of_row_reg(2),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[28]_i_1_n_5\,
      Q => num_of_row_reg(30),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[28]_i_1_n_4\,
      Q => num_of_row_reg(31),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[0]_i_3_n_4\,
      Q => num_of_row_reg(3),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[4]_i_1_n_7\,
      Q => num_of_row_reg(4),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[0]_i_3_n_0\,
      CO(3) => \num_of_row_reg[4]_i_1_n_0\,
      CO(2) => \num_of_row_reg[4]_i_1_n_1\,
      CO(1) => \num_of_row_reg[4]_i_1_n_2\,
      CO(0) => \num_of_row_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[4]_i_1_n_4\,
      O(2) => \num_of_row_reg[4]_i_1_n_5\,
      O(1) => \num_of_row_reg[4]_i_1_n_6\,
      O(0) => \num_of_row_reg[4]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(7 downto 4)
    );
\num_of_row_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[4]_i_1_n_6\,
      Q => num_of_row_reg(5),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[4]_i_1_n_5\,
      Q => num_of_row_reg(6),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[4]_i_1_n_4\,
      Q => num_of_row_reg(7),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[8]_i_1_n_7\,
      Q => num_of_row_reg(8),
      R => \num_of_row[0]_i_1_n_0\
    );
\num_of_row_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_of_row_reg[4]_i_1_n_0\,
      CO(3) => \num_of_row_reg[8]_i_1_n_0\,
      CO(2) => \num_of_row_reg[8]_i_1_n_1\,
      CO(1) => \num_of_row_reg[8]_i_1_n_2\,
      CO(0) => \num_of_row_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \num_of_row_reg[8]_i_1_n_4\,
      O(2) => \num_of_row_reg[8]_i_1_n_5\,
      O(1) => \num_of_row_reg[8]_i_1_n_6\,
      O(0) => \num_of_row_reg[8]_i_1_n_7\,
      S(3 downto 0) => num_of_row_reg(11 downto 8)
    );
\num_of_row_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => increament_scan_line,
      D => \num_of_row_reg[8]_i_1_n_6\,
      Q => num_of_row_reg(9),
      R => \num_of_row[0]_i_1_n_0\
    );
position_in_frame_buffer0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000001011010000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_position_in_frame_buffer0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 11) => B"0000000",
      B(10 downto 0) => y_location(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_position_in_frame_buffer0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_position_in_frame_buffer0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_position_in_frame_buffer0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_position_in_frame_buffer0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_position_in_frame_buffer0_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_position_in_frame_buffer0_P_UNCONNECTED(47 downto 25),
      P(24) => position_in_frame_buffer0_n_81,
      P(23) => position_in_frame_buffer0_n_82,
      P(22) => position_in_frame_buffer0_n_83,
      P(21) => position_in_frame_buffer0_n_84,
      P(20) => position_in_frame_buffer0_n_85,
      P(19) => position_in_frame_buffer0_n_86,
      P(18) => position_in_frame_buffer0_n_87,
      P(17) => position_in_frame_buffer0_n_88,
      P(16) => position_in_frame_buffer0_n_89,
      P(15) => position_in_frame_buffer0_n_90,
      P(14) => position_in_frame_buffer0_n_91,
      P(13) => position_in_frame_buffer0_n_92,
      P(12) => position_in_frame_buffer0_n_93,
      P(11) => position_in_frame_buffer0_n_94,
      P(10) => position_in_frame_buffer0_n_95,
      P(9) => position_in_frame_buffer0_n_96,
      P(8) => position_in_frame_buffer0_n_97,
      P(7) => position_in_frame_buffer0_n_98,
      P(6) => position_in_frame_buffer0_n_99,
      P(5) => position_in_frame_buffer0_n_100,
      P(4) => position_in_frame_buffer0_n_101,
      P(3) => position_in_frame_buffer0_n_102,
      P(2) => position_in_frame_buffer0_n_103,
      P(1) => position_in_frame_buffer0_n_104,
      P(0) => position_in_frame_buffer0_n_105,
      PATTERNBDETECT => NLW_position_in_frame_buffer0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_position_in_frame_buffer0_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => position_in_frame_buffer2_n_106,
      PCIN(46) => position_in_frame_buffer2_n_107,
      PCIN(45) => position_in_frame_buffer2_n_108,
      PCIN(44) => position_in_frame_buffer2_n_109,
      PCIN(43) => position_in_frame_buffer2_n_110,
      PCIN(42) => position_in_frame_buffer2_n_111,
      PCIN(41) => position_in_frame_buffer2_n_112,
      PCIN(40) => position_in_frame_buffer2_n_113,
      PCIN(39) => position_in_frame_buffer2_n_114,
      PCIN(38) => position_in_frame_buffer2_n_115,
      PCIN(37) => position_in_frame_buffer2_n_116,
      PCIN(36) => position_in_frame_buffer2_n_117,
      PCIN(35) => position_in_frame_buffer2_n_118,
      PCIN(34) => position_in_frame_buffer2_n_119,
      PCIN(33) => position_in_frame_buffer2_n_120,
      PCIN(32) => position_in_frame_buffer2_n_121,
      PCIN(31) => position_in_frame_buffer2_n_122,
      PCIN(30) => position_in_frame_buffer2_n_123,
      PCIN(29) => position_in_frame_buffer2_n_124,
      PCIN(28) => position_in_frame_buffer2_n_125,
      PCIN(27) => position_in_frame_buffer2_n_126,
      PCIN(26) => position_in_frame_buffer2_n_127,
      PCIN(25) => position_in_frame_buffer2_n_128,
      PCIN(24) => position_in_frame_buffer2_n_129,
      PCIN(23) => position_in_frame_buffer2_n_130,
      PCIN(22) => position_in_frame_buffer2_n_131,
      PCIN(21) => position_in_frame_buffer2_n_132,
      PCIN(20) => position_in_frame_buffer2_n_133,
      PCIN(19) => position_in_frame_buffer2_n_134,
      PCIN(18) => position_in_frame_buffer2_n_135,
      PCIN(17) => position_in_frame_buffer2_n_136,
      PCIN(16) => position_in_frame_buffer2_n_137,
      PCIN(15) => position_in_frame_buffer2_n_138,
      PCIN(14) => position_in_frame_buffer2_n_139,
      PCIN(13) => position_in_frame_buffer2_n_140,
      PCIN(12) => position_in_frame_buffer2_n_141,
      PCIN(11) => position_in_frame_buffer2_n_142,
      PCIN(10) => position_in_frame_buffer2_n_143,
      PCIN(9) => position_in_frame_buffer2_n_144,
      PCIN(8) => position_in_frame_buffer2_n_145,
      PCIN(7) => position_in_frame_buffer2_n_146,
      PCIN(6) => position_in_frame_buffer2_n_147,
      PCIN(5) => position_in_frame_buffer2_n_148,
      PCIN(4) => position_in_frame_buffer2_n_149,
      PCIN(3) => position_in_frame_buffer2_n_150,
      PCIN(2) => position_in_frame_buffer2_n_151,
      PCIN(1) => position_in_frame_buffer2_n_152,
      PCIN(0) => position_in_frame_buffer2_n_153,
      PCOUT(47 downto 0) => NLW_position_in_frame_buffer0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_position_in_frame_buffer0_UNDERFLOW_UNCONNECTED
    );
position_in_frame_buffer2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 11) => B"0000000000000000000",
      A(10 downto 0) => x_location(10 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_position_in_frame_buffer2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_position_in_frame_buffer2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_position_in_frame_buffer2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_position_in_frame_buffer2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_position_in_frame_buffer2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_position_in_frame_buffer2_OVERFLOW_UNCONNECTED,
      P(47 downto 13) => NLW_position_in_frame_buffer2_P_UNCONNECTED(47 downto 13),
      P(12) => position_in_frame_buffer2_n_93,
      P(11) => position_in_frame_buffer2_n_94,
      P(10) => position_in_frame_buffer2_n_95,
      P(9) => position_in_frame_buffer2_n_96,
      P(8) => position_in_frame_buffer2_n_97,
      P(7) => position_in_frame_buffer2_n_98,
      P(6) => position_in_frame_buffer2_n_99,
      P(5) => position_in_frame_buffer2_n_100,
      P(4) => position_in_frame_buffer2_n_101,
      P(3) => position_in_frame_buffer2_n_102,
      P(2) => position_in_frame_buffer2_n_103,
      P(1) => position_in_frame_buffer2_n_104,
      P(0) => position_in_frame_buffer2_n_105,
      PATTERNBDETECT => NLW_position_in_frame_buffer2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_position_in_frame_buffer2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => position_in_frame_buffer2_n_106,
      PCOUT(46) => position_in_frame_buffer2_n_107,
      PCOUT(45) => position_in_frame_buffer2_n_108,
      PCOUT(44) => position_in_frame_buffer2_n_109,
      PCOUT(43) => position_in_frame_buffer2_n_110,
      PCOUT(42) => position_in_frame_buffer2_n_111,
      PCOUT(41) => position_in_frame_buffer2_n_112,
      PCOUT(40) => position_in_frame_buffer2_n_113,
      PCOUT(39) => position_in_frame_buffer2_n_114,
      PCOUT(38) => position_in_frame_buffer2_n_115,
      PCOUT(37) => position_in_frame_buffer2_n_116,
      PCOUT(36) => position_in_frame_buffer2_n_117,
      PCOUT(35) => position_in_frame_buffer2_n_118,
      PCOUT(34) => position_in_frame_buffer2_n_119,
      PCOUT(33) => position_in_frame_buffer2_n_120,
      PCOUT(32) => position_in_frame_buffer2_n_121,
      PCOUT(31) => position_in_frame_buffer2_n_122,
      PCOUT(30) => position_in_frame_buffer2_n_123,
      PCOUT(29) => position_in_frame_buffer2_n_124,
      PCOUT(28) => position_in_frame_buffer2_n_125,
      PCOUT(27) => position_in_frame_buffer2_n_126,
      PCOUT(26) => position_in_frame_buffer2_n_127,
      PCOUT(25) => position_in_frame_buffer2_n_128,
      PCOUT(24) => position_in_frame_buffer2_n_129,
      PCOUT(23) => position_in_frame_buffer2_n_130,
      PCOUT(22) => position_in_frame_buffer2_n_131,
      PCOUT(21) => position_in_frame_buffer2_n_132,
      PCOUT(20) => position_in_frame_buffer2_n_133,
      PCOUT(19) => position_in_frame_buffer2_n_134,
      PCOUT(18) => position_in_frame_buffer2_n_135,
      PCOUT(17) => position_in_frame_buffer2_n_136,
      PCOUT(16) => position_in_frame_buffer2_n_137,
      PCOUT(15) => position_in_frame_buffer2_n_138,
      PCOUT(14) => position_in_frame_buffer2_n_139,
      PCOUT(13) => position_in_frame_buffer2_n_140,
      PCOUT(12) => position_in_frame_buffer2_n_141,
      PCOUT(11) => position_in_frame_buffer2_n_142,
      PCOUT(10) => position_in_frame_buffer2_n_143,
      PCOUT(9) => position_in_frame_buffer2_n_144,
      PCOUT(8) => position_in_frame_buffer2_n_145,
      PCOUT(7) => position_in_frame_buffer2_n_146,
      PCOUT(6) => position_in_frame_buffer2_n_147,
      PCOUT(5) => position_in_frame_buffer2_n_148,
      PCOUT(4) => position_in_frame_buffer2_n_149,
      PCOUT(3) => position_in_frame_buffer2_n_150,
      PCOUT(2) => position_in_frame_buffer2_n_151,
      PCOUT(1) => position_in_frame_buffer2_n_152,
      PCOUT(0) => position_in_frame_buffer2_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_position_in_frame_buffer2_UNDERFLOW_UNCONNECTED
    );
\position_in_frame_buffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(0),
      I1 => start,
      I2 => position_in_frame_buffer_reg(0),
      O => \position_in_frame_buffer[0]_i_1_n_0\
    );
\position_in_frame_buffer[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(3),
      I1 => position_in_frame_buffer0_n_102,
      O => \position_in_frame_buffer[0]_i_3_n_0\
    );
\position_in_frame_buffer[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(2),
      I1 => position_in_frame_buffer0_n_103,
      O => \position_in_frame_buffer[0]_i_4_n_0\
    );
\position_in_frame_buffer[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(1),
      I1 => position_in_frame_buffer0_n_104,
      O => \position_in_frame_buffer[0]_i_5_n_0\
    );
\position_in_frame_buffer[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(0),
      I1 => position_in_frame_buffer0_n_105,
      O => \position_in_frame_buffer[0]_i_6_n_0\
    );
\position_in_frame_buffer[10]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(14),
      I1 => position_in_frame_buffer0_n_91,
      O => \position_in_frame_buffer[10]_i_10_n_0\
    );
\position_in_frame_buffer[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(13),
      I1 => position_in_frame_buffer0_n_92,
      O => \position_in_frame_buffer[10]_i_11_n_0\
    );
\position_in_frame_buffer[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(12),
      I1 => position_in_frame_buffer0_n_93,
      O => \position_in_frame_buffer[10]_i_12_n_0\
    );
\position_in_frame_buffer[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(12),
      I1 => start,
      I2 => position_in_frame_buffer_reg(12),
      O => \position_in_frame_buffer[10]_i_2_n_0\
    );
\position_in_frame_buffer[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(10),
      I1 => start,
      I2 => position_in_frame_buffer_reg(10),
      O => \position_in_frame_buffer[10]_i_3_n_0\
    );
\position_in_frame_buffer[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(13),
      I1 => start,
      I2 => position_in_frame_buffer_reg(13),
      O => \position_in_frame_buffer[10]_i_4_n_0\
    );
\position_in_frame_buffer[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => position_in_frame_buffer_reg(12),
      I1 => \position_in_frame_buffer0__0\(12),
      I2 => start,
      O => \position_in_frame_buffer[10]_i_5_n_0\
    );
\position_in_frame_buffer[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(11),
      I1 => start,
      I2 => position_in_frame_buffer_reg(11),
      O => \position_in_frame_buffer[10]_i_6_n_0\
    );
\position_in_frame_buffer[10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => position_in_frame_buffer_reg(10),
      I1 => \position_in_frame_buffer0__0\(10),
      I2 => start,
      O => \position_in_frame_buffer[10]_i_7_n_0\
    );
\position_in_frame_buffer[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(15),
      I1 => position_in_frame_buffer0_n_90,
      O => \position_in_frame_buffer[10]_i_9_n_0\
    );
\position_in_frame_buffer[14]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(16),
      I1 => position_in_frame_buffer0_n_89,
      O => \position_in_frame_buffer[14]_i_10_n_0\
    );
\position_in_frame_buffer[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(17),
      I1 => start,
      I2 => position_in_frame_buffer_reg(17),
      O => \position_in_frame_buffer[14]_i_2_n_0\
    );
\position_in_frame_buffer[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(16),
      I1 => start,
      I2 => position_in_frame_buffer_reg(16),
      O => \position_in_frame_buffer[14]_i_3_n_0\
    );
\position_in_frame_buffer[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(15),
      I1 => start,
      I2 => position_in_frame_buffer_reg(15),
      O => \position_in_frame_buffer[14]_i_4_n_0\
    );
\position_in_frame_buffer[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(14),
      I1 => start,
      I2 => position_in_frame_buffer_reg(14),
      O => \position_in_frame_buffer[14]_i_5_n_0\
    );
\position_in_frame_buffer[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(19),
      I1 => position_in_frame_buffer0_n_86,
      O => \position_in_frame_buffer[14]_i_7_n_0\
    );
\position_in_frame_buffer[14]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(18),
      I1 => position_in_frame_buffer0_n_87,
      O => \position_in_frame_buffer[14]_i_8_n_0\
    );
\position_in_frame_buffer[14]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(17),
      I1 => position_in_frame_buffer0_n_88,
      O => \position_in_frame_buffer[14]_i_9_n_0\
    );
\position_in_frame_buffer[18]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(20),
      I1 => position_in_frame_buffer0_n_85,
      O => \position_in_frame_buffer[18]_i_10_n_0\
    );
\position_in_frame_buffer[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(21),
      I1 => start,
      I2 => position_in_frame_buffer_reg(21),
      O => \position_in_frame_buffer[18]_i_2_n_0\
    );
\position_in_frame_buffer[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(20),
      I1 => start,
      I2 => position_in_frame_buffer_reg(20),
      O => \position_in_frame_buffer[18]_i_3_n_0\
    );
\position_in_frame_buffer[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(19),
      I1 => start,
      I2 => position_in_frame_buffer_reg(19),
      O => \position_in_frame_buffer[18]_i_4_n_0\
    );
\position_in_frame_buffer[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(18),
      I1 => start,
      I2 => position_in_frame_buffer_reg(18),
      O => \position_in_frame_buffer[18]_i_5_n_0\
    );
\position_in_frame_buffer[18]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(23),
      I1 => position_in_frame_buffer0_n_82,
      O => \position_in_frame_buffer[18]_i_7_n_0\
    );
\position_in_frame_buffer[18]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(22),
      I1 => position_in_frame_buffer0_n_83,
      O => \position_in_frame_buffer[18]_i_8_n_0\
    );
\position_in_frame_buffer[18]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(21),
      I1 => position_in_frame_buffer0_n_84,
      O => \position_in_frame_buffer[18]_i_9_n_0\
    );
\position_in_frame_buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(1),
      I1 => start,
      I2 => position_in_frame_buffer_reg(1),
      O => \position_in_frame_buffer[1]_i_1_n_0\
    );
\position_in_frame_buffer[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(25),
      I1 => start,
      I2 => position_in_frame_buffer_reg(25),
      O => \position_in_frame_buffer[22]_i_2_n_0\
    );
\position_in_frame_buffer[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(24),
      I1 => start,
      I2 => position_in_frame_buffer_reg(24),
      O => \position_in_frame_buffer[22]_i_3_n_0\
    );
\position_in_frame_buffer[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(23),
      I1 => start,
      I2 => position_in_frame_buffer_reg(23),
      O => \position_in_frame_buffer[22]_i_4_n_0\
    );
\position_in_frame_buffer[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(22),
      I1 => start,
      I2 => position_in_frame_buffer_reg(22),
      O => \position_in_frame_buffer[22]_i_5_n_0\
    );
\position_in_frame_buffer[22]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(24),
      I1 => position_in_frame_buffer0_n_81,
      O => \position_in_frame_buffer[22]_i_7_n_0\
    );
\position_in_frame_buffer[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(29),
      I1 => start,
      I2 => position_in_frame_buffer_reg(29),
      O => \position_in_frame_buffer[26]_i_2_n_0\
    );
\position_in_frame_buffer[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(28),
      I1 => start,
      I2 => position_in_frame_buffer_reg(28),
      O => \position_in_frame_buffer[26]_i_3_n_0\
    );
\position_in_frame_buffer[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(27),
      I1 => start,
      I2 => position_in_frame_buffer_reg(27),
      O => \position_in_frame_buffer[26]_i_4_n_0\
    );
\position_in_frame_buffer[26]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(26),
      I1 => start,
      I2 => position_in_frame_buffer_reg(26),
      O => \position_in_frame_buffer[26]_i_5_n_0\
    );
\position_in_frame_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(2),
      I1 => start,
      I2 => position_in_frame_buffer_reg(2),
      O => \position_in_frame_buffer[2]_i_1_n_0\
    );
\position_in_frame_buffer[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(31),
      I1 => start,
      I2 => position_in_frame_buffer_reg(31),
      O => \position_in_frame_buffer[30]_i_2_n_0\
    );
\position_in_frame_buffer[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(30),
      I1 => start,
      I2 => position_in_frame_buffer_reg(30),
      O => \position_in_frame_buffer[30]_i_3_n_0\
    );
\position_in_frame_buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(3),
      I1 => start,
      I2 => position_in_frame_buffer_reg(3),
      O => \position_in_frame_buffer[3]_i_1_n_0\
    );
\position_in_frame_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(4),
      I1 => start,
      I2 => position_in_frame_buffer_reg(4),
      O => \position_in_frame_buffer[4]_i_1_n_0\
    );
\position_in_frame_buffer[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(7),
      I1 => position_in_frame_buffer0_n_98,
      O => \position_in_frame_buffer[4]_i_3_n_0\
    );
\position_in_frame_buffer[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(6),
      I1 => position_in_frame_buffer0_n_99,
      O => \position_in_frame_buffer[4]_i_4_n_0\
    );
\position_in_frame_buffer[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(5),
      I1 => position_in_frame_buffer0_n_100,
      O => \position_in_frame_buffer[4]_i_5_n_0\
    );
\position_in_frame_buffer[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(4),
      I1 => position_in_frame_buffer0_n_101,
      O => \position_in_frame_buffer[4]_i_6_n_0\
    );
\position_in_frame_buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(5),
      I1 => start,
      I2 => position_in_frame_buffer_reg(5),
      O => \position_in_frame_buffer[5]_i_1_n_0\
    );
\position_in_frame_buffer[6]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(10),
      I1 => position_in_frame_buffer0_n_95,
      O => \position_in_frame_buffer[6]_i_10_n_0\
    );
\position_in_frame_buffer[6]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(9),
      I1 => position_in_frame_buffer0_n_96,
      O => \position_in_frame_buffer[6]_i_11_n_0\
    );
\position_in_frame_buffer[6]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(8),
      I1 => position_in_frame_buffer0_n_97,
      O => \position_in_frame_buffer[6]_i_12_n_0\
    );
\position_in_frame_buffer[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(9),
      I1 => start,
      I2 => position_in_frame_buffer_reg(9),
      O => \position_in_frame_buffer[6]_i_2_n_0\
    );
\position_in_frame_buffer[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(7),
      I1 => start,
      I2 => position_in_frame_buffer_reg(7),
      O => \position_in_frame_buffer[6]_i_3_n_0\
    );
\position_in_frame_buffer[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => position_in_frame_buffer_reg(9),
      I1 => \position_in_frame_buffer0__0\(9),
      I2 => start,
      O => \position_in_frame_buffer[6]_i_4_n_0\
    );
\position_in_frame_buffer[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(8),
      I1 => start,
      I2 => position_in_frame_buffer_reg(8),
      O => \position_in_frame_buffer[6]_i_5_n_0\
    );
\position_in_frame_buffer[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => position_in_frame_buffer_reg(7),
      I1 => \position_in_frame_buffer0__0\(7),
      I2 => start,
      O => \position_in_frame_buffer[6]_i_6_n_0\
    );
\position_in_frame_buffer[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \position_in_frame_buffer0__0\(6),
      I1 => start,
      I2 => position_in_frame_buffer_reg(6),
      O => \position_in_frame_buffer[6]_i_7_n_0\
    );
\position_in_frame_buffer[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_buffer_location(11),
      I1 => position_in_frame_buffer0_n_94,
      O => \position_in_frame_buffer[6]_i_9_n_0\
    );
\position_in_frame_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[0]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(0),
      R => clear
    );
\position_in_frame_buffer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \position_in_frame_buffer_reg[0]_i_2_n_0\,
      CO(2) => \position_in_frame_buffer_reg[0]_i_2_n_1\,
      CO(1) => \position_in_frame_buffer_reg[0]_i_2_n_2\,
      CO(0) => \position_in_frame_buffer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(3 downto 0),
      O(3 downto 0) => \position_in_frame_buffer0__0\(3 downto 0),
      S(3) => \position_in_frame_buffer[0]_i_3_n_0\,
      S(2) => \position_in_frame_buffer[0]_i_4_n_0\,
      S(1) => \position_in_frame_buffer[0]_i_5_n_0\,
      S(0) => \position_in_frame_buffer[0]_i_6_n_0\
    );
\position_in_frame_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[10]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(10),
      R => clear
    );
\position_in_frame_buffer_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[6]_i_1_n_0\,
      CO(3) => \position_in_frame_buffer_reg[10]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[10]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[10]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \position_in_frame_buffer[10]_i_2_n_0\,
      DI(1) => '0',
      DI(0) => \position_in_frame_buffer[10]_i_3_n_0\,
      O(3) => \position_in_frame_buffer_reg[10]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[10]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[10]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[10]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[10]_i_4_n_0\,
      S(2) => \position_in_frame_buffer[10]_i_5_n_0\,
      S(1) => \position_in_frame_buffer[10]_i_6_n_0\,
      S(0) => \position_in_frame_buffer[10]_i_7_n_0\
    );
\position_in_frame_buffer_reg[10]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[6]_i_8_n_0\,
      CO(3) => \position_in_frame_buffer_reg[10]_i_8_n_0\,
      CO(2) => \position_in_frame_buffer_reg[10]_i_8_n_1\,
      CO(1) => \position_in_frame_buffer_reg[10]_i_8_n_2\,
      CO(0) => \position_in_frame_buffer_reg[10]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(15 downto 12),
      O(3 downto 0) => \position_in_frame_buffer0__0\(15 downto 12),
      S(3) => \position_in_frame_buffer[10]_i_9_n_0\,
      S(2) => \position_in_frame_buffer[10]_i_10_n_0\,
      S(1) => \position_in_frame_buffer[10]_i_11_n_0\,
      S(0) => \position_in_frame_buffer[10]_i_12_n_0\
    );
\position_in_frame_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[10]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(11),
      R => clear
    );
\position_in_frame_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[10]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(12),
      R => clear
    );
\position_in_frame_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[10]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(13),
      R => clear
    );
\position_in_frame_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[14]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(14),
      R => clear
    );
\position_in_frame_buffer_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[10]_i_1_n_0\,
      CO(3) => \position_in_frame_buffer_reg[14]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[14]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[14]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \position_in_frame_buffer_reg[14]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[14]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[14]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[14]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[14]_i_2_n_0\,
      S(2) => \position_in_frame_buffer[14]_i_3_n_0\,
      S(1) => \position_in_frame_buffer[14]_i_4_n_0\,
      S(0) => \position_in_frame_buffer[14]_i_5_n_0\
    );
\position_in_frame_buffer_reg[14]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[10]_i_8_n_0\,
      CO(3) => \position_in_frame_buffer_reg[14]_i_6_n_0\,
      CO(2) => \position_in_frame_buffer_reg[14]_i_6_n_1\,
      CO(1) => \position_in_frame_buffer_reg[14]_i_6_n_2\,
      CO(0) => \position_in_frame_buffer_reg[14]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(19 downto 16),
      O(3 downto 0) => \position_in_frame_buffer0__0\(19 downto 16),
      S(3) => \position_in_frame_buffer[14]_i_7_n_0\,
      S(2) => \position_in_frame_buffer[14]_i_8_n_0\,
      S(1) => \position_in_frame_buffer[14]_i_9_n_0\,
      S(0) => \position_in_frame_buffer[14]_i_10_n_0\
    );
\position_in_frame_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[14]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(15),
      R => clear
    );
\position_in_frame_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[14]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(16),
      R => clear
    );
\position_in_frame_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[14]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(17),
      R => clear
    );
\position_in_frame_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[18]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(18),
      R => clear
    );
\position_in_frame_buffer_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[14]_i_1_n_0\,
      CO(3) => \position_in_frame_buffer_reg[18]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[18]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[18]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \position_in_frame_buffer_reg[18]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[18]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[18]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[18]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[18]_i_2_n_0\,
      S(2) => \position_in_frame_buffer[18]_i_3_n_0\,
      S(1) => \position_in_frame_buffer[18]_i_4_n_0\,
      S(0) => \position_in_frame_buffer[18]_i_5_n_0\
    );
\position_in_frame_buffer_reg[18]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[14]_i_6_n_0\,
      CO(3) => \position_in_frame_buffer_reg[18]_i_6_n_0\,
      CO(2) => \position_in_frame_buffer_reg[18]_i_6_n_1\,
      CO(1) => \position_in_frame_buffer_reg[18]_i_6_n_2\,
      CO(0) => \position_in_frame_buffer_reg[18]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(23 downto 20),
      O(3 downto 0) => \position_in_frame_buffer0__0\(23 downto 20),
      S(3) => \position_in_frame_buffer[18]_i_7_n_0\,
      S(2) => \position_in_frame_buffer[18]_i_8_n_0\,
      S(1) => \position_in_frame_buffer[18]_i_9_n_0\,
      S(0) => \position_in_frame_buffer[18]_i_10_n_0\
    );
\position_in_frame_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[18]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(19),
      R => clear
    );
\position_in_frame_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[1]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(1),
      R => clear
    );
\position_in_frame_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[18]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(20),
      R => clear
    );
\position_in_frame_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[18]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(21),
      R => clear
    );
\position_in_frame_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[22]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(22),
      R => clear
    );
\position_in_frame_buffer_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[18]_i_1_n_0\,
      CO(3) => \position_in_frame_buffer_reg[22]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[22]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[22]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \position_in_frame_buffer_reg[22]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[22]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[22]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[22]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[22]_i_2_n_0\,
      S(2) => \position_in_frame_buffer[22]_i_3_n_0\,
      S(1) => \position_in_frame_buffer[22]_i_4_n_0\,
      S(0) => \position_in_frame_buffer[22]_i_5_n_0\
    );
\position_in_frame_buffer_reg[22]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[18]_i_6_n_0\,
      CO(3) => \position_in_frame_buffer_reg[22]_i_6_n_0\,
      CO(2) => \position_in_frame_buffer_reg[22]_i_6_n_1\,
      CO(1) => \position_in_frame_buffer_reg[22]_i_6_n_2\,
      CO(0) => \position_in_frame_buffer_reg[22]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => frame_buffer_location(24),
      O(3 downto 0) => \position_in_frame_buffer0__0\(27 downto 24),
      S(3 downto 1) => frame_buffer_location(27 downto 25),
      S(0) => \position_in_frame_buffer[22]_i_7_n_0\
    );
\position_in_frame_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[22]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(23),
      R => clear
    );
\position_in_frame_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[22]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(24),
      R => clear
    );
\position_in_frame_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[22]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(25),
      R => clear
    );
\position_in_frame_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[26]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(26),
      R => clear
    );
\position_in_frame_buffer_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[22]_i_1_n_0\,
      CO(3) => \position_in_frame_buffer_reg[26]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[26]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[26]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \position_in_frame_buffer_reg[26]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[26]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[26]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[26]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[26]_i_2_n_0\,
      S(2) => \position_in_frame_buffer[26]_i_3_n_0\,
      S(1) => \position_in_frame_buffer[26]_i_4_n_0\,
      S(0) => \position_in_frame_buffer[26]_i_5_n_0\
    );
\position_in_frame_buffer_reg[26]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[22]_i_6_n_0\,
      CO(3) => \NLW_position_in_frame_buffer_reg[26]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \position_in_frame_buffer_reg[26]_i_6_n_1\,
      CO(1) => \position_in_frame_buffer_reg[26]_i_6_n_2\,
      CO(0) => \position_in_frame_buffer_reg[26]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \position_in_frame_buffer0__0\(31 downto 28),
      S(3 downto 0) => frame_buffer_location(31 downto 28)
    );
\position_in_frame_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[26]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(27),
      R => clear
    );
\position_in_frame_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[26]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(28),
      R => clear
    );
\position_in_frame_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[26]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(29),
      R => clear
    );
\position_in_frame_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[2]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(2),
      R => clear
    );
\position_in_frame_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[30]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(30),
      R => clear
    );
\position_in_frame_buffer_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_position_in_frame_buffer_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \position_in_frame_buffer_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_position_in_frame_buffer_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \position_in_frame_buffer_reg[30]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \position_in_frame_buffer[30]_i_2_n_0\,
      S(0) => \position_in_frame_buffer[30]_i_3_n_0\
    );
\position_in_frame_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[30]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(31),
      R => clear
    );
\position_in_frame_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[3]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(3),
      R => clear
    );
\position_in_frame_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[4]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(4),
      R => clear
    );
\position_in_frame_buffer_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[0]_i_2_n_0\,
      CO(3) => \position_in_frame_buffer_reg[4]_i_2_n_0\,
      CO(2) => \position_in_frame_buffer_reg[4]_i_2_n_1\,
      CO(1) => \position_in_frame_buffer_reg[4]_i_2_n_2\,
      CO(0) => \position_in_frame_buffer_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(7 downto 4),
      O(3 downto 0) => \position_in_frame_buffer0__0\(7 downto 4),
      S(3) => \position_in_frame_buffer[4]_i_3_n_0\,
      S(2) => \position_in_frame_buffer[4]_i_4_n_0\,
      S(1) => \position_in_frame_buffer[4]_i_5_n_0\,
      S(0) => \position_in_frame_buffer[4]_i_6_n_0\
    );
\position_in_frame_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer[5]_i_1_n_0\,
      Q => position_in_frame_buffer_reg(5),
      R => clear
    );
\position_in_frame_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[6]_i_1_n_7\,
      Q => position_in_frame_buffer_reg(6),
      R => clear
    );
\position_in_frame_buffer_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \position_in_frame_buffer_reg[6]_i_1_n_0\,
      CO(2) => \position_in_frame_buffer_reg[6]_i_1_n_1\,
      CO(1) => \position_in_frame_buffer_reg[6]_i_1_n_2\,
      CO(0) => \position_in_frame_buffer_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \position_in_frame_buffer[6]_i_2_n_0\,
      DI(2) => '0',
      DI(1) => \position_in_frame_buffer[6]_i_3_n_0\,
      DI(0) => '0',
      O(3) => \position_in_frame_buffer_reg[6]_i_1_n_4\,
      O(2) => \position_in_frame_buffer_reg[6]_i_1_n_5\,
      O(1) => \position_in_frame_buffer_reg[6]_i_1_n_6\,
      O(0) => \position_in_frame_buffer_reg[6]_i_1_n_7\,
      S(3) => \position_in_frame_buffer[6]_i_4_n_0\,
      S(2) => \position_in_frame_buffer[6]_i_5_n_0\,
      S(1) => \position_in_frame_buffer[6]_i_6_n_0\,
      S(0) => \position_in_frame_buffer[6]_i_7_n_0\
    );
\position_in_frame_buffer_reg[6]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_in_frame_buffer_reg[4]_i_2_n_0\,
      CO(3) => \position_in_frame_buffer_reg[6]_i_8_n_0\,
      CO(2) => \position_in_frame_buffer_reg[6]_i_8_n_1\,
      CO(1) => \position_in_frame_buffer_reg[6]_i_8_n_2\,
      CO(0) => \position_in_frame_buffer_reg[6]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => frame_buffer_location(11 downto 8),
      O(3 downto 0) => \position_in_frame_buffer0__0\(11 downto 8),
      S(3) => \position_in_frame_buffer[6]_i_9_n_0\,
      S(2) => \position_in_frame_buffer[6]_i_10_n_0\,
      S(1) => \position_in_frame_buffer[6]_i_11_n_0\,
      S(0) => \position_in_frame_buffer[6]_i_12_n_0\
    );
\position_in_frame_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[6]_i_1_n_6\,
      Q => position_in_frame_buffer_reg(7),
      R => clear
    );
\position_in_frame_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[6]_i_1_n_5\,
      Q => position_in_frame_buffer_reg(8),
      R => clear
    );
\position_in_frame_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => position_in_frame_buffer,
      D => \position_in_frame_buffer_reg[6]_i_1_n_4\,
      Q => position_in_frame_buffer_reg(9),
      R => clear
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DD00000"
    )
        port map (
      I0 => \^axi_lite_araddr\(1),
      I1 => current_state(1),
      I2 => start_single_read_reg_n_0,
      I3 => read_index,
      I4 => axi_lite_aresetn,
      O => \read_index[0]_i_1_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \read_index[0]_i_1_n_0\,
      Q => read_index,
      R => '0'
    );
read_issued_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF08000800"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => reads_done_reg_n_0,
      I3 => start_single_read0,
      I4 => \^axi_lite_rready\,
      I5 => read_issued_reg_n_0,
      O => read_issued_i_1_n_0
    );
read_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => read_issued_i_1_n_0,
      Q => read_issued_reg_n_0,
      R => clear
    );
reads_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8080808080"
    )
        port map (
      I0 => axi_lite_rvalid,
      I1 => \^axi_lite_rready\,
      I2 => last_read,
      I3 => mst_exec_state(1),
      I4 => mst_exec_state(0),
      I5 => reads_done_reg_n_0,
      O => reads_done_i_1_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => reads_done_reg_n_0,
      R => axi_awvalid_i_1_n_0
    );
start_single_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF708000800"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => reads_done_reg_n_0,
      I3 => start_single_read0,
      I4 => \^axi_lite_rready\,
      I5 => start_single_read_reg_n_0,
      O => start_single_read_i_1_n_0
    );
start_single_read_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => start_single_read_reg_n_0,
      I1 => \^axi_lite_arvalid\,
      I2 => axi_lite_rvalid,
      I3 => last_read,
      I4 => read_issued_reg_n_0,
      O => start_single_read0
    );
start_single_read_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => start_single_read_i_1_n_0,
      Q => start_single_read_reg_n_0,
      R => clear
    );
start_single_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD02000200"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => writes_done,
      I2 => mst_exec_state(1),
      I3 => start_single_write0,
      I4 => \^m_axi_bready\,
      I5 => start_single_write_reg_n_0,
      O => start_single_write_i_1_n_0
    );
start_single_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => last_write,
      I1 => \^axi_lite_awvalid\,
      I2 => axi_lite_bvalid,
      I3 => write_issued_reg_n_0,
      I4 => \^axi_lite_wvalid\,
      I5 => start_single_write_reg_n_0,
      O => start_single_write0
    );
start_single_write_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => start_single_write_i_1_n_0,
      Q => start_single_write_reg_n_0,
      R => clear
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => write_index,
      O => \write_index[0]_i_1_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => \write_index[0]_i_1_n_0\,
      Q => write_index,
      R => axi_awvalid_i_1_n_0
    );
write_issued_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF02000200"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => writes_done,
      I2 => mst_exec_state(1),
      I3 => start_single_write0,
      I4 => \^m_axi_bready\,
      I5 => write_issued_reg_n_0,
      O => write_issued_i_1_n_0
    );
write_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => write_issued_i_1_n_0,
      Q => write_issued_reg_n_0,
      R => clear
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => axi_lite_bvalid,
      I1 => last_write,
      I2 => \^m_axi_bready\,
      I3 => writes_done,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_lite_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => axi_awvalid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CMDA_controller_0_0_CMDA_controller_v1_0 is
  port (
    axi_lite_rready : out STD_LOGIC;
    axi_lite_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    axi_lite_arvalid : out STD_LOGIC;
    axi_lite_awvalid : out STD_LOGIC;
    axi_lite_wvalid : out STD_LOGIC;
    axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    done : out STD_LOGIC;
    axi_lite_aresetn : in STD_LOGIC;
    axi_lite_rdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_lite_rvalid : in STD_LOGIC;
    start : in STD_LOGIC;
    img_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_aclk : in STD_LOGIC;
    x_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    y_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    frame_buffer_location : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_bvalid : in STD_LOGIC;
    delay_per_line : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_arready : in STD_LOGIC;
    axi_lite_wready : in STD_LOGIC;
    axi_lite_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CMDA_controller_0_0_CMDA_controller_v1_0 : entity is "CMDA_controller_v1_0";
end design_1_CMDA_controller_0_0_CMDA_controller_v1_0;

architecture STRUCTURE of design_1_CMDA_controller_0_0_CMDA_controller_v1_0 is
begin
CMDA_controller_v1_0_axi_lite_inst: entity work.design_1_CMDA_controller_0_0_CMDA_controller_v1_0_axi_lite
     port map (
      M_AXI_BREADY => M_AXI_BREADY,
      axi_lite_aclk => axi_lite_aclk,
      axi_lite_araddr(1 downto 0) => axi_lite_araddr(1 downto 0),
      axi_lite_aresetn => axi_lite_aresetn,
      axi_lite_arready => axi_lite_arready,
      axi_lite_arvalid => axi_lite_arvalid,
      axi_lite_awaddr(4 downto 0) => axi_lite_awaddr(4 downto 0),
      axi_lite_awready => axi_lite_awready,
      axi_lite_awvalid => axi_lite_awvalid,
      axi_lite_bvalid => axi_lite_bvalid,
      axi_lite_rdata(2 downto 0) => axi_lite_rdata(2 downto 0),
      axi_lite_rready => axi_lite_rready,
      axi_lite_rvalid => axi_lite_rvalid,
      axi_lite_wdata(31 downto 0) => axi_lite_wdata(31 downto 0),
      axi_lite_wready => axi_lite_wready,
      axi_lite_wvalid => axi_lite_wvalid,
      delay_per_line(31 downto 0) => delay_per_line(31 downto 0),
      done => done,
      frame_buffer_location(31 downto 0) => frame_buffer_location(31 downto 0),
      img_addr(31 downto 0) => img_addr(31 downto 0),
      start => start,
      x_location(10 downto 0) => x_location(10 downto 0),
      y_location(10 downto 0) => y_location(10 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CMDA_controller_0_0 is
  port (
    img_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_buffer_location : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    x_location : in STD_LOGIC_VECTOR ( 10 downto 0 );
    start : in STD_LOGIC;
    done : out STD_LOGIC;
    delay_per_line : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_lite_awvalid : out STD_LOGIC;
    axi_lite_awready : in STD_LOGIC;
    axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_lite_wvalid : out STD_LOGIC;
    axi_lite_wready : in STD_LOGIC;
    axi_lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_lite_bvalid : in STD_LOGIC;
    axi_lite_bready : out STD_LOGIC;
    axi_lite_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_lite_arvalid : out STD_LOGIC;
    axi_lite_arready : in STD_LOGIC;
    axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_lite_rvalid : in STD_LOGIC;
    axi_lite_rready : out STD_LOGIC;
    axi_lite_aclk : in STD_LOGIC;
    axi_lite_aresetn : in STD_LOGIC;
    axi_lite_error : out STD_LOGIC;
    axi_lite_txn_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CMDA_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CMDA_controller_0_0 : entity is "design_1_CMDA_controller_0_0,CMDA_controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_CMDA_controller_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_CMDA_controller_0_0 : entity is "CMDA_controller_v1_0,Vivado 2018.1";
end design_1_CMDA_controller_0_0;

architecture STRUCTURE of design_1_CMDA_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^axi_lite_araddr\ : STD_LOGIC_VECTOR ( 30 downto 2 );
  signal \^axi_lite_awaddr\ : STD_LOGIC_VECTOR ( 30 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 axi_lite_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_lite_aclk : signal is "XIL_INTERFACENAME axi_lite_CLK, ASSOCIATED_BUSIF axi_lite, ASSOCIATED_RESET axi_lite_aresetn:axi_lite_RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_lite_RST RST";
  attribute X_INTERFACE_PARAMETER of axi_lite_aresetn : signal is "XIL_INTERFACENAME axi_lite_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 axi_lite ARREADY";
  attribute X_INTERFACE_INFO of axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 axi_lite ARVALID";
  attribute X_INTERFACE_INFO of axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 axi_lite AWREADY";
  attribute X_INTERFACE_INFO of axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 axi_lite AWVALID";
  attribute X_INTERFACE_INFO of axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 axi_lite BREADY";
  attribute X_INTERFACE_INFO of axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 axi_lite BVALID";
  attribute X_INTERFACE_INFO of axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 axi_lite RREADY";
  attribute X_INTERFACE_PARAMETER of axi_lite_rready : signal is "XIL_INTERFACENAME axi_lite, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 axi_lite RVALID";
  attribute X_INTERFACE_INFO of axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 axi_lite WREADY";
  attribute X_INTERFACE_INFO of axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 axi_lite WVALID";
  attribute X_INTERFACE_INFO of axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 axi_lite ARADDR";
  attribute X_INTERFACE_INFO of axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 axi_lite ARPROT";
  attribute X_INTERFACE_INFO of axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 axi_lite AWADDR";
  attribute X_INTERFACE_INFO of axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 axi_lite AWPROT";
  attribute X_INTERFACE_INFO of axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 axi_lite BRESP";
  attribute X_INTERFACE_INFO of axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 axi_lite RDATA";
  attribute X_INTERFACE_INFO of axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 axi_lite RRESP";
  attribute X_INTERFACE_INFO of axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 axi_lite WDATA";
  attribute X_INTERFACE_INFO of axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 axi_lite WSTRB";
begin
  axi_lite_araddr(31) <= \<const0>\;
  axi_lite_araddr(30) <= \^axi_lite_araddr\(30);
  axi_lite_araddr(29) <= \<const0>\;
  axi_lite_araddr(28) <= \<const0>\;
  axi_lite_araddr(27) <= \<const0>\;
  axi_lite_araddr(26) <= \^axi_lite_araddr\(30);
  axi_lite_araddr(25) <= \<const0>\;
  axi_lite_araddr(24) <= \<const0>\;
  axi_lite_araddr(23) <= \^axi_lite_araddr\(30);
  axi_lite_araddr(22) <= \<const0>\;
  axi_lite_araddr(21) <= \^axi_lite_araddr\(30);
  axi_lite_araddr(20) <= \<const0>\;
  axi_lite_araddr(19) <= \<const0>\;
  axi_lite_araddr(18) <= \<const0>\;
  axi_lite_araddr(17) <= \<const0>\;
  axi_lite_araddr(16) <= \<const0>\;
  axi_lite_araddr(15) <= \<const0>\;
  axi_lite_araddr(14) <= \<const0>\;
  axi_lite_araddr(13) <= \<const0>\;
  axi_lite_araddr(12) <= \<const0>\;
  axi_lite_araddr(11) <= \<const0>\;
  axi_lite_araddr(10) <= \<const0>\;
  axi_lite_araddr(9) <= \<const0>\;
  axi_lite_araddr(8) <= \<const0>\;
  axi_lite_araddr(7) <= \<const0>\;
  axi_lite_araddr(6) <= \<const0>\;
  axi_lite_araddr(5) <= \<const0>\;
  axi_lite_araddr(4) <= \<const0>\;
  axi_lite_araddr(3) <= \<const0>\;
  axi_lite_araddr(2) <= \^axi_lite_araddr\(2);
  axi_lite_araddr(1) <= \<const0>\;
  axi_lite_araddr(0) <= \<const0>\;
  axi_lite_arprot(2) <= \<const0>\;
  axi_lite_arprot(1) <= \<const0>\;
  axi_lite_arprot(0) <= \<const1>\;
  axi_lite_awaddr(31) <= \<const0>\;
  axi_lite_awaddr(30) <= \^axi_lite_awaddr\(30);
  axi_lite_awaddr(29) <= \<const0>\;
  axi_lite_awaddr(28) <= \<const0>\;
  axi_lite_awaddr(27) <= \<const0>\;
  axi_lite_awaddr(26) <= \^axi_lite_awaddr\(30);
  axi_lite_awaddr(25) <= \<const0>\;
  axi_lite_awaddr(24) <= \<const0>\;
  axi_lite_awaddr(23) <= \^axi_lite_awaddr\(30);
  axi_lite_awaddr(22) <= \<const0>\;
  axi_lite_awaddr(21) <= \^axi_lite_awaddr\(30);
  axi_lite_awaddr(20) <= \<const0>\;
  axi_lite_awaddr(19) <= \<const0>\;
  axi_lite_awaddr(18) <= \<const0>\;
  axi_lite_awaddr(17) <= \<const0>\;
  axi_lite_awaddr(16) <= \<const0>\;
  axi_lite_awaddr(15) <= \<const0>\;
  axi_lite_awaddr(14) <= \<const0>\;
  axi_lite_awaddr(13) <= \<const0>\;
  axi_lite_awaddr(12) <= \<const0>\;
  axi_lite_awaddr(11) <= \<const0>\;
  axi_lite_awaddr(10) <= \<const0>\;
  axi_lite_awaddr(9) <= \<const0>\;
  axi_lite_awaddr(8) <= \<const0>\;
  axi_lite_awaddr(7) <= \<const0>\;
  axi_lite_awaddr(6) <= \<const0>\;
  axi_lite_awaddr(5 downto 2) <= \^axi_lite_awaddr\(5 downto 2);
  axi_lite_awaddr(1) <= \<const0>\;
  axi_lite_awaddr(0) <= \<const0>\;
  axi_lite_awprot(2) <= \<const0>\;
  axi_lite_awprot(1) <= \<const0>\;
  axi_lite_awprot(0) <= \<const0>\;
  axi_lite_error <= \<const0>\;
  axi_lite_txn_done <= \<const0>\;
  axi_lite_wstrb(3) <= \<const1>\;
  axi_lite_wstrb(2) <= \<const1>\;
  axi_lite_wstrb(1) <= \<const1>\;
  axi_lite_wstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_CMDA_controller_0_0_CMDA_controller_v1_0
     port map (
      M_AXI_BREADY => axi_lite_bready,
      axi_lite_aclk => axi_lite_aclk,
      axi_lite_araddr(1) => \^axi_lite_araddr\(30),
      axi_lite_araddr(0) => \^axi_lite_araddr\(2),
      axi_lite_aresetn => axi_lite_aresetn,
      axi_lite_arready => axi_lite_arready,
      axi_lite_arvalid => axi_lite_arvalid,
      axi_lite_awaddr(4) => \^axi_lite_awaddr\(30),
      axi_lite_awaddr(3 downto 0) => \^axi_lite_awaddr\(5 downto 2),
      axi_lite_awready => axi_lite_awready,
      axi_lite_awvalid => axi_lite_awvalid,
      axi_lite_bvalid => axi_lite_bvalid,
      axi_lite_rdata(2) => axi_lite_rdata(6),
      axi_lite_rdata(1 downto 0) => axi_lite_rdata(2 downto 1),
      axi_lite_rready => axi_lite_rready,
      axi_lite_rvalid => axi_lite_rvalid,
      axi_lite_wdata(31 downto 0) => axi_lite_wdata(31 downto 0),
      axi_lite_wready => axi_lite_wready,
      axi_lite_wvalid => axi_lite_wvalid,
      delay_per_line(31 downto 0) => delay_per_line(31 downto 0),
      done => done,
      frame_buffer_location(31 downto 0) => frame_buffer_location(31 downto 0),
      img_addr(31 downto 0) => img_addr(31 downto 0),
      start => start,
      x_location(10 downto 0) => x_location(10 downto 0),
      y_location(10 downto 0) => y_location(10 downto 0)
    );
end STRUCTURE;

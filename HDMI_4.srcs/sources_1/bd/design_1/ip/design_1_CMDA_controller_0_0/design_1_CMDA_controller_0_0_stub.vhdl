-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr  3 19:47:13 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/VivadoWS/HDMI_4/HDMI_4.srcs/sources_1/bd/design_1/ip/design_1_CMDA_controller_0_0/design_1_CMDA_controller_0_0_stub.vhdl
-- Design      : design_1_CMDA_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_CMDA_controller_0_0 is
  Port ( 
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

end design_1_CMDA_controller_0_0;

architecture stub of design_1_CMDA_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "img_addr[31:0],frame_buffer_location[31:0],y_location[10:0],x_location[10:0],start,done,delay_per_line[31:0],axi_lite_awaddr[31:0],axi_lite_awprot[2:0],axi_lite_awvalid,axi_lite_awready,axi_lite_wdata[31:0],axi_lite_wstrb[3:0],axi_lite_wvalid,axi_lite_wready,axi_lite_bresp[1:0],axi_lite_bvalid,axi_lite_bready,axi_lite_araddr[31:0],axi_lite_arprot[2:0],axi_lite_arvalid,axi_lite_arready,axi_lite_rdata[31:0],axi_lite_rresp[1:0],axi_lite_rvalid,axi_lite_rready,axi_lite_aclk,axi_lite_aresetn,axi_lite_error,axi_lite_txn_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CMDA_controller_v1_0,Vivado 2018.1";
begin
end;

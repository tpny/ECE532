-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Mar 20 16:13:27 2020
-- Host        : DESKTOP-BR238V7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_xlconstant_1_0 -prefix
--               design_1_xlconstant_1_0_ design_1_xlconstant_1_0_stub.vhdl
-- Design      : design_1_xlconstant_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlconstant_1_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_xlconstant_1_0;

architecture stub of design_1_xlconstant_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
begin
end;
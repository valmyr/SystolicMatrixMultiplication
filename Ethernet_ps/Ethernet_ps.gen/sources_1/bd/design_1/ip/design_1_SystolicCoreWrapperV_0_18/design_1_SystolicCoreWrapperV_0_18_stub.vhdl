-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Fri Jan  2 17:28:18 2026
-- Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/Ethernet_ps.gen/sources_1/bd/design_1/ip/design_1_SystolicCoreWrapperV_0_18/design_1_SystolicCoreWrapperV_0_18_stub.vhdl
-- Design      : design_1_SystolicCoreWrapperV_0_18
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_SystolicCoreWrapperV_0_18 is
  Port ( 
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    gpio_input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SystolicCoreWrapperV_0_18 : entity is "design_1_SystolicCoreWrapperV_0_18,SystolicCoreWrapperVerilogGlobal,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_SystolicCoreWrapperV_0_18 : entity is "design_1_SystolicCoreWrapperV_0_18,SystolicCoreWrapperVerilogGlobal,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SystolicCoreWrapperVerilogGlobal,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BYTESIZES=8,WIDTHx=4,SIZE=16,WIDTH=8}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_SystolicCoreWrapperV_0_18 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_SystolicCoreWrapperV_0_18 : entity is "module_ref";
end design_1_SystolicCoreWrapperV_0_18;

architecture stub of design_1_SystolicCoreWrapperV_0_18 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,nrst,gpio_input[15:0],gpio_output[15:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "SystolicCoreWrapperVerilogGlobal,Vivado 2025.2";
begin
end;

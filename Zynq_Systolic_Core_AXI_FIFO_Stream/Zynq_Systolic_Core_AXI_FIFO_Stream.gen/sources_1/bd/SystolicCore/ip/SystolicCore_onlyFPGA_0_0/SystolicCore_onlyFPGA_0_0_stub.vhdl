-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Fri Jan 30 01:08:25 2026
-- Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream/Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_onlyFPGA_0_0/SystolicCore_onlyFPGA_0_0_stub.vhdl
-- Design      : SystolicCore_onlyFPGA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SystolicCore_onlyFPGA_0_0 is
  Port ( 
    nreset : in STD_LOGIC;
    clock : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystolicCore_onlyFPGA_0_0 : entity is "SystolicCore_onlyFPGA_0_0,onlyFPGA,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SystolicCore_onlyFPGA_0_0 : entity is "SystolicCore_onlyFPGA_0_0,onlyFPGA,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=onlyFPGA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SystolicCore_onlyFPGA_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of SystolicCore_onlyFPGA_0_0 : entity is "module_ref";
end SystolicCore_onlyFPGA_0_0;

architecture stub of SystolicCore_onlyFPGA_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "nreset,clock";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SystolicCore_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "onlyFPGA,Vivado 2025.2";
begin
end;

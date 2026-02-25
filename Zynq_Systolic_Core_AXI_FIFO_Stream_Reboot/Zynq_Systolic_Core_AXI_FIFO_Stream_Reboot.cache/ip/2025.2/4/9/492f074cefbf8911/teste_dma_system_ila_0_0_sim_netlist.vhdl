-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Tue Feb 24 20:15:21 2026
-- Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ teste_dma_system_ila_0_0_sim_netlist.vhdl
-- Design      : teste_dma_system_ila_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXI_awid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC;
    SLOT_0_AXI_awlen : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC;
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awuser : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC;
    SLOT_0_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wuser : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bid : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_buser : in STD_LOGIC;
    SLOT_0_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arid : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC;
    SLOT_0_AXI_arlen : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC;
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_aruser : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_ruser : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tid : in STD_LOGIC;
    SLOT_1_AXIS_tdest : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC;
    SLOT_1_AXIS_tstrb : in STD_LOGIC;
    SLOT_1_AXIS_tkeep : in STD_LOGIC;
    SLOT_1_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tuser : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC;
    SLOT_2_AXI_awlen : in STD_LOGIC;
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC;
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awuser : in STD_LOGIC;
    SLOT_2_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC;
    SLOT_2_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wuser : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_bid : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_buser : in STD_LOGIC;
    SLOT_2_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC;
    SLOT_2_AXI_arlen : in STD_LOGIC;
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC;
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_aruser : in STD_LOGIC;
    SLOT_2_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_rid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_ruser : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC;
    SLOT_3_AXI_awlen : in STD_LOGIC;
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awlock : in STD_LOGIC;
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awuser : in STD_LOGIC;
    SLOT_3_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC;
    SLOT_3_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wuser : in STD_LOGIC;
    SLOT_3_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_bid : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_buser : in STD_LOGIC;
    SLOT_3_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_arid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC;
    SLOT_3_AXI_arlen : in STD_LOGIC;
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arlock : in STD_LOGIC;
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_aruser : in STD_LOGIC;
    SLOT_3_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_rid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_ruser : in STD_LOGIC;
    SLOT_3_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awid : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC;
    SLOT_4_AXI_awlen : in STD_LOGIC;
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awlock : in STD_LOGIC;
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awuser : in STD_LOGIC;
    SLOT_4_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wid : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC;
    SLOT_4_AXI_wstrb : in STD_LOGIC;
    SLOT_4_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wuser : in STD_LOGIC;
    SLOT_4_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_bid : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_buser : in STD_LOGIC;
    SLOT_4_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_arid : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC;
    SLOT_4_AXI_arlen : in STD_LOGIC;
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arlock : in STD_LOGIC;
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_aruser : in STD_LOGIC;
    SLOT_4_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_rid : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC;
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_ruser : in STD_LOGIC;
    SLOT_4_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_awid : in STD_LOGIC;
    SLOT_5_AXI_awaddr : in STD_LOGIC;
    SLOT_5_AXI_awlen : in STD_LOGIC;
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awlock : in STD_LOGIC;
    SLOT_5_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awuser : in STD_LOGIC;
    SLOT_5_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wid : in STD_LOGIC;
    SLOT_5_AXI_wdata : in STD_LOGIC;
    SLOT_5_AXI_wstrb : in STD_LOGIC;
    SLOT_5_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wuser : in STD_LOGIC;
    SLOT_5_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_bid : in STD_LOGIC;
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_buser : in STD_LOGIC;
    SLOT_5_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_arid : in STD_LOGIC;
    SLOT_5_AXI_araddr : in STD_LOGIC;
    SLOT_5_AXI_arlen : in STD_LOGIC;
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arlock : in STD_LOGIC;
    SLOT_5_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_aruser : in STD_LOGIC;
    SLOT_5_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_rid : in STD_LOGIC;
    SLOT_5_AXI_rdata : in STD_LOGIC;
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_ruser : in STD_LOGIC;
    SLOT_5_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tid : in STD_LOGIC;
    SLOT_6_AXIS_tdest : in STD_LOGIC;
    SLOT_6_AXIS_tdata : in STD_LOGIC;
    SLOT_6_AXIS_tstrb : in STD_LOGIC;
    SLOT_6_AXIS_tkeep : in STD_LOGIC;
    SLOT_6_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tuser : in STD_LOGIC;
    SLOT_6_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tid : in STD_LOGIC;
    SLOT_7_AXIS_tdest : in STD_LOGIC;
    SLOT_7_AXIS_tdata : in STD_LOGIC;
    SLOT_7_AXIS_tstrb : in STD_LOGIC;
    SLOT_7_AXIS_tkeep : in STD_LOGIC;
    SLOT_7_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tuser : in STD_LOGIC;
    SLOT_7_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "teste_dma_system_ila_0_0,bd_2743_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_2743_0,Vivado 2025.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2743_0 is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC;
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arid : in STD_LOGIC;
    SLOT_0_AXI_arlen : in STD_LOGIC;
    SLOT_0_AXI_arlock : in STD_LOGIC;
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_aruser : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC;
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awid : in STD_LOGIC;
    SLOT_0_AXI_awlen : in STD_LOGIC;
    SLOT_0_AXI_awlock : in STD_LOGIC;
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awuser : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_buser : in STD_LOGIC;
    SLOT_0_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rdata : in STD_LOGIC;
    SLOT_0_AXI_rid : in STD_LOGIC;
    SLOT_0_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_ruser : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wdata : in STD_LOGIC;
    SLOT_0_AXI_wid : in STD_LOGIC;
    SLOT_0_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC;
    SLOT_0_AXI_wuser : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tdata : in STD_LOGIC;
    SLOT_1_AXIS_tdest : in STD_LOGIC;
    SLOT_1_AXIS_tid : in STD_LOGIC;
    SLOT_1_AXIS_tkeep : in STD_LOGIC;
    SLOT_1_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tstrb : in STD_LOGIC;
    SLOT_1_AXIS_tuser : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_araddr : in STD_LOGIC;
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arid : in STD_LOGIC;
    SLOT_2_AXI_arlen : in STD_LOGIC;
    SLOT_2_AXI_arlock : in STD_LOGIC;
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_aruser : in STD_LOGIC;
    SLOT_2_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awaddr : in STD_LOGIC;
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awid : in STD_LOGIC;
    SLOT_2_AXI_awlen : in STD_LOGIC;
    SLOT_2_AXI_awlock : in STD_LOGIC;
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awuser : in STD_LOGIC;
    SLOT_2_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_bid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_buser : in STD_LOGIC;
    SLOT_2_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_rdata : in STD_LOGIC;
    SLOT_2_AXI_rid : in STD_LOGIC;
    SLOT_2_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_ruser : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wdata : in STD_LOGIC;
    SLOT_2_AXI_wid : in STD_LOGIC;
    SLOT_2_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_wstrb : in STD_LOGIC;
    SLOT_2_AXI_wuser : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_araddr : in STD_LOGIC;
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arid : in STD_LOGIC;
    SLOT_3_AXI_arlen : in STD_LOGIC;
    SLOT_3_AXI_arlock : in STD_LOGIC;
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_aruser : in STD_LOGIC;
    SLOT_3_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awaddr : in STD_LOGIC;
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awid : in STD_LOGIC;
    SLOT_3_AXI_awlen : in STD_LOGIC;
    SLOT_3_AXI_awlock : in STD_LOGIC;
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awuser : in STD_LOGIC;
    SLOT_3_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_bid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_buser : in STD_LOGIC;
    SLOT_3_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_rdata : in STD_LOGIC;
    SLOT_3_AXI_rid : in STD_LOGIC;
    SLOT_3_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_ruser : in STD_LOGIC;
    SLOT_3_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wdata : in STD_LOGIC;
    SLOT_3_AXI_wid : in STD_LOGIC;
    SLOT_3_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_wstrb : in STD_LOGIC;
    SLOT_3_AXI_wuser : in STD_LOGIC;
    SLOT_3_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_araddr : in STD_LOGIC;
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arid : in STD_LOGIC;
    SLOT_4_AXI_arlen : in STD_LOGIC;
    SLOT_4_AXI_arlock : in STD_LOGIC;
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_aruser : in STD_LOGIC;
    SLOT_4_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awaddr : in STD_LOGIC;
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awid : in STD_LOGIC;
    SLOT_4_AXI_awlen : in STD_LOGIC;
    SLOT_4_AXI_awlock : in STD_LOGIC;
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awuser : in STD_LOGIC;
    SLOT_4_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_bid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_buser : in STD_LOGIC;
    SLOT_4_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_rdata : in STD_LOGIC;
    SLOT_4_AXI_rid : in STD_LOGIC;
    SLOT_4_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_ruser : in STD_LOGIC;
    SLOT_4_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wdata : in STD_LOGIC;
    SLOT_4_AXI_wid : in STD_LOGIC;
    SLOT_4_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_wstrb : in STD_LOGIC;
    SLOT_4_AXI_wuser : in STD_LOGIC;
    SLOT_4_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_araddr : in STD_LOGIC;
    SLOT_5_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arid : in STD_LOGIC;
    SLOT_5_AXI_arlen : in STD_LOGIC;
    SLOT_5_AXI_arlock : in STD_LOGIC;
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_aruser : in STD_LOGIC;
    SLOT_5_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_awaddr : in STD_LOGIC;
    SLOT_5_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awid : in STD_LOGIC;
    SLOT_5_AXI_awlen : in STD_LOGIC;
    SLOT_5_AXI_awlock : in STD_LOGIC;
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awuser : in STD_LOGIC;
    SLOT_5_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_bid : in STD_LOGIC;
    SLOT_5_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_buser : in STD_LOGIC;
    SLOT_5_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_rdata : in STD_LOGIC;
    SLOT_5_AXI_rid : in STD_LOGIC;
    SLOT_5_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_ruser : in STD_LOGIC;
    SLOT_5_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wdata : in STD_LOGIC;
    SLOT_5_AXI_wid : in STD_LOGIC;
    SLOT_5_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_5_AXI_wstrb : in STD_LOGIC;
    SLOT_5_AXI_wuser : in STD_LOGIC;
    SLOT_5_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tdata : in STD_LOGIC;
    SLOT_6_AXIS_tdest : in STD_LOGIC;
    SLOT_6_AXIS_tid : in STD_LOGIC;
    SLOT_6_AXIS_tkeep : in STD_LOGIC;
    SLOT_6_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_6_AXIS_tstrb : in STD_LOGIC;
    SLOT_6_AXIS_tuser : in STD_LOGIC;
    SLOT_6_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tdata : in STD_LOGIC;
    SLOT_7_AXIS_tdest : in STD_LOGIC;
    SLOT_7_AXIS_tid : in STD_LOGIC;
    SLOT_7_AXIS_tkeep : in STD_LOGIC;
    SLOT_7_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_7_AXIS_tstrb : in STD_LOGIC;
    SLOT_7_AXIS_tuser : in STD_LOGIC;
    SLOT_7_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2743_0;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "teste_dma_system_ila_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of SLOT_0_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXI_awid : signal is "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WUSER";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDEST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID";
  attribute X_INTERFACE_MODE of SLOT_1_AXIS_tid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXIS_tid : signal is "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWID";
  attribute X_INTERFACE_MODE of SLOT_2_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_2_AXI_awid : signal is "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 49, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WUSER";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWID";
  attribute X_INTERFACE_MODE of SLOT_3_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_3_AXI_awid : signal is "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WUSER";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWID";
  attribute X_INTERFACE_MODE of SLOT_4_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_4_AXI_awid : signal is "XIL_INTERFACENAME SLOT_4_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990005, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WUSER";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWID";
  attribute X_INTERFACE_MODE of SLOT_5_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_5_AXI_awid : signal is "XIL_INTERFACENAME SLOT_5_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990005, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WUSER";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDATA";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDEST";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tid : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TID";
  attribute X_INTERFACE_MODE of SLOT_6_AXIS_tid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_6_AXIS_tid : signal is "XIL_INTERFACENAME SLOT_6_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TSTRB";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TUSER";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDEST";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tid : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TID";
  attribute X_INTERFACE_MODE of SLOT_7_AXIS_tid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of SLOT_7_AXIS_tid : signal is "XIL_INTERFACENAME SLOT_7_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TSTRB";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TUSER";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI:SLOT_5_AXI:SLOT_6_AXIS:SLOT_7_AXIS, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_5_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_6_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_7_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID";
begin
inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2743_0
     port map (
      SLOT_0_AXI_araddr => SLOT_0_AXI_araddr,
      SLOT_0_AXI_arburst(1 downto 0) => SLOT_0_AXI_arburst(1 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => SLOT_0_AXI_arcache(3 downto 0),
      SLOT_0_AXI_arid => SLOT_0_AXI_arid,
      SLOT_0_AXI_arlen => SLOT_0_AXI_arlen,
      SLOT_0_AXI_arlock => SLOT_0_AXI_arlock,
      SLOT_0_AXI_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      SLOT_0_AXI_arqos(3 downto 0) => SLOT_0_AXI_arqos(3 downto 0),
      SLOT_0_AXI_arready(0) => SLOT_0_AXI_arready(0),
      SLOT_0_AXI_arregion(3 downto 0) => SLOT_0_AXI_arregion(3 downto 0),
      SLOT_0_AXI_arsize(2 downto 0) => SLOT_0_AXI_arsize(2 downto 0),
      SLOT_0_AXI_aruser => SLOT_0_AXI_aruser,
      SLOT_0_AXI_arvalid(0) => SLOT_0_AXI_arvalid(0),
      SLOT_0_AXI_awaddr => SLOT_0_AXI_awaddr,
      SLOT_0_AXI_awburst(1 downto 0) => SLOT_0_AXI_awburst(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => SLOT_0_AXI_awcache(3 downto 0),
      SLOT_0_AXI_awid => SLOT_0_AXI_awid,
      SLOT_0_AXI_awlen => SLOT_0_AXI_awlen,
      SLOT_0_AXI_awlock => SLOT_0_AXI_awlock,
      SLOT_0_AXI_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      SLOT_0_AXI_awqos(3 downto 0) => SLOT_0_AXI_awqos(3 downto 0),
      SLOT_0_AXI_awready(0) => SLOT_0_AXI_awready(0),
      SLOT_0_AXI_awregion(3 downto 0) => SLOT_0_AXI_awregion(3 downto 0),
      SLOT_0_AXI_awsize(2 downto 0) => SLOT_0_AXI_awsize(2 downto 0),
      SLOT_0_AXI_awuser => SLOT_0_AXI_awuser,
      SLOT_0_AXI_awvalid(0) => SLOT_0_AXI_awvalid(0),
      SLOT_0_AXI_bid => SLOT_0_AXI_bid,
      SLOT_0_AXI_bready(0) => SLOT_0_AXI_bready(0),
      SLOT_0_AXI_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      SLOT_0_AXI_buser => SLOT_0_AXI_buser,
      SLOT_0_AXI_bvalid(0) => SLOT_0_AXI_bvalid(0),
      SLOT_0_AXI_rdata => SLOT_0_AXI_rdata,
      SLOT_0_AXI_rid => SLOT_0_AXI_rid,
      SLOT_0_AXI_rlast(0) => SLOT_0_AXI_rlast(0),
      SLOT_0_AXI_rready(0) => SLOT_0_AXI_rready(0),
      SLOT_0_AXI_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      SLOT_0_AXI_ruser => SLOT_0_AXI_ruser,
      SLOT_0_AXI_rvalid(0) => SLOT_0_AXI_rvalid(0),
      SLOT_0_AXI_wdata => SLOT_0_AXI_wdata,
      SLOT_0_AXI_wid => SLOT_0_AXI_wid,
      SLOT_0_AXI_wlast(0) => SLOT_0_AXI_wlast(0),
      SLOT_0_AXI_wready(0) => SLOT_0_AXI_wready(0),
      SLOT_0_AXI_wstrb => SLOT_0_AXI_wstrb,
      SLOT_0_AXI_wuser => SLOT_0_AXI_wuser,
      SLOT_0_AXI_wvalid(0) => SLOT_0_AXI_wvalid(0),
      SLOT_1_AXIS_tdata => SLOT_1_AXIS_tdata,
      SLOT_1_AXIS_tdest => SLOT_1_AXIS_tdest,
      SLOT_1_AXIS_tid => SLOT_1_AXIS_tid,
      SLOT_1_AXIS_tkeep => SLOT_1_AXIS_tkeep,
      SLOT_1_AXIS_tlast(0) => SLOT_1_AXIS_tlast(0),
      SLOT_1_AXIS_tready(0) => SLOT_1_AXIS_tready(0),
      SLOT_1_AXIS_tstrb => SLOT_1_AXIS_tstrb,
      SLOT_1_AXIS_tuser => SLOT_1_AXIS_tuser,
      SLOT_1_AXIS_tvalid(0) => SLOT_1_AXIS_tvalid(0),
      SLOT_2_AXI_araddr => SLOT_2_AXI_araddr,
      SLOT_2_AXI_arburst(1 downto 0) => SLOT_2_AXI_arburst(1 downto 0),
      SLOT_2_AXI_arcache(3 downto 0) => SLOT_2_AXI_arcache(3 downto 0),
      SLOT_2_AXI_arid => SLOT_2_AXI_arid,
      SLOT_2_AXI_arlen => SLOT_2_AXI_arlen,
      SLOT_2_AXI_arlock => SLOT_2_AXI_arlock,
      SLOT_2_AXI_arprot(2 downto 0) => SLOT_2_AXI_arprot(2 downto 0),
      SLOT_2_AXI_arqos(3 downto 0) => SLOT_2_AXI_arqos(3 downto 0),
      SLOT_2_AXI_arready(0) => SLOT_2_AXI_arready(0),
      SLOT_2_AXI_arregion(3 downto 0) => SLOT_2_AXI_arregion(3 downto 0),
      SLOT_2_AXI_arsize(2 downto 0) => SLOT_2_AXI_arsize(2 downto 0),
      SLOT_2_AXI_aruser => SLOT_2_AXI_aruser,
      SLOT_2_AXI_arvalid(0) => SLOT_2_AXI_arvalid(0),
      SLOT_2_AXI_awaddr => SLOT_2_AXI_awaddr,
      SLOT_2_AXI_awburst(1 downto 0) => SLOT_2_AXI_awburst(1 downto 0),
      SLOT_2_AXI_awcache(3 downto 0) => SLOT_2_AXI_awcache(3 downto 0),
      SLOT_2_AXI_awid => SLOT_2_AXI_awid,
      SLOT_2_AXI_awlen => SLOT_2_AXI_awlen,
      SLOT_2_AXI_awlock => SLOT_2_AXI_awlock,
      SLOT_2_AXI_awprot(2 downto 0) => SLOT_2_AXI_awprot(2 downto 0),
      SLOT_2_AXI_awqos(3 downto 0) => SLOT_2_AXI_awqos(3 downto 0),
      SLOT_2_AXI_awready(0) => SLOT_2_AXI_awready(0),
      SLOT_2_AXI_awregion(3 downto 0) => SLOT_2_AXI_awregion(3 downto 0),
      SLOT_2_AXI_awsize(2 downto 0) => SLOT_2_AXI_awsize(2 downto 0),
      SLOT_2_AXI_awuser => SLOT_2_AXI_awuser,
      SLOT_2_AXI_awvalid(0) => SLOT_2_AXI_awvalid(0),
      SLOT_2_AXI_bid => SLOT_2_AXI_bid,
      SLOT_2_AXI_bready(0) => SLOT_2_AXI_bready(0),
      SLOT_2_AXI_bresp(1 downto 0) => SLOT_2_AXI_bresp(1 downto 0),
      SLOT_2_AXI_buser => SLOT_2_AXI_buser,
      SLOT_2_AXI_bvalid(0) => SLOT_2_AXI_bvalid(0),
      SLOT_2_AXI_rdata => SLOT_2_AXI_rdata,
      SLOT_2_AXI_rid => SLOT_2_AXI_rid,
      SLOT_2_AXI_rlast(0) => SLOT_2_AXI_rlast(0),
      SLOT_2_AXI_rready(0) => SLOT_2_AXI_rready(0),
      SLOT_2_AXI_rresp(1 downto 0) => SLOT_2_AXI_rresp(1 downto 0),
      SLOT_2_AXI_ruser => SLOT_2_AXI_ruser,
      SLOT_2_AXI_rvalid(0) => SLOT_2_AXI_rvalid(0),
      SLOT_2_AXI_wdata => SLOT_2_AXI_wdata,
      SLOT_2_AXI_wid => SLOT_2_AXI_wid,
      SLOT_2_AXI_wlast(0) => SLOT_2_AXI_wlast(0),
      SLOT_2_AXI_wready(0) => SLOT_2_AXI_wready(0),
      SLOT_2_AXI_wstrb => SLOT_2_AXI_wstrb,
      SLOT_2_AXI_wuser => SLOT_2_AXI_wuser,
      SLOT_2_AXI_wvalid(0) => SLOT_2_AXI_wvalid(0),
      SLOT_3_AXI_araddr => SLOT_3_AXI_araddr,
      SLOT_3_AXI_arburst(1 downto 0) => SLOT_3_AXI_arburst(1 downto 0),
      SLOT_3_AXI_arcache(3 downto 0) => SLOT_3_AXI_arcache(3 downto 0),
      SLOT_3_AXI_arid => SLOT_3_AXI_arid,
      SLOT_3_AXI_arlen => SLOT_3_AXI_arlen,
      SLOT_3_AXI_arlock => SLOT_3_AXI_arlock,
      SLOT_3_AXI_arprot(2 downto 0) => SLOT_3_AXI_arprot(2 downto 0),
      SLOT_3_AXI_arqos(3 downto 0) => SLOT_3_AXI_arqos(3 downto 0),
      SLOT_3_AXI_arready(0) => SLOT_3_AXI_arready(0),
      SLOT_3_AXI_arregion(3 downto 0) => SLOT_3_AXI_arregion(3 downto 0),
      SLOT_3_AXI_arsize(2 downto 0) => SLOT_3_AXI_arsize(2 downto 0),
      SLOT_3_AXI_aruser => SLOT_3_AXI_aruser,
      SLOT_3_AXI_arvalid(0) => SLOT_3_AXI_arvalid(0),
      SLOT_3_AXI_awaddr => SLOT_3_AXI_awaddr,
      SLOT_3_AXI_awburst(1 downto 0) => SLOT_3_AXI_awburst(1 downto 0),
      SLOT_3_AXI_awcache(3 downto 0) => SLOT_3_AXI_awcache(3 downto 0),
      SLOT_3_AXI_awid => SLOT_3_AXI_awid,
      SLOT_3_AXI_awlen => SLOT_3_AXI_awlen,
      SLOT_3_AXI_awlock => SLOT_3_AXI_awlock,
      SLOT_3_AXI_awprot(2 downto 0) => SLOT_3_AXI_awprot(2 downto 0),
      SLOT_3_AXI_awqos(3 downto 0) => SLOT_3_AXI_awqos(3 downto 0),
      SLOT_3_AXI_awready(0) => SLOT_3_AXI_awready(0),
      SLOT_3_AXI_awregion(3 downto 0) => SLOT_3_AXI_awregion(3 downto 0),
      SLOT_3_AXI_awsize(2 downto 0) => SLOT_3_AXI_awsize(2 downto 0),
      SLOT_3_AXI_awuser => SLOT_3_AXI_awuser,
      SLOT_3_AXI_awvalid(0) => SLOT_3_AXI_awvalid(0),
      SLOT_3_AXI_bid => SLOT_3_AXI_bid,
      SLOT_3_AXI_bready(0) => SLOT_3_AXI_bready(0),
      SLOT_3_AXI_bresp(1 downto 0) => SLOT_3_AXI_bresp(1 downto 0),
      SLOT_3_AXI_buser => SLOT_3_AXI_buser,
      SLOT_3_AXI_bvalid(0) => SLOT_3_AXI_bvalid(0),
      SLOT_3_AXI_rdata => SLOT_3_AXI_rdata,
      SLOT_3_AXI_rid => SLOT_3_AXI_rid,
      SLOT_3_AXI_rlast(0) => SLOT_3_AXI_rlast(0),
      SLOT_3_AXI_rready(0) => SLOT_3_AXI_rready(0),
      SLOT_3_AXI_rresp(1 downto 0) => SLOT_3_AXI_rresp(1 downto 0),
      SLOT_3_AXI_ruser => SLOT_3_AXI_ruser,
      SLOT_3_AXI_rvalid(0) => SLOT_3_AXI_rvalid(0),
      SLOT_3_AXI_wdata => SLOT_3_AXI_wdata,
      SLOT_3_AXI_wid => SLOT_3_AXI_wid,
      SLOT_3_AXI_wlast(0) => SLOT_3_AXI_wlast(0),
      SLOT_3_AXI_wready(0) => SLOT_3_AXI_wready(0),
      SLOT_3_AXI_wstrb => SLOT_3_AXI_wstrb,
      SLOT_3_AXI_wuser => SLOT_3_AXI_wuser,
      SLOT_3_AXI_wvalid(0) => SLOT_3_AXI_wvalid(0),
      SLOT_4_AXI_araddr => SLOT_4_AXI_araddr,
      SLOT_4_AXI_arburst(1 downto 0) => SLOT_4_AXI_arburst(1 downto 0),
      SLOT_4_AXI_arcache(3 downto 0) => SLOT_4_AXI_arcache(3 downto 0),
      SLOT_4_AXI_arid => SLOT_4_AXI_arid,
      SLOT_4_AXI_arlen => SLOT_4_AXI_arlen,
      SLOT_4_AXI_arlock => SLOT_4_AXI_arlock,
      SLOT_4_AXI_arprot(2 downto 0) => SLOT_4_AXI_arprot(2 downto 0),
      SLOT_4_AXI_arqos(3 downto 0) => SLOT_4_AXI_arqos(3 downto 0),
      SLOT_4_AXI_arready(0) => SLOT_4_AXI_arready(0),
      SLOT_4_AXI_arregion(3 downto 0) => SLOT_4_AXI_arregion(3 downto 0),
      SLOT_4_AXI_arsize(2 downto 0) => SLOT_4_AXI_arsize(2 downto 0),
      SLOT_4_AXI_aruser => SLOT_4_AXI_aruser,
      SLOT_4_AXI_arvalid(0) => SLOT_4_AXI_arvalid(0),
      SLOT_4_AXI_awaddr => SLOT_4_AXI_awaddr,
      SLOT_4_AXI_awburst(1 downto 0) => SLOT_4_AXI_awburst(1 downto 0),
      SLOT_4_AXI_awcache(3 downto 0) => SLOT_4_AXI_awcache(3 downto 0),
      SLOT_4_AXI_awid => SLOT_4_AXI_awid,
      SLOT_4_AXI_awlen => SLOT_4_AXI_awlen,
      SLOT_4_AXI_awlock => SLOT_4_AXI_awlock,
      SLOT_4_AXI_awprot(2 downto 0) => SLOT_4_AXI_awprot(2 downto 0),
      SLOT_4_AXI_awqos(3 downto 0) => SLOT_4_AXI_awqos(3 downto 0),
      SLOT_4_AXI_awready(0) => SLOT_4_AXI_awready(0),
      SLOT_4_AXI_awregion(3 downto 0) => SLOT_4_AXI_awregion(3 downto 0),
      SLOT_4_AXI_awsize(2 downto 0) => SLOT_4_AXI_awsize(2 downto 0),
      SLOT_4_AXI_awuser => SLOT_4_AXI_awuser,
      SLOT_4_AXI_awvalid(0) => SLOT_4_AXI_awvalid(0),
      SLOT_4_AXI_bid => SLOT_4_AXI_bid,
      SLOT_4_AXI_bready(0) => SLOT_4_AXI_bready(0),
      SLOT_4_AXI_bresp(1 downto 0) => SLOT_4_AXI_bresp(1 downto 0),
      SLOT_4_AXI_buser => SLOT_4_AXI_buser,
      SLOT_4_AXI_bvalid(0) => SLOT_4_AXI_bvalid(0),
      SLOT_4_AXI_rdata => SLOT_4_AXI_rdata,
      SLOT_4_AXI_rid => SLOT_4_AXI_rid,
      SLOT_4_AXI_rlast(0) => SLOT_4_AXI_rlast(0),
      SLOT_4_AXI_rready(0) => SLOT_4_AXI_rready(0),
      SLOT_4_AXI_rresp(1 downto 0) => SLOT_4_AXI_rresp(1 downto 0),
      SLOT_4_AXI_ruser => SLOT_4_AXI_ruser,
      SLOT_4_AXI_rvalid(0) => SLOT_4_AXI_rvalid(0),
      SLOT_4_AXI_wdata => SLOT_4_AXI_wdata,
      SLOT_4_AXI_wid => SLOT_4_AXI_wid,
      SLOT_4_AXI_wlast(0) => SLOT_4_AXI_wlast(0),
      SLOT_4_AXI_wready(0) => SLOT_4_AXI_wready(0),
      SLOT_4_AXI_wstrb => SLOT_4_AXI_wstrb,
      SLOT_4_AXI_wuser => SLOT_4_AXI_wuser,
      SLOT_4_AXI_wvalid(0) => SLOT_4_AXI_wvalid(0),
      SLOT_5_AXI_araddr => SLOT_5_AXI_araddr,
      SLOT_5_AXI_arburst(1 downto 0) => SLOT_5_AXI_arburst(1 downto 0),
      SLOT_5_AXI_arcache(3 downto 0) => SLOT_5_AXI_arcache(3 downto 0),
      SLOT_5_AXI_arid => SLOT_5_AXI_arid,
      SLOT_5_AXI_arlen => SLOT_5_AXI_arlen,
      SLOT_5_AXI_arlock => SLOT_5_AXI_arlock,
      SLOT_5_AXI_arprot(2 downto 0) => SLOT_5_AXI_arprot(2 downto 0),
      SLOT_5_AXI_arqos(3 downto 0) => SLOT_5_AXI_arqos(3 downto 0),
      SLOT_5_AXI_arready(0) => SLOT_5_AXI_arready(0),
      SLOT_5_AXI_arregion(3 downto 0) => SLOT_5_AXI_arregion(3 downto 0),
      SLOT_5_AXI_arsize(2 downto 0) => SLOT_5_AXI_arsize(2 downto 0),
      SLOT_5_AXI_aruser => SLOT_5_AXI_aruser,
      SLOT_5_AXI_arvalid(0) => SLOT_5_AXI_arvalid(0),
      SLOT_5_AXI_awaddr => SLOT_5_AXI_awaddr,
      SLOT_5_AXI_awburst(1 downto 0) => SLOT_5_AXI_awburst(1 downto 0),
      SLOT_5_AXI_awcache(3 downto 0) => SLOT_5_AXI_awcache(3 downto 0),
      SLOT_5_AXI_awid => SLOT_5_AXI_awid,
      SLOT_5_AXI_awlen => SLOT_5_AXI_awlen,
      SLOT_5_AXI_awlock => SLOT_5_AXI_awlock,
      SLOT_5_AXI_awprot(2 downto 0) => SLOT_5_AXI_awprot(2 downto 0),
      SLOT_5_AXI_awqos(3 downto 0) => SLOT_5_AXI_awqos(3 downto 0),
      SLOT_5_AXI_awready(0) => SLOT_5_AXI_awready(0),
      SLOT_5_AXI_awregion(3 downto 0) => SLOT_5_AXI_awregion(3 downto 0),
      SLOT_5_AXI_awsize(2 downto 0) => SLOT_5_AXI_awsize(2 downto 0),
      SLOT_5_AXI_awuser => SLOT_5_AXI_awuser,
      SLOT_5_AXI_awvalid(0) => SLOT_5_AXI_awvalid(0),
      SLOT_5_AXI_bid => SLOT_5_AXI_bid,
      SLOT_5_AXI_bready(0) => SLOT_5_AXI_bready(0),
      SLOT_5_AXI_bresp(1 downto 0) => SLOT_5_AXI_bresp(1 downto 0),
      SLOT_5_AXI_buser => SLOT_5_AXI_buser,
      SLOT_5_AXI_bvalid(0) => SLOT_5_AXI_bvalid(0),
      SLOT_5_AXI_rdata => SLOT_5_AXI_rdata,
      SLOT_5_AXI_rid => SLOT_5_AXI_rid,
      SLOT_5_AXI_rlast(0) => SLOT_5_AXI_rlast(0),
      SLOT_5_AXI_rready(0) => SLOT_5_AXI_rready(0),
      SLOT_5_AXI_rresp(1 downto 0) => SLOT_5_AXI_rresp(1 downto 0),
      SLOT_5_AXI_ruser => SLOT_5_AXI_ruser,
      SLOT_5_AXI_rvalid(0) => SLOT_5_AXI_rvalid(0),
      SLOT_5_AXI_wdata => SLOT_5_AXI_wdata,
      SLOT_5_AXI_wid => SLOT_5_AXI_wid,
      SLOT_5_AXI_wlast(0) => SLOT_5_AXI_wlast(0),
      SLOT_5_AXI_wready(0) => SLOT_5_AXI_wready(0),
      SLOT_5_AXI_wstrb => SLOT_5_AXI_wstrb,
      SLOT_5_AXI_wuser => SLOT_5_AXI_wuser,
      SLOT_5_AXI_wvalid(0) => SLOT_5_AXI_wvalid(0),
      SLOT_6_AXIS_tdata => SLOT_6_AXIS_tdata,
      SLOT_6_AXIS_tdest => SLOT_6_AXIS_tdest,
      SLOT_6_AXIS_tid => SLOT_6_AXIS_tid,
      SLOT_6_AXIS_tkeep => SLOT_6_AXIS_tkeep,
      SLOT_6_AXIS_tlast(0) => SLOT_6_AXIS_tlast(0),
      SLOT_6_AXIS_tready(0) => SLOT_6_AXIS_tready(0),
      SLOT_6_AXIS_tstrb => SLOT_6_AXIS_tstrb,
      SLOT_6_AXIS_tuser => SLOT_6_AXIS_tuser,
      SLOT_6_AXIS_tvalid(0) => SLOT_6_AXIS_tvalid(0),
      SLOT_7_AXIS_tdata => SLOT_7_AXIS_tdata,
      SLOT_7_AXIS_tdest => SLOT_7_AXIS_tdest,
      SLOT_7_AXIS_tid => SLOT_7_AXIS_tid,
      SLOT_7_AXIS_tkeep => SLOT_7_AXIS_tkeep,
      SLOT_7_AXIS_tlast(0) => SLOT_7_AXIS_tlast(0),
      SLOT_7_AXIS_tready(0) => SLOT_7_AXIS_tready(0),
      SLOT_7_AXIS_tstrb => SLOT_7_AXIS_tstrb,
      SLOT_7_AXIS_tuser => SLOT_7_AXIS_tuser,
      SLOT_7_AXIS_tvalid(0) => SLOT_7_AXIS_tvalid(0),
      clk => clk,
      resetn => resetn
    );
end STRUCTURE;

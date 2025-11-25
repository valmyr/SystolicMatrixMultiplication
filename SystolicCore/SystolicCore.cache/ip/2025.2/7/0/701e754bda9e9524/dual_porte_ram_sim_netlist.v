// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Nov 25 10:34:37 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dual_porte_ram_sim_netlist.v
// Design      : dual_porte_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dual_porte_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    rstb,
    enb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
  wire ena;
  wire enb;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.9322 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "dual_porte_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63680)
`pragma protect data_block
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
1X0U5mBfIfFiHU1oUqG+X6NgZpFesj/tFvuJIF+mcybxn75md2NenCU1M7Tcw1qoGi9jSCVisw6l
O2mJbayXH56KzR7dPsk0Jkrwl7fi8w/rJPZUwMA06viHboIi1B0tK7fywBBo6KD3ORoJkYAaz7XK
8GmrtPPwN/QWGviqGS9zEVcg+JCwsdHOmw2G0KmxnezuNoU2jtE17bc+JJFRRf6fgBic/vIQqdnp
ZWuGqSJumD7zZbdb2NFx0rjoZ5ZNInOZEN8tsZGBNQSoDmXQ+SoU18yEqK6vyUFpz+UGib0ktekH
DXVi8IBcHIg3dw3DTRCG6v0Rvk2Q7t8UBrT60c8yZg3EGqYr1Z+y0QjTPU2kcZT1TDPDY3honD7I
Ahozub14mqoSzOJY66wuwmuPNOBPa7KXiPCN1lPVLVhRZyQs6ljwTwzWn16aHO/PdbkrjqZLqvLr
wrkwquepr4OlFdRh28oR6N8Q7nZMxufsWRoZDZVzaRObLeY6KUNkWzqFU52ZSE3pMMoV32TN3htH
ThLIru5raxONdT+z3A7y1UJ5HICWkUyKtjgREOMZHOSKS5g/PVjza+A1RAFqXQVkojVs6eQ9u2yq
aFtLW3yzdSFuwM+AhXkUom4UulwLA32wKEmp9/sK1NXTVen8je+ZbeC+9VNjBfBg5RRSREEGxsY2
s87a7igEYV8crtB1tFd4ZIsRLg+EmNCB8dgFxagwdNt7AEUlcF4UWpYy6VexXLfOPibkYTSwF+GC
qF5LYNhkdlEWnU/lWpCDSGVfbZok93dAgoXS6GtHWkgxp3BLQjTfdd3W7Z3/RFCS4IV4wGyctQ+7
JH/MQkSVPZX1RWE5jn55Y5H6qt7jaYsviv08j2ujSq9pkkafYr2mgJg3xXOITWZQ3prb4Jj3uDCY
J7dc2ma4ZmNgl8FXrnQpdUA9sU0Kk0NYDkdSB1scRMNm4LgOvvlBHiaC0N32BRRahhTv1JWae90T
ZH/KFAlidUGaTfln1poSiJWKOI2ssJoFgX7+xIkaAV1DuobFoY6pf2uAdDbZmM/4RmL1YuabN/Jm
ma++HQMz0BnXN2uOKCDI3GcUF7wWhQVz+CF3hSglDVKPem/Pc9hzPa4MztvcTNuB4VlRzaiVwsfF
Ji1s5tg8H6lY7DHR9WNb6tqWNQB4n214BdT6lqIk+WEASsde16pvAdrJQnbgVhqnoXCTnKCici9R
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
nWcct2R6rmeBCAU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

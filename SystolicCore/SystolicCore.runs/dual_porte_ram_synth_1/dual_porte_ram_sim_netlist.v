// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Nov 26 17:05:42 2025
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
SlqWgnFEn7X1F10=
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

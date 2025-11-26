// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Nov 26 17:07:11 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54384)
`pragma protect data_block
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
D5C4/mly
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

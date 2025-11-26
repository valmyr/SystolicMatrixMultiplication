// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Nov 26 17:09:21 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_dual_port,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  (* C_INIT_FILE = "ram_dual_port.mem" *) 
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
2QodkVwwIxjq/Aw=
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

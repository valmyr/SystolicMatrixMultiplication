// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 21:57:11 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ matrix_in_memeory_sim_netlist.v
// Design      : matrix_in_memeory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "matrix_in_memeory,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.900436 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "matrix_in_memeory.mem" *) 
  (* C_INIT_FILE_NAME = "matrix_in_memeory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21008)
`pragma protect data_block
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
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

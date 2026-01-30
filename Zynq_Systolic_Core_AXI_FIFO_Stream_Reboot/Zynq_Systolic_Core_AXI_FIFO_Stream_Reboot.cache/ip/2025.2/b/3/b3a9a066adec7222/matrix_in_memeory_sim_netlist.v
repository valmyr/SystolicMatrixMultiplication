// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:13:16 2026
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
  (* C_READ_DEPTH_A = "1002" *) 
  (* C_READ_DEPTH_B = "1002" *) 
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
  (* C_WRITE_DEPTH_A = "1002" *) 
  (* C_WRITE_DEPTH_B = "1002" *) 
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

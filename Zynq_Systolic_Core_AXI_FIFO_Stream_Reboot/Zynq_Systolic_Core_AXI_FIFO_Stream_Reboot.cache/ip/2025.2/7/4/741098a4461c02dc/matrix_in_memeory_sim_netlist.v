// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:17:04 2026
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

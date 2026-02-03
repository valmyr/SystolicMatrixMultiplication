// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 23:28:56 2026
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
  (* C_READ_DEPTH_A = "567" *) 
  (* C_READ_DEPTH_B = "567" *) 
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
  (* C_WRITE_DEPTH_A = "567" *) 
  (* C_WRITE_DEPTH_B = "567" *) 
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

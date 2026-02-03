// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 23:34:33 2026
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
  (* C_READ_DEPTH_A = "564" *) 
  (* C_READ_DEPTH_B = "564" *) 
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
  (* C_WRITE_DEPTH_A = "564" *) 
  (* C_WRITE_DEPTH_B = "564" *) 
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
EuT5YpxDYS+eDmqaVwfTp6VQxjA05+7cvCVVxviEpf+2ppigNkTZPjKdBPx/oEt5Y0LLVDrva0oy
CxeI6VkqJqVI9gomvA780TflUdi4M3/13Gq4bOQcfPIHIo8hpjHpjuWPbECuEhykbn8HqUQQ8ZOQ
29RqPIHbO753Kx5b2V7Y9Y2ggx0VyhTTdw087LPVh61o+w1Isioy1dfzdmO3nckv+OOP9gSNnyMH
qFAItp901N9eVHRQk7TAAco9waS9iVdY+Kcn4gcf0T77S/r/HaDY3WaM0rnEfhJoqI3uvddAiXP8
oGZBfQ4KOi9YIUA2a54fAnRfaSnFgmVD2WusuXPc5gqHo3YUl4a6TVkgbPHQIzgd2kqIy9ek7dTV
Yf207iKvom5zVsnNCsb5TGQs5nb13v9qX+Ph7Dcy9a0xP2nkqtEbGojzODufyDel8u0UlE6b9/mb
q/SO3g07vwWHSPcgvxGHCoYQX10mWPZm25ShkWBgIxKrDfprPYDhFz6DQjO+DDYPU3xzX31RS6h1
OKMiSi6zJoKJUVwK73hfSmcjQscwRnynb3vIyJdk+U+WZuQguXTENx1BxpB09auy113forZspHwQ
mKizcehazLhw6ttFUZXSMXQcN/VF9Tztky032XJ0kp/JhMHPKdJpP+zpOAO844cm7Gl0iyk7Uu9q
duCPOYifxvdOnGkMtey2dTQgNxzI0jEdCpbDtMJ28SNpdg/nd2sPDTUHWPsHHSl610dvsOB8GtjL
2BFtNga1S/AOouKk3C76hE3KEbJzqsCRJuKnnSPjbSyhRm1FDGHRQ2GNDZETZ3UBrQ4uPCOdna4j
az1QD7GEBiqW04seIUBEntmy5fGj4z34u0IB6cx77eW+GIoTh8iqcv2V/VFQRzeGgRlBcKtPt9w3
VF4gOY6A4huOtxKifXLQH/gByXXYI+gAwZbzjOOSIl8r0uBiYn0d/HzQ+QbQ6s08+izU9TH4KBq3
5lTzgdHn/Hty8marXmPWqtc6liwdCzzm4dNPR9Q1tEysImgcBsvFixAXI8nthauj980DlIYHoqba
/rB66WeS81jaZWoNnNsID2zs2sguO9kizfgOlwzqHxfY/QMXp/ihPT9/vawtuaZ6UJzRk5YEQDJ+
qBoR4E7YwXTP7HYH0xrgVC5guJnVqSq/9BlmUgvVYE223jAmoCovjIfKd25ntE0Wv+zNbuQAHlw8
R8BHca2svTn48pWz78OypesGeIsVsDHPnMqPOrFPn4Hp+9ltGbH9C44/lmZrxSihGBHIzlPMcH7P
JeNSrKpJbU9nl3Z15Qd4nXKNaQmWjSASR+54bLQuhnljlIEDRAxwm8pl1+TCMwY7s3u5s78+9uAn
moCSWyfPBxUHc9q2f2EBlFXWMyj7olQgiKpRFdyCiLqpn89pdATdnBR707kVOWZYFylk973wn3ej
fSiogsP3y6AxKQ9aA5Isn/FFPBg22CnBgtba0KC+tv6B9TEtCQFaTTjV62bDal+hApdyijnf0wP0
Ax/yAEat5eXrPy9vkh4X1m7w3xPrkZaqsbVZ3TwQmoVgbWnpDYH0FDa8mKBTK6WQmMsReMJNXWaj
o2gDtNk6slG/F440GOXK4SV9QKf8BKqdi6klW6mVxEAFi/S8Lb2rxQPqRW4PmFNC//nNjdZTnEQE
3xJ54gXCgOFOwU+fyDeaJEstyItDD0Py9I5S05lYToFITrKszI/0yknDFpWT5l4KWGLV6YfiN+kC
UY//Uv5EmJwxRSe3i2QDRQwvhbXiMmP1NRNsjuWwPuKUAZOcz+wRTnDEgRCX8qKAb3bFJII7BKOS
jx6oT//KdrLHpC93PveYO30U16JdISMEbNetOYvqfA14HwIZLxiDRVvURdWe4ID/Psm00SF46Z0n
wPSgOqNsCMmmzUyhk59Pu6XvK9uU61P9OjmZU3mVhCTMcy/XxQcJwdjO9el7pAJ3vzCBRCmQnRER
GgECnln7LyjI9+/mX1DJhiCe50U8gTRs9Bbann5jDS0qwW6fbfmwCvhagNUe4meZcf8JBsSON7FY
4DTnKk6xAkvcSgHpeLVflZUvjiJfTt/TmADPBLhNIgsnPLnEqDIiUsR9oANieQQgjkhWGrojvvVp
wtHzPszWKTvZhl8UVYUyq+YMcaechnx1v4v1xliKxpWlAN/sBjClna9xCVM+DO9SAfNGLgPxJJvY
R1JMD/eRWnQx7aUDNiPqzpgJXBDGvJOAM+7gJtdJ6rH9KLQBOu3oUTpZy9At47XioEOsmgBM9Sc9
gEmzuK5oo0QgbLFfLIn+VmhQr0hR9HvQ6ugIQvCnMGZlZ7aZ5cqQwX6Qqcx4oNw6VVHfOTF5M1g8
MO5lyMoElL1CDS8EH0JQGYJvtorEm8xmzikRnTRP3xqUyR30nO62vk8AKwEajQdAVfUqRwppwhNX
rH6Mk4lTgBy4rslQ3p0ak5Uh07Hy1FCgTatjwWZ13xemk763melpqlhER8WbhuZuJE3RrDhq52qC
TS5Onwcxwyg60nwTfkSQVBwRtXF1PMdMqBwfQXK/5i/twZEd+r+I1RJHMHXE63a+vgJF+Ek+pAhq
XaEPwG5q+EBYCNnctEyUdSkNhzhD3WC6rPq2RsdQZ4l83CREtpgE021/NuGQ4gb5qNoDS62Lg3Ng
gKRBgNYs3c9GeiEFkIHiv85EqGxr10dUgzQsC9KpkLLgP/89MTr2w/firNCPE5QA6yTmA/dZIRyR
UBoIrb/1MJTGUeAGAJ0Lk1Nd29oy5tjRQDExLTBJvFxc2rpZ+O+cfDtOSXKUQCsAWk8LguzaCfla
OtWHSACrvOS0LQw4uk2eVAz4oTC2CSDm3uDAMFucRXerOoG7mZie1EVPWXUfec3qk3jt/UxAGOjC
uKAsBFmstze8GZ/CrROXDYwLtHtX/RKdbTOOV4AtVweYQJhApy9x7zBSufZ0FnUhf4n70YJEAGjL
tnDFTcIQ0koxtouK2OqLaIb8ch+Plsb0M62BGrflzcWIVXGIvnPbZe/iNzvG84RVV0qnjLnIiDOE
hzmIc8xfR3Fv84NIZQgskBiEJZB21+IKZP8KvVuU7Eg+YbodVNRpI51GJz86j5cZFNnY2NQ/86l+
k96G5gCKsQZ9d3HkdaMLUEK6g4m9oafDeWxJUedZ9ka1NVdOPAUZTFZNPnGxp5FqJzSZ2OiA7Ggh
DEBABS6mZVk0jmk0yeqOIiz284zVTdXsjYBbnSxN5MsWOn6sr2rGVHeqIpVJZUaCtggszmflCKXU
cpkoNsQWcWPCMVJ8K3n/rulm+3lGK2zfAOszcF7QPCi439I2UaQU6ycohgIw0edHq2u5sd0wfDLT
O1jQIxGdUHiDCiQCfbnL1R7qZMXlMxQE9xPv6p9mJY3i9gQ2TlqVI19nRMLV0sKN05HokTlbxhBs
9egBMDFaJ6/U+5sfGuMO8NWYs0TKV6+753BMCLXyiUlglH8OCIyO19ws9e3FHkvr6XeFi5ffIJ4u
pII7oPUXFqS1bI+yHF/EukVdXlaxAAD7mwNlPhWMA0YaqTWMp6AztvXp//pRCBQOcWFcoUrqrnBZ
H6ekc8TSO4P+OR66lYEEfD+YlmFuvTd5QHIPSVSd1W94YIqmfgK7kbdq64AmS8UYceBF5RkRKHkE
as3AvZMes1dz8/LxeIl09t+TPrmoWPvQDxNtFsdUcXg2k4VexG/4dnx3tkVgr7vesLVfofnxQfcm
h5WNUefUkh2RDV7SPjikp5sp9BJeb5z/Kf3588115S7YRSGUya5+IGAdnhbxIe20DTBGxHcUqNU9
CUELcTeTMr9lTk2sM0LrAuMC4WiQkMVzIvOSo8bc7anRJ4pItXVkGAK//eMY8O7HsRjXXLPZxlSV
exs4K0KBip6nqt9qMBFVGkvHUzO54DPzGXvqEznZEkZwe1ZYtR399JSz7UZjBFKM/YJgKMo+pgYQ
Y91P1N3654HPyW8TtCRDNBXm2YHmaJPIQ2iUtxr2Wc6IYNhssMxxsdaYOLum/RXxIbZIyE+PlFJU
JtMq0/JxVv40caKj6E4k49dPslpnSWSxWfyunKZttUEZbXtQ7ktmkO+vw7bRf56bHpyV/5LYdGoP
nwtt+pRDogYtetK+BWR1JKIKoz18rATV2Romt2xgjy0ZciCHGjYxlO4glWHqi+F5uLk4mqI1Ofk0
fGbCZ0rwceXKZvgqtJCT/FFzGyTmvibjbBrTRM+qQcP+BZ9Z3R0txOcELmDfNrW0xEsPhtxZwJym
TL6v5VROJ7OARhoY79PmwelBqdVor1FIrj1xrpHDX1u8lC/xvJeGcG4fqbOy+S2lckOfekEdyTQr
IjPPvQZm3xYW/ERIP0mppwW5WAvIcOoY9IC8O0axyvY+Yw1VkoTaGE0i+y6IEf+lzRH3qpefujFd
PemVMSiTF4nXjY5sWSelr3FK/GoSoV/KaXFUAIcOh5J1U404dret4e64r8DZLCyWeNe7YoDsSMMz
VW5zjTvj4rLREi4tat6ZBlo6GZkBVcz4FK2iaz+6ICAUV1Ae+aeo99pbh26Jx/H+HqIK3jfnv64U
x8MT8VEmXJmQTXhmqPSrvYBbVCeZYpHF6xvRvBYDgFhL9/xPDeS6Uv0gLpD7/RygW+6atjjkG+A7
Oedxk+TGOtmt4txYpdFWiDRLLMU8W4IogdzIDZXTMcj0QH4/VWTdcwx7LMitxlOU0W20afhgPYaM
oBCXm2uRrcDiaxnhY6+0puWzPIqSvABI79g4s+d4sxAy2c0W808yGYa0xEnyb8b28GaUjt/QZ9vL
Ahgfg9OvfFkxTR5z4HeVVQKJ8n3pYum+AJGVfmJ7KGXPTWlXRp7HT7bklcTzTCTVkpT3vlaMRp9Z
pGGdrDS0jmZzZvRDgvoWyDg5XBVn1hFvY0eC91hbK95LhOOHZ52TEKXq8H+JrMZTvdodfeDnAHT+
7HRTF4Cd505TFkDOajDJXoWSNSFvQM3M+0XpSQhlbBw7gJz3xg/3tayZA+ARCo27z8eLnENLpkbA
VciHUpfiJs496DrxipYiUafKTPzPcF7Tj1DJQVUkAcgE8+1cs7mJmIw2Hcl+RQXugJf+ATaW1ink
//xBFgrCMxFdvLoevppdbCsSBdpT1+GUgl/lpOQVuLD0hcaOdThM+BrxxfVm9x7U90c6snP89Jlb
wPb2xFsrVxJnlV/ENNvCz8N+J6H0dOs784Am/aj5yj9ZkodLml+lAmCQn++Lcp5OEdbrm6g8LPc7
Acax7BNLiMoQa8YZjFImyli6r20BpTctqaXa4Ux2JDfSMA1/NFep7I/AayKx3rDW1zyWC3g7c55O
W5gSbNVguz2BTheMKONtyUbOsOOziXkrDkiPPksk11BpZsJpkaOXdnxfPZK2Zyc1E3wQr4JadAr3
aY2Mh7HYGYzyUuPDt9hbwIHYuz3P16BD50ECNZCWek4wIk74CPHYiK8vAiDhgH9UfcERc4SpqJv8
v3sjHrrpoRpF0SK7niwYmdG2WSWYU/VoVDhBmW62mZAa7v2+GzgosYu79p57IaNHrYpBNVgPaL9+
7xOVwnqwwkQsH98xmdAvDqbxGMrQfwyX+JLYOguJ1QjEC9O8cHaZp5qZZQ6XKW/teqMY7g3wm2wo
cF9lRCQwflKNFeZPPUuJZK1d/wORX6rIs+qDQpCWzw7N7Bd7LyeOXm7F4jQNA2Bahff3bsIHiCh1
h0eN4glyBi81dmjwZQr1qpZLAvggX9biMvXCizQNlK0q24h8OW+XIltkQMLRDgRFXhJhP9PU6tqD
hCSxokTd8jCwM/WjaDuH4Otsj+gaQnn7+Zi7/6sAYQwJAUcDLjihHFbYWLZJeePxAAqkILk3SGva
ZBugED98u7Qm1kKxx47p8kvfRUxqIYMbzxj2XzOFds/Z50SR1GljeFXnixyWI8ZIt0jtBvjvtuJC
9a0h09HbgJ35sMSQB7IiJDNYS+y1f4HKuIcnyEpf5voBdWM1UZKwje9PB7OZvoqzvgWqHbhM8rzU
eSnfmFL9GySSYLOpU5ps2lx+j/2R7qLxL6kP3SYqJwzA4SdoHelZ5fBncqkxlUnqtFoYqw/W5Sg4
toqtmQY1/r19+RHClNKTFDDOQHwr2RKjQ1O4X2Wsa31A4zDtZe2gGtbv1+vHqcG2yxDeBDWOSwSQ
4IsWVJcK1xXAk3o658EfUdsvafcUWpT5nbxt0xEzIWKgu1y9TCNYcrA9x2c9cE8TCjzBAFIMSE10
KwPt3CQWd7wSIIxONNWqkXMIArpNUtnfksKWGfuymmLZFoAJQThxwfvPg7yB5PtNAawlVruX+rUv
IflvN9la3MD6rIo1Az/F26AaxGtqbVlku5vPdOjhmU5i9HFTR17bDjwCPYK+ZumZb4MonXfMG+r4
/I2qAWH+daD5OWeSEMwdma8sDNjmwZ3qAApCdcaozZYK3XHpbiyB6czawSh2ZfeUaiqRfQAl2cHk
fu8UaUx7bVg+WbeCwGLR0al1WZvXguzqhEGn+P7gTnwNm4OOjoqupTryljKyPe9XBg+BHPUWwT/X
3DoiZwd81UOMNunY4Mjs8b4xr1JpRVQIgcMPkM2mhpUCGolVhOo1ZoIfJUnHy8JGvS2XyVkkj1eP
E7CcLIFSNk0AkOLOO4ZqIpTERqkq2gJ0D4P1yin78mgsRCskNit/VKd4PCPcJqrMRpujDyYEfADc
lCXuJJgVTr3O36uyTdIhATJP1jVS+V8tsJ3CiyPocBj9XZuxo4jHN8y7lYXgNIRCUDy4X1mpRMCe
ILEVDTLSJFHDBEwfvtqgOHeJjtk2jLIbvijWDvuy1OIXLSEHVIyX/9YgC9oLgS393kFzwhwHInYB
UwUd4O1fTI0aDx4vx3Q3Cq8tcQH9nqiiCObAQigLkAPJ2SwKrXa/BwJj8ODP+OgNC1WhqJmGBNuI
0qH/Q7yYgyKveWcCDC2M3VVP+Sse56lDBTII6fE4YU+1Qv9bo6XunFTgh/o0/qP6x5dF6G4dsL6V
ka6dhfOWX4Kaiwm291PywTIQ5GwuuvJm583JoooIqwNWURjA33LNwjhTtE3MAjg4VRCCvxobNUt4
k9jz6qKH85KD0s+yvaCaCF3FzZh00QAa7ZdidKIcr1oUQv6sgBoxAJvfmxp3rrw9u4ei0IUDtCzm
S9IS4AKi8sxSuWAjnMhnIGWGxJSgcK2nE+cMLgmAYC1oZwl7dNvmTzsVc2xyYUGA5tUMLCdtqDaU
F5vPJFcqTT9xfVV9AVH7WcQgGv4OCafQlQ+rmpGF+I7Hj2/ZitH1+9QyTmAhdYUKmXBXmTpQSCfj
ePUM2d4GHvZ/o4j81ppbGqK3N8e1KImnoF0EpKM5ftYzdBWqVm2NxTNFK7hgIwFcGCSgTREydi0q
fEE3VABQAATLAd4Dw5F3ZHHydTPZlcd0gO2Zm1bLMab2s0lzE13dqb7zV5if8g+Z7KdvzcSQV8fF
rEd2XzxrtHfdPXSfrWyy/T/pBFhB6wpusnczb9AurOXFULdrddGOEcCiYfZ+5cQ95rVdwWoQmwZu
LGyFoke65MaVJFzy6N9AUTyLoPEYcur3FKh/q0wRXWn2E7ig6LOfZNUXQP84pC1UgRtao4KT8Y3E
vvINmI6T6MNn7ymPYr2Nxk3++y5maai5bQhjJEFnCpZvmOu3Ncu7w79p383bpFLItxunBqfyw3bu
+n6arYLJeyCz47NDQIcRiohw+O/5gPcEdm40Q9QhTMU3lVS0L4KFvZuc3IbYvm1Q224xqb1TuV/7
670AkPTgbAN/Cp/hTU0IZUQw6+oqN9085ZPo5FBEzG/ExKcoGDbXLF+XoMepmQiobfwZiEHdrY9u
avrwHSepnA4fcc1k4WAeJq5295+BMaJk/eEtO21wqlJwAzSD1LWtsSnfOxXHIzNEKifdTNd/X/HA
AJvmUvrVPkFnnjT40Oqvp0X1mgyRQjnterjpP2MwFWH8opt/kXdbYYR5Bb3E22bKK+1mk8IYIyzT
lOrUyeShbKynL8z0TDiu36aKi2TqMsamKKD2ckemcHhWKIIAa0OJlevrZIJuZu6UYppkY8Wen+S2
L/jLv6une6jF1TAzjoPm0jjhM6MfvxjFSa83i0k1OcpkYgR/+vFvoL62AGlUzfLIzoG6sJ1nJXaP
i1tRuPIYRxBZaPw1cOoPsCkWHs0yXt07iOTbse/QgEspwpo3Qg+JdcyMagoqcfB07303Wddr19yX
Zgyvy3Kac+xLNn3VbGQpr/MqohK3EC5bbtmOuKmTjhxVfs8oaz06wacxO0boqB5HPM7/Hg6nECvr
74OSpnb0+7DbUj5vgWcEgYNoHjCruraG26PbHyICtHvJwt1iq6lEMIam3VZ+aZ79fI4yE+UZwDTh
9bPHMtNkNnKL7f9UUZFFcCYPAEKJQuykNXVYFoqfd7AeeaVD8katgW+oMjalfGwFqu762tt4fCjq
f8NxiWtaTBtdzUUbSoVSNslS79XyzKmZZUf9LouwNehPSiUmj7dwTFJpuuPz+6Ll/4IKqqnhOS91
9iSrPcHB5sdyVNhYI+1r8w8xHSOSLeAGbqOQ8BtggjS8LgSHVzG3AmHXK8j/GxAg+zlgdgrM0dUe
N5SO2QhqZwuMVic4P3q6twD54iBdhZvvKqoiaj5EZn4cFRw7p1ORI+1XK3Go+nhZgx+l4mcrkQyp
Xok9R6Hx9f368iaAdssbZWk43W7TiGWOf2a+mxMAZ1zoELgQrWzw+uK9DGVBUDXLYnnsyUdOug4A
oGSpWKcVZy59UjKhfHfk5Dkt6T3tjr5IKCkuC7gkMdQOm8ZGwGVNkA7a0eebmiAymT2mREwXU/X6
xsq3O4rv47pcVOCFSVVm23nZT6AFZbJqJZi4FiXHJkKa8B4PuC+Nnf+2/WWgztfFSG99kIUBnvuJ
AhqN1B7DPdow45hLCnqzNgQmgx8q7hqUc/dGbdLebX3d9Tf5oau/yeDK4A6a+XN1I2YvVOu9AHpI
N220GdNiEJrrRjaY3M6WwT2Du2UwSosDR8Vhj/KL9oQvmx3+8SMBHHPiYr83BnsjLcHmKwinNUlg
VhYCPCc+p99+JMGCLI+PuQ3tzaIcRpyr3K5DHkTuQZMNvJw9FZ3BDsDpAzrbzFZ+J5Xji1xorftz
njX83TOPRkinriuMaZV4uv3dj7yRWfUq2HLwsUoW1GHtvtjYsYJSXCOXNFVOve7YCPaRsUv2pbNo
jNiyvNmX/QdV2d4Bc0r7bOZhirJULdVxC/OIjYPkyoYEgfGTdY3zhIjsD3YYYXN1ZDmJebd1NBD2
PGJEiZQD1ZfmIZNJI8DTZZosVTX+HQ7YdqIqIw08vr85Vab31sb5JS1D9zqsVGzY8CrG9bzeJNg6
XbUIGY8s4tEgZQcbBmx6dzSExvTi5l6wU35jB9zYgCoi2W7Tb0RVv3zBrpiA+nIaEp3Zq8W2BRUA
pQK/05zQDAnL6EHS32xcod+ksJOH93GxhMuwFnTz6+07xqvZxEvDS7VB4zEWIY7BFIUst493fGZq
dt7hQPRFpe55xiEbM38JpKd5RlW4aPnCZOfrA8zsuW2vbRH3ad6auFb+69WITwd713r6fPy8LTjk
meQGAZzEgHLhQMN9mJEURNViOclySowk5S8rH4Vo2Aopr0boqPDUXWZw1akXzdAooIGXkVu/2UBI
gARiFntKiJ4Kv+kDGij62dT01rXOobCR620/SOervtWpKXJ2kYqmq7MYANQIL2ZZMhynBczFRtd5
k0lHVggsZ2GHNxggfz8OVTy+N1ZY/l1xexdnJeLguBu9YPoVAGnHolSQ+jqZ+jvsH2nyWiHLb+sj
lu80dVF0rM/azFRcuCK8z+tWHeJXbp3Xo74/yF6z1popEfEujxbMZ5ox2p/XdE5KtvC+pFZwHkUO
fRs8Ql5GqE+8SlO5Zel6lGJuT72io5Nd+pfMAYGo7AQvzVJioZei+7eUcFDJniwBYGwPw/Dcn3W2
CVv02ICOFZnmKAp6OBv5T8DT3aerk55+xRm3nJBWwZ8+8322OFh8lmboWOYpRq/Ww3uq56ntxiSl
Bbd08WPjE3i0mcAeLbOCvq3bh6r1d6QJvEKb41m1bfAmCzftwBxMZTTazu6H0fNU60ol8ZyxEt1v
j1cPNkomnVmjILU8P6Rq7azYrAUChLdKBMfLzJAK+a9cefNj7GPKkGashTrWZ9zvUFClF4ufAetg
bXKYkMBdEdpXnDA+5Vm7MGsUgfgg+dX97X41PVloVtOJkEP+SZQLA/NlDydoI3fyDA7h4NgRPzhe
Syems4QUO8GoJriVapgQfHF7UywLpOUiHERO7gxh5BhC3Bde4R5VYjKnsyn2jxBWAFXBcDEZs+ng
Ey0yOu7ANiLNDDFgdHIdn624fG06RlgVzKKmBD/4lS/tr9/LbmOkhD8DNeSbNKcy/ll72YIL8iko
B9Rbbwdq7Y1bNGxb4k/wcB52wat8J885sdrJO1sFILE4NK3jl5nbTr20E2ON3gItlLQcPq0Swf3+
xlrCnugbpCDdo+bT11pJ3PcHsorrZ0Fv/bNnpNzsf6FTsaG6jPkIa8Kl/Zc5+bGDd7l2LxcrRjuL
IvoFVV4hxr3w6aFFukphc4gm9UW2Fa9ISOsy0D3EPBVl6uwaS6BUuVIxQTJT9vLOl+r6MLgV025j
bxLI2QBfRTM3SM7VQR5H02CL9YB+S5Bf8FmOoq/JUPGHI2i8q7maP7o7Hj/IBPxZgH5N/sdXn/1C
VmsbE0icMozW04jVwd+QWmdfyiE2RmF8iZMEN/Mfb1AF77TdB5I5jAN3VF0oxuGajZU8OhHTxUQB
8Cdu0F0k6zSSooAKM0iqSmMAlnYqcNBaftajysK7VTDVi5WPZnNEgTuWjz4N/XWzLUPfZteTp4dP
SosRjTaBwtMslNNboydKcrljkfE0qOErfe4w3aCxXMQS6DDwn9p+fZeqrVoKtvmxfJZ2JcxuLEtw
w+d3XVfowP5PgVAUAFAOtgS63rRWeZXyfztwGD9dfWrt/XQgjEPrsvN1RcY5uLJJFCez1i+X7xQ8
mtEA5Pu+MW+kA4ZrSRCXbhIRR82rPvKJg7HUkfRE6BWxwz8XNBMbdK8EwFHG3asDAsYab10V5F3G
NEYLI35qIVBNozIacjgAVRLEePhcryAG0fzHxFsLedmvBOpmGyCdGf+8wO6Vq0xuv8qXXsKKO/t/
dacMkuTR+s6Nhx8ycPlfHumR5ZY2AkPCkYtKXpdltjoQe6KKuC/Yw014whBAp6CT9auJjG8Odaf1
lLQ+FGHl75dkBAeomMEi7BwclTZ+53mKsZj/Qdx5I8R1NiAYIwcOV+56I/eKoW0zYhkI7gyHazR7
/UDqLI22LB1Cyq3ziBDrLva4oCycwJ4Wk6a38g03NGk0GCPU0QWqp4Q+c03L8TUHbefnxZO9Ipe0
C7roNDo6EzSzKFO8T5se0vENBBajKc+FIJkD0Vl8+76FCGshQjjN7hkTwvYH/ChJC9WfiFD9ser5
baOMAvMR0ZiNBhzU0qIyTJgXkBZQWyDRU3DNS/63kwFEqyNh3z5fr/DijQXNINhoyQatL8/1Dysx
ihpDX4IzTif/6qBuYrZGo3iUpdZ5obZoPXlUSgswDRycjyaiXNzz0Tut3/LtsdMZ0xdEdsBzDPZm
0PErJGREZazUc9cDwdLwo5Nxv0YVXwzGp5xJf1Z+0zNW6bk5oo9jU/2wgxDUUUyg1iYfJVKb4UQh
zFDGWUHACQGuL6QCj8fGnIUoInqC9juPRiaz04vt7do55VaAMvP8gygTwO10Mrbi7SF3tWs7T/3O
xDv2hJyEnZpdLoMCk530YpU5aoq0oADA4s5H6q2U18iQnQEeXFV6nzYSMCdxWowAuOtobrH4Xo9E
2NHWfmp3yvmkhJSdNh/eUzKygRMixpaOG5rUfq0UBgL5SM1scFxbMc+mBBz41/fXXAWDVezQQEIu
TKeIDYiGjrMw1zEVvFg+BPORC9PY4MYnv2eOCZS0Wn+hHBYV3L9FXvn4Ev9ICBYpGI8LXBr3CJu5
zG9h4Bmb8ny98CZshJDmUSUAep75ZoyQs6J+hJOhKUQIuqiirK25O4bOBuNt1AdD0VRZlrF74+LK
iJvo7MRXz/lu1VCPC81pdaBNJRsIafNeASg8HKMxMNdd1ChJy26nIBkd8VOR/xglVGtgjtPcR1Ny
1uHDftiRZLfArPRhiBBZOFPWgAOq39/i2PW7XGnVAHlKdzPJLCn+2V0uUFCxYlv4IBS91zKWOQ0L
xxht5rmny0nOmHAMJxBL/d6neMIsAYFjre3fiZDlDQWqA5zLm0COPyEygjTiqzZB18ntuplXzZts
R3PPkkqUMe6P88wWq6lA2GZ2oToyq7UhgUVd4tUZfAgGpu63DpYSzuFC2N4WqsBvokxOu+H7XUqW
jcqwpMWGgG7yhpYNyirIM0DhTcTs6GjOFcn+8Yqvx8P88q7xsV0EsNZx/KOXtaeZTyHeOhC4pqxq
BDqNumTooHKBfDVtauPfEghPyYI1oU5GmBCoEiuXwVJoW1LavXQIk3LR1lgsCPGInlJpQcGC4Oxm
2wSZf0AQkO7zSe/6w/ZqQ1kunFQp3gXjVHOctzEgJZntTIPsy/rn93S3IVyhBuuw8ctoJAXHrjeD
iK0pSlEwQvtEENKLDzGZWUh5ji5TgS+ynJ8U92f+U27YUVi8/61krKRueS1zJCROARlvHZoqNV/z
hV5H4YS1TL7/L/Z1YQOyv+3uqkaYVFvBTsLZHwUkLMFZN/cdUCspFf6GDMPsn0edaY2IKi4pv2Q+
71in4cmRnYMOlkyP0Tzo1SmR162PsMFzMb1YK0KVps29sywVw0Q6McxuyY7dr3J1h+MmEmL8xuFm
dr++p7Q44+faB+RfNzfC72wE4pF3t1e9lkTugGZ+rnz99QKpqYS8g9C0GHLkNRleSpCXveX1drWY
oHT6Vd62n0ljWMZc9+OJjtu++tMJoSm9dkj2A6OnaXwn+CEDeveC4xAYp57ijN7Gkpm5K/+/nhY/
aNPyt1kcsKmb5F+iTm5hV3ymE/reNsj4dEOehHJ18iOo+v3/nW17HaCicz/TCr4UVLOnOzXtRB8+
9ZLi8/oqRDUUFdB/xY9VmqjZGDrWTo5/KD0jMagLFjYT+komxzMGp217d9N7Yj51f93qKqPSxVv+
Aa3v0dVhcVNyBQ7cPYYVMdTfJXtMAi/xn2X52MEL6FC4GqvluKN5YOUAGjrbdZpbW7HTMS5jSak0
jC8exXrNCvzA6d7QNCjn1WmJQNZwpy4phYnlrSvrzTeOR/s9S6vF8SR/FklYz53PKBwlNh/JOR81
K15rNyFyQ10v7zuTntxMg8K5ed/cjYSofFhaTWNID9y3auuxu5AFQuYX3C/Tzia9hrQIJxnClGZu
CcMnKAN/KfR1StZ0SQ8N6LwMExMG2qToOXzuKSzbSJHwWDj+aY1tJpIXyzLdjNfKcJwzHRKfqMJI
mtzfls3J00yBmZDIM1Nt2yj2CpKdt3oCcEfqmonLjm6IMOeYj+TsEElzZdbID6ovK2ViQGX0NtfO
x/BKhXDv9koZDNaaS8o/bybp4pTzX3+CNfNoJToGRTLZdHCf5blw2DcmUMxaEKhHElNSCMTWy3SW
cbJxC5ZKI/i55Bql+A/OpUAoLw4ivUJzpnQalu2GuRMArtrcuyixnYYdge6Z9duIKJTe9yu3cnNk
myebCYsddQclO2c9seL5I45b2pwWacrSQ5mavlzvpKLtvkvyetsauTWcWLDfARRSSFvq10LBkAUl
AFvck4rJu6/tJCX0ntEeERV18k/EnFk+xO1UFDI6ICnXwlA0MUbLX59xXRZhKVh8Y5OXNXESaLNA
/id6RXD3dHf8/+ITR0382OEusr17StrFIJlRk9He2LnxMoOC3TrCSzpsQsACbLLIrC7Tl2nsPs72
kFVeNa5lX/OmT2bA3N/EcvudBjoaGtoqTfE/E5QxsfCKPYXp+i8eXASa+oWMfoWdydA3l03bVaVV
v2kw3yQF2mSvoimfTitqNrDdJRYODc/9sjpB0tyzpO4iFCUdTZgssfXVeyTpQY8R1nazo4YlStpR
AzMVmtf6nFDEDidydKCfdBNaOkTKSdfmSvQ8kudgJLtYpNTDFX58U7fJYcvphy2KmHM6JEIIg0id
vU3WJfByrZvQY2Tdqyq3MKBkZnzIqryn7nuOm/sfnmqaIiD0LyohKJ2gt5/9Tsoir/bgtlO5X7U0
ADQRxiBalW/8ciqXYiQ8cj07U1OSdNH1eryjJ9ttgC+3rFLN+iqinw3a9ju5d1NYFVTB7XhCmOci
fdRGggBK442EXpmJK49R+TQw3cpWveOvl1swBw+GLPSrcJ6hs8yjHWCjbcOYCG+hAeZ6md7WT6os
9S7diz6Vi+PR1KKKVf8ATuZdm1GAy6GWqb6baSE5Pr8nVl4Od+pZvbYTrCYOfbWE4iV52XVxTrLI
qM6kTfmyN4oFVZO1Vsl60YnUTUTUoIokPAy6ZzHgsn8vXeHgcUM81+PD4bYWgC/MOxGJuBXZGI1l
XIwLXi/rv1THv4tyOxJ/GRvHZaWmn9DFJi2+SApR0ut0jjef6zJCRP0zbSpceZ388180BNiNRaxh
Zay9gdXvA9NVwOLCeHCceMYNtKMYqhMJKS5l33v495SrVGi+00aAs4Z8nFWD6Xhxnvl/nTbdw0Sn
mC+NiPIrbG00ynbGMgLOPYlPwc4V3oLco3sDFo14eJIKNZmWrfy7Yc3d/Vis/15fj0+tb8rpT+0R
5OLl6sQUOgXSvHduH1z+fN/osUM4XHwOzk7nbxiqGjxijJscSHmjpwswZ7N/YOK5CVntNCN4b/YQ
6zDY3GuqQtYjFK1nK94J8p5DmgSy3L1NXP6juNStmXh9AhF3wjevUitO4VIL+l6hCtHQH/PU/OaV
7DmWuR8JkR82xtMEM4VPrJer6eXbDAS74IBxueEt+306z4xQ+4fSmiKp+f2v93Q+dHDVod7Yrtfd
qyoXHxpTZuPb0grrJwAdNYzrOr/bdWUu4POOJl4/yC7E+XHOBtc7KF1yxbsfO0GuNhQGk5PPxWXN
Emh6VW9i/eu9VyrkMOtsv8fuRoCHt8vm89iQfoyE1NY3+MZRjIboSHu07XqhculX4ZHW3of9EuFo
2d27YSKLVvuNvaMkTkkdgqXXl3VCnruIlLoQtaIaaqZn7XoO0ZXSmZNMOnft1ZTdxUthaiDE/xhi
wl6RI/+5j3eqrW9y60EFjNxPOLVQ4RhIbH9so5HtiZqBus8hSz67s/vU98TkQ9EWslM4jcVng3MT
NQq/vfK6lQkKlxzd3h3Y2CfkQ9m2GK4bGu1Mg5usLDj2KpHxgd+HDalpGLmvkML5xbiIJL5n7mCk
dCy5OqTsesq/Y5RgjrdYTCBXmaPISjqRLx18HfpOqLaOkG7+NzH5vhPTJD+3By4HL4WXL+3PSs1v
43J+Fw55XT3NMBwR2rQuJmheoXvtycrmtWtCcyTdW6n/xPFIkPjdT68BTrqmuvkD6iGRQwRAuoM9
mwAtwfZc2IHf0wLwZLRZWS7pM0YNwH4B2xRnx5liJH3iLF6KIAKHK4DuU2yzv+NFNaXyR1ECwSgt
BZY1K9fDXlKrEvjYlye/SCm4PlzOdL4+1+3gvbVH+eNhVzX1LHU4y2aK1h6V4871IviUIEk34d+t
p45i2r+OJvKQR/9ozHqIhCSw18GrT5Rn9VRAWUeZtP08TDh1GLTBEalA7H1MjD4DMK2lme6EpkqQ
C3hNgJl1BsKAaUeLffh0UA+pF+2xgS7HyRBtIWvE/DSF+O58zYt8zdCRCsyeFL2lgfnOFZn7QtiA
BlqbRab5FE03vFqHQhYprZPqYy0F5gWh1f2QSGchgP1aSkgZUQpXXtK5f03e6Fwbf9iXvhkr1jo5
mQNWAcRRaN1EuIYaqH1g5o0P/iuUaqZd9h9s1os0u40UF6bJehrqA0Li9APpeHXYFx8yWzigIPy2
m8Com5JA7slXRete2lagsWc8wB711LJj/cXqRse3+sC8NPF4iPgJrYLnkWUojsZoNiEnS1X0qHsN
3bXwVLSww+VCKfrz2OHMctLQ0er/9Xnf7tqBfbXBT78511jxbNLyicnUaYT/fyNi+lyZ378tUjlK
+sjGKYDBK0K4utZc81ZJbht7ryDVWtkvKNQPwe2x18/SE188uIr0oF6X/q+bP3bn/kpT58fDETPT
ikHjdXsiJH3H2GewzAPOuLJsg8jYoJQO16r7UAb4iY7QS6n905vz+mKz3OvUKyZPwCLDDAkrTHNU
UcdRi3RqHSBY5iugOquEW7R469rBBKIpIow4ybzSiE8JZvKmaaHsGBK+TBeallcQz9IYJWxSscUo
YpxXo9F96+pE+xv/oHVRV+pzO4G/ESwLhXYnb+PFmDT0KZYqAFQjISpMUyjvuZWvxT6bdiRvtkMs
GkRFMV51EwsjWGo4N183utr77zBPcK4q8HhhAwCEdZEo10ROdP7JZDpm1VsLvTNu/N43PxEiBA4e
8i6AVVF2GX7f8VkjjRw82YNCYyG/KeLQmNbUta+wS4j/1GmBKpIkoqgJA0ecOmqQl5g1ODAJ/yL8
eM9DWVOIoJFz/bjKud2FUlBalSPd6c3ABdJfyP8PSPBRxpYylkMbyNBpsG5ugVj3P5u3WJt3c23c
KGgP/+I4gO7JJ/PNxDijL8H9qd+xjzPI+Tw7y76+tWvWLxJSDm0dHsgNzRPyVZm/VW6IRv0TTYCx
HFxb892qKE5ktThQKeZ2WAsETdp8x8R91RWttZpThbMcFzDPK2WX9q4wfae1kjSPRf06ZbcGDmK9
eUNQFE+loAGjIRIvqJpsES9oyHr/JUcXUJIXCGkmZ9Q+EfrBYFUE74pOg41cosYh741eHOBmkWSs
KyRMLWrznMfFSHdha2JiVQdJezL+LNTq+gyrm1WfiKSF/RgUkEpxXBZSNKUfsgKPi0uKgoqC0oBf
81gP6/PnfJHwFoZ2Oku71RWjwRe2RHMvhPp8ROwUTWT+hL0HaqBjOD069Ejjn3ZjOeUoOlcDMPVf
iox4yjC8YUYyDgzS/LsJRXf+mGkwzpKGV42O5twC0vZTRC6O1HMh6fhqQA8Uhr6WO0SltvaRKsRU
NLpPgcJ+ChTjEK++6Imh67S9wB4qI3L3QnsfAT25SfzeaExFtvdCFEvLgXhCJ5+jsAN7B6CqHW4K
+hMwnVyN/6PEpBdhwSNJKBC4yBt0Tl+uqsEGMVONSEWV58WBZFu2gt+d8LFSzoApIQuA31BJF4hN
2wPy+g3rv7HfDUdVjYCwLkYftJ6ALNL/yfSVvGpVwNMs35w44Tz0gh0e87lXBfMXRRUJmkDDeVCQ
dc6BixDVS/RRtmNJrkW7jvJho/UWDidF8FX0U2xvNo8CeVmrnXWyjuhjtcMa8EZwtstQtqvi5fEd
F3nCA1mCOdlOfVYkeYk80AXm+hbuFajLEYgUrAn1ZLNKbIHfkvZyJMj4pUVVLb/57D7yioxY8Mj6
QOg3ukXixYYdNWEUJZb2quLZdAAu6BkdBj1qc06AixgLFLrcLDPnLocFHjuruSLOyg81JwCcqhV8
0TXk/9V6JBKPXz2r6DyFxg7qzlUo7ip4P9fWx5pr5CSJxwrMQLeMjRAnX9q93NeFQMP0muWI5G3f
3NiNUTcR74D/JBc16M5qFr4/XuqjiOdsoU+TSXVATCYSFxtrSvnk37KRBdF7HoFfrrIRLKj5w8J3
ZZgXv24zNK9hhbFXZPbtZ+PFYkyARSoWMO6Nqo5HiD9a0IR1fuGKSZNKMhmcNriFFVvik/V95fM7
9NzMBND+4mVJxzideGuuk59MgNj5RR2rGSkDaAXzglL+E6O+Nje50321TXn6N14XDLyhdJgDs5sU
i44ZIeHJmLYV/YsPgh3Xv0I2255vAEVc/cZ0OpZE4hfE45fd4H+DSUbMY+Dz5dUIJKsXRZcMldCc
6CHIuev4NwtoVpJU9Fg6AWvT/FwCCn3mnt0eAK5KlIYEZ1qBzJ1aiTRITlcrEblF/9CMNmCh7517
hum8tjm8jaO4qWTsjRUOT+cynowFrVmpai4BKLVYfiP9DReqBcu2sKtbk2j4Zguj3YEAP/JAq79i
kG77gz0bQW8mBhhWxv/An8bhJvGzV8DMlUOq0bOy90fbnN2EKcTRGVekeXvBHrc7j6I292wlMFE3
NkF0+6S/vtJwZ1breylGfeVDYk6CE3V7/AVjds2jN3N4r4k7c40sS/NLghBEUcZguGJJV7omqufn
DSPNJ/lJv7PEtnr51OP2ljNH1YPd4nBalN4a3sYg8XdrkH5LYvCJQfHhgD5BS/lQyKsLyPFJ/kNd
CE9Q0wqEt9FGf+zkM4gH38ViYWshASKBiKnrcIabrHPKgeuXB5+UENLu9rrB95RxC+32lWe+n2DQ
gFOK8l6H1m2HHcLHkiYfy45mIjQnh8vFuuLj/ZCtGyCk+Tf61USDbpK3sKD+GPmhQYO3ZVnsh6l0
EWOWGzXRY/vSy4uXaQvq9bGOlGkhrsPZ6X2v8mNebVvsJ0FXVyzQcxf/b/TEd2NCVLYBakY88gp4
VObkAmxl7yvJdZZf9SWMRUhvKQ+fkKwrr+VpcsFBM7OlCqeLG756GSJUAtJWsK0i6RBSjGXiXUk7
B0kzb61UbYuGU5uMVnqdI95npxx9QBEG35kilyM6kA8GizBYUW5tjCbdfij1i7dxnDj8OwaIpx41
MOCLevQURJXA94FMz6fK1l1PL+kg79ej+UKM4PD1h+i779dcrCs66DXhWLHpvWz1gBs+4aSrQsWC
qY45IcIW/k7Gms6G5KrZZ4dh1YTOGmhIyNzZiUcMZjQx425tsXW4fDDfjTJ1bbYAadNjR713nyDB
ykHtA7zPGigUIsjextDRepKBUCVtQInmQTjZ0U/PtiR3K8SyPLyVF5Qm2Ynaf/YdNWNcAPqlGmvd
b1Ajjtr9qy1oPufdjo4W7AN8tM76fxeV9JjVXXKxObwowyBcgRC+HKLHd+Jzdi0hrjvcpH9SWALD
DUVjyvAm3Qx4zqkpAGExtT+5qcJ1Fct+3HZdHGI2o97d+X5QO2ftlSS+AFZC5gz43uSP68Ft7d0f
tp0iCPEI2h0Ja8YgntWVSU/ob/DIinleZnncFG33Wz0ff78bD8DvoDoM2f1XG4J0bO+Txd/ox/cb
nzx9MROxExAoOsoafby9hxvELVHiqPVc29sOaQj4Q0JCgflcVmFbMKyUARDXGQO2+INWszvHi1rw
C4OX/w+2s0c7X6YKZXI7M8bwL6Tc13+pdKlbl+yALgJDB1uNlYKxubVrjrxxmUChE7c2Qwkxs2Vn
wrtQfAXFxiO1Ve/brKFiRPFY8WWuKFWIiGgvG3Muoctvn/oi54aJJg5T2RLk4eoSco58kqB5lRFE
7qRFgmw/r3QOpegQEp69ZurB0D966dlrDPA/5w96vjnXKn76vUw5zEkENrvmL+2sbq99StfO/wcN
8gp6ujFvdHRatekM+n6cxkHYb7boIOYWUhL1WjogqVMANsRg/UwCUjKiCs44LjxFIRBuqt16V6Wm
JrKnJoinrjlg5TseRYIeCs1itMC2ZsAFtZ1Jvq83yz3ZeEZgOxbSeXpzBi9Gz9YUOtiwo81DEdBT
rHJdblqmzH+BqbFQ+TwWfMbLj2hTTBjZXOwFuobr/ycIlTo0ynpECMALHYRpQcq2vO3o6Nlr9WsW
HAF7kC1YuHHaipQT6iTVBZqv+r8EKj8J92NtXXeFwqewmdtnqyoPOtBbXOceutEeyfCssQEv2V1D
X+eQ84recfELdwc63vrIMLcdViuzsvJX3iVy7MIMkdqdGSIN6LBaW/pqAAADc7xW8eLsyTxMugpa
1AhPJdYznLUQnvFr7lYRIkyJj9quxfEpGt8fi7kDYJi4oGAngk+MjcBILGX9zJZ3RlOWiM/vQMca
5ZUauTGtKQolfM9XpbgEYBDXrOYIsc7XpVtv95zyttHyRpXIZiqoffTYqU5nPCpB5IKZuwlsYo12
8nLY+PN3gTlw7fjdRwiTSWVvdRh+aRXwUXz9oypnSXp6aT6baAnq7Z/BavfnWAtL8O/QhgYvGD7H
tU5yva0ES+yci8ZdDC4agZ0D4PsamIoqZ3fp547vY4sDnEV2Pgbaeum6fsYfEJ4bk/lO4/emVsQM
GSUZCFJ7Rp+iZHF5t2Uu9d3z9IblKdUZ+qEblrosTncFFFHC05irmu8z2L7g1Tk8Oawvih2w+icm
j8izBsWtxbL2fvl1OHYp5J+mW+Vqs8ErBkOefxgv7y8djx2+drrXSpA1UF5ybzlL4BOAxMzg+GIY
cik05k6JbYjJPTHOPYtClgqBl49WKoMN/6/pDJ07ZtwEmlrR8CC6obvTBvrW0A4xN7vYvvo1ID02
I05kWj+PVy5GbIk8339s1yVhWu1VlF+BpUgEc4Cey54ZiYPqL+sqi1uWKiQrH4l7+QnxQovU3UNm
HcNVlOjCyTJthf1gJwduaDq5vPIK6h1hPOEBBYL83AMCrBBc3YITkKaZauiavAqfHyLEN7paDlrT
ct9V8OkE/pcC6njpWBkBaN3LFMmT2/uras3nysVz7y+lxLaY8X1kx0QAI2sWNZ2XxeGJ4nfFb98H
+dWWWmoP885eX5gz7BrPZEt+7VzHMQvDa5ZSzhCAqtWqki5jp8Eyh2TDeLJDZVN//ntRNelYlc/r
gpB754QL8+J5Il21M1I1fGK2IPADOhZJ0G56bA6hw66B6vI8VUkxxn/jb97T6r/mS9OTA7kUBwP8
oYbRpEj6gqtIUG5r3tKJkvMsPuCH/78spbgX+1ltBDw1DbqnuJcQcqkdbjtjHIeJ7bdo0345flcf
lfw0vkXtpRxujSVZlNrjErO0GeD9uh5dKYV6HmoNzioxyzFRhrtiyGo9urBlRyff6i8vIBysxVLt
7sLnh1w6zDOQw1Uz9BF+zxw5D/B5Iuke6k3NNateDioTj5DW68uJlfwvTlqY58nc9JXlw03O2ZHY
BDjRTRE6ea5BfU3LMh26qvQKbSPkip1l6xNIgpLh9URKi41eec7U8DWukaXWBxYzDz66RuOww0B+
6cgh4JnOfj3RGPacp6bm6/cvwgjXWnXz7LHhzsBPjHGAD02s7UWc2paYJDDqcXd4XnyDCo/la8NM
iG2f7HUMth+BliEtZ41VvMvXDD4GRZw3+bqrxrKnMd23mstlMmkUe1AWOLlvwKjC3fcfi3rgsyEI
knElFIbaYopevtrZsEiB5rDMcpXfWRM5jwPsddpAgnP9b8cS/Fepg9Al8KLsaiadNBJ3t6eOsFsv
2IW0vDF6L2B9x1OaJkowcw2y82Kw4kn/fj2yDZOM83gsUZoC20YyyOKmmwHC4jP0uLy9/PIxo77y
DmawsMQiJjd8s9YiTPR7iB3TRZtX/yJn86i+Z13ioz/1EzFWJiPVu6hXphVs9eRj7GB9Sbar9mup
ZkVB0vVfQr4x8Z/lRXJTyXxYe4YvhCbOqnQyPywhbV8I8pZ8F7622wV5/UG/sURjccv2g4MQ9nWm
oCRrtp1aGtBwKsv5rMI+pcitPo+UIdDpeZ7z9EsuRNfLxYJ0Rj0//5ry0v4cMqOXuEMB0Z75wuyY
YEym1r1MTPiB7RwvE14wafgCfNjYdgJwkS5NGDJbAqFinXCQWVLNzcIsILPAzHA0nnLTVSE+vjvt
ZB+Xw+AlGQMMegam1K9Xc3xk/EGn+ra4HFDC8/VQEyDy0eUJfgkc+I4BNJGUQDmYDSlGK2bDmAWV
xD2Lg8rFna2KxtgH1wBqrrH7m6UYIt5L/gL75oqS3jkXivSBRDigSml1tj440gZxUGE2eka5MDUJ
0DFz1WSpulFHeeMGC2VwYCrXoZZQDtWcamqHnystql2BafAyl8B1auVlFc6d6AN0q/YqwwVBlq3H
ME4snTZPWouTHoSS/uQrrTpXsxqz2zgrMQBFHGdWXg8sBriDLtmG+f7Qtb2m8OeYbt/f8r8YeoU1
mmJ+0WVLFc+54jJ2GvCj8XnYK1aUaTJ3YIG9duBrp9+AQJDrSp1WU8asGsm/pyN8hXRo7jvhCJzr
/ngo17MN0WXfHIHsjj8HcjZbyImJpZoKhR8ecAcVsv5XbnHsLyZ1/idbQzKvvOeI53GdJDeu+1Hg
+zRGTZvGO/XGf+KELJLbGWv0cCaYf9XBZariRPYlEKgabnb+UF2dgim2p59q3Z9GozmqRVf84b5o
1dBB/XVqFT5M8iIN9k7XavXBeyNiFdhotHYjbKEIdmkI+bObv2EO+p/MbQpADZcIoUd+hwcznyan
G/d19rmz0mnLMbk6XTWceh2d4dGxG5+dSn3zhttwy+K9CU/5bkpJg8CXRyfKKRlueGELMnxpwgbs
SlWv3BtpwgKMPKfNv+oLXr0dDaE/U2PXFJYVu+jSrBzZPQAPTUyKPPeXh7CiYMcqNaec1GzVm6qJ
ffMpoC9jLAIx9eVuq1azjphmuj4finN85mV1ZfSFLAWWVJyWHE70CuCHsptIHFaBh+ELN2jGOPwr
k1uZkFKdeLp56BlLvyHKOQH0vvFDB+Rle51SvyNScZ0uIEA7HnXf6DgLtH+WaQKPGLtiv5U3Omtb
2UhKLXZ6NKgBPSYfzAqSWVfpIJZlbkXpxHvnM+pZbnjsVI+8eloFKEVH+sib5Qb+Nau3d9B6WkjJ
L2VsZm1FCbTgwIfqCOcFnIiAxLEbv5dFEjYnwP5EnH/NQi7SvbAYjkgMUS/4FUTcQf20nAtMSuXR
VO+L8aCgJj39870Kgu29jjiTMNvBC/Fb1F/j5UmrR3KgLtl40veL39gtH0abh5iy/Hm7QhesltcV
wXJVsKu9Ig411h5d2s7sjKHWnv31n6OAI6nUZOuUw+dl/+ZuYP84Qhhord3ugCHbIeLl6XCc1KXF
j+7mdKUjoI0+PwP3Ykm/hZCqNfzF61WiwzAFePUvcHWt88IFuiilXYVRVlmN6y1/xrgXPID8Z8FB
vpcULcdnOivDN68/TN2X1MU4ZIuoWDUzVOkVYcGgK3pBvPo62frOUX6l8SjHt0bAWXaazEIRmT/h
fP1jR4BMWeZVv7C1ukbvwKPQbvLqpf8d1QpMz5/e/gIAJqNQhAo+GRgBEHHUtIAZAn3D3Psbtmrf
wXyj+tG/wMLIqYJhKOOp+jrzoan3+Y9Z3qEJFrbi5KsPodnDX149Ajgx5Ah2PZzgvAMwwX2LncQh
bsD7xmTLMZo3+xFHKRMx/iq5an9xLTn9vIpcpAdrqk2/4UlkICL/7DiA7paS5OEpxZVn30lD02WW
3Cq7ipy4KoftRJWfBsVr/tYG37rc7dUPiPce+IMdwpPT7qhEqMvT87Ywfd0NlZkMM2OaGrJeU9wh
Ps6qS2bqEytWNM7+bAQzXhs1VysRHbE/RDbp9Qc27NbPxG9h9S32u3PxGWeeVZX5ODRdRy/kXN7G
kAjChSTjgwpXUoYI8b3ke9SXYc0m2lQRKUqq46sxJVa32A6Pw+xsEaw9kHeCsfr9Fd4SNHEj0BkO
Rcon60a2EzWPVyXJccdNaFtogLOIcprtUORiE+aMkNH8tZU+KKQw1Tn6nrm+Y01jT74hMm8+FZRe
3o84CPRLaiEHaF1BTsSe5+eYToSMp1ddHJH6ZuDeOrrAxuvUgXviwzfaTlRteGrj2i8DN95MtfI4
K1oSubImPKKhVyaq5IRI5WwbxJWhXgkBUBIf5bG2qf1aOIAz9ACfef41kU6sOPjr1anm8T3T+otf
1/Gut2LUIYitPN1LDFCmcuSz2773I5aMsG4uK6TOAltpUEz0yo47O+lcdbUjZA0wu6bL3/tFeJYR
JxdR128C+iSg+VWyoeFtiF+ZNWKmCyNF7PVUclpHEs+y4MtrlCFPK6rnsQcOKJIObE5hGTyOXUzX
AfMmWvf4rYvJgsovWPAEp5tEGM+dFRahapjED40goDM2U/rmT4xwdOqzSunJnLMmLTTsSAvOR06k
G8J/Mn3IR9wbM03+BapTp/kE/rPYjqeGfM/mJaZjMCkgDrq0a06qI9c/WqFFOK82OAUy7RW2kyJM
d9cCf/TGb7pfQAxV36qQE//33DGJ8ZphuqU/3bwwAqRpg8tE3mHJ7dGYfRQ+2kL4IjioEUU5gFgG
5iVhFbnQE0eWbzOffkI5e3PFjYlmLiNwFgz3qIVZ+wPwwHMrVIxzddhM92wrAXlAz7DFi5iuQ7Sj
JEjAy0H1aQCVjBfdmNMDEVjyY1YfoIVyz7HvRrhxczF72Fmq8I98SR7JMf2Vq1ac0eoJa0QtUtOC
HFfJ8r3svOgxdc3NDOwZNsFsIBrNizvPi+plcq/dQHlxmIyXrnZDCD1KHarKUMcibhSYQWECl7AB
x8AaIuZtsZ1/wNeFySXC1sKok4coau/iyd8hYUBtEcpULr1m8fCffGe8eTjsXQQ+cniR0x1wKOuD
lBdJzybHCHLCfZXXYU+xwX9RgT8+WY6EEBLSWm54sxt3GYNY6DyEvTADBVa4bV5l2rrdEhLT3TSz
QJiGpTc5E+/tThQZ7SVahZFhBtySqv0QFRwv+KOO7GhRHgNax1eFoOkQ8jFjv3AGBF1o6ObAffr/
FpGfR3pseHKq2de+X+P0LuWBZw7TerLLYRce9Ci2XuH62PxxWP69ouQLs3h2HuDrUCqOodSL23et
oWjkAPqAmCY9sOC4+zHVUfzm3sS3LYEadxM0DyKbaXr6/AO3PDF26YgAcnORi0CESGOexbF0cABO
jD43W6BT/4xhcTvaC0Xt4rLu7sMon30cq4RNBakMl/Q19m5SNw9r0LwZbZYTwKviAii5Nj8bugtC
gFwD+g3re1EPKmJCnuAqEzY5JxbEDNQdSd99S27zYNxhqhb8bsMG9/oeerIBdgpEZZaacthNABMS
sidCXZjknApdFkJA32CyBtFZEE8EXcHr/O5QRYGgjM9bFqVp5+N6q0Tp0H2JczFsuZNtEYleSosr
GCW37oh4p37QGw47Tyb3LoBoJX/bPO8s6OPgURFmhHD16q0h7G8wY8OpAfjyVZ3iaNRdYQCi7uKD
9oyUeoBH/JJWignzjy+3KfEiwOMPZgei89IkOQ2Utnrhfu6ggtRCoIA5/0VVdMXkc8xk09j0IY1s
IuX9dyTOdelmIB3zG8NzOquMWZxTcp2uJ50UwKGBTcXkARrPPDj/NK1LZyLX9biU4WgeD/jRNjhJ
mSV+ZWjlvtsiWyqiA9xQzFReXgib250N1VLZUP5eJEEHp9v1mIv5mYEcRbP7Aq0ur+dnPYqffAJc
I9Vy2LhdvIbF4u7QUPNF6hFKEGgLU22ogpC0KmVtAbiZBzvKAZRIJxoKtjmP4cHPJ4Qk2oCW+gSL
BwWvDd4mZ34t7xI1c2YxF+JTUB58WjFqD4X4Qt8NEmW7iTuVJW1oKeOUW2DNpX8EK4UBvozjv4da
N0gCs4a1xC7D97rB8nTKmU3eEeJS1qrP9TzYuodhONZB3nbS2iNaL3j/EFb/Gqso4MJwDctZHiql
o1AYW7bZ5du5goS0l5vjkJAB5uibeVuAV3+BN4RXQpA65nVZ9EAtr1Vq9Po0/Gzy6Pa6F4rjDPCW
eYzMwMN9iIIKrfPGgjHO5gOh1UWYzOkxKO6EkrjhHNWPm6YgTgOPhxN3q9i5gcJ58NLVO1aV8tBN
tIGhZLehP6zr/XUgJOs0w0r1+gaJD27vt2IYWy0xbTSpzUcwDr7nneS//d1k4r15zNG0EkMOtPbI
Md/d+Y6PIbLFSyBrf7w+0KCHGKILQgrTNG1LNSlTide0W/EZz2kFHO235oucn6pnpoCheQJl46Xv
YlCsCNyZvFVEL6Qzse8jyemlP0zBIBsXbkO85eADje5KmNz7nO7+7TyxvY6R4X3miCdgGszmOs5N
f+erQytbT4giwaEO/n4JWZguTfRqvr6z4atWP9jYFIoHhH6+dqTuXk78lHjXpF48+NgI//X63aZq
7FOgR+NbbFQayDyRq/J1qgweFZiFI5OxKY+s4DsHXvb6rIF97IxWx6nWfmboJsui4rzK3FvxA+OE
4u+YlOItsKxwDKlLzoZyYkH4XfPJQIAsqzce5j8xSwrUa2G4Ffl5xJBDnlmEqatd6FJaekneZ7G9
+lAfFhcPYy9/UTCsGTOa8zo2QLKzywosRu5G/bln1qthmz0mmPtV/bxnh+OF3DaWEOKF9Ka3njwX
ArfvMSLAywcNxd9rnBSSx/hig71eTejw3Qa8zGDVj1Itfrj0ZlSiT6pq+vZLAtU5b4ZhPI2QNUAR
G60xH+Jck62pty9n7NW2xVbvsq7aLBtcfItqrp2I887x8lUfQCwtxDDrV4/w4jc1dLPdOeiRDy2v
E36FE6//S5Z93Y3yx8bxv969Dw5grapbFg/IXCXOMtOtWm4fg3QVoGq0a1Vjzm9HkGfO1gsYYJI+
dcChIulYJugDJtGI0SGb2kUhZV3OPlcowjozh50CvlDHWujKqbOMUZ5mCtoURJ1G3yp7HaH0ERYI
00MiCo/NY9sG39HY+g6BccZ2AjMnUBN/47j2lBaouTwxWvsiMrOCN9fxsVCWfRbkn2wes7LHrgGd
9QnGXQat9F/D84SyVgfz1fig5zFTmlAB81wiSu1vW3dzUyt4EKvDvW2iGlVF813QQttfjHrXJH3V
VigS19zLBqNlX0WqrlDCZsKCU070uLhh4VNyZ3lKWZyY1+NrWBkBP8xA+9RLD5vetRmhyM7+Kvmk
3ztpMuJeE1Ds62URrmqEcq9Er6C6ikeH78vGIqsYMNxYs+vJzXM1RwqsYuxDh8nszqypbKrM1o6n
ZRqLn3Q4ItzRxfPRm5YI0+YZuKaYQslOUQqJsXlt326fjTDMJCeCqyfb/HGjwSOU2xJgAGSKh22c
XtYimIZuHti81ZwPYyAbCVgxl7Uhem3WmFLgswhmi989yEwm23nlPeOfLjw3oLFx33Aznb6WH9Yr
/QR2iZnaNRivy3UonfVSBiZStJ1ASfOjUZPuPwruWDEfgG7lwHesct5/PqrQcj6A0beMTXN4oQcD
T9wsy3arWSbC9bKkNQooW0KBLoVwrs6dMX9Dk8yCoaA3AYmdMiGuPbrA1bWzbpRli4u3N8pWTKzj
TXTWFzYklNO1m+LmlIVZ1HIDD8d3igWW9WNjQ7LURcOeO9DIAqHUi/pck+3LsbCAQUdYC6YptFIc
Ym6iYTh+mzK/8LpLVhnxk5BFB4V1cwg52DHypBwtV0Pmsf1xfHMGaRpcWyctYmZhFfDrbQqcbAAt
sF2YW1x3okUugGF6ivSf/WmOKO41FrxvwGGNqqxLsJ4dRQcGR+X+IzVzN5P/pJnftmSszNPFKSry
Cdycx6TH80d93BbM5rff5PX48tFugjiq6D5v29ULzAmqSFd8qkBp1Xf+qagDtcXLxsDoV+/2utEL
rcUR1jwmxOB5ur0l3V07KANHJG/vMU7gPdZHHqnv5TyHnn7H4W8rSKzdNgD7kWAqODqSTuSfXzJ7
r2tUc4WPLhiR/nJIoU4//XHGSYG+HxSXe7UCb03Fwzv2XM3LVY9Uv2/xKaaYNbm1okDYdemBrUrn
Q8KTRL93KM4pV+i0XOmAaBzkDv1QctzCTlRX0mHnPFEbcMN6PwB3qZAdygkEHfMq6+kc4Km7abi6
9WCKjKA4hpHyT8me5zq1rHCj7+6sCM6D7OODzahYq1CUmLxenScBkMyQAHOD3CtpPMwuOiGTcXWX
cRKCDjsdHinnu5+tEZcE50PQENkWOese4Re2KX1b6Vuhi46bIg1k3jbllKoC2lkvuY9oP3e09hHc
BeWlE4TuMqKEzV0agHjNAGZNWOLI0bHpN4cDW58mWK5Gb0uVbwnSmjZDFgU/Z/p05WeuXoHyLi/7
+vsf4f86ChLyJP0CvEP0yiHiZ3WWPOj3ZDJIebVOsjAo3mcHiMMcxCDh2QmEYA7Jd1/dFQ/YkvcG
RI1H+LC39YBcIhNG1CAgr+8oL1bFv1mpgBnjlRnc7efaWB+qHaKd76ayvPoTz3uIjOb3gpXQXNtl
Uzhlvz+QK7Qw2plCF5D5Jl4yhwKpao5jhD3hbaR3Hs0=
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

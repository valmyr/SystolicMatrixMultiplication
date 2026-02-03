// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 23:57:19 2026
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
  (* C_READ_DEPTH_A = "574" *) 
  (* C_READ_DEPTH_B = "574" *) 
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
  (* C_WRITE_DEPTH_A = "574" *) 
  (* C_WRITE_DEPTH_B = "574" *) 
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

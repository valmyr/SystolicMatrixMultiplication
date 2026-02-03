// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 23:38:47 2026
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

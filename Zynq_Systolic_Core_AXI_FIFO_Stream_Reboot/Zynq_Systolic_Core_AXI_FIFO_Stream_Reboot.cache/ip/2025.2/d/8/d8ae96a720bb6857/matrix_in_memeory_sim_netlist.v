// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:26:29 2026
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.02678 mW" *) 
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
  (* C_READ_DEPTH_A = "1052" *) 
  (* C_READ_DEPTH_B = "1052" *) 
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
  (* C_WRITE_DEPTH_A = "1052" *) 
  (* C_WRITE_DEPTH_B = "1052" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20352)
`pragma protect data_block
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
V2HG
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

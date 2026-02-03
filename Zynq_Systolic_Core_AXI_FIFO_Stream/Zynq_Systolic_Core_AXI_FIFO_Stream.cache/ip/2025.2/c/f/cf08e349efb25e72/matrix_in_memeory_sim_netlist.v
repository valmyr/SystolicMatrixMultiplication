// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 02:10:39 2026
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
  (* C_READ_DEPTH_A = "1313" *) 
  (* C_READ_DEPTH_B = "1313" *) 
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
  (* C_WRITE_DEPTH_A = "1313" *) 
  (* C_WRITE_DEPTH_B = "1313" *) 
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
9hFi
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

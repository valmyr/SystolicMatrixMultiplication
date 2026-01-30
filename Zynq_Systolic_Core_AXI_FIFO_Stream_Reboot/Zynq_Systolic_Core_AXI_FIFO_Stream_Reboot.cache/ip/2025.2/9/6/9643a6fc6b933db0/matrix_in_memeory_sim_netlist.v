// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:47:22 2026
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
8N4z
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

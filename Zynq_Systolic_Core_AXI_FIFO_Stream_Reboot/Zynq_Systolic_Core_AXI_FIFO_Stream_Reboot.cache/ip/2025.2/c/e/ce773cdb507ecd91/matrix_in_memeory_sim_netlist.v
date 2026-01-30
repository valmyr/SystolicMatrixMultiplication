// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:31:40 2026
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
  (* C_READ_DEPTH_A = "1055" *) 
  (* C_READ_DEPTH_B = "1055" *) 
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
  (* C_WRITE_DEPTH_A = "1055" *) 
  (* C_WRITE_DEPTH_B = "1055" *) 
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
RqTh
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

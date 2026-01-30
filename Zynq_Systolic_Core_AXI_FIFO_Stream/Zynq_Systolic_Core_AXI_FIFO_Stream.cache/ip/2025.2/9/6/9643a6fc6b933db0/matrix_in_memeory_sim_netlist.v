// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Jan 30 00:46:02 2026
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
IFxh
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

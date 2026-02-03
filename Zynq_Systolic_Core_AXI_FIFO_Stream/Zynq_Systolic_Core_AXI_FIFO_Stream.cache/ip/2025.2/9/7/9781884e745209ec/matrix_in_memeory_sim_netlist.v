// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 14:02:38 2026
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

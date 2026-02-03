// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Feb  2 23:57:20 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream/Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/ip/matrix_in_memeory/matrix_in_memeory_sim_netlist.v
// Design      : matrix_in_memeory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "matrix_in_memeory,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module matrix_in_memeory
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
  matrix_in_memeory_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21040)
`pragma protect data_block
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
P+qLG59gyg==
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

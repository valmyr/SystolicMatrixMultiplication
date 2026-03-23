// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Mar 20 16:17:44 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /TCC/SystolicCore_Metricas/Zynq_Systolic_AXI_FIFO_DMA_Vitis_TEST/Zynq_Systolic_AXI_FIFO_DMA.gen/sources_1/ip/matrix_in_memeory/matrix_in_memeory_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.675428 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_READ_DEPTH_A = "27" *) 
  (* C_READ_DEPTH_B = "27" *) 
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
  (* C_WRITE_DEPTH_A = "27" *) 
  (* C_WRITE_DEPTH_B = "27" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  matrix_in_memeory_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22336)
`pragma protect data_block
FMxvKEOuUnIHMJw2vF6C7zQY0saDGMw6mT5gR673s4EvZqnFXsK5ytDdvZucTW2dcPz5AyqtUD4k
b7nvwfpJdE0qOrbIfI2M5N5vJhbMu7kb6+t/jqlMt5s8Y66QyfZ0CV9BAV8qPgoU4ClO55rBwHdF
iXBXKiVxzb1hQSWRvUoLENHVwrtwAW0CQO01mU4QooO2mSS/KdH+oQC/jR+O3cum7kPiMqC1lf57
EDllxvQFFcYIC5/AuOG+YsQV+vCz9p8g9mZQlWfJDMmCkiOPR/pz3pZIYjaa3cJZOawlcYcFUWS8
TivsftpslLhKu8e0W/kiHdFogl2VgcrhojTYDgNINnp6BzWTG2dQB1groN0QWjBlQIwhPcNalaP+
m7WIqUBDbmVEUYZT/nG75OJODL5dpskvjch29MspIJqVLuwGTOprdAcnS9s8lYaMF4yvznrZMDBK
N/FRDwk88OJbpSenPvMA/W//YXq977xrUWEeZelzmjoHzUNBGTNK5x1R/Zy5bngD7nsS657A/RKA
yZHv8EUJaN0BulSR91Q5R4AvC+H1NV6B5coiGxxCKNsQpcqLDPx+xBK27IC13oxMvOt8znmf4fSW
Ji9TEZoIubSAe29kRg+Ablqixwz9Up9RdfKhezNhoyB03VP/3dT5a7b23duksf3hVwpPb/np+Rt1
Ly8KzHNwZXuys1YNcYwl47ZZcd1jWWlVNXA6PjV+JaqK2/gETD6TARwR/G9VkUNZ763jKudbaGVx
tQemcwEVGSb/6MYv+P/zcuII7w1vwAYyUvVtp+W+2caqCNPGElX77ZDikBNpi+Q/aCTiuGDSitSX
tX7Bxf+/XegIEXpLRSRGAO/ijHcJL/cMUXPFWTXvv+stVjjrO9aYPcgKT/KImM3lFvFu0hN6DmW4
XybOewYSTuSGt16YeGfqaB1zGS0Ww53g9veKS7qLJOOMmX1DsjdoStweUOJgw2sfQkizaBbwbn1K
2EjI/UKGNKKCJ7vg5enE1pk7nTyHS0Q5VcxRTaqGV5/appiq3xAS2CpcFi+hl0mxm64Toq5hJyuZ
yr4Vhafvarl7ZWw2w8TLefOFb+T3h5hVlSPRTdMhQKKePZDBPVdZ0ICUzeB1UuOR89xDxesKzKyk
qzDo5nf+VJE4UHwZog38L+C1DoLr/BrEzlJ4Br90ZYCPDJep7pVnj7BMJwZFEE0vOAvP6vYJ6puT
AOcOlVP4QvdWloQJggxZDTjrPmGHhbsWIfAAuZW+3rC+aQFG8kTW9Bum5z3Wq7pSs/LLZnwKow54
IZUY0szDs54WoYdbbBzCNi38fD6nPjU9grZtuksuoDb751IeZoDD88XqULZYZJJYz1gfCjcz4t2m
z5DfE+YUIyBWoiMfbLzhc4vduO+un4lFq0Cz7NzX56agMNHzgWSGOcn/wJzh0Cz+ySTDU6TYT2Bm
LCvssnUNvONA6kl/JRkC6tXzF76Edt3bPldJ/Hjv+9RZoxqtoIBcwiJqPC+d47/FYmXu2RZSja0A
z3S+f3S1+BsZ4R/o+ysjMgOydSRCMmQONAa0KgrrPNsjKhx9Y/obE5bLDeNKElh5BWg1dYjIigvt
ioaK7/hL1PdaGfUa56ISP90fZ98SssVceLApRYuY4MZl2omYolvSeTc7lPE9nz3EpWeuCRR1Pj6A
iWEYpC/7BjEzVK+okL4uoU96b4i7nrEynGo7JAfUqL9j4CpBQzl1HprB7fNOCf7dNa4EWIL7uYdk
X/9yaRGEuW+vXC/uYmsKv3sk5K2wEmtDMMZJE3vR4qZUCYybK9lD2IO9CQ6b5P5LjzRtUuI4dNls
sIJ7Mc/kYZIPiA5pzRRt87rxtPruf81teW5m8z1Nz2OYp9noiYIAawL1XWFH73lQjQ7PN9pUmqei
f9NSRNK5Vp+/exfCcimp81RKrAh0JyzzlgSQXd5ePpfcA7tAxMTU/CW79FamlkBERjF1kFCrc/Jw
fatiDZjoVmxpbFYWVExWlJvOlmcQMeYXgWURP6zNHWih8WypWnkNZmAZSNWPcoHlVWFPYhOmB1sy
PhopZD7a7AkezlyVLaON9hMlOeF+1s8q1vdC5B3DPkLANkclvuNEagJgx0PV24HQ+9ctiqrVKt2O
zkNDAV73BHZDV6rSm7msHnxGUjEFbty560kRyWY8u6RYpOPo6HTffT7FSveb3FIQhGqmbxuSnZch
b5IyqiEKlMsr56/OTsREUw43Uj993qUUwC5swLOEzVu4nqz4GMn17XpUKzGTEcoRORhLJq7yCI82
wGL2X16GGvlnbE4m7Q0Py2Z25SRnNrfURanfVvSugXzZFJ66xQur2ULLa6bpRluaDgnkrwtda4S9
a1l4gSRZQsJoekpht+QSMExEhp/Dnocykn62jEHgCANpg19Riubfyiyip4nYws7doc02LehUZ7W7
w0SWZsd8nB/kfgVDYE78nFZkRSv7RpGac55Vz5A7DSp6uIFZ+mm2XNnI/A76xHVDFiwmtri8TjG9
Dm1ZiRwUIMLZwgoq9zac1yZQBSZFryW05HIxfyaA625oZ793EQYQlFB1Fy8Y27JLPv0ZWYcrLgzJ
Ovp3XqJFtJwCW9C+JIbRQ73z9/8EQTQeyQFE9XKquQiQD37DMwN+hHvmxFVIU1DTGmbl5Ndb7pE3
86mCa496hsx+bU1SkWIHy2E2qOq7BHGWiH734tclTVv+uGPOXWOpp3hl/Iuctl/tPgR6pCcjEuy0
gt8oxPsqDgDmjcDaNBnrAqFHaGnXp1oXiZNyB5xmOujA3hjwUOKdb8BVndF2nMkYUgDClxRyFx16
CQh/7FLT3GsDAhxk04FQ3Cgoxo0cL8OIecZTkEAOhRrgGf7mpBLwZBYi7mcZfXE5+A6slDEmFQaS
l4EHUTVSHp/HWEXuJwY1pg+0HXgLw6bcunj0aPROPORhUHIq1XMDLLSlYh8UAB0UNYdiBogDqbZj
FYufHU7b7vEpozRiiO+K928uayT8aHX6lRl4ajeRD9KYCliz9C46RpbKsVLPcX6ywbmijsVCcwDJ
1497WbKeizf86j1/8i/RZzjKHOExUQJWTqhK/We/jC8SJhjW8o04cLG+HHZRboS967JwJ80NMy6Y
k9lIuaqqL5Dtm2vXmJpmQvzAdjzGdQzNazF8122H9FdS/z12mPcq4oC5gOaQb9qcJdfGBp+BSyOd
mVnqZ/WflmTbTO1tNHPYyk7jhdRFbd2MOWE6W2r+Jny9G6MvsG6MddNQxSVz6U5akym0hICRhiXF
Ab6EpX6OnQKLclgiLB5FzDZRqPmt12PftBpuGT3lQoptnM19TvT4MuLfW+J4wCwUn+CY41tlQWQS
Bxg1gOQ/yUpnNYKT4x0WszR9V8aTdkVYzx9Dpea05aydbFRCGCm2+KEVF9JtdllTLkM9bJf8LzOa
s7I/2eTmjfmKXa/FSIbrzs1daegLXJpJm/PtH6wVaG96qdAQqwKSoTsn2sLyh0BmIC4Adq7Bod8Q
W+8Qwb41RpbrUo4HpciwvXCvu3skyo5FTRwRdFGC0QcXaaV7//jSlcAOAadgS1d2u0BFOteH+eeS
AYJaPG2yk7R6gFLx6ZRF05WUn/QAZFyAwIJJVm8ACk2h7rEG9ahhD1moXgMiM10uB2aCd/TT+/Xl
u5WPXnE26s55+qFjdM1OG66aEhbFpWYer4kfhjyeDygc4Tho+Ul7jCgJv7FH+0a7bcAewN2RnA22
WS2VNSSpjT0UIyJKaKHxeuIHkMwY24dMCob0NULhFWabrwOOGZf+yVWHL0UV/Cpq5pY9XvtZpE4F
e8Yb3h+seGQ5/FRzXHzjB3tztsD9byxkG67GSJIs+V2lpNAp+svJVfPdnxa6z5pZpcb5Z2I4fHBt
YPooHUWCbzg433WF3FWZeLf6ehigV6A5qH6UMw24PpdM5bpJMOUT+RYNhvkAjbcauy/YUVXv1JcA
8h5MjnMEE9bz/8x7StUDX/fSpXFbOMyEYco+UDJwyj/uRGPGUFD97dsDjjpxa3PUfFd3jOvcRiA3
ldHQvflaKxOJrKBnwtXpdc6XVSI32dkTWLhIDFdx9V0Ecahq6hvJ+Vzy7AVkSQKQIQ6pGWoaonkc
2/8cwWQckfFehXhNvpXrHiBYoGM9rOLlu9FIdETrp1fjWzD+3Kjs88aiBoBQRXzmGhNSUndjTwGl
dvKebQbfL/V26eq4wsfIw5V2GtcBQ5SLL1dEsv0SWP5qs2kLthaBMLLdQk7pdpUBUqajoNdY6nR8
Y1SMLD6py4LtpFgABuJE+JU5AJRb/Hf1sGqju9/d367sQLziBgcFpYSRUw3QFheZXHyAGNIuVRg+
Cm8nBE9dK/7CWxx/ty02vfF17DTl4jIB1rGHOWYU0kXEmPwIC3QWTSSIKelpgDeRwecJiee0s/C2
DUFpa09IIFSjsbs1NKDnOjqPR7b72wKTivAkD5YsaKtruI6+P6f6xDk+8PaMpmytmlETMWk4VfrO
TyvEV6/TVhcoJGlkZLNUHXMYCF1Mwac7VnIXaxB3r7nnIYfwcZXRd3CdpLxX+rCCZaxfStN4J+uH
wEHAmf06Z2BhH0J33LTdVooMf5aejsgNvsRG/vCdsqF7auJWX9plMsiRHyuR5pMCF33B7ZBXOJap
ES7HrPT1sIcHG3reKBRJHjn+oJpyIISZjCVD+c3oeXcClvWHpD4qU/7yvkpvrrGV5+tBgt7AR66Q
A655BYWrXHefBu+CpE0D1Xn1T8D3ON8sUYc/oipMhGAkhWiwegaxZbXAHSPJTiPz+AtGEHCLE8u0
yFwQUbIlq5DpL8n136Fw3/Xv5xTARxKYSHwdDrojY/67zhKo4aG9cioDod8wXPEyjcHVeU00fF50
KRDTXJJGHcdIGS+99CI5YmcyDFGkwuGbjBA4kMyS9RfD8z8D0bnZ/NaXgDUzBityXC/2i6QbNIZA
6DL8UYG0lsRhM/rnmKJUiQEzthMt5SZbZV5kPwSv1lg5YZGmHf+l8i58mIokui6yRHxKJL9I5+kH
qGNIbBnu8F4t8OjgH+myoPx183GHJgMDQQ4EmhY8cu9DF2UPbISrYK/656EHHLYqJaOb0b/LvDJ4
42QHu3F/ali1jIuU41An+uF9bR7oed+Kt/W7auHQiDxLQSPijMaEqytsBkNe1KQ+yAK8PJ+5UXet
BM0j4IJIVjw00st9bQ5kpEKB0x6E7+ijiq3rPq1vl3Nks9s1mpe8sGTXh27uwzj6Xpf6a2O/amx3
hjH3VhVY4aVZSIfU2MUmFUDA6Pk0Zai/dH+//18+urY8d9nHZEuFekN6YSW6X8kzF+C81b1ZkVJX
dJM4MYIIkn99OMVT1UGIBhMrUk6aSgaSL/D+ycXQic5QO3b2pHG50FyMAx/OmrGqgp4rYLbTIvVB
hxTsXhPkJSZQhSfQ4fvhVRt7FrJ9sWjsSHJ7OPnYGmXFvNN6vsncvqugzs1y9D4e6IvxTeGuQgkr
bLWdZEmxn+DaAKSa0qHPlI3Fw9dgDPu3lmQLeystLGcyOVZTEhc9uw/KCrWDgjN3SkBsxW1uO7X5
/LYswxnTDnTDrs3F5+w+qxp0Dx79VcIxpSsKYyxLsNMwCEW+jvqdk7kxXOUz/BIMG26h4ZC0cafr
m/J5Lq3mVvVBfG8WcXuwjIhUbPTA1OcxcdKTyA0eVsh5rTiYoPcIPGKucXLBSL4m0jie4LDvyhw7
Db6ehZBNWq1q01z2A5IbGpZqIf79qGXOB152z+iMjr+7wJakfIreq0Y+XtU7rYkhJzWTPWhsbqJQ
3UONKRAB072eswbcxXkMIW002cjucSl4OyXE86wWCru8mAWczZf7DlUmNMEsEFPOp7neklj7M7OJ
qU9Senp1C4iZ5KVxiQ29MOtapydIHR15D3mLcn8Y7Pi9OxozCsxHUqjznVlRZCgD2aDZcEwxh6S+
IZWgLdlpnw6LAIYtfqc5A3bapRXWwI3lZALuJP1rOus6tBaw3aYBbofZ3Wb6L90q+1SX4m5vVTj5
DP53ZhQ400yTHOQLOdBlhTCJXoo2dkaPegKSTIPLEN/xZ8NZLMVlSC2Md5PaA9lbhMrTeokmmmqs
an3k0zil02uKGYOS3QfWA2c2UpeIDwjOydrqu0/1LhxKAaP9Zl22Iq4ZOsEI42IXCZdOso6ntR+L
9ALsJ2H47ouJtJTDhl2Bq+xzIR4NqSSD68bsxy8Gppa44l4k58cbRjTeLXvN9XsuWAHlGa5ndK7J
orSIT+GszjWsegScyDIdVoUcQfGQfhqieGHyoJCAyRLmKGv4U0IIw/ijiQbNA0tbJ3eAszS9NB6A
IMtnT1ZOcuyZBmKbE+ewds8dxMOO0sDOpYC5OChqwZ+tz2SOAmbU3rUTj/ExoC51x2EEQTjGY0xe
k/gbE37JgPrTDymaLnWJEEomezk6apB1+6hM+F+tywHlBj2Zo5pB7C14OXXE/2q6+305h7glInKB
+Dw3jkhFUFFtsHAxrp3XOJkoN+uk1ug31JImlEBL5/xxdBONVDpHONd31z6AEaGVXJV+f2TTG3G2
z1uWC2nQEOqOvi5nUN8DvkkwKO/75y+7hXJhfqDqn2B7J4Y7lSwwQpRvT10Ye5LxUye2uG6JNFHs
uaheuFrJSvEpg93AzevCF4iY6ruSq3aRRtY62JCf1HHp+ELenzRMWDeoKGr0PFK5YTBWTkkLrObr
PfQew1jdcyiqot6p/68/kWcG6JUG7vnl6hGczyHSbO1VzeMpSYhzQsxHqNrKLIPr4fvD7YP/rtK8
5QGkzBR12rElkE6Lw+c4ah31uGyKy4nWgbbOu3TSdv/MwnCZbzSWHiAqdpIcR3vD7zQIwZ3f2Zd/
A0jXjzCUKabiSSG7BUtDSB8XpumBPTlcdk6GFgJq943/2p+CtzsrzzaLGrdNzshZF9VLT3bod7Vf
Hf8zz1ilJbit2WoM2f4LfOWW4oE6x4nwmCgaQk/B59qmSqLaeCEYw6DlFE25FZY/kzK/flw+5Xay
6ocSN6g+YiXq5Ohh2l3Atu9U3jizqg252d1/hOxIQgBY1YVcaBjTVLtYpNqmT4jRUX17RNTBOMmn
7IML52zbUNe/mF/bZyf/sQSDBH3R3n97leiqm4k8dw8K9l7P3b6vaT9aQvH3ex0fFfsgc4cg02gt
PnIspr2s92NQQHJJj3sInFSi/ZrlnFpFHE9JJKe4nqk1aHR5bBXxnROx4hivld9cChAtOvuS6bWR
TH8+6VLDU+jYa4ey5eS+cF11AJUh3cmLaGVWVKgPxsHZ1pZEm17m6luT7iIjynbyruJAadyZB+nc
Z13M5epjWSfzj44pHqB4yC3cjhreCSEuD3LnckjggW7PEup3yRRDZZj5b2Tt1zk9F5F4z7yV7G6c
HRZV1fGh3Uy+0OsIBZwMq7njuxldThr9PVl7jJZhOwD2KUMkTX+b7TkR5oUluWKRT624z4Gj0znN
y/qNgGNGvcZPrehx+v8OGaNaYNWcfiNJ9M5oTyffN0tqqUJGjPEQ23dJsXOLCjgCepXFKMiMKiNU
XvNLYgpF601wr1j16R6qibk/RgABf4n2BVNRja4W3CLZayl2TuqZqUeAlfsOYNr4ZgNTnoZmVugu
llKbS6iAhxecx9Kgd+DHqf1e3dWUVw94DbCER03T4PktFwOH8beF+gCljQevN1thVsY/xvbpkLir
BobUA4QOmJ7xevumHvIs4mn9FAlbpdNwDYPTEMIGdbN9QhgPRiRW83ywfpIYzvBaMsMVW37895Vy
Q8qhmPO+E20rTdisKI6xzB43bcBZjc51EEGyIJL2xQ4i4YD70xO4PF95wcankpduuzmZ1NK/9Bg0
yq2vFsba5T4pFy7ruYhVDLXpNbuRZ04Wb0zQEFhXPkAk6tUh1+TcnSxv0Qj3Rkeei72uUR4hVSP6
1GZ1o6KIs9SLbFpg9t7jK8VTA0oJtGTNhhujHh/6Mrs57WgUCEPH+hPP4ksUW1xNMCKMSngTzVO3
pJpXoVYsdnaKHDAYnhckqDSfSbK2a8UeRIvo7wQOdxFF4X47cJYvK5I2IOn+QxqOSp0h0kV4eisz
QW63IU1nN8Ro3P/GCTlRmy9izpqsR+HM83wVmCxu1sSb0ACsG1K4nL5JXJx7rAw0HjQREcGN7ZbD
YYtN1NleN6AGMQNedp7zM5ZQeqxHpGfUfSi0cW+B2ynSDQXUUVjYj7hiAZcFAbTLEiDAm53htBob
DwdXCWfZF2q45o2V6wyUNSz6EupBk+A6c1YGI2CoyQ2SHz5DzBbxlHPIVQ4gDMVv0P93l9XEESyg
vgFZG29lnXhwwrjTrDqvkI+MrdMugZalimR/Wt8dFEdbakPRDxIa+M+vQGBqcYcSGA/jWbFtLujr
/7E6Hil+/RkUTn6+UivzPSIZGy+OpEKzD8a0nSuwOl+zYu2/QRJTNRS37NZgmONSdQMLb1O4cOaD
SHUwdhr6DsW4ToYpuGMAY4efyf57CngZzx/PmsFGYiMLf945nRjpGsZOSe1dFaJPY2UdM3Iz7ipD
QArxZr3Ieu9Oz5fQ7VlEMC1BHCSADLbvkkW6rHTXTR3brjymRqwpOp+8uN6COvr1HsjO73cq+aWa
TNTXJjoyXyRmmPRN6OZvQz8yNXf1GX44fYyf2d64sKs24sM5dX4CafpD/dE0O1bnViiE/qDUI+SU
Ee6fRNf4aYWBvZu3qERvgneLcUHdNifjxAQhtrSxY/N97hP5tjYdsrlPRU2UmS4rGgHNnF2UWsvt
phO3sdTqpPc4WczE2lNsmKfefQvl6+pEbQQh24VpRYn5h9VMWcukmpkKR6iQPRGW539yOJvjGS/9
h5+sYHRPy4a1zbA+e7r5YkRKvBYy4OJzx4oQVi1N90ieUFeTyHEo0t62582shzzPsMkxvxDnnPsH
Hgtvov+bQWunoZHWZ12eSWQ21gxYy6uvAQIXiJavyl+7PwLGMmx7SaN+s1sZ02buupGcAZnXA5Ay
o9zVWIvx9gm0wIS9dAF7VZE6LPpH4s4abPukiEEQgUaIvONqwcxnjXCtOJiNOOww8pRXBIo46tLj
LvUd+q/BEa3E0xSu43/FAxvFzINhjNvZ4OJc8km5ySZZkTA5WwQvV05mpRGug1gh9KNp7uBVgQa4
uz0FoSRcYFsiPi+3QOc0khppSiZoOXQGRz70itq0F9lNOgcVehx2WfNEGs4j6HZ+9KpVL4UO2UUW
gDGwZdS+nCNtk+yuS2Ofg6yZGA56CgUzAXb5u6NOsbeU6EWTfzZAebzsj/jFdHF/21BNt1yEidMe
MqBmpsfVPo9Sstry+7TQHrFgLE4cA0UaxjtRj3E3FMm2/lVEf4OMIYB+n8nfNTIsbVy2/CSaCtWw
ToqjALsVEx/Uz7wsAZdTQCkF1Wpbd6DY1GOqONM4/38uyJ8bwiVmi9/4eZkR8I5qXZxEZVFLu0Av
5BzbnQ1/akC+7+/zsJ1qvw5HH7jFDON4Zv7eDI05ByAq+1ztvS5Xoy/C/wUBbVMKyN3yQ+Crv5j1
ceJvatKH73SUIrYkmYZB+pdmxVtM/N0HgL78Sw0CtcOA3TapxlVWoCyiSSXmu/wvd2vOUM4/cq7m
H1IS31afxqzxuF8nGKRd/Q7zCdHol/XxjLnuWoMss03SUwXQ/vkSUjkcGCDnR16my4YN+KGTetCi
kxzzKNw9ZZ9JIxT6FtRDWQuXjlcL9BhTTYl0+o1Yem+NPkKx/Lr01yNjw3zMxB8srpKzwgunqCgE
n+bbxAun93p++N3sPmvxq9Fr+TUlmLT1vEEtKVma2nX8czVqey4isX70RfBM52h1BJETDRvgf8lH
MED2JSS/0DJ02rWQDiOoq5Kgf4MCcLfjFt8zwsipBj8dAoMOYlRuV4HDd24r43LTdPcvfx8ymngH
xnIVvjm3FwmT1G4+6uG3rfC8QU0KMO/2B3CGCavj1W4wCUygXKNyzhwv+wI87/totOBR0ME0uIyN
GNxQ7hViO4hS71jvFQyLR7pltGZHWVVEEgPUB6jG0HcXA29qQ3hcpRfYkmDtcIrtM8qKVCfB40Pd
R51f+HiXKH0grjo8i1ILczM2NgMoVMFbFg4dc4OBXO8UExIi6r5lDSYmXOyYFbphFc8+Wwk/1B2X
lgnB5MLt3yJ5vsilXy6KhGWcfr0kQmW68Zo3Omp8FOtI6C/xaYghV2MUbMkN6dlvWN9B9wZLAwyr
lMg/YDXDp2K0DPBgOi+ZWdH+au05uif3kI10MqmZCRGTD1S7XvesgFqNkOb4f7gP7eseP4IWMAkN
7w49yNLsTtIiOjg+JzS+hKVX7Us2l998PC7m3a8iMvunqkia45WO58vPHY0JcjlqO0eY65M7rgkR
cBX1wYttbFUSnEyeJjLDKJLP03uxfD9me5CJ53MFjhzMcxQ/qfbcll6Mqje4LKSgFMv6MVPJI3rx
1sc0P6RQY5DM+zhmavmULlzniClcRkP4zBwK74wp8aQZaU9wT8+SOuoGE7qRuKYVJ7HIq7toOxwY
dAaRF7ZGwyl04EBp4LzHolR3zBasTf8apR94CwViQ/Gm9tQyjZiB4OXAfJEULPyPxyIKMueQz0co
f0LC7xd/IwPN+jhg6K/t2CykPD9FdbJ0bGLfkVMdexAmAdPShLoNi90EeRP2mg5BM5QbN0Qx9Qgi
wqGQdhIg4i1axRFtabOrhcRHmBr1WPbbzWP6qdWtdXSO6V7AUJrD8p+IqBDFFHtb/ZscGJzLxHdg
MM21W6wuj6Cf5LfILiXulGpilEJDnPZj5CgC2TIwKxZlpap4gHylyo0fMM5IQyHMmxIdNLoZPNCn
euJzLmCd0XejHDAMG7luS1fvP/dk3NgDdTZgg/0DBedvvgeYJnjJzW7nIEVpHrGMiezDfp7VKFI9
U1sQmtIVrgyph91YTd9RbCFSpaCoi0jPK4ckkVPfUSsbtQOrEB4SoRrz9nVFewo9dj8AuBGfilPe
zU54z0KZaaP5AcDCGToF6dPtiu4HjwrwnsuT7VCMNz15xi3gPr8cyT6GhvzTd6okaWCvS422DOoX
bxsiB2f/qht7Jf60yfNPYwYMNwxIplarUlWleU4+wfR8wqU7lfT1HC4aF1IkjqQU3VtT8OOVPf2w
RA+gLG5Sra22Z7upgQoSrvsnSTpBo5ZTMsPApE3Cq6HX8EX8U08RfBVoX5PLLOyWMBirocn6guHI
GbYZd2Z1OE1ULIpHRq+Xr1q6+cdnQv66Nx6EE+iQXERiYpdn+sgW/enWGp+bv8BYyOrqeyYsjkj7
psaXqnwwVwA8PA0pBkY0rVPWOihMKKA+e5S9n1CcX0t4OOw8OGhFiX9m+x1vsYAByjGSAsYeZ2tT
91DbQTPOEY3ThDsA/4dpXlrRjokNX1yHzqqlM9+zLjswai9ugRqvglcdlCrZCp9qhCMkocbbV+Ou
ihtele0DsxtXtBw/kkDod3SdE7+jFecKJali+1f1cOUYlUT9EUbWcqBudqMyqAFrXuj0aparsjDL
TnQNC/QcaHmbucbsJKWD3Weky2orlZai+AE21T4nIBlpIpx3wLJJis7rxqPqryHt0TYs8VI0ug2l
bt6h50O7Uy/aTXay9LCucKUopb+L+NmT93VBmAM+Q7aWlOPggQjOdJ67JCiBWfU21iIq+lJtuJho
TExKzhpkQ710DzW4j09yw4ZQSKWIZ47AUk9CBdyFoAWtq+7yQJ5dOoj1fisSBT2FSTNWiyGwstDI
rCIPaky2GpLJNrEG6hlQasrRp2YKJJ8/5/hge8qt9vJtpQDCXg/Ir+9uSkykyd0cvZhzBbZccISl
1rTD6+NJpeeB/8ZEdRTNHsBJgdROwDCcguFqHISykteYtloU45EvEbsTDIEz9mONgdC9V700JGps
Hil7iMXulY+j9Nr+WpCgTqY0JzY9FpRrznC3QLhX82DWMT8hcDdLrcCA7WmX6EWhgXoQ/j3CDE2c
a6AH6b1uu5hBa4ovYe9wH0QhKbgAUaVwepHv6i+9FxKz5RhuQmZzwnldw1bjlS/iJ1Wu4xZ3Jw0B
fXFBew7s+sYpQatfuyRHu0ncx2jXeQoeMj1unlspr+qBkV3zpLIVwoLBYsngBt7Q0Sa4NixuR7m1
fukQDFZe+6tHHwf5rj0NZXtGpp0gLgFMpE8kREzqQEQPzBuADpC6+bFRZHrrt+uJOudzLREfvM+6
phO3Z+zf8oRpZqw6SsaOo9IqHg0U4bwKMQVysnPCuTLMq+EUOtb1Ag1uz+r3XxZ9ivGqA6Gkvhcu
YlPPk9LCv8q5rhYtK9+mYJr9Jgx66PPImK9ZRSanqplncEqBWF2GCZkzshdSCYwdl+YKu/76VYg1
rX9OoymcdwPVITSik02Y3wK7bPGG5NZ0hj6UZHih7+3GPBaRH/6WFcnEz7v59XeFNq5omaxWiq4j
xc8m4QGEUxapVZIQYFooLrKUTKvN8NvZeKU2xFD50lH7KRgrkgPUE0MHZEXV1nLLcoOlTu3gGEpa
M29w6LfU7wpVAyILgSj2mfEuMq7518He9QCEf+P+cG08rCIX1NVHvikGMzROqNN9rKD1FwcO1F7W
+xCMGP51y82mSPzap6truw+y1xUC5oyt6mGYNvDEZVGZS69XhMqgwgXvLEpzEGTd8ShjCAx2O4yJ
2lhmVjbePVaqNKPdoW3gIlA3U/mz/xzQpc0LyLuCNPfglNvLYsm+UjJCofJTWiszB16zhMbbyzTj
s+6JnW33A3eI+sfxZRDmxAWQWxhcto71WMuxurFjEL2Fe3cNy/LEfLknEUATMsUnuUdrdqEodZv+
4bZcy1o8gGJTiMbeKkg/AYOzNdQF0CU4dyec/O9X8ox2KDgT3VPw9H9b3C6/TD44F2ykltN8Tk4y
cZtw+cltLYHXplRtyjd3wIIAgUa4tiPLLjTSLU34LtctLNg35vW4XhJQtuPC7cK8FJssrZNMFPma
75DDne9QMm5PUqgvBM+8J6YmD9wqkYMrvXcI6li2AfOrg4+wht1yL5xBaK+qRdmalTWk/rqo16ju
qVUJfZNCuRWGjAql6OFoXlj30GgTw7hZTKgxL/17nsdD61YG69E8EfRuwTKi+JcGHjTkJZTjDhOE
tgILCu8dS6yiO+fd5kKDtKYuApHjy42hK/M7FW+pE6R2ryPBrBVMR2do9UNTx9sYJ1UR5oE9hhCU
SQOisTPEtArBFDmgcHKCgo90aNetemcMKBzoIjMLhYH6yQJn1JUqDW+1z0n4gNFM355eIwVQ68sF
KYI6PZ+0xJeZ0E91FkE53kIUY+kVAGz1k16vqGTX1EN5TADqgQyyI7fxJqxpI4KKZl4KWQ4reAO/
f+AYi4GMl0uiOBRWR7YylGoJ8VDKSerfJ0QT3PROgTMYnLqgireR5Oqj4/9Xt80QWYWex6DcGKOq
V/MWzLFXpG10kXrIiVgxYIGYuFnMlxMGyD7DjcWQHZ2I27SbmbM5rsgOF2gxXMBS2jb9o0jFL+0p
tZR56nZTg3zu1Ok0/iQC25WnkeqBMmER79LDW4BfnGP3jFKMJggvsWTy28AqZWFfBL1DJ7/aBW/o
Wz55GjzgpThO+TpMA2TcF/Jk9CzZ2bFl7KgXpmEYOCtZolc0oGqvCaI1ASVCFdFLWxt2/qwNw5p/
CHvaToGLE/4Drsidrym4lsVVWXTrlbrVTjRJt7zngLgg5zjci+zIjAdtffKeufAU368188fOz7gg
DQyEZkGPSY2ycbVQ8EVK9s4Y4lwq1lCyKhZuDHQq7I9AfbssAphZDiokcRNRgmmqxjrlxuCOyTy/
VS2RS5Qesk5WayP+/i3XvDeRjWQBvzVB1PrfsF9slRi14OnA3qUvT/mgL0tLsH6P+KV0Ufrg/Agg
Ke6NfUgrJqO3LJHGQ1AJRXmJ91pvEvartIeB/VaFqYc0A0fkDced2iR9m//yFrJw07IaSG8nrF/U
fuPNVs+iq7r5oV1DdVfV7lP9taO3dvWM7K/gmE/oUDx4ALL+DZkC9tUV7lMTKBIbQv/ULdvGToy6
kEa7QuFUgy95M8XMWgFym412E22bUHGQQotiptonCesAVI312S29r62HwdYFyF9ICBCVZeUzBvC0
KijMwdpVVzv1CJ/vUIlAECuEPlOF17TIPndIlzQhx/Kzh5t4hsmlzmbo/pZHiqabLlRo6pgM8JDR
WjYpGtuf7T0vVGC7ktHG9Jbj/o2+Zj26m1gyPWsEssMUY9+jJVYn/8JmSckxzgQFIZ2ZLU3fWjgC
1dyV6US1h+GcIdtI98nC3oraqrZqKobR4C/Id8KSIplD8CRhUpqAMrRDnEf/UnG0t3D899OagfdF
4TKQW+5PhVM+KaCTdUTrmVPNUHbWg429ONQHec4hRZE/3rZFqPZwOuBd++GvRPz8IE7wnXIkbozU
hMnfjPIlcNhQ2Uxzm2F54/tsa4uZBjP0xiv4friVdYlCWZKGiVDvkIYs2qEBcfoZtUTa0rj2qCQj
5JutZAJ8vnCNb9EnzCXyc/r2/Pkbb0dhkOUDjis3Ukb21/9BonUtsm0UYclnkvP0zGOu8skKeHBz
ISMExOSvoBrGgPnWaicRPTLaCIyWIaFh9L0bgHdd1VUJa9vY1vIPWTGVzxcTzqUWiCooNs5XjG52
CSwagGRCqHibSTQIQ5PL0t3meOqdPtT68AFJGr8XMIp3Fnlgk76A0oWw3jCcqgHFyzw2LH3L09n/
t7wmmns1bofMkIh7/pD4F4DhcWYRKBnhHNWx+I8vMy2g9levDKbaACjR6qLBgxgZ3Savn6mFfBug
/WJTmuOPwdko+UxontCh1K6ZU9ihPegxBUzRfiwzAVbyLy6zbltQGgNPFZY8ZRSLN0kHmi+quIZ/
4ui+HA9ReUB5W5gFar6b6ZygFOpWRSPPkGMsvTPgs56EF/vKxfpDOA9w6IZlgQzmjJhpnjW3TPL7
PWrlY+cgxiUMZ99N1Egq2WOXKBc3mElbLxQy5+U/PmPAdA/qaxzW29CNvE9iFZaVmQxd7yQRGenz
QvXkR9Aozr9+b8ZShYrbFdQx8ky8X5Z1wekQcP69JS3QfRPt0s/ULGxNc3B4OF+QLv4E+z8p0LQ+
4aParW9ke0LMakj1QXHhPxrHeuqAtIJSuiZ8YnA4ZGVR4JUmL/ZK2s6csiu1D9lN5QletxrbtlYF
Sn7+dTTQZJKGtLQEGHN0eahyVkIj5kqTWhXsT17jLqAYEJ58QmU3siIHTq180Wzq3kSL3qu3yV/y
QeRd+4cpI7eU2R/5hmNaGa/OTFdHr1CseQSEJ+5Dtpkg5itexoQIzl07Awjd99bjEwNDSNlbtT7H
JfbH9tLgN7p2ExNS8E2JGWBORsvBpDNSqgsm6wGSCwXK6nmoL8cS2id/D5pVuWt7rIA/gu/tUXF/
7EjBuxC56uGivm4Xer0fV4QRRhnp0M57XJ2pHC/eF0IjJf/3a06Z40V1arZcODxNtbcISWaDnPez
TqCdqRsJkSB3lRF0616XJ9Iq0xma3Lu/BxIrwFu4TrUe1PpqZSKioc9ObxT2PO568J9Qdidps131
sOMmwMMj7dJfuImImyY7QlYd1tIqOJscjynNuK61mPf5bE1fGrRkBObbhENqzJgDK4BfMIv2ZK6y
kP7W2QDRlOo9IGGfEMa4aDL50CQ3tpa3r+cXXxe21zUVoR4hnlThmnT5kPsoo86ufpL9zJ8AfMG/
QklIEKVYuHOtSl732OClu9AIzfI6SdXO96klVTIFdZDwa+Sye/FcPtktOmSMWPXC0CN5jMOn9+vV
E1wTfd8+B9wK9eiPQeYLy1uk0YYRlemBt3Pr6EFluH2nUyqueF9HObpJXCPuxuGakUSq4jIgIj/X
WTA47/LM/1JlncIlI7T5SnzI+PanSTsmrVhvk1xuPq2XXyf4PASqOzTSC9YPPSgBOiBhdQEAg89/
sDsHcqP/WaB2jEYBowQ34xaUCbixF1xEoewHAVYfvSnXnCFN17A69ijHHZt0Oy2x/XSBbB709n6D
seMEa7lE7N2D+O6uWIN5uVUN+wm9IMeYTYT3kLqAT9QxEqCtf7hLbD2cyr0zN8zmFNhLLBp5T0Iy
hC+0uXbk0XvveG5wdTnUoWziFWy2uLkKv25yYyNbgbx2KfxePRAaWocoLTCwZSk3AOCwp7lTMT5L
wK4n3znOMilNWpS50ZXrMqshLWvRsXOqvEUH8aXI49W8nRF9EWSJnG2mnk3eCWXmn2uPASRt1CoQ
9MZxXhAQcIXv4BYH/8A5ir0QLrR7OQan8Pjy9nagB++bpr+rRQh1Hh0vrIvAv0C6xANqHT0K02Bo
2W+DaMucI7zO88YXrKRP3hSNbFFNDVIBmAUjhw+iQlA1lBUuBxonsh0eyTYMPSOAzgNMJfFr6elM
4O8PFC1IOGaMShyA1EGrLnFB36IqSFw2gCUaZ7Wph6VaBjF5saWrLl5ssM1scy5HFFJNpjvUbmOx
1qxEseKnEBsBk7ed0cuUBB+IuFYoox957cCMu3A727xW1XsGOHbUlJn49TESgD4Hf2yhMZWAWEz/
Q5VPVC6a2MHsU4WFejN4Bsxe8qXjqOYTipRsSUvQecQdhqdJ+Ca9MUTLzq9oSiDD2nyh1JpnL1DH
AWPcxkordLzUP87OBwspXs09Vt48Q9dsl9rMy+0IBSGMCM3xJZcUX9lk+NW4lVwLsQNrlcam5D3V
sqfoBjfJZybjblQoWEH0T+Hi/j0GayJug2KHCUEzqSx0N1TSwpOyw/aJqjINDdUfMrx73n0bnDAF
BNNUnsZ7pTtierc9ArDG2i4wymDc7t64iDieGVP3RWPBGL+CsIpmA3bMz0JiKEd74WTCk68H3aRV
k4M35stmoVP173l6p3XoeEd8ktz5w2ALkF6zl9WtmQRGOFFKvKULNeAtKXmHbqZ8QM7dW0LOUbFJ
8WYx8fa/RlJQZfKfriFoBXj68aPmGwtvIXnK707ONl7HCh/pp2tROl0sbhUYnOKAhnFIuA/R0Rri
vilKuBP1c5x2rdZMaIW7M2JmJBHXIJ5W6yOzE3MDvuY04YaCSks4miBUmMmZh+Ki0R370xoiwfcB
NmLItSosAhNU6JB8vvHijBvnoBV1yKoTm0ahhyyfX3jWgr2jVd3KHhMOCwKqbShQl008yD+i93AD
soA+qSKz4TDOeGPhXudY3SGRvuITKowHFytZGQma8HHL6+YIe2a0CrIuFLHYnc7vvv+1fAI/Q85c
rOl1zsBxnOKn4+cK7h13rMSrr/TY3B6bTWu+Gwg7+RSrc/db18OQmBkJeDVL472LJqWWEDnKG5Zf
joWGoUc6EyWus0XIlShLix08fH8fVpdzQGGSiVqPGq0C9+dRZtXyXU6sy5CVt0hOypYUNjMvN32L
P5foe7mpiwOCDPuSXkXVXF7Jy3aIf9KcpFW4jlOuFjqT2K6XP6hIjYuTMXT127kZb10aPshlCCgg
Vv5OWbp8FkxRsPi84InSdtErxE5Mhm3b5W8x28B3izFTEYb0gaevYV2FlqfGEAJYIl6TY+nzzS52
a0drqvawB2qjUzBEAPNJI5rqmgNjimW3bKG7CmjxT5VEtTrLUYG/GU7MeQXE6gtpgSnmx52rzqqC
/RbQdzvHa7sOIqO1hwbctwYVlu9mO96/CWL1y2Hx2f+26NNgQNtUzV0NpJFqQPlwCbWdn9aTBrS1
mvOQ8uKCUbF2GLzoApVmhH3s8qWRB9YtBPgWGXKmpZ7FYO7s+8q6HrTk/dbf9e5VfL+6WquTGcWg
CCAUMotBLhRHdKb6NkTRnEMqMcF8r53YOKp6pxQzPN7d88SGsTf0IYtaeiFJ8qIp+eS2b93LjD1b
2E+PgwaiUcIzTculaPj0b21NkGvbES66Bt/3LfXBPuDxlT4y6o9+X14R60bM8PhysAKyaa7u1wNe
ApB//+jCqV/PIli7Oai2GKs+ZPVrE38r+3jcgErbqMmAYLCztEQl2chORKCB4M7/RVUWGgMdugto
NJVSbK8Lv61t2TBmJPnNtoqSAVTykHRkBr5KhmSdrFllXRQJDWQVpz8X2XLN84cM5l5FCvbab2OM
F1/PZ0zoC3aMsxR6ANeH8vgTCM+nKMd+7orernoa5/zSoI1Bl81f7SPtPR57lmW+XyXIGIf1kQTh
blmUtykuOsywp+sX3+VJdq/JH6beGrwR/FH2IC/IPYJi706EPn8FxG6J+ZHAX9CP8+Vg0xO5OqTg
aGdZyJLl1hz3GMYfCOvj6XmsWldaQ7QvaObUoxFpb0m1OeAP6Gk80SfETESGhuZ932oCl57jsDh8
h2BARjht8jvwU5XxOcY7vOPVEXhFbw7Pg0qxwYrxDY25Y5nqzCNl5m2aRJ64Z1eSU2w3sStH5GW+
q9bh0tUjNy0JItR17uqHpEUV2RHGdKZ/UOwKYb24fRfFCwvColbvI+KeyNV9q8kkEA+8Butn72dx
k9dvd3Ui7TD71URNs10rcQNe6r9k9G+8v7rHlBiuK/kQUmWuWYvdA/XDHcpD2lJDXWqP8/SsBgJc
S6LCtLY2lcphex07st33Pya2Ds3Uf0O0jYk6Ram1A0kTRFwHlP8RNvpMtYmFc8/YJF+9COgr5Np0
LITqhss4CCTh2TDHUaYIxrYZ4XEFbN1cB/7WD/VU1PZ6jeaKWySn9r5246W1ZCjwWiSzmCDSQ0a1
bS31OwUr7CYyMoItPa6H9JHf9zuX2mH8xenCaQCRKOPHYloS6kegrqjVxJKcTbRClwfOhQSUrh7B
hXJ/0QhLX0KnXV+jA1PA0avFbvJuQjKiijwIsCA0YTqj5GuzThlh5Q936oWNOU8My7h/vLeg5VRn
CIKp1S50/UqgK9XituJzlh+RyYYBdY8Iugy42LhK6HFjLmws4zZyGpeBjDwKnBIcSg1qS8FDkQGn
780sIh4v+gjXbzZBK+mB0IV8qf2x1Vm8xVIpvLA7HuhH4VUEC5ehcrb/zlGBEY1KrBLowRt2/CKg
YGNxDBFLiAwxQkBpls7aRGnD5lWSFj54w/C2hyviWPl3BV/fux76lMkFsrf6NtFZHePWhMqww978
x8A2T5zJZhQeoReBplpkkaj1f4VCKGZ1WHJAcmSkN8sCuECG1eQTe1pJgx4nkbXobxYHIAp5LS1t
6Gd7nyfQC8hEAFzMHHk2xYSytLjUFbQLjLk9UM1pmm2n3txYFKcaCnPcJPlY5ZSeUmNKnAjxHuci
vX8CL558pmWTj2UEsWHTUcD/8n1+krUS9f1E98tyjjX7JWlX9JeZpuagYWRjtEfGkXpNbb/tuBMT
zK9YZ3sKhBtV4n/2MxYudxx9/i2FYboNvkkiU48/Nb27lgU9pMmE+AhGPnrzzhDRErPy4bIONABB
67DJFbwEuTiP4ce4i7UYBnAc7yplVHym7dYz1jm0+7xLB1JozHw6wOGJlNcYmHD0g7FjrUVjIuX/
TjAwPmgNAVMm2AsJXDFgHcpoljj0Bf92+Gd1Nj0aLyySS1y0ighnct6AhU2xEjG3hVT9zo+X4pU0
IYJMTDhFmSL1RNTPcLEc4vgUatLhqrxBEEOJwvimTSru74zR0rm3gsq9t8pGAZ0EJ9MOAO6y05MM
zn+N/fyGLZPGuZft/w1hDhQ24iopLZba8QimTFyqMozhrD6pxnClRB06WV2bEHin2+7svtYQkhnx
vMGIAsskd6hE26ciAK2Yke5DqeHOOykMqKuiPJO0YxCMCQojv9yzi4cm0GPVCE/Rib+tAT8mTfrJ
nR6qjedfa4nlbKky4rHH8MfqG+2UvyXIeucvh8op5qGXoddufej6LwzgEKUidv7PnLYMO3L8xG6d
A9ROOvrqYieldcXh4y0Zh/6T03rgsl6mCtruz8D+RRfmpGQTjJROEnNejdZsPVGfDvXIe7QbdW/c
0uYmMhmRK8tUBhmqXPtdKJ9M2FN3wygwvc7L61Duwzd329rlhG0wq/c9NUABez/DmDQx0GuSYPV4
yTVw4UKlqKKOXZdOGMNQaSd/Bi79ayKR1oGqpNjLKSczJq5x0fZct6nDYsiYMF0DwIBCZEROo1r+
Xkqp+CHyd6lNJ9vZNhMeOWM/4iQ49638br4IX2UhxibUi89uiSJTSqrovF/QbordWES898Nl4tM7
RLEwtD7I8ZtcAT1WZcYVKoeW3QEDBZri4iIGX+T9d+wTH8QwmAPM8N2g04AtVknjlZRlDFbLsdrE
iwxorB16HVZhMU+GW+0+r4ljg60UJTXPNN+CI+GhG0eb67/WkHsGIozkIuqZy+RMeNTOkgh1z5Wq
6izeUmP2O0Rq3sDs8a11NG/4OrQeh5aYjv9WafYsv9nGDTn60DUamy5DybQJxEwvF50o8WWFCDXe
MZ/DGMPdcS9b82sydMlzCZUV6VaWcAgxuG+ScPInNBrmz3zFH46JMVdJ3kgLITzxqW3RfFheG9wz
kPdtW3mQuSSNisrtzeCWV6UKEl7HpmLrHRP2ng6vZklpo4ybfUAfhEuDWajiDV5oeyOh9hVWr96r
ByqRwGUdW7If4kzsBWnpKMpDcQAT+KMFPF3mu9cCcwy5oQFBjC+ku7FJaJ9rGmv4xkPiWvqXSc8L
v3fer2fdXcqlp5VuR4j1g+/KkupMzZmQLXwdE0UO0aQbhi1MHQ4vnJp0i9jQtJb21iTMDAL+cvas
vMhU5j+Bn6C1MNggVnkx7GDtzytcTCYjWxiPgtsGZcygBgPuxYkMgu8rPkaLy669DvwOn44yzS8k
ZAD2ukQOdF8CWP6WyWnG+EaX24PCn1wKPjCP9DrdOGntQmT/76kqdN/YajhiZ0kLxheCMIOt7LsZ
+F11FtW/OnsY4d6kWUWeKLlsfGwfl10O1cips1XE4ZOOzEuKIxB0/Tuv4bv1YOz5u//VDkNZq13A
MwN8PfiyYGQ3ky0HQmxF/Uep+daHH/JoSxB5o8ODNx9O0Tiov4Q6yeeFIZquKJRKqORkNogsCpGw
lxArWsKlp34F7VoMCrM6trn9/Yeh644JpH5gR8Dlwhiohat33kvxK77xUBJ7vrkuP4fdHTjlfxWm
MkXlX5tjrRtuZJk/23ON80gd6AeAXoQMBzjxvWcgqG55vi9SgbkRtU8MSApyEpKGoolVuXL+rP3g
s8kK9ppaHxK9In7IlZQXpSMBRFOlFjw8QpwCBBCwKR+psyxX0DoEyYReMfclQloekGH33fgg6Ihg
hK2JW7FD6tZL+Fee8+K/miEyscYwU1itwPKZiCtq6RsnSKPdGfQaG88Bvu3EZCzqkAZxSTOhVZCI
AEkmz5XrAAeT69IV1fiGbAXx7HsXRD7BwdgDREdJ3jOPU6MjzPgBsugbC9vdACFHmvrgzG6pVGg0
3HcWZ7CQ733PLJ/Gkv8ymmhUSYf8AB7TyNKKVWJ0yDJGr0F/Nj+rm3HZDBMpYAmCpLLkkI2EUwm2
n6vFnmMiA7uPWZp0r0OPjXZx4nyY6T9Qng2jBBgfaYgyTdm4XcJms2BzSkWSwfMIeLaBClOFTlJy
xthgbJBzTTtglPCXDzouDyyMV+YMLNIsA1DgOs/u5Os0KuWZIVz93bulc5HAwnimOn/RIIoMM3Zq
/pyebf+v+rmhK31qbZdbrro4htGbkLV8o7NlT1wqkYAGmGYp0KIrLpwfn0PvavmWeqJYvWzYvmgW
POpITpSfyfEo1qMsiZP0qGe11rkyaXkDJgwzEIZMGwIPpH3+LqfbHyZGMZEnKugT977/+TmgQoI/
LZ9HQxNxqHAj9wmitjUrCWl3rjFCXgluvfEH0zoabxw8mqWbX6WouNHz8opuyDpfc3g3FQhHHjmh
5PkJYK9O83+URVUcNM6sJxoCfKMhVk8ycCpAPztZMOFTsbPYT/0kipE+t3prHm2z7pwvlktqGgkn
RExny4ATjj19jf5zuqvJxyBNGN7EwfouQ066bWp0eoF+N7u6w8Lj1yEJVtJCLhsyKGvzhAbREmDo
6J+glqxjmCwnGQ5ePatDf3mTju7su/tcoUJ2pzediLi8wsU51keABJFHxyR38UolsamP1oQB4UrC
Xk+maxB09NERuVyd6Xfs7CcDvHeazlf/i4AqoRLUynUlD9h/G8aovk4nNCa4lBzw7BmX9t9d6vWl
kDAi07ff3qmL1j8kgwz5KyKrmiuuaLeFyh39gEBK2K8LJZLfr7j6Zw8ioKP79Mj5emp6xD6bhoLf
Qrv4cZ7QjH3TcdV7kLplknaMM4d3NruHqmWW7QQ0St5ymQBsFAFk4zg7jNsGcjTWb33wEyH6UA3x
E1uMyEsYFSfDLOay7clcb+gI8q3M9gTzjvi1OkWJMReYjKFDfkEKczF9WK2Gqz1c06YZDAfF24To
MGR13gDJbJlhQfF5gQwZ2irxjSJu6Be5Jzc4+ef+srZrVmPuJQRQRhTPcScEfjGohtpniEedhOB9
UrNdeSZmSb4xzrncGGRjq01dFModyp9eJxENeK79e9o+Uvo7JGKnyv0Kif/TVHv9gv7u+1+FfO+8
1+sq5SY2nVWb/X775GQebVM5C4korPbyEYzj387Z14AynuFco95CMUR4Mz9tRi9iDVq3c7fHObNV
RndNYbX820GE7TqMsShZuk7NSSj/4iqzhWeFNxZK74YhSgcg1d+fqqPJiXjXmduptKGvvxViOFP7
cAD3hHYexIkiv5rA013NVd1oBrsx6eayMvNmUM+DQ+yDgnRYS30LI4zvLfRHDN6FLEKIWEccE9k+
xWIIRJHwkVtz4/B0UKms2uNvP6ztgEir6QecZrZ1nGrCNUbC50TB+HnnAtnkldrvqgsUr7B+TjAU
BTzH1/cGbTJat4/tGE5f+56s2gn5pRGltVriTekefikagHgEZ3xBGiObJgAMpbi/GlrfCmcrUEw8
5sc7vo1+oVjWLcH6/WNdt3lZ3rvWTKSSjMasVLr1L1aiFij6KKo3hDX2KzRHOIBonEuiTD9jr8e2
mmaSbg02hLgFKDMPTpvNAG8K9cM0KSukBWgHVbYktpLUUEmKhwmtqVrKuRhkwUHD9bobiKTofLBS
yiMyPKeMLBOWJnvk0B64csnOdGF7Mk4z3iv2CVM1lsNJVnIWJYedEMamqKvj4wHUM/XbJNp9otMp
vMqZYp9y87Udrc3EJSO0DtulO6Kq0br1rETV8Hh1kMmEl9nhAGNdkbbb0cBmwb0nE2EB+/wWCSbt
HAVokxFCL5V3zEcpJ7njddWipQZGpm5e7DVD36qyfxCEuYSzDAnlDj124AeysOwNDuG/K3B/1M0W
zfcbf45Tnlca0BpDDfIX3w6duJ0cufQDZk9E1NbcIlXpbKF6qSnsFL628H48jB70cto2AaOSJr6x
zN/weafbj/h3dXuYhKRVo1nzcxuGn2zHvyQB2XiOZXPA9CwY741Q+rMLv9Bi9KtTHE7BYw1jZZHT
BEAWulL8S0IPTEcgOL28RnQnLRd4DBZq7UKIq85AjbiAZJ1YBoX/jfmRyT8P7nRWxKaRljTjQPot
5pBT16u5Fzz9HgbIo5RqaduHKihhL+NpGn3SyfGx4+Om50zu2Ye1Gv1j6URrs+GWdXn6UfVYbyUh
8+ROdolTtLOXc25ZQGVZ51GWyfNuXYRPAr0qLX+otp/oj9y/JbCKvDNBX/ss5QVC1wvBgT7TPM24
7F3qDF6rzoeEVozJ6d9aScP6Qflf9FmSeZGQzONy+pATBCV1NtP9C02YWuNNl64dLCNtIn+oLANj
K9nEKVz5yBFprabX4F7izMggWoNDU6Xmec2RDyPy8grTc5dsDx6mHBXx5YN6fuMMmuMnH0tnNwbe
jeRgISdyZ1kpaGpmk9UUQ0JJfLvr+tlGQ9mcQo/67FwRNXoJT47JtYKWKbSYmEI9uTZB0zD1snjc
NU1PTPqfCFLx8UUtPC+ZLmd+ET/OLLMPeAsv4BXt9M9pseIQwb/XOLoTIg+LpPVavAIDVVWsthkf
QfBR9L0L316uvPMcnDNgV12ehti1gsqsdpVaM7MBnVV91oa087+Zrc2TvS2y0AqT/GxhRFaTpAbE
Z5Zi/vlUpFXV4nkKfG9uUA5wS+fcDARFKJy87ChxOtOW3AmPGrCBVhztMvdryku+18HyIumN3oJo
Gl5Xo8DU1NZ81Cg9bKiTD+ofd+Z/z/3AZcgxnXZWqBPr3VkRnt6QLCvTkp0Uu8A+eSP1pLqMYh7a
DFy08Ke6oCgWhu7QAUb0gzm754ebgVvyNYIanSEAx2bJXlJvKzxK7cllDnDcaS+iHuA5az/wW1w7
R5fr044ZhM32yjYCt+8RD6yWK3UaCCHkMeVqNAx1dqR7bDcdp3RdpNLJcp/1YbNoaYHyGNwiTbQk
jFvGrokYJrpPT2yuiMMqaCCniHL2AWJRExogB9XZA4w/pwyPGv+leoYcFf47uaff7anRJoAhT6BD
WKdOXFmVCRTlrOf61obvsiqSBzqTc0fD0E1+mnC56IN6GbFahrFAXwyHev3mD2VUSCVWNEhiN+Uc
IgHamCTICwSgpK8Hgkc7RFkgL8kswwWFxcCat2i+/UmVvI35RqZI3kQt9keN8fEDV04RvV2dZFP/
bS/V/OXP46sbb+pxhlXtDsrryRuQZ2pHibhLEkhsQe7pmMDy+xb3R2bmRxboMDUcb9/I3Uhs788A
0SwiZ1RJE5C5LDPktKIqjukCUwAwEcswIrZAyGCYS7Yr5yIOGYSBXlfZdR0lJfOluZotVwpFRmUT
5+1fTbY1rJiuCSbJNKt1lsrYMF1oR/3bJUT9um8dmDCoxRVQpBrWXzdOTXNn+OWIS+/8r6OQq1Qp
F/bWphfT1PFESDN/pqTbKImBo4QREPD8hQwTjmuTfBPBEHXIj5nFN+e4dC2bpPbZnPRKJHokjKBw
EXHv4pBsjK6RzLeTOCk7+05UTSdl8JC7i+TwNl4iYtaCJXVaH0mbIphRiKJkZPg1LwwS5UStb2ob
7lvxDXm121JnN0qMvh1B6OGgyjt7TGn5ByXUpLhhaxB9cJKWYn69T8Wmls9B8Wbt81WjvGRW1t0X
hO2e84J+9SK7dQH7U8dCvFAL3G33XwFzS01RFdDZJy1wp9QRcwHq/OUyUX+X5uuJW7lGAsElEMtn
BqY04UELy/ny/MA/NSgbX9ezmSAz6x0iSIe9/CFdnKfAik0uoxHDvtA7osnF6k4IDPiAJl7Dg5uo
JMXHeu9BX7srNipgXgWu3kVW98K6+93f9IjjOg/MLT+egEfsh8NyAOvuAQVbeJC0zUnokd5gnSj6
UG5iu2qHIC2Bc/+KFTpDq5dRgOnQMR00u0esdMfnA7FOxWJd6uwN3VhYbs8+Ji+35qrxFHCjuZB5
BRVJg354kPZHEv7KbgiOqGtIgLFxTdxbFThksaJ34xxOjHDlnP4KKEeas0cZPSiWztnuGnfen2ul
UWCae9YfGDhUl/fJdA2Bv43Dtrb6AXnkOdTmjhttmJNrnr8CTQiZz6prz9bE3aiwwdG/69NnIgyu
jDuUJequkKAWKqB+OM2yxyBJOYoJ102XJFLffLsygplm2j9JBCSFc4lJxoVZo3Cig+ihdXYuQkFc
KjqFSFVY19Ad19+AmjIhjBrGhRdGZRzINRXyQfIviF0W/B75/r4SupExqgVVOv/VJKRBGvp8IrRk
Ym8TSNBzGjO5oWiIp/LNgFNWdqlydGStcEu1IuEqbZknQjPo2Fwiv6ACzzzw6yeu48wmAXWRMrja
DTookGBHMkzmWkJfqGI8pQeVscAL/Xc5qTtE7WERaL6tI//LeKqB/rAhpUQ7V7i7aBz5INfc7u8o
asrj6IOy0tvKSC6rq9pbDxWOdbbjCyhwSUmWcZwOuXD7ow1/7LFeEk2I1++AubWKBzdNcUqmI7DS
kcv7MBslBer/l2dwCyExzfltGVT8Whlaj3bVLkAVCZxF+4HcZiS7Y8OIAVd62wXz6ICR/byWdTWX
Ed4cxzKcLpunN/pRIAu5UkmjAaQ+B+gMU2JCuboGFHnAsj/fs1bwcWnO6Lf98Rbw4y6O98bewCZh
+bmqLSy+UxGe+GknBkhckGvKWX+AS2xHgbKpk91rZrkm6ZX+O89Nng9edbuIS2/IFZqioIKfmqo8
87TPU7mT3N0aS80jZzuT107vVAR5k2OhSZoOwPCWP3PZIMYWhSFN//DiH7OUUrKVXN+c0VtJJkyN
Uke4YVVc/z/I2Dqni3bw8icagp5YI4UD6o1bBC35TDuncRGgGZwI09omyM3C/8EtX+XWfwgRSxad
yvMBrX5a8WjiL3isbwaOPui3JF2nwFjtYw8X0VTBUGFz+LUB559W2Okf191lvVYIteRz11GrS4G1
aPhVWc4++XdJAHmCvlDFR9ToQ9WP2D+qL235gkpwNwPZgpQwCjCMDrHHnXj2j8lOhYS8BcWTBlt9
hdiPDL5WLetCoXEhRI3txfTf3CSMWP1cZMVQ9Bi077VtfaQzegroH4yv0blN/0t7eLrXt5tadJpB
DFQmIlxYEzqrAxLBnlsyrJgC7UY6wPt2f/a9/Hd9lqtipVhpWtdzXgE6q1jsE9fpGjnhhs2NYaeA
pF2aZBlz4oQzAAhFd1gl+TGqS3s0gxynhpJ4EOw/ELAh6mf27qMayEYyp+h1lOcXFrwMI8dTUN4r
hM4Rw7iGODy9G8NpgixxeB/OmUlNDWSezeqmiUQlsQtu+750yXNVQmDi8zHRIGiBS9ChLm52ZuVd
l+X0KKFZ3lbLWQABZ/gA9CFAs508f/qWg7bc9sVm71sc8rTuC6WwHsCR5Fu3zlGCKVN0oqh4cAAs
LbNXmu/2h5ci8vU5QpC7vakka/RgI/2ARdcm9GBXrD69tI4DMnF98pZw/Ta8lkw8ZKue7wrWxZly
nuxQE7L58RWdhLKLzaag0bXmHb35NbVPDAIuiHpuitjcnNo965qeWtU0zyZpsB7hRu/QccUpRwSE
vItLCqghCX94N1C5/dqZlFAvLIUu0uRw0cKq42JFrRJ6GHTU65+kpDDaTN9zb9pmJEHmBn4ZuPr5
B5D++Be6sL0yoOjMfIkMW+WS1aqdFy4ubo9OQIF/AUT5tHdGhGWqanKljtofPJzK77YDRKJDwfa+
zAKftU+1aip7i/h8H93xuW1nNXFSKQ7rU4l3cia/f9VMNkEwEDMUjgLr7wRWYfTvdeSlegU8MZSS
lxh2DuHjTYsUeY+q9C37Ew7u74DkvCxJL4jVZyEFnrDknPpXNsPR18ft1qtRfTUYeDk7LZxeCDud
okjve/Chrpj4gf4SsKsA+DEWR8iHZHM8e/vDW4Vzc9yzfa+RPaYQ8kQVBYiMu8yU3FZtXVySXhJP
H892HRzZgY8hMKlXbjKiThDVXZMEmtImHltf8QJPQJ3YfKq6oqRRzm0Fx3ZO6sAHOSuZeLiBBXV6
dxjwnkuAVKvgDKiBksZPED4upQ8rKrmEmHfT7FgCf9+ZENAv50KUvKNDdrdhPyS47P8uqQnUIWRm
rZ9y1tTB5WD5gRdx7VEf32s4f02vgr5Fvw3M4S7zRIWgP3+l7bve1BPenkHCf6nHdCLYyCmYTRn+
G9Fiv5PmxZYNRa/T/bEPM9fhDTFnxZOGQ7FoxjVxwtIEgvlOBfcJ06Wl+MOqkRrnJlQcR5CDgF/l
eqY4a1EkQBTkm1FjwgO+F1PBwoFTg9a3j+1qGt2rzyafNjjevrpl33FIsnmK827AvJh+A4WdOqu+
CHuCB4aPYZLllMeUfj38njT7MJTFVWnOWx61gXderptSdVMJ5BQ7MmPN1vjWk1hXiKlblr/pmEtS
i3pHh2lWuYAtKXpuU0ZqhlDTIVmWwByLYlgOkdJEnbMaZZZbgcUAHDyTr1+29ZycZRJWf1szS6ki
b1/NnPbyvucQOdueq2VwsOFkocQBbh5wOf4LJ8G+d2GVXvXapyslX3K6x2kuvndbQQi/HCmGjszI
kajPjfMMAWCl2mJ57gnxPGYLYUx3fBUIoHfn+sOqYZVRrVB7ogpoQig40Qj7GWD3T/R5i8ZCuTFE
ye8YbLgs7mUHqUCsmoY93QlAFQNAQh6fNUEIupFdkqbnQdku1hs+LHH6qYDXmwYlgi8SUHOrj8un
hCHu3M9/x0Tj0l1cYxkdt5UOzlqso1shWMJazhn8UtiPfaDZ0NmgQBopweylm6WSCEoKKUp7IUAY
Vsmumeh5yyNAoKPGoQGOFOIHZPmS8sfzq082R1/Zt0XOzX+PL5VpL/EbjTJUknuvNaZruiGS7O0T
sVIvcYvYKehUDBh/5ch5dlktKFmEHXRMvAugeORtQtwbR+ABx+ev+ZM1oBK706fyBQy7tCWF+qBI
duFvVinN2zOany+mbbsQ7w2zzjOGZsqhdU3qjWOLXkagvhwwrJUCNUi2yu2liXKWlj31RXwwDYnf
UDDSPO3ssGqNeyHs18hcOBWMozljEhIRDm6r54SX3f9b9xHDT6NjAnZ6VLwwKF80cYxoZh94Hldt
FycwMAiy2tWmOdpKzxBadPzxboVhpZdzN009b1X5Q99H3B9tIgOX35yV9GLhRjc3GwnHyuLV5Gf3
rqQrtCg/i3CPkjWd8o+lMryzOqTwqGBhm0WAmHDPX05S907/5+vDFmdGhqW2sN9378I6QzWE4w83
mUt9PtqY10YT3I+KEUFsDB2eGQE8FKrDcVX+WerY5LGIqM1rSTleb1UQNta6A8XPBsyENJOv1JZ5
AdmUf/JCeb7lFGv7tEoF7NNtxq/nXwbt2a7Vz3MjuMGC5HJfrukXtBF8uZI3ZVuNcthXBZpPI++U
mMK8EhrejrXXxvPYWshZzQMm/896yb4PIJW8nS2IAZe5+DcegNgQrVp9HjEetk2BobD0E6LPO9Bs
ThFCmxbHRHHCEvf985EGLBwTWaaXdj3dY2fBCtH++R3zGpE/lSjrt4kRspyzfCg0Tfs1FE5+fuhh
FgMBoGmT0ntyKOlF+XYV09iQzfUtOg7NBDOomro28kLAuWUl5/msB8R0s7IY/6eOzThPE2mmGONm
QBbA45u32lUmakfUAqxsXAwEW2QKBdhj/huTssvNFICDgiS+M32ZIc5pJ/iz6H6PIMHXTERUKaMj
J92YmssYEvrX2isYd2ILoHkrkE4rOSYRySAwPi/SspUG8RTMePLNSeHWPDGwNjUyGsn0n4ZhBytB
Bz7JyovuZiJPAc/1thriT6f6X91Cudo85Ki1Nad+0t6FBqIxmQL+fZDgDpH15G6U5OABo/YCuZg4
OAoYJsRzvs4oF+uExFA8e4pyW1cUdvhgIqkosc/On5d+xv6z+8hW+DNs+Rwn+ZFoEWWCRgBOt/hN
bf210dQOJqFKn38B5P4PriWu9tWOZAfwP3j5bdfjez/jqqr+6UNxbhAE+nVUsk97dnC2431E1XoP
zrqTDLLnzSCitHaDq3h/k/uqI+u3UMSmQc7A81J8DCPOmcy3yMeZCZGFdIVWg88BT8eSLmTkfghc
0xT8twh/o7yUXJ6juyKjEMAhgEiqDEvK+3kfOV2eFsAoGBquLXDN/fUT965Aj2UG51P/U2Hg+HL/
7b5evTF+8lPhlNmQ/jwzYMLuQxTzPajqxjk0JyjW2HH8EyGfuOagyjr2gIdvEhgYIQ2+c6Vatv7y
OkeU8bjmOAns6i+F6jMaOn+soaMquXKiH/mC499iKBuNaKf+Qy9P+udPEKUhTME6WWzAoXI1L8MJ
355M0zHhfVJ7IntdyHa+U2NArx/oFWjDWf90bMKWWu5uJbhrQ1RyeVt0RjLvyQVx8vPrF+Evsd3M
XYID0C1+uhkSDMIP6bJm6yZVM9rfwC/EcQfwZA/snjMbJprUkfgVv5SHHIxjqquYuYq1LMFFKFPo
Tw8+zySCpgdF+yFIGuuUQ7ESNhWFFqzIYwI0qE8txVcM/Z8HhKj6jJyoc1JqON+Mmw==
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

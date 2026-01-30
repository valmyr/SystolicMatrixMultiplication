// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Jan 30 00:46:03 2026
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
  matrix_in_memeory_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20384)
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

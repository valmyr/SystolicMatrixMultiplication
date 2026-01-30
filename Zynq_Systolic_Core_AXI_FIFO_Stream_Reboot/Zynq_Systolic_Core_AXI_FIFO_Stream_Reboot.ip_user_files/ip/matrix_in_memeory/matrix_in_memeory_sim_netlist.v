// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jan 29 22:47:22 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.runs/matrix_in_memeory_synth_1/matrix_in_memeory_sim_netlist.v
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

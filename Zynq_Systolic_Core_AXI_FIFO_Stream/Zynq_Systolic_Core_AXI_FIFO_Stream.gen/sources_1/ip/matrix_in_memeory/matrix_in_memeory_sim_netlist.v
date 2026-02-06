// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 20:21:18 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top matrix_in_memeory -prefix
//               matrix_in_memeory_ matrix_in_memeory_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [63:0]dina;
  wire [63:0]douta;
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
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.931282 mW" *) 
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
  (* C_READ_DEPTH_A = "111" *) 
  (* C_READ_DEPTH_B = "111" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "111" *) 
  (* C_WRITE_DEPTH_B = "111" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  matrix_in_memeory_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31520)
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

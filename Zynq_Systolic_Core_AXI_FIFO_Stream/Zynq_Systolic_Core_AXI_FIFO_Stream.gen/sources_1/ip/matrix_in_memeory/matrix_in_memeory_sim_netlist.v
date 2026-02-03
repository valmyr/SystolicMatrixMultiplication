// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 18:38:07 2026
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
  (* C_READ_DEPTH_A = "94" *) 
  (* C_READ_DEPTH_B = "94" *) 
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
  (* C_WRITE_DEPTH_A = "94" *) 
  (* C_WRITE_DEPTH_B = "94" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31808)
`pragma protect data_block
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
6Y8=
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

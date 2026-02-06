// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Feb  4 00:22:10 2026
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
  (* C_READ_DEPTH_A = "112" *) 
  (* C_READ_DEPTH_B = "112" *) 
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
  (* C_WRITE_DEPTH_A = "112" *) 
  (* C_WRITE_DEPTH_B = "112" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31776)
`pragma protect data_block
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
XsPnJ2Ja/lJhwvbxS0fydLaCmGGl9ZfYSorP
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

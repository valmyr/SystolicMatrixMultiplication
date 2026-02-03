// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 15:05:12 2026
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
J3RbWt9Q6Akic/7Q7eeLtWeZPE9sbcyk3M6ScRYT5YxeUZZ0CdnoG3/YYSDYmca9Nf7WSPzkr19j
WdZdQOWxbpaXNHqQdIsdMOomDSO7g1HtQBHAbQNwgDJcIURtb2lXcsSsnH3neH+WSMuS6nsVE5QJ
Zhjoo2KeJNMFU3BTazxC+F9NKgXCYklhwA7kPmVebjIuJsKKG7LGfLesydrmPUPXjIAyBUPKW/+a
LMHIGwy+Th9ekOhfBBKkOCXDmH1x93uUelsnUokwgfhH17y27gFJngUmEQ+ovILb54jeWnGwoLOP
p//9Ct8WDUPDiledZeX5nKAhAsRUtGJFgW5FDZy7uYeuLZCcYNlJMFn+vkMEPGmTdS4N5NHq3uq/
XDeI0cA3qU2LC+UbUVA+VrXJXCVBMZuK/abQGtlONJ1QLELO+tx4Fxo2Y1pvzkt/HuNEA6Fr5Vgy
vWlOn465fjvKQ1LYp0z1kejdu8qrntBzpNjiwbPKtTF9K5F2EtvPRwMB7eysUFCX7xwYxcLdbC1I
RS1tk1VxW5nIVykBQ4DjmF3ha+BX9wV+DhffrGH/KES50AbhA68ZAfa7/4+E2vDL6rFK4RPNsmdS
9jVrC4l4AeOqLGwd2ijtArepb1dE8Qw9iSQwoHlyAMnziFObXL5Fmo5/Wkyf7EmBqsCWK2eG5QMn
8/SyfHIC4AT8ANDlIhv8v+FJvzB61atCbzmbHHVZnB43dm5tef6gTPCNuAgPkFIi6WPMIz7F1+w+
LFZJwr+enNoYmVaucknYdVq9p/jg+rrjqsBUOf1wasdhRJszlXHelg8ZD+5SGCZCH80BSbJ2TGcH
YrFtw5jOEKd54pjKq2/5iZgZ+4aWNpy1Yk6GO1QOMl1RmkBjS6SVHDImFIDk1s2swK7stfun3pUN
gD67D33OwCUsh9fM76aFhaGKM2BIKHoMoyytIcxOO1D8UNr1hXbikgmYTGPSl/mSPaDBDPvaSGYM
0lEfvI6q/Vop+UYTRbj7GcHIoISmBXHiPo5bvFhdbYBGbgZKXkW1J+tRRenKsrrlk2YgEkVWHqg1
XUKWzVon6asdSz02nYWOGzZUP4w68H+omKBWGbPDg4aeTSs57tuEZ6Pnhtma7PsLKu7m7HIJ57tX
Z3PI32yZ39EqeMY+jaja5X+L3T6Sa2DCy5ckQSR4B0quKAM4oGYFBhJKKnoGYnuoQLIjjrGVnN7b
S6VUEC86GhGZrfGfQfzaPMlgtib4KEKisNdEfRmLQrt174FUqe/faSWDygNCtvrrxsvk3vFkXxMl
cglF2j2Pit9UmLKqka1E1pjN6jizILXNBVtDOYzQmzzD0idUfz5sxiASH+v5fYd5GcFa2DhAsrx7
vb8UTzb6OMNAQJFxd/4tIaamHUcRDvkHNT+L0jRa38kiPR5jKwRNdpbToRMH2DiOyo5+PFxw0KrN
XcTPm6zoOUAWKz9TEoKA2G0KtuuzgMQ/2SaatSbFYQbuwNCnD9oynX4ETwmFlbTOBYa0zfQnomLq
mD16xxo32bevpWAlttGq0BzSwaHK0BOEBds8iremQP5DoXCSoBPhOzj3Ewb52NQVGuwsoX4CN/Py
TdmDvx29IG6H0DzVVIH7PZwFnhonQgMEEGy7d74YYzqym+EdO0vseR/TqrpXdIUecreVtLEa147B
8FJ7nNk8YdFrEnd6oYhwJEoaFEmB5Se9OLY00ieT+eqJjeHPiksB0WEppHrMwbNnAm05PFE/rlxi
FVE7+Gh4EOdlQHCf4/iSsu0Dd20RGt5uWHTTTxdRMVBPI/Pq7XwopqrQH8qpWP9djijhQ87x6lN4
CO50kzlOauSYvU9wCYt2v7XjVuTP6fFoDmXHmwvm3T5gGEvEbF4N/z71kiGuWn2QbEwj3Ywmr33x
eB5FlupHykvvdURtx2FeStOfVrMD21JHsfB8tdvASs2ZN6vWOE8EWZ3oRSff173Wi7uTAkU1u5d2
06ILir1qslV0b9kdI5xx6GxvC/MMG6R6mTlMlwd6ek8X37kWz20HsSTHEE8rEWKnN/e5g+O0hPtI
4fUGh11SJDQWsTgqMb4lf8cPYTEyA47TQWeo7YlFlnGEZ8KXZjGI8vW3jyoLoMJ7p4kL/HKSEO/t
QgcnthP2fLldynnPzQtyFfTQhBvHuyyiUoXfZOBq7ElLkupzG2TWLeUK0R9g4Sw2ZIAWwGKGFR3F
PNPP67HBdLP9zJc0JkRRSouMN/L+LuvhlAltAJFQzANuOJYTRon2oReU1We1WlUVZOBd/jdiDyuw
FFFw2BxQBCYH2mN0b1njtDVTPezkJI64+2TI2lWPKjsnSeZozBlsZm5HdYxWUCAX2pbDxvZSSiHh
2ScCUZFYJekt6g5l3Q/RgWrmeUfwU6qk7fsLMdUUnZO8VGCWUswSy7+4ZvS/TXh6ZE1H97cve3I3
1LuxC3ASaoDQ04N6zLI0nFPESrEtj9nDXJgdSFszWgJo61AQWcB/zS2h5UJkRYmB7HdEh0AyIHzf
bmynPBZlv9WZUPEUuutJGdvPHOL/qstbWpcKfGU14de1P69MtjD3+5fhA/3u/DhHZJhQJ8Cv+JIa
HpToa3+ftUPA/i4/n8FoM549acXp2VcUh8YBNNnnUJfoft7YBn70qv0kYWzAc1d7kSbs8W1Kjb1E
4IrdUThR4eSREMdiVoLmm/YgigY3REG89c3sRc0teAxE3NHI2HkTZjQqhwwJm8Awhv6FkBKWHod5
/VuBK+bTtU04CSMqn0+XMxyb9LdUXT50Zym7D26zIlq2dU5ZunIrqBpcXXTcIkueBmeqIjtAv+Q1
Z/nYKO+AmZv/UClpNAZdSPxGx4nq/D5D7Hv7YLRaOKUzOZ2NbFr6fizU+LZjlSSBOLH1MFStG09F
TicdhrDWqAD34Cvcf3Isqese998+woUQJYtEKfFR3ZtNv+o/SA/m9j1Bx9RQioIhqXDm9/+7Fxpc
L9RCUXky4UPE7Opor0+Gs8u9p/rNyvH6SKsxwuvtRGr02i1dNV31D3QKiQs810O76HOCdtNPKlPR
WYpPDB46R9DtV654+F+6dBPn9/x/0lTGRcaVVHFxqTkG15CyUYIT+VT5z1sgv7pFaZ67Si4Syu1e
GZ2P7WK9jqbkTkh7azhu0mJYk9QwwyCB3nmoNbsJRRsEf5HAwvk1DQN3eHyIu8Bv9jUy2p4OHWND
tRU2NTc9B+TdWVX61aIUEOWMaAbPzl/XNvFG7vyd9nrnuc6DOpbTIAEieBCpV3OOgiQfaSWViFbd
AWwtF+WySG/hSqKy9HrEoRSYwA01VyLtB6fGmph91XAsZhmmJeq/EmzY0kYH/OjfdO/0HxKTiNz8
gtjDLDbyYVYRLyuQKifmdYJHwKRNMI1leJx6QkWB4QWXoPyVQKWDRvgIR4/DdmK1K057ZlDYICTf
p8r/kOfBQp4PAYQMgUT40MrRQjq6TKk6ewI810aWB+VTcc5G7wPQD1YOOYuEFaYWBkf4taY24LSh
0kBtWbmQuwVl8sx9S6pKBlAF8QGTg/zBGl+d5wz5Ntcd5sJfuLA6ZSVhUxxrJOoQbdxleGmE5jhv
v8GDxcn1NHrf8rYd/PuJp1dkDoYlaXQfH6nC0X53WSWUjzQTE7zhJfcRqLMi0C2BK9GV4gZjHnsy
4nKEKKl0dcAYRRP4Y1+LH3k40Wemf4jrZyVrCHo9g5MARbi1SX9eDcLkN1KigVOxwOxroBSiwJMe
YnNUjFU2gCULAtrAD4451B6kIXj5kibIitI59rR3Et5Pb7q3J1GaY94C418JbT5IydAuWFE0lfHU
PLHOoA+Az/Em7fwZ8WmPK4DXGJglco3jiRZgtnKqtaOzJ1rw9FgNGn5c1rF1k8veqRQ5O7TWJ6gI
adYXISiwltc3HJW+or6N0sGKHk39anyxN9RyAZYA7Lw7pBwU9J6uIk9kOsqy2jT4twTUJHucuTXY
ZXfXjVceMmUrQVAboLwYRP4WSbe0aWihnnNaZknDWr+G0zq6zPj+nidtCJMMlRmcYpgDFSnigVw+
mgYeltTyoHdgF8M35lY795xVSAYkaMvuazue3fVShYz1rXljGPt7MJrPXIP3WP3BvlYscL/3bpPp
9lIGCBd3jKWmnMNbDw5vKs7y8/E7kRpzrtbsLQIz55u230Ayjbuai14EDXNIH+iMPT2DdO5DMLqU
ppc57XR7alCUS4kDc1PYoP7mvMiaO9SLIz0GlG2aW2cXQgN34W8mm/xgCXwf1FifzWenxxFYaiPl
u+fNwSj76gX5eoDXyEtdrLWL6uFD9+LBqpVUDOgbVYlTczxn++qwgZAOI3rwSzX8cWIiz4kKZHtH
OKLbBqf1Yp2ne1/NaOSuaILlHv31XDiP5c+eAV9LJ2AA1R+LbK9+bhoezMZhV69fBcjs57BMUEW9
O5y9SNcWeMbG2oB5fgrG9a2qzZtgFuDzEOLdSAKF/lUEGdwMrnIjdPCvD0S6Qgce78dvnIS0jXoX
2MC8dvHrlFzRSDqseCq2djwyuGjkmgu7GYX3SXJIM4qusAsfx45v1tvV5K+sSXQ/OiBId7aZNGYm
skekPqlXEkHw/apuRtimAeuZOljyDac+s6ps9YEgXd2BqVO3vYPs04j/lnc5Upm9HKBYgswTkR4z
mkgHmOVLQrzVnOPCOGIJMo8AV/Op6enXQozTvsPjj6PvtyqLRARmyq26/fQ3oCDMoiH/Iv9dkav5
OZoltNQlRn24z3RTcZ+MDhHRIW7lejvpDpIFpbpvhMyJ+0PTgG+oA90GgoDkgRQm31wk55LTzfrz
2/eDIrCn3Hz1v9rvgUyycJziOxyTHAjDMoYMQyrc2mYiy1h43RkUd6pfLNMcde+CJZtlRiKaX4HX
awHsGFQk+OCTnBov5qvIIEwmk3RAivzN92ruSkaHqG7U+5RUvOSgt8Gfn9a8l4QO945Oo2lxBNMA
9P6fd6Bfo3kXw2vtM39QaDpNp4j/8d9VAu+F/UC6NdGWCEk/LjHnuHBrg2o30ja+kmG1/V6416f5
RsoA3/woA89whzbloImnWgrWo9s4M64ugbjCjNSjjsqaMtzbaY6ktoYeDM/EQlrawZbjnVvIdypg
WaJYTQ5wx3Nk/LL7l8XJdxu6vcWq+8/09n8NGjqMfIWdjsnCP59lFHoXm11X9dYZMHLBCpGwXJzy
Px2Do8j+Houwn757KGAbsWg9h4UTblT4z24m9RgIJwj+qGPfhhUnzt9SZXKKGMI2TOpbr5EYl6Wa
Jeif6Yqu2MDOLRTsoRZe7J2ET6NLDUGD7MmdjI9Aeioue9e3NQVDlC1YED3B3HRXnjiH2MW06Y0x
PLgXIuKthHgDTKOORhFsWZHFFsATpSR5WuZEdDiHv/amU4Oz5249WUnhsldYc3oVX11EpfEoIopG
qTD6tec657Q7pty6gPabh9ARla8a/3JdwlNz7UpOLmfnhm6oThn+o4k0uou6/Cf2UZbYugvgStzf
5abHAIwrAlRjMhxk8nGsUarqfDfNeUfkp5Xy/N1i3IjRoHlQqYDtRjbVNvxtBWmdbQ2BU8Ki9mAU
IPYosDL0ORqZaEnI2mVPZQfOSr20kmplDP/u2qasjsSF4EcaCcgKy57Zr1TkDXDU7LCxyYdSnZEx
e/uoFk6xlU/sEXqQKGe+9LrAx8iKP/OuHF0vwyHBShsyozO1ou3qIh0T1MhjE/7WQAqtu6dmX9xs
jDAJj3RG8uWlYV0ID7Io4MMfnypVYoDCLH1mBwCZXl738t696+cSobkFOaBlu+XbWoiaZQUzOEAX
UlM3qNzYwl4nqUqYwYGPkpXnnOlvNxgy2OK1vvOtwWRestB25vcdQT5g/V3GRC+iAVLRPM3TvvvD
pTaB/eMgAs/Afk+ppv5aOc+G/llfh+tP4ZwN0lQBz0DyjoJQNFFJp/g8HPnw4Ec+grrQlwHCmb3O
lkQSpu+M6035uXSB0la1uWuxobqnWsXG1QYLKYOzGwIffMntHWxStAdowA6VM/nxPynN36OiUoN9
yqQK90xhiBOXhujk0ozBWPc1sWD1s1/FNzrK2X7RNDTfexMZABMClF1+Mc02r4p6d1HtSkQG5XhE
H8N2hJt3PgtpbFOaXlYHVARSvSOS1tqiNxraUC19QJweg3w/JL58m0XrO2q4CLOLRhTsL6y4s9Pz
MZ0ZiYwk726E5V579yaQl89hrU7+kB+TQ3aMZufgLRftjurY8L1+pAGCPv+bKanTL3H4Kxn6TbUZ
oHUrSkTiCtvbbxJ2iu+tv/yAFmjp9esqudsOGkuK5Ql6sItxtYB8Aw+emMhi+IVOA2tXVFQoyNPX
Q1zXswEDDPeSpXu/KPZwSaKHFzCMUx8cgz4vBS8F4Rn00DtR+U+5aME1aaeIW3QX1uVMMytSkGNA
SrBG4kgtE9oQ8UwDQMPbSTSEE9+9tkMhZEXhJx6onvKT5hRKUkknN9q9PPWRPeo57QqTtJu91R3d
+VACkk+SgHMefgPRznygRGXouuMnJdsRSQ6mJoMggz+yjfhnZm0YSFmL+4P2Ky3WK/2LDtV0O5qJ
t6FFdfU20tN99Ce2yYYA4TuvLM+02POUoN3RDYezcAI2H2sT6DGkVs0ED3aLORXFaQ0KxaYIfQDr
ji8GcT4veNeRo/FTL6EnrHGAIE70m7wiJOb/nOXg+3FfuEVBKa7Mbea209cpwTU7ezDqK1uv+5+B
Z8HrQxoZwGbOPOR4K0A8a11BKSLOlstbp9RjwqBm1aWgTP6xLya4ZGC91X7xC4texKASSKaVdSGo
4TNGOqn/HemydD/YDxjvJw5n+A7Nptj5wDEGockjdSsagYubOQ12kiV9WtT++6bYa7RB7JmzdZJk
dSOYt6eIWMsxgGH3olpFVzuxy5+4OUzNKvmimi/Jd+DZrmGKQ5EBv5kBDxACxgZz2PiiGnEdZylp
V6v4vHh+sZlvbFMYIWKKUox7eoKMbtMTn51f0nQaUqIpjcNZk8S/fYjBqSUC+p0RCkaMiu3MIbnZ
j8WSHfBXIzxOrZdehemfeZ1F8r0qdCp9daqV59nuj23LAHF5/tLYzC4gcl1U4f1rElxDiqD8GNBQ
Yewz2KQrPj4FyoDJ8X26XtLVxrQh6uNGBfNvvAAPBVRnAhNLO+HPr5O4bcbcEp0BfFuOGgwKC5cn
jVq4q6/lgPFRtOv0ZD4msZhYb7euEPl4GNcxldaAjkSzzcumJDvOMo0khnG09j9f9S6LP3drMJdn
7Mr9ohr7QA7oS0xQitvRMmifnMpNS5BRCNVOHQWgYgV8gA+Kmz2Hl1iE6xsFfbN+E+O5QSUdyzCV
OdFDTPkWXTAwOZm7hSoWjsyz2Da+BmSES6nasGUbBMo8s0VCh5v19I2PkTlcRQvKfXNX/b2IzTx4
Ff7PeWBDeE/8p4KQByUmOK7tF2cRFg7keYqNoGoe2ysuzhaUYdcLk5MuJVEU3LimgDd/ep3NOqpP
0OmFlXItqs/bFmVIKST4WZprn37dQ0VEhA+CxeebcyWXth6WbSHSMbwAXzEnVxihKZ7cnUzXv7fy
YglB8R7MKZ39X4GoPrsWbLQBb3W/4Ne7wTtmO8asdotspwvjySEHK6n0ajTvEyW/zC6JNiOEIPAs
W+JBSOIAeEiXAm0lMZGZlHbCJs9Qs4gykofgf2fxnb6w1Fj05eF7fVaHDI10uIHCOhyfH8JSeGJu
hVNgT62kLCb3SR4bopEXlSgEVeyizSq0JpTEGsKwgiqfuhomUn6JB16S4Oj4lSH79rZF/LVAqOO4
KLbEroZuJVDavowQyEa5GrWTGqhOL64qvUokZEHWbuzm13ZZT6qUHsY12rRb8peQup1dOooW+D8p
W3BFtBKp5Qv3Qf0sdcvbOViL4KDWWY0aIZfD6IQiQPcuUpZc2sx44k0ZmPxQL6V9ifaAZ/s21N2/
z7ATT+zusBnnAsdT/Bg1VIkEeEtQGU1/M6k9VPxZQL9vs9sUAmUtnnmo3ZIQHLJrpoP4K3kUBJr9
6OndR2GZ3cK49EPpJQ03PP2wchsbqzy/dN0HyJ3eHguhnARzjiNaVzqaSZIfF4dnNSfmGyzk+Hsz
985+r+DGmzKd+PY/MV2wVJG0NAADLeW64XYZ4Q2EzSE87m5w1a7N+ylMIl6IwVYjuWDs8l9nrsgD
PCqXCs5iYKM2Uc7CFCRQjwPS4smtnyq+hJPWmTTUHtm7Z5+kPy4wbtan2nWA4KmyO44NkeDR5At3
I2QnoYbSakKq2NlngZ+hnfs9DeE2VfC356DKmlANX4RyngTtHwhVmBHJbbtSb0anIXcVHGLo1A1S
Uw8Nh39S9f72q9pMqYVLBl05OgFrIukmttV3ygrcjECOqYt1w16eWwGbnPGOt65v0qeZ8dmD3X1J
j6gdvh50hDe7vTTyGoN6kAIeFKWnpJHkDtXFWNMk4E3uMqYGnyvatYYbSrY8JrRCNvt/TD+x9e/D
waYsPgAENYXcMhaJru4CDm3VJXAGd1PpsnOWosdS5WOJvbWTx/MlB2tUmyJIYXgs2Ydd8AQ0qCiP
F7k5rVLkwZYzFnqfiMYexl8FHU/x1WI9rS6RNuhsJLpEDGlThFaVaRjRCwu9Q1qgH0jIP41O6VKJ
QODTM3fARRG/h8yhnRTht2BnuXk10THBKqEzNN9BSO3c7ghF1pHzCdh4cKkASGvU0qHaYME+Rh+u
RbfBIhvC/TzPcgwQAs+gaqZHhg9LZJq6YnzvKiqB2L6W13f9JDTbHL6Zb4T0Z6sSqMh+8QORmi75
NeW7Oh/cUFNXo4iZfzAgclZnK6dN9oFkpgfCI+z2dETUL52jMpbsnTRda0TqJBNzEuv8m99L1pes
AGlrQYalXcCAj1UlErgh6pwhmvuWGnv/GKeGcH+S7vhk6AIzocFZzKvx9Zv/cip7yTYHJWPoP5rk
HVP8p0vdPDj7VDODSYffHwnKTeTn0ow+JSTJcUyf0ZqUTa9yph8kjxHFvL0UmHEz4bTKsm6zfppl
SdSuWpchdgWRLUz9vlZT9iEi/Yp10ir2N+uLdYT1NuAydiWg+P+Nz0mkCWEz+BSDtLosFa7AE5nv
nv4vnLCKqc4sdwSov/4yLs+VWbVYU2UKuU65Wseo71kTDq955bm9lUEGICihsmvXDiKSygVmaop6
9YiObQvNuHcjzknWR+7wbWlYBzgBK1CNERjlltNpeLsC2MTuc3j7rcnh/Bv3ua29ADBQuMM9pBxR
CbjrLXk2WcJFSrCIZbo7QlK1Ky9yGbzmdwq+AOp/6JA1pNdAIGJviWcuqPUGlNfA8JS0J9MRxhCV
K+N91b5IHluxvzVVklJ6f0ePYCL3zU9Do0PdlhwYpVTbn8tHufwKWj79qfZILjHSzk7cUK8hX0Mq
cb+TkGwVBnEyYd1Ktc8kAOo+g6I21dC1EQrrfFalbfly5vBnfPaBkoiSrcNQDQA8Exx7MVmwKj7W
AgC7hwD8Gfr1phbNygWmjaMEH76IW/bwPZc0DuFvk4/fUAMGspHNowl0XTlsckqtuhOMMbeJvcuh
4pPqLKUrUrUZi+HeD1mzdCbOaLid2Xm2r3IfUafhsCbCiNJh8hp6XRCvgI2oZ/a5jGObLecUlO3x
gr/Nh/9ggKn/YPCBsUTnlfW4wdPgN4pmv59d7imTB5+CzkI/e+ESkjfhCn46j+L+fjz8wdAep0I6
eML7bc0FXBUAxXNNmsCUKE4XHAjPOaGLdUct52NCWkRU5w6TykSCiifLbACPWs3X2EVBCRgto1pN
TFKlosIJgsgwOfUj5gQDFlrVsZoQl7omD7Oyw8hetfnybmnr8SGs5X6eLb4PBh6nrYPuEr+TUab0
msuQ+ZnpJJ+XfmH5ZTpYXsIB1nx3T0NoQUMsNp7KEqfwb7FodawoMO+Wc6S2HtEyG5nn2v8lMN6q
ucP/ODiTcVk+ukbMVCB6mYKmhdK6foThMqWr0E/5+g10g596HutSUMKtkTbDFms/UFx8Veluv7Ze
g9lhGIC0+pnuJGKxI+SAVem70nbH1jFOK3oRQRIEgWsFtiV8K4PhUd9OEeeDzxPWj7WuSKlHJNnz
237NccEbjzE0n79/yq+Klb/dbVu7XkbcN9TXksRE27Vhsu6PiyLft60RXbJIWXUuspB7sft9jqgD
66fPR9006O2m1JOVBsZYjpxcmQk7HoCtrRH8oZfXFCca/4vijlPqBmk7/fCDsSvZDzqN6oJbV1a/
LWivZuddrWMfW/WJ6v5VF+wE1uq2Dcp1L0GR2LanCxi+NCvSSB5c3xsvRvH5CwMd14UvW5SVREsW
9DG6lGkMNGRUIJjDZqNods6qf8lCuIFelHKRkPnYTSkzlQF5T0Db0FOa9mlF3wEoYc2+qrKPElW+
UTn+oR6lt6dO/UuskCIUQiiECkSx9QbQF+PgB0FuEW5Kah0ZgbTaoHQdWcPehW7MX+F61hbsQpSM
L/1wOKcmvzQ2yb9pnxDtDYG5eq+jnes+VN0F55NSc01naDU2vGJiSw8g+cAisNocFlu92/X0LNXF
PX+uqDxEboFR1zcckP0AawrGo9u+NxajgSw1SOVfKSNh2KqbkvgLBWZnXgirWRMGeuh7bowTP6Sx
6SUmQKUMijBKsxsrsUvERR+tjf4QhUVZpR9cMIzxN6O2/KG/at1obBSwCZQWTcMb7o35k4nXr2oe
q4G+MKwqtCoC706TIAKYu39PCVCkocxHyPmYLPBqUmoeAt4afbiJqjIzXu2WSv9GcSU18j10OwP8
LkSyVmbkByL18DgK+rkKymcyIwz9JkOMF5yZ6bC2f1kDXDtaxqcV0R46lWMBrs/tG6oDmi5BsOVO
VRmlYpBhGn76SLkz5WwZsu40KDejbC7FGMguL1XVXDs8aulhFcuNV7RnAulE+CXuUoRB59M4QAAT
F61XcqUtqvy35XlPpZiSwQ25EySUy0NrAXwCUDz5fcORe1t8kaiNOEqGKvt5HbMm0p0Y3ZdRH+9Y
2MMx9EGjuvinHVc9nGFoetOME269zs2a/1Kk3cAjZ6Rh8dinz0B9fHRlxraRMnXzdhnjums9YCcP
TXrs8GItjX0l4eq//tCWkPKjUb33B4H2gIDyYDNCa8ZXB9Tw0D8GMBKrlAuiaYDi+/9MS8Pd7Pnr
slzAwBf3RLJm4INyGcTkstLaBvGx9kb4xbdrfBRnSrnvixrVX2bEO6vu2RJxF8HjTr0troP3kwB2
sdOEEXPiB51VexEzJ/8NueAnH2ZeN/HozO2pnhRPywDIT8ea5lKkM2iWSMXSQeDFXGFTyQzdjgrT
Zx2KXuWT7P090pPUxzk3IhDrHEl+8hiT/HkT0xz7a4fKhX7D4u1/oiK5+SPXc0QH3udOUJS9oTl9
Nn3CFiM9jqdJG06oTqdBwB1nCmzrnmSUW1MsowXD4wmOWXk19rn0YpHhy2zDYhPY5bKZUMIkHo+K
U44ZvGTwCOt1VOYf0m2/wP9yo2QJ4Z4OR+nCK6KCrji6FXZ5pzqOPZ6dJxOPmpOLsU5Bg9Nw3sta
bsGVNQ+YoKZMyoLsrJyNn0oIjl23BVjc7jFJLmTZuTkDdWGd9v7cNUVlJTSqRELWeIDqZ691nLuF
auZ3AFitH4Y6uT4GIWebILSJO431ySlfBmDgjFghxEcpW5rEZ1opiLRV1BmV0j/0upbmAk/EYzsr
j9pktPft9hR1KYMXhHcCW+1WxEVHnVC3Rg9uyH7CMOptqlTpdeemkfXtGj3naLY1GrjBqUTZYut+
GXVkSxnRUKUYpqQejIxdgmaWdzJwNtF4TXIRqHAN/1uXxiuKc82LSyQdDBhppWB0ds4o+lpQ+OgP
2qejeGHlb2sD70mxXhssUfU2Ans+zJN0Fhszt0EQ6T8WJgmIeXwoATtsbUK6QnSe1sFwM2UAAao0
87UTBVct+bk/q2+xOPn3o3hPnED8mqJqpuR1xLcAlCkRDKl0abu1N4lWNQmyY+yR5f0rpMYGmBLR
0BBlhav9uIL9BzrTo04Hxl3eiOEidfWSprsjqswgkWwM8iZDu5Kb62+hZZDiREqtYpzMRURM7hQ3
EsaewU6Czr4vthMhV1S/3g9NhC8Cetavvc3r6lGphxQWQPb1agQU5sL2gXo8DNpQ8sZAhjDosJvP
dLQaA0nqBp2v2Zn5jZq79fg6ITUES4g/h/ors7nwjL++TEGpUD+3umHBLJBZU+Qxr06Fog3N/vAE
/FO3C6R6hnNm9yhU3Tfn7tgT7Qqrt7+KevB0k1f0kMUlG6TsMZ9ozdb3Bi84mKqRBBCrZ7C6Hekw
RrplStFwcR5SQOGd6hatoikKIQNzG2t6dmS9jWzam/EzIJ4SIiCypsXYB1+mYtFb00uAJMlqCyRk
i0+/t5mluMczmz2r97DpB+YQrxyVsuGoVRo0cFbx++p742ep7zh72Ha54tWxF9gjQrILv/otx9yg
CExV6G7GGdA6/NJkeFufvaK+/DNNRTmZ8/cwqVLRK3tFY1BoXE8J9y7DDV/yeFDVDqBwPOZied9i
28H68wvHdPJIS5lt/NfwAkkYG6/apxVHF+WD/94llEAEzwSs2l8T8P0AnevmrRV71lIzs40nWfbJ
LpMdntXfOM0Hl0vIih+4cnYBegux77bPtiqDaRuaPOeubPxb2EQeJO2eg7hDwdLAN7gz74wKg0OK
hozPJv3Aku/uTYqtjMnpSScym7OJQiWx8oM9SS2wWkTJ4Ny0onomIeN9XvGcfdDtwkHSB3fWQsNU
iehERzKSe2DZj5hBfcyiYKf4/c1gurnWQxx0wb9o3e8495tfFD6OwUSOukRRMl0khbYEzf3uw2Va
riGyKSupjYNCWhLL/KHlg55dlNlcct6e0I2dLAklp0w3NzyTo+A3IXQdBJSKbvTVFVweTH4Gpbhg
BMSJU+nN6pvtVcQGKLtHBDUCgeFFO/Nq9BAL4v5vFbY5Zk4Eyil0JM7OagEXeQw2jq3Fslq7yU2t
R3VfYIIzCC72RBiduxmh3nm+emuHrJuSlDAPCUnsf3rKWArp57BENhw8TVH3Uah5uk+ns/taqa9Z
9011xRx76ttgw0Jzv8PMa1Il5ppXXG8C9oxnX8Qpim3+IVGO57r2jD0d3sJ46LEK/Ff+NAje8CIk
OgT82BW4G+/3OPrHTSRtMq5Cn0bvASlJn80EfWONnnihknI9fKmwBRCdZhIgQbKb4yZVnaWTlYk4
AUjWfWnPz+EZKiEMmsmABql6txmNz1YxsxLg4zKbwUfnBAQZ0UTN+j38ErolJeFjorV5/rC2At8A
dhhDe4nHNUgkasKjZSG98KJxq9oIb1r4w3hXbct+IURbvrtXNxf8HjSfXZnqjiXNuhiE8Ft8RZXJ
UAlUEn0Ul/fk+GPJzdbF8GevRBZx26mchdu8tfN5T4BikMSoA6PYYYVsT2AihkKHrumMZ1wnwsqg
4I6FRzFDulGrVrP46nUo+CnSrwyl2El83qPqoG0wYMrHhKKIxuMKBD+1zdMiiHe3uJeRIWxUch9W
0KFwRXa/pH7cicFXK/eRBPozfhMz37lGTnJaWne4ZwC5RAndY3JNMZcqu6pRsKwNGGyiCIY3JXzJ
ZMQHef2Es/hNY0JfDr6cEoaYtprAgOtyHBngFZmgfGi6MpotIXC7BLGiFjMMCekb5sxKMUHC5+fz
Tlb5KIklzZFLYW8iBwdjDwFtCq/BEc+XPelA9A+aPACsC/B2lwdnHZ6+EhT3A5zNlC9lh7vfWUoS
oAN+FKcYKeZ9x/3ba6hFSMGG3QSSwv+MkNLFw6PcWACWM8nwysCsyUYwo7sPeOm7wxP/CRgOmKu5
w7ssh2xYaWwOn4p6Tu6Yr33rkQoPYVXeASQT+kLc6oExfKKi8miQXZVnVK+IAk/gh7EwycFdOtS1
oZ2bc/Dmh1cD1WYpglf8LrC6ji3hzPK0D4cOjolacIEsMn2YUSrtBHaq530cmuM9rsLrsidmpmHm
Mvz9/UvV5ldxOBykISAjFRCfpxD0L/ia4U8pQCxDdYvX3zp/UI+5jsB922vs0PZhp28G/7YbvVUt
DyyE0rFmcUDxSn5ip4R2JKpG2f6x5wxIUH/sVyJCEX5E5pd1KB4A5YJ+1vx/82DszSF9J4kPEl2e
kUbxF9BEv7NlKoKHCB+PslUDjyYZ4cTfM3VMzx4Hq3eVG0fZ4vglWbu8QVjKSZ4OEY/moA9wwzs/
NnxwwCqZX3s3FAi5lVfa4hcDWWDZZYakKm812QHX5PnQedPx/+wyrrRzc10SJevOa4x1/ge8/reX
CwRzmw9w2OdHE1JKCYwLUR9DKup5cBipc/HKicqrslKKeYRCo/Te7xzI+eI19ElSZew/Q+iq4VMX
HUdCoTH9KpqJnJ0+9zpeechcGcOn90+Kg27DBbPxaSRYMUzNe9jaV7zgsmAOJ+VQI9P5SCGbujf3
hOoPrS2YFWpPezgP07ZZDik1IgBvFRRVDs39ervHoHoa3m8uqLM6wp5zRj1HZKRrVY3Q/TQJVevh
IgByWn7yCv9V5FrNMt4dw1Oz/m44pZz1uF9HSIiDmNmEEsqi5zyWX3yR3tXtkx8Xl3PWIvl5Dbya
99RcSh4IkoErI2CKECCnGntrT1X5iEOSslokwwdJ5axXwNGk2VaRrkHgiw1mMmqH4rybwYdLf69j
K7Ipw9uP2+cBoPHsT2XnBA0tG7kDPvU6G5kY4YSKp/Mnr7CARx4xaJA9ua6LXL6EtMuEG6EtNDRd
KTI4Ws6D1ke1OaT/nQGt/gIVO7ODoiRT46h/qAkjrvzvXgtBr2PY5X6Nx2qsShHEJPeR2kgo0mM3
eTNmUZVhf6pnXun3MWoCtlOfBwKOeww3Q+08z2GiAnPrL57AxCvpHY+5fzwLkq31PV7we/DxGabk
RkeJJzDCLDGALtlLZYxpuvcFPunn1SUZjztOZNGo/wJ55fa18+4VrAWJSJLiiitUZAfbJt4bvRfH
Ovlk3DntQZTlVPj1PD5QM9e83YUZFcOxp7ZCZQDrVRAXIAJ4RPxVETl2lLcAYevxcmgq3D7pFmZb
YlmJ91o0OLEORjPfgRp05KONQxTIWb0MrkSbDIehO9YJE/s6fDiSO74n83YtYwRi1ci7etacKw7i
Im5P8k1jtSPXQCqIfLiQj9ubkQXfPFWBysIgNDkCXP35bvIe5UdA7vPEhBmSZW+kE+n+Km+7uTkY
D9n2jTdo/4poL6rudQ1s+u9X5R2ia8dy+ikzXNXDl2jWRHTiwzt6yswOJtB3/vtOPYsztGNsblcs
isMc0lA62FreN3qosfUPw4/Mq6/SbyA96QPDhmBQy7oU9OeZJ0dml8cOysXXUP4BMYBBUfg6WrQx
h9/yEdlDgiZMY6UbPDMDt+I7mnNn4UWILmA6jjkYeWCLY1YLzVoKt6W6Gd1hg9upE1T57g7qquXM
mQihBCEShFYzL8kkP0b8VLYLb+h+gN/QLyoAE8vH78coLXCgSHmzGR5IU7wDs+N2BaYXvsRxW1eI
4gjLO0cG0Zra4kk5TzcK2Yy57hBnS2VO9qIq4QEMNksEXdMcBKdvycPQsolNT1dETdV1KWQ5i//X
11LRod+dawP8GW5WLxjg9ZlABQCPM/CgTyonkEYDWRwbEvMvVBclBM/fiKY3mtFH4uHDaAO43e3t
ECcKKEBXPWUEA9ExH2Cy2GFC1zCx1OX2H86aRuc7GPl/z6R7Xn9sCagfkSqH3WqQGPw5uayTvQV3
U5kyS45aJoM3CFcirg9TR2uX14mVZw78Db2RyEg6wYHPJtGTzblYxfS/SvTZLiPA5wggrA+NopTj
Ty7TiVGwgfvWKMEVAtlMfLwAObguTaL9GhgH0YEzKrqXChf9NMh/4SVKCyG/60VxbEACzCGzDj8A
+B/YsCNiU+daQydrjGZrXgscUCGDC8aDSGLtgIRaEOkzqIhdtVSpOcaiIzNbWOuEvY6kfofscVkM
JqTErSMAuov6Z5Bx656bT93TQKZEO6COzmJLxYrdZXsDPwhuyjGxM8M9VSk5XT9LS+ms3wES2W/h
VcIX4keaP3EE/MbgTsCOuNSt3dt+C2dMu5ai+Ky1ZmhztZ3tzrCncZm6Q987XjD0pJFrnEp/uNH+
Fi3/Uke2RUoy7iBbrEMg4xj5ae1TQNvE08Eha+Ydf/Lkswhdcow5Q6GVseJtYHL5RaDYZLyiwf+I
OtgDPMd4vRSJ4XlLgq32rOctDsOpghMDfuOrSq1sg3THNZY5T/dxlWsvzzv19zBNJyDFK7C5KLio
NOrNV1cnxdHucDyJj0TbiiynM62D6lLd7blLg4jCMU5vSk7J4pjX86LWb1H+Ps5o+7a+bowyEoON
r0GsfG+Z7R5+/bLMB1Fw954/wr8nuRjizTcAoq7OjAS7h/QY9rqCHcmP8FrsLaJSQUZgOHDP68cB
tjRsADQ1WAxCGVEiHCUCg/u/Dy/wRkXqSzuXvMp5rmndf+t5LhnelUWJnDZuY8bOUjQE90E6IQd5
eWFr+GO+VZJtG5Ut/xibLYZvtls+CwKN7YYGciVj7GdE0NZd+mppLQRNbR7owrFAT4hEkQjTVWlf
3Z/J/jxPWztgtsnr+XG47VyRLTnKmh14B2wsXjIvtWDtaLR429ila47AO5gwIereq5MCF9w9AmUB
8IQkUgRDmax/yCMIV9fjp4trdkBeAWtSVK69IkQ2wkQK1qm2jNvRRQklR9GkFrabE1eNSrXzOkKE
X8rx1l22AA8K5sAv2wFUvD5XTF5QVnG7fX+kjbkf5chwOJHbVQIJxG7waOUrLQY4HYkBmLI9HNpb
xC7VbpcGNA6J3brW6UoW4wFQ4sJ39SFbJMbZ9S6QzoFYJ4fRewtbd249u70e/f12apXJdH5Z2oMz
FuawD08iR8V0rTVDD5dFyJuf+D3wTL9E5mfEr2LiAgsyEpyIJkcoGC3IHo/6xy1da/Rmk/wOEICp
YekiCBT0NVDWA9ciy8yScvppv9ChQZRNg/kTu1OCmx0/eHAnrPY2GAzCxnltR4QUPIbWem/guHQS
cPYGasdIvhZVQTbLiP0dTVF4y7itwSHLuBhXzupZUugTwCKTcfj+BQ4dav6jwH/clfRSwD1BRFXH
D/eeCcXZpb9aaojeZuBW/nvmwbji+VV9a1ZvIR3jMAhKoQrw267v7/LDdVWh9fNY2AROXATiYPyJ
qiLRnO8sHrJe1zcx4yJVvr1CElPp4HW0Om4jzw3KDlpKGyuzU/kKJE26ahp6sh3FzizY0LR7Ja6I
KFpw+FOgYOuGOm3ztfJj+twTQY0PUsxlE/E1jX+A9q9D3PuvI6AR49/3LM9VAs0wCbtJR8YHBv81
wYBaUfzdmERbGiNiu35yTKaAx9K73xcgVNyOLXI2oF5a1kga9thAB72ReWOY/RAZuQgF+U0MAiMF
CMUqVMDrm7FID8Q1NDl+5bFShBvBoiyWXBmomz/jtNxeyj53+YggrCPJIlJYEQ4gnc/vVYFfQ2/Q
ogR5VTGxfhVCql+NUFjHISSx9jnDPC8nQV0e/HJjXD7Un+bUDgxRQMtz4PfKETc161iWFMnGLCSt
AljQK8Ok53+hFlEyagF59QCisOsUZS3X1qXOZ1XCC8/dW8BA1cgY9XIq+i7nmZjCvRg+ogy3pLdd
C5uWfILhYlgqPJal7AZcKyGgXtTJQpzuyicDcUjEvbqmb7Ahmk9B36osPHVYk3JKyVedFUxZZVtQ
qZ0YZJpWwyVgmDgFJpg5Kjt7xFKyU/QNCKQoUfsxytCN5boBPAOcQvLNMw8VK3C0oYsV8XKwGvo9
lk5ac08t82BMnqXvYzPyeLYaugaO4X/gPRJbCp73gZgOxAhF2aZg9fzyUdCFyQyfKC1HAokfJXkh
Q0j83yrrmDC3UminYBlzKmw8YzXM/taRkShcEYvD5mF9WjNs1Ev0gH5dZPO13rSRt9de4QlY0FpN
Mghw94d0AsIIOByrEvmDvWIuFM8djU0gxpt2hfJ176zNxuvGEif5+y56WaOdrBNoI0rL1kqPZ7ew
XEa6IGaUvxWAlj5SyBLwBUJFa3I82vypkFYk8IMPTglqalXaF5J2ZmJ4avPxZ30eLhCWs28o0XM1
qyfI9oFa2GHkJAqWABUdA5XQhAk0k66sw7+avjVm3djkGK4G7OY7oXBn+OWeUdSgx65XF/mLIJ+g
L9iICNi0hLUckiAubc/4jn6KxEsinvc6R+zw9/Pxxka+nhDYRzX9V/TXBGi+F5jmgSFv6wOvaEYY
5eBO3Rlz7Q0+pAiHyOtCp3ojkt6dKrsOJXEJGPEtbFVUXQTqFw3eB6buE0MMmwAqkDBWS0ZkRaVW
Jgifb2M+AVK4ZQIA+heHZbROuvcGcm1n5pUZbSaNkFu+YFBz3sQoXL/v14XNx8v1XnqY09dL5xZZ
7TOO3gDDA0Ds4U+AuOfJ1mrzPauACheuPjBxCKS4MpcO2jkJ2EdO/8PwxW1PZWYNR9c5A16mnnUi
jYwHxsUU+w7Uncri4NHmDV3vwQ8OGrq6cOZviOjNTVVcxzSFfW3JOpOcS4GYHgbQ248huDMhUIJs
28YxXU5etTSSxBFWH61t6pBCBcJThplH1OAuRGeHytC55WuTABF3nF9xXREtYajTzsCDTPk6+BRK
DfJT/7fuv4/8KgXBY0WTuxOolnKZ9Om4j6IJOa7eFy8IV8MmnfUabK9yG/yhM8CqccDflxyOodbW
cBtALzweIopnuqnuU0g5WjTEgATsv+hYTVkAGzbXXS6RU/TQPCXDSejWUsvgdwVd0s+noFki2NVU
jTfbYAG7dgP56h+rcKTi1IDzwu8JzT2xPaXfhIbqnnNibHst4gNu3fS4J4nsUxUQOORre8HP1jZb
rukB5BBqR5NaJcXgmZfVDgjnG41g7viSrKqACLxSUxGMzQcKBX3xZCHy8XLsxIpPkIp+PWU+8Dll
p/7ekVgWjev0KfDqKw4q83egiOvhSvxuOD3V3d4Q8vyvGGbWKITM86PBa80z6YbQgJMcAaAfm4vH
6Rdd/6mRkyqPWgJr7Fm6Bc5rRa0VpL0UoTb4/4piTBRctkHlTNF0t4YWiUv1qJxt43qR6e3YwBZo
cgARlyytO4yQeMcDke7hwYI9m3bl7jHxtzi3cC+M/sUFGYMALGw0gEdxZhoFtBYpD+CVnZ34dp0a
vZJbRuS62/QJh+S5ClDiHtwDE3+FM4VnYwE5rsYxm1VgTUgSVkLXXZFTDA17Aup1xR+LP00LDPA9
yS/OhfO6l2F8uPYMK7v3xvutzhJYffESFdkdWQOPQhNeuuXfTm3ZgsrqfiTxbT45obRtfMOUvCDJ
z+pCYvtghE5mVAZx/BMfgz4HwOuG8lfymv4AUgDWkuYR2EkIVmEm2bJ2/MnDBVWJSHhZ3w3/IM6A
v+3XIqIWpSRkHDYc+RspHz01YEu5dUkXQYGGTo7HsfGCwT+BrowmWL23tIza+c9gTqMS5zBmeEQs
mJsm6MT/eVmrb5fEq4Noc7hGJVF82JTret0yEL/CpEBGsHFrVp+xNKWgYUZ2dyZxmweLvEU2aGRQ
c13n01J/hUYf6u8FzVdcdK5+nFlVfIX2sSW9qoice3bnM/ZDmxEryuZV+e9heM2ZiZjf14LY8p7+
EiDgOqmMuUi3seqPp35cuTMfYxZk7zOxKyZOb7vhHq0JUMKXQZEs3MQ/jD6lO42LsK3DqqqJaMKf
DFNJAOk4KXDbPyOaE/T8Vxdcz3T3l1M00NbMCz7/+9lYrX7iqC+8P4w3/lPpNRBdNQSbMbr5fmZT
hgJnhkAOhJds5LM19t1iyl+6cdtgwlQidC0ixxXksq4yi1kIQyVlHVDukPNFGmUoTjqjUJX4hBeC
b+koZvX4s8MaZ1caGVc6OgZ5pnteOzaIrEW8JG60prY5a/iP4nZqj7X/2gEuc5B7wfbm+cNZsaji
XWkNNXZ0KM+7G0mX7UbwWrv/bx0FDBZ5u9iuuui7n7QHLJBGi+ovLc5+fGGWaMGDsqMS3fKcrbG9
R/qo/FcCal0nen9pp2ypLNMtPSgTz6v01TmQ7hiQs6O5ypnt4RN2nwhe6tkFIv/+kuj6Ys1EHYlU
Qr5H1GXRZx/tDSpoN3+y5pD42Q0/lb6rwE7ZZN9ReAkKXqgXfwLWP5KyG5TjWnK8KdRjqB6qq1CY
bZ+RIwuXGEeknClpyW+cpzbrbSWVtOQxmPZXafErNPbcC0Hm6dxKWXK2/eDCY1wrqsWXpN2oWIFz
sKuZRtndoSTjJdzxwV6piHGkUUqNlr2ZFOzQql8Espwsj7EqJx6w2dqASrmB85q7WBivhoQclc4K
BxtItbRkAcus53nUBpplbdL/wX+dy3juJKCvGJlpSlP47z70pk1219xcJULecCQyMErlxVPwTwTt
sToKZwUU62N2bVO1qtu7niss7n0NmO86mLpAbJpwFQeCLCuxjS178OAg4wH/CuGxm7YIZFTq1xSu
exbESrb8nntKCLvh1O3oam2Eo92FiN/7lDeSO7sfZsugxcEOzL6dVmoyrpd3hVhJwnMy9gBc/F7m
QaIb5045M0nG+AS1qGwaGJOBKsFDJPOHoaAGHRtV/NifCsRItVfTP0THujDWViMuPk9xYNwpuWp9
obeYN+FDTlZla917YUgguquEoZVOsLiqmTQsCf2rnvRjl0t9ZIq9zOKSQQRq/j57vY74eO5Q809j
xZLwpmigL+cMoPxaxRUUA+1feBRo1D6nvCVaNX3GtHsURWoFzrnobM54c7neRZ8m8S7W8rKBD7I9
pktgld9TJMncgds8ntXIiCjzwriGGBkgNnB/0pAWRi1MweoPP48Ca8GqOLIWe9m1GHFjao2hQsTq
uoWPhddU3DBOCLq1m4g6aplx5EjLSckPiT8FgWExLBYVVI3QJYRRKC79UvsQKWi3SsSeeWk+C5Td
hA7DYMu+o8afj/K9Y/4z6OTLjH4r10YqV7sfeVSgNLrpk/m63V1EytccPitmkQpPalX4XQk4HMPh
wS5moOhm1CAHTkb5rrP2T62fVZgjxd6Xb2z+pY+Gp/lmJv+Yhl4LEpsdyQwx9KxH5LugVUZ1xsPj
xnruoAGawi08cM3PjjNf45UFCvaf+LK7OJCtsaqRVxzeyGhawP8/XvFvYBdp3kF/IjSlkwV1yaAR
4sqvnAlLXVbKR21uJRO5cxq45msy763XUtCFmtSlYJQBwpRkB4dgnUuFM34ogaVpeyFn3gLqQItI
4wvv2Ia0D+L1Cz/XlZPiOzbO58X4XpoO19SwbOp8ukbWT3uoPvxtbyRXXpx/AZPLNbSmNny3MSfs
b1XJE63xAUz/pjDUAdTLliLgL7XlVW4AvXLOkEtSrAQtPPYib/mOjX7BDFJcBJkytCuQFGe6dEwx
LnZtIR9wDr5twE8IYlZRdCNj0885AABMovyw0kTKCct/lmjhPvsbyvQqGOWdxNTMjiC1baLha58/
/Qhkmw8pb7IsseoBxNkRmn41M9AAljNn6aQVx+yXkJzYJMm2owq0FcZc0evkNRsNvx3xFYirQvOu
dwWAR4lC47hkrOdGM/pUP/tzynUAoYeKqI0sbJ3Ew6RcluzF4sPBC9Ri3YBhlk4DCi8drwL516CV
g6p9OiSxPk38KexnZmMU3/Uj4RnxMi9hQx53wiL+c+jqfj/pebHaPi2W3Sp7OIaEWX31+Y+Zq32W
HCEXROWATLDi/4ajLTWCSB+DwK86dn/xblMjlgKpBX/+/xqY+0zIopvMI1lv5mY8MW7fd/qxgbSB
5mu8RjwW0icc9AIOo4frtdFcwlbVyvMWAJKUr3PBPhJ1mO66zURaDHZCd+N9hSh2G6+U+whWDzIj
sjNeHrB/DKksKUGzhHkBk1ZfFCGf5AjoJ1cMymIOobVTeUyXi5S4TFYxc+7RudbT5U9OaSGJjdA/
gFMGNIr8fup7UeN085Xk4QDVG1AzOZ9dACxKX5aOB+CsHMPWdjiF0YRuUBBRuTJctppAcEqMTmYM
o3ANHmyPm4UsYjlJX+A7Kft/EEXFTE7qV/I5bmTTH3wmlLi23+7szP/6EvqnQ3tlCRIX26vksJNg
EvDKeXg67inOYoUZfGcGuoKa0NIpF9vBKT1ZEUALcdYQcNce7tWoXkldJKhazP8HU7HtaT4y7njc
iC3dMCLq2vmwuJ9SUbk9UsJsL1ks6/4qNaWdnq/US9XedoSkx8PBk6C+MPXTuJ82HPUr8vhr9c20
94BgN8ItXna1nD5au1YRQb/ww1WdZiMpwL2726BJMJBecu5tMSJI+PuI+S8u01nDf7xUk+3gb081
3srSB9E3Ezc3ajlzONB/ndzPWw03emyHEaylq6ypiwEbueOQIczHyJZduSOO77gHf5GJihai4RTy
kpnzTqgmG5LLqxLd8heFoASBMz3TMjr2NZsErb5TLjWkUHoP0ixPp2tmHeBnCc9WCnGiM5KC8v3a
Al7Ui01AIqkP/kNCiUoRaG4ormqL5C56z1YAb/TiJk9nRTj9IZcNQ+j6rVSQdZuhPLMy6niMZBvd
+k3YQ7fFwu365s8ttgsATwqKaLkxSaQKt3UU7+srhNwg6BjVAcByX91qchgE/LGu0SYddeIOmThu
QmUUHtOMHwpwvvXP7Arrhx5jW92zGWkIjEnecq1qpQ1rFu9ImVpVs5iB16mfzv22Ei8UlrMPugw0
Xc7RQ2AjnWT6IXF4c8mGP49go6ZRp8yIvPLYXxIXnf2Xsw3yqTAEW1O4D14k2Gh7Pf0ex8niBBJ4
bWk9OpVa6+1Zb+9dX6qOIBBO7ZFs+nLj9K7SqXcTpL696g/3qdbiTHXMgAWRYbPcMDpI3+RseiAv
TOhK5NOeo/DWrI7AGU+2xGZNzeQqW/HcFDiyXT0E9Ay9UBeZcduzuIdlnAvRNoTVV/+G7v6X1vMw
lBPCMgJywGnxYhYW3dUp3y06v5J9ADTh5ZGV4Pv2VUHYSo68G6FMJQbvxNMStYPKr1fVvlDkgCWr
sL0akIMCkUz+0V/VRF5anZLZc0mOw77onhaCaiPQ1kjQFdati+i6uFpG9I7IFTxsS3FdlsTUw2+i
58bz2efZOvcYUPJ/70/OYGHl3xYvIQcA9l5Xyeiq2ns65kGkCGHJ44jP6IiPIFcmBWmuNGsEG8lU
r/RJE72dtnBr93RmY1Fp6/CivzWyUlYLepPeqv00vUp8S19o4Hnjldpsw41Zyez+5HqKmdS/75pC
80DmgIpYRkaU4w49ti2PY43HH+io2ZEaCTiCBI0GsHYBp+jk6Ygjv73xi9zhiQEfCn3Orqfcsbe5
Tb5JXnOtfcbXyUzfwIw/e385DeIubw0TRwqmQCXB7AAKbNYAC66Ns7qid3wvQ+vODTnyKN13EdiG
hcWmBcWrR8COmsfCaUoRLVwGocQhaOb6DQZjoDd7P4W9dTahpkX+rO5NKZ5fvz6Sfl5zuH9D8bnV
oGj6IsPsqS+d+CWdAO9L+YRxUFmkwgfHYb0hHz6eEy3VSK8H94OrhgpuTPshZb3lPNoz4T5CCnDH
/Aaofe/XJuiRu3NU9LvlNhCnSQfxFY7wVifFr660tWTQNQqZNt0VO78u+HL+7PIUhXhIYKda58U/
Jp2DFcC2drxbFdasSfP76FJT7k8e+GXhMQRsomaTw0i+tjt9WOoSyQuvLXbmB/9aVG3s8djY7EtD
CstaX0TEvIuFLiT6I+zfX0J7RQMbOH1IkJQTyTjsJe3I00uZfCGijflkZgNyEjnuYS2JR67t5tjx
VNgCDzdCERxsnjGScufNcRYDWOa4LnWQsJqsFBBcAhMpb8o3/uy8Sc+619ywEsgr/VgaCbKc6zSu
WZ7cogp4v3K6NmyUoMcAowfQiaQGzH9sboVlkBcgbDS/gMDwA97SfDisHyHQYeW30D2c/qhkmPT0
BkjbYkMYzBTXgTvuNOKuKx7xHc88zNopXabh/uQRGVMq6mUB4KiFQ/7JWRSQLqKifz3C4GnGraIE
RWOOY5y1AVpNYOwcllqsLcvImwNMSFhIdN4Vi0FL0sGrJtvvObId/YXwc+qgxzmD4fm2X2eclTT7
yVRmYO0Z6A6juRdI6yKEgFwvO6+3uUI4Pgd+03WNca9VQ5oFguwB98iDUC2te1pulPP27cdAmbFt
uOyp+Ukh1ToxeSyNUUhUx8mSznKhpbhp/H+HI2qBC0dUh78Ah2ztanEhIBwmpSt+e6ZuN3ofUk+C
isahHp0NSLzvTKpj1fPDny3wTaov2A5Tn0EO49fKoBOr6MP0khEIWd9+moUf/OPtktzbZ0/XGHBG
2g0Qkmqvl8X/E/sty2JLcj0kfwH4uj7zuCAhvv6sCtOb3gzpwK5YkMF/BmMzbH1SSHwEHN+HbkOO
kQMcqhDv0OEXNU1YWOCIELKEE44O7a7E9GFA8URDQ8PivqaeU9ZOhKpdt3yjgdbkc5hjspCat6MW
cTwUVuSHry7xtKMk4iDoASUKmegWKY5v7l91v2m3N+8L+TuPYl1H8u8Jabhwc/0jFbwpjpw9hT8F
DBspQoX14jyUCUm31mEvchZR36pM8hqQP6GJeOC+s+LbMfFQU/6CS5SF/DDm+G0oJaFSCgto4eKf
ee5yeRgnm158yFYR8SNGWYqyb1wKC6Q/bNrhnushFIeAfx18S6l8TIqoXhh0B2z722xVH3fFH4rz
AAOOaLllH1ruXea6ZkgLSoJ2Apf6iS8woLUfTq2AY4ms2a96PCYxx+oUhHBF+kTXPlvcOcay+m+a
vXEh2XsNjG4z8B7N+GM0a+21ah2Yfjk+4gFghQr/0hmbkwRnsJgBASHwvngs7qU/MWKuJ6gbMHm+
IkKcc0spqC3mhzfU0V5+s84MxFANvgyRyK/6GhM6QdKw1yuc2RmllRqvqT8q/PXkJqEnfFw14gJx
+j2sPGUAAm5s62Hs+5Ac7DewydrjOmwDhr3eCTbBbZVzZzbiC1ISSFuejizIbTG99oS21xyBsDbX
PKLNfGgDhoVln4+v2nryq+2IBPZdnvqu6PFGIYbIsO6AJKo6aybrkdccsF6PAUNv3DuQ0DaFG/3O
SZhTzGXqsgup5v96varL1I1X0rnFHMubE45w2UN7k8nzRgMxTNOdHMj6wfUortk1qX639tHMG8AY
EE3yKhTjl1+tTKY9RocuKs9z+pS6J9L3RfhwXJ7p5IdYt1X0mjxNR+mvMiU+EdWwPFMem3g92Sud
aEYObP5NKe3h8jDctgH62dHc8NTw2Uf9ktYgrMz+bpe1HUydxhQbKwJyaXuWMHlu6/3Wfr5vTiS5
4LMVrs03JtKxr/e062AwdDSR9qMy1OlXX4RumYdT07jXpkwDS9HiHS4KlFFu5gCspeYktDwcoC7S
RW5mm+ogFbOttV6MixQgEZ+trH/VdOmec7xt5JuRx1Gvb7dXjdmlAMFcyV6h4mYHiScEkTx7y+Qb
hsRK35uFgN7KEGNOxKg4+uTADZV48KSb1ZhYzhDS4/VOtvFwLorKi0uQeIZFhymXWABp1mfRoPYp
2UD1FRsiXx0Y4H78TsFDz/QLx1x0NmHJ6dRdIBftYRRvz3eNQMYVwBRu2vZpAib8oP4KjWF07ylO
81yDfbUR9h3LT60lW1AhjWzh6LK5OS17KIlAvn/OaY1irRAQUbWTMTCivn0um59BWq17e1c/evYp
Wi4R/gcITYdUs9BCHIdXm7P9qUe0B0eRuaFN2Pb18nsHADe6TVROMkzLZD5yqboIQ9F6cDrrOd4u
8t+nddF05W24DQ8Ruq0heMwCgUrUMto970PIFbDGtdXXIqG8DssUgq+DHbsgWAbOx4rjC2vQEH8v
HAHfSkC6lNy8n+2t8GGCxtP6Yfw29pE68J4CrkVHKZRiEU+1tqRfsLiJVJzYkq18jWBvI2qdsS8C
MCgVIhdtEHi8EOebsVcAoiZCuI897OdsbGHNJqyoIIVvRJEpnb+Bv2SJFldczFu21d7vlay1TrW1
0tIpzB2EAr/rDVVl3o3wXdsfev97qJ9+OWAIjYvrDXrq8NnLN4+o9pSQc/4Xqajtp2gY99iGKJq1
42vLiFiPNaN8Ct3yz+KUUIkvtZn5YyqeAjEIWUXHz2zg4S/YC8vJbyYeBLeK5RmPD+gtoSU8TrKJ
qCNf44CEyBgx9LbfvcORXFuaeE+NnqWA1a4HikHcZqnIW1H36XRrVzHRsxMwXIoSPEcVRJbG1+oo
bdaRGhh29BUepcJ8w02Wo6UJxj7O9aQ3r8BP28f/ov1qGObJSM9rZxrQb0rU47T0FPnjTFCLcuBe
RHKlVljEg6qEiso7VyW0QH1bR3n3iNVsDY2DmSt5/S9MCj2jfW9Amx0dMTNs9KOYNdKy7lO3wAPz
NIkstKovIOX2cRgN53vFrskJRkwGrot3JtGoMepINSl4vMxOu0tSUz+b2gJ0mIpC9fQEtP6ZXTlT
etkHS9FU815bSZvHQI8Lp4mllERBsDTJYh6TMZ/DauXVZ0gDUVg+VuY6GpTRxSd51P9oTKW3iMmF
WI3PTPhLcA7AB0gM/wTmbKyFus+mS5MCThTxGAUVY4JJh9v5xLTGwcqtZvQDU6RLgqUiSYQIhaDG
YvlLccaDA4yjfvq2G2E3Gd9TX0HhCM/8I0qY2qVQM5JRTJ5KYs3owJyF1ixTd0KoCUXf8Alm8vzU
pbTcFe76LxJ8DNqGaFR1CDjLG4NH+66wFA19tNuAxDqkpONHnvDfSFM1QV1BFEu90Za6o4U7deNH
tlpT/7taNmvy31mw7BJoqvTAXaZ6NcSSKO1IQtpMfkcZJUYUmyozw9DlR7txwkpfh6tD0SZwmiAz
LJWJYm8nw6BPyIwrEWsu37kYQpMLU8hXsMVLHT16YUyX3C5XOgVJcKDSSetBR/8p+LJm05feN31q
UGLiZiVZ0AGc4/gkJJrWwV74tJQjFgTSqbqLzsT4fv4k/NtTxLMZ35ooeC5f7Bv6NoSSqmZ5VObw
ALIPuFx3RP0sVxfbc6ZdbZmfeVEC0PFPe6um4gfZUEdkJu3jITR90E7kGdIf4RHVxRVhxV7pdo+5
ByF2PJXRutRVzvDhJQjpIv/stlvzyZQRrPC8hSEGM9XH0zIVnS0hSShYDP8ryLxl2mC9dx6nXRnb
qbP3JIKqgaxGGwDJS6pxXopaNOVggDhBtMIChIfgxNHeku4W/q0oCMztYQa2GJ+Bi1E0nxj5LAOP
7J3+yGNU2hGthvCYo/ezGHJJUbI3XrC+WS4rwTLUJ/jPO89iOUtxkxsPkJDQRtb9DJsPc2dgpjEu
zMX1Jw1X+cTrAnFPdXShcDzt7U/tzsEJ1lJBmh77zQ3lnZFLl7IGsku4jJ2kpIRZ+mqa26jrNRfi
zFEhTi62Ns+ihU8hR98rffqzeHIyJ2EiklaTgI0vAa6GKhRrF8Er8uBxzQdlp0FIj5tTAV28+e1c
uAo7jAM1YFSK9g3fiz6BE6DcuED8+9OPLU5l3Waa04F+C1NxPqq0yLUU9gzzc8pSCQPOkfckg3IL
dNuzk47FOOXz3MBuRzv7sX3isnFMjd0OROKykTUaXkKdIrd+45tupOd2ZtBQcGP+nc3JnU1lxQpq
Be5Qfn9vFvLcG1UKjdWToEluTl2imxNQHcHgyziTgk1PmS/7DmXdnaxgz/floHGabGrrDwXVT2dR
wKKOTQMucnruNrRAIo3UrMAk3H8M5kBclxQXlVqpO1gAH8jAeLZe1jYY4Hk5Dpgc65fpDJmcuq4x
hojBTZjRXf8ozBwOkZpMAG0bRk5MwjGDjWezec0mFnCvHa+O81kMsj+87AnkGVlY5AxjMFAbSI4v
Ty1slV2FAEJtAqtDlBwfZTCNshzr5DPKHNgVSjnUEB00esQ3Bva6lMq+vWwEznjATxNxihdbiet/
FZqAeXC4THZXG4ZnbuLHgvJvDKbykX2OndhBPZiWsxpOuAlQ8HXZLYVMYGc7p2XV34KxNLrs/eXI
EBtrw1Fdv+Y51/2OnhZMqTUKVgYgp33TRQs1eXbz3XcXKFKVJeFXyXG8UCf+UVj5wdvB4fIBdDHl
5JXKqRR/2gQLPP0dEm3hb93c3QJmNxlqQU/iF1dI8hOZ2hy/6Bxit7J4UbaMwW7+VMIyP2WtAkRV
WtEaWpXwMiz6b9TcYTNCaLer3wwnc9GJgx4Gutogvdr7lfqFOS+0Y/CEELX4p9+2r0NetlXkNBVK
AjPcTOX0TWEmLRLTn/mv6Tb+fF3BfsiCdqwWuoY9qhBh/3a9+sbgW8Lx9G1jHHIAvdUYDZKOMQaG
Jt5wly4WvrKuBfo0jd3znj15SLVdXOrU+gSSn5Dt5QC4uyB+ChOsFIDlNR6hV/6R2ajLadFNbx5k
JAB6wnGM6sxJcBWFOYp7ZQH4EPSzvv/0mIkHNGxryBzajDgWBbpNfQxcyaCVSi9e6gtVdxtkWGLc
GWwAo77zIND5HRQOMdZvJ+Kst+7f8XL66YNAZCcwdQHUkPvRbHVeGwuObLFzog+FLpgRQGC+Du1t
O/4d5f2OJNJkxMZMRKNlm5CpWmxt/STOx1MXz0HaI7HdhtB1v2SAUTWBkAduhbMOmOiDVOg0hC01
N0CGwFC+BPcNJkVIrMXJwkNEe3iYr6YX5tgwSdb/rtkMcWrAwhelFcCyLFNlHvVnBHWZR4pznkqE
FMO8UpQA4hF/xcVnadwlC1GDXn3T54swAVovAVDLdCgfcaADeAmUoqyXlNN5sCGoVdz9R1u+Ywlz
z9Wqd39JDXKd+AHXGAPk77T4QCitfUOC+TJ0rzBRMZ3anbDmYy4CXiBYmHcZwSKHBsRRPAvoATwF
FTCmrL55z4Eq54/A7Df6XLNwtDk2phnaxpTDvz4nnpB3Tjx7/PtSoM9V/XfToK6J7N4lPGMitzju
YRw1Io2JuE+3xRsLHK7ORmSOwQw3PxgJRhOn1V4OndhXfESC4L0aIE/3d6fUeEGLJRSNb+nFrMze
7fDqRNKgH358yxnPHY73hKeoepc5rjEC6qUft/KScTXiD5d+wZlMef5MFvJsCHFCFenrRE/UB/nL
Ss09AUm6zsCsdQNQ2ZY77qpXdUVXlT5EmzuRPRWJScdSbeI5hdXw3MnXoPioXUtKDeiBM/8U+XOg
J1ILBcxLQ8RB5CMS3lA57jsvudQ8O0nqxoHnBoya9aJ0H+YRuYFR+c/87GBrHEIKcsIZqm7cJ63v
14ZmLXs6FzlaZCDwRKEPYcoeTcI/JaguMAbLtUMsNri6shvUssa+pVBTpM3Zou7j1ccVyIqMDfd6
UyodJbqg4PAfGD5B5CaLbAh+RUxnOHAM6ve4V++LpJM0qAKrKcWIEVPuuUxZr5ue5sX0b3jTmXU8
67j8NKtshrNwHpJMD9WkxnSpF4Y9W4RdLXs52f33lqBOnqP08Eeue4LP4MVjaGrippM3sSUiwPtB
Ip4moVr83S5FKc/UzAVqgh6Smr4i32V5l64WwcKZDfZFZoiI6/PwzKr8b/fIkraflN7eJVQ03nUb
ggZHOw5U1vOJzdPNIRx9N28YgPEClZfx2r1j9CTbQdt6eyyr7DPfJjbSfrVUAlfNSmgDepYb/1zW
TMYKTdccUNG9ogbdlQ0LnqTgZoRG5FZ6eoDaUF6yMygSM+rsxooQ+8GWkJKZluH6Ww38l8KccCvn
4RhA55R7G5xMkXsSU1TAJ9BIYGwbkPT7LT2RTjV4M26Atjdsi4FPPSVE3eGleO9UeoNOduLFhoun
vA1EzGDpMVhX39kS0DzyFnk7q7siWX78rYha+rn/MTakOWngzLDyMtLgPyJZJ8OETng8V09TEfBI
U/iIQ3s4Ak6EEpqXLoHGGYA1IMJHEVhrKoBWl2z4CUzYP/n4zOjEEMONAYEsFYQh/IcIuMcIEMjP
CUsaMoVV6mWE8b/kIb268DNlwA9W4UxLpDdaoLMyDnlzSEjhAgw9P0p9o6SEJtGQ6vJFzkB4jpP2
/FjldGzQo0/dzBJ3AbbmT/UDh5ADxW/EvV8bLF8aXfQfnWU1b3rKzvDOgy9H/BpC0jVr1wh1vy0i
KOCOKhn9uBcam9xQ7GZiUtTUeKsrfTcs+JN9+v0rwWM0RL8fPvDCFGb0w8v2EAj+lW9druI0MyE3
7xoNINcpJD6+c0h2Ah9wPBkUsr9B29RqIV4PAQvp1llbi6ogXStnzqELPnFq7rpxf9sd2G8jTGyT
qV2UAJ4XLxdSE6J3mXbrJRyRFRYLit6wtPg8GXODIEsOu8aH7lvG/DgvIMRjkkQSWk9aVHjQf3hQ
3UfoUrbS/JJQf0eBVC3JzV7oYsyL0oGg3haV4qVtk3lUvV3R7EleCcb29xhFMf1JNNkg5PRrI5UN
04wkAGJBN1MgznOVI+brqvoMDKog4duqj6TXt+UvyqelNOT+6ioHXsNvn7l+JGKPxc4RygN3OqF3
BWP0w0xdmnMQ5ho2AcPrgq/uGyv1HDrLCw1mk/ft1m3et4GJBS0B3daOjxA9SU1ctZDT3C3Hv/Dg
j71+9JbQiQedIfWvubMYRdgX5WXxJEr9+1ADOZ+U127cxdCeQN8150eIc4g7CzZUwP7BjE4bDr5f
L35owLr5dzzmhNQVOgaJrSTu2D3HfgIHEGuUUMpOrbaAWOeZ8oO0mWBV8KXILtKGo8DqSe7CcfVA
g16ivqJGpxzRrS72oLsPa9x6f0YF9P6o2Xi6S6WQq4Yh0dn6eXjor6KyOSlf9qQGaMR3VBf/bM5S
egfWjvbalis3w4HSTPYn5ej56lRJ2Vb25b/D8YOfNHnQ35EuC73tvVg00dGoERUcsfg/aA3ajybv
lmMHz3hhd88DfxnUKOvIyrukvDt23YRxCDPAnYKdMa7RJJT2O07p2NwGdnkvSdATGob79eWyEnre
Od5IqUNE+YKDgd9lNDD2lkK/Igoe2CfrJjvjfYY7VZHrE6TQtpsaLYDKgLNsaaxhDFBaHlfZaruE
IkmyQ29LrZuu8Rgcc/AfEj1oB1CM+eT/UJbdeR16gWmKw/k99Z//PbJomeMDss/+7wlLmvLO3jHQ
kK7H+mzpLBNOtQHRuRczkJKkzR3y8qdtRQPwYMZY5bALdiaRrgri2ATBrsjT7gtPVr0abrprHEbm
gzvldy7PYJVmq1kx2QWfXIceRTkfmUaH2Y8txRbxbMCJ3Hb9NOSCJjX5bSBD9YUwvGOtogicFyLC
M4AbrF33ZB2AIS3OLnDS5ulcQHhl2TR/fwTfoV4jxESN3ywOnTPQITTj3tttS86yD9GuGjwaqlXc
mSGi1ZIw2kyH7Ns71mzbx4z2RgnV2ktlDtomF+xLJNzCDjymtiPS/q3Wu3/P4kn6ubN0xnkzfXBx
w3tGADKLYSsIkoTgwVjs4DaAo/EUsK/vYcu2eEj6XexRRhPWiVan+FvtsYU+2n8046GG1rRbSnnO
82xHiNxvX7xJPIamGtr3sqY+ic7Y61fEOmKhgs8HKLXwR+cSxABmxA1yQNr4beR5kJgkt99C0cAK
u8gNoUXXpPZYuBWWZnuwfOufRSPRvWvwO5ycgkKRi4XGeU9r+DpB8spkSHZJ/JgKs/UVU6iCumO8
LArDFtoCHl0OX13GehCIRDSe77HcGjrzd+9Imbmlu9Ovu3NrnXhUeUzwnO5SwDstOg+NDS3GnyK8
/ETR7C43kUEpaVxJ3hFOIobbzPPPIncTSmJ7lrPDzt5t0oklvpGolZZWWj+CvPcuuIEAFeJyZC7O
5QD8upXvY1KTDa1teyZxrNY1gwIc17lEABMl05OEJZt6AECkwddovz+7yMwTArGV7u+J/G2uUkgP
sQq3ZVziwrT5tjWHuMV9x9yAzA8uHjTftsG9iLkbFgku7MocrAkHyPW2rfq8fakiXFpz9/Ukis/3
JDbpA742p32bIyfPYuIqw+goPRei47i64P5QMPjClkAZ7ssLvRNs/wN+OrkVX9446OyMspsIFfnF
dT5Ppqp5Cz5EZQnwZqm0LIe4EnmsLAQlt7czAZahAtiqsIojBSu0yAJaOzxYC0LRPiJjDKex7po9
o+4GDjQ/qqxeHhXX6kFcQPcfpPH+iaFqUwm35dFl0DA7SZfFPx2IUkW5Xj0PjuodMXj64NLQjxO1
9b/hNKfirZrQEoqnA4Q0cdLLHkp6rzutj0LpMVxA09ziw9slpr0unkht4prXRRccKMzcm4R6BZMX
v6vjq7XGF7ID0weAV1xyn4MnU1Ams3ZGvgnChC4urOemlrzceXdVxBdhx53fjFVqvf4Or2OCZyEg
tMTMuTv+YVrHFAizw7VhK1OJ6rE0hvZdT0JjTnPv84a3w+tb6p/3KYN4wbge0pSDeN6piRPK008U
r7V6HPbv53qhQa/6n1yp1rwT9mIB+sL+Nn8VVBIQo1YiwessNf5TJvezcusudcig41X0LW3xnm+Q
Ik0SVOdadtP9z3wP/ZnnWeIWayxp6Wh6EGqb/7Ckc9qG97cXOGO40srehJgrc2AH7MzqRxePtrnN
Gg7gxp0PiuLXAvfOoEeiFQ5MFh77/Es8qUJr6IqqxaI0gNMP0551VdFZ0jfc6O0rHTc5uioknkHE
sUVmeNZ8fkj5sZrGv1Mwxxxabu8bx/8LvfsidTtmFxkVcv3abDhzBoCNE2M83tK/YwhpzRqIYg9S
7jbN/KD8FcXJwYbLcz0eKqWWx/jBxPQdF9CB7ubdPE8O/TuC3Kd8buOz7Kz5rZ0gX8mQQHGnp7lF
6zS0miUGqXmy6Rx4ZeQqty8Ai79oMXUWqG974c4vFbyggwKkDT5GSoV6qbr6CtKWvKha93dhyr//
UsIXJLdKpihjvAboxuPnYn675x8lFGHcOAcBlbpLMov8Nkofye5Fhp28LG8sxqBb3n6oG1jgr9+s
GAGHFIDCd32x6ZLUG7s013larrDnFhVdbwl/U5A2r+56nTREKN5FcAdktfIsZwhfe5s9c8oJhTeR
5V9PFg0UgQsL7US39Grtnahs0lxiul/EtPdPNsbYSFYq8cfJuxPUVFFlOW91hZ1olRNvDjkwhRk8
mPFuLjo8LOZB76+NBkOaFKnVaNoRpRd+JJpFO/9mPNBB+mW8YDszHbVkCF0VWQiFjXCSiRgXIgjZ
txxFnqE2TnI89Y5hx4HoVQXVR2FY8t4oLqmLw7oeCY/ipEM0WEjJBrWN579qvkl/vBr2I8hbKU0J
QdeTsLp60scMfZRih9WBNZo/V5NHWEG1Tmwm5YrEa9KEKWBeYJWRV4lh/Tztr05c1cbWKz24z6wp
CF2nvoCKEQqdcHmzF0lQS9m9YHiimAGM7Zn9HTEKOOZl/kJK/gjslkI35C4IONabG+8o6s00IPec
cPG+7C5CqH3hX95MhHNbWJeK4iXxqz2cEstE7fKukU9utdnOEzxdIgYKsEGcxh+3qw/WGtCzx+mc
KSXTCzxR+eWu5j9KbDPwl/YZZuA/x8nc1TTe8OZJsFNKCkkO1NJyWKuieLTTBuFgYROHIg8pb+TM
G+aW4UfmjVs9/Qh7mK5AlCgUM3CQNW8AdvJmQbdj3593ARm+5vca1o0Op2s6z4s32MDZF7x0GYO/
catF6j5AS+oV8ldZbkdlnDBhMl7vb7KR53SWMpQRQHXu+ePG3MKAD0YQcAxsZeaCpxDLfE9hs4Ve
m0CuI52wvGhnF4dZITKjWapFbwPy4QH7nsjEaNtLJzuYj0GTC6vUDfPsmFVm994RkWGT0r2fL6B7
AXhf2Uv37NDcS6ok2CUMFAD5OcfdFt3NmkEtmywwxarq8/SG9sEY4KtqvCod/MhQ2X0Ws35WV6ht
zTrBxw/9+nUwkxyBXDgO+A3aD3mosxd3IbyKu3uxd0lJevzdxw4VO07e3REf1o2Ic5fCDNPpJzze
fcTcBQx4al9Pi2IR7s7aWTjrNLHWpto+BVDtN6VCgJPzFuMMq300eTOkE7czT4EK2KoF0jmGc6sG
oWqr4y4i0IPFhhE7gLlUYyzOmsPN42/xvywIdSFB12E++sKEX4PEUWQ/qd0HNyX2ABq2a8/E73J5
kY9/AFjlW6wzlqjwjvF13SIrXnftodM2tBibZ1b6PBVkOnnK6V2srhKoCWe/Fau/SkxEH6lpxsWC
1NNm4JoIJ9W1LvRBHCJ6uPoJqco5acaT3Z+biFwHWLxlSfPC0aJmdfXAThbKSTW3BYGEfq1vKnbE
8OuftaPq+pdfkSyMkcWwvAufEdhgUhqXTwVEIo+iK7v9r3KPIKG0ynXBUv6oKrSp1jmhVahh+Uve
0zqoHoEh+VH4SxCzxfYX91QvLg7ZihlQEX9OaCvu1bkDz7ZtT8dK/U3m0HEYxJQjh2oLM/EZcroQ
e3U9dlVEF3RZSpU+7Cnm14N3oT/xH0fDmvC1hJ13Uumbns85zX652nZnYkq7PRRPbAVg4lP6uXwQ
XraMYva3xFwP9yV39LLlmFY3PGVWf4LnJ4CvTKs7Jr9H75BmBLPxaW/vvIkpqrMnceoiIWDv0L77
F8NebtP2YZwvDVwJfpWC8ubpcnk0+vAhSLfn93HNrk4zKwWBxj0Oihvn3IcYnkuBFWpafLzEv+oJ
iPIlxjtB3Ihd2nTMTuy7Gp8ApTEm5P34OAtnSRZzWx30xssrYOpb5bMjIlBB408vQjtiuRi4NH3A
7ZhKzIzjM/gv8WQQkX1CVs9VztYx0jhjKtiNEiPZQNHdeuVvtitchmsJTjxBq7yCGlF+edWSSqxE
4mYWNjbwVSlheo7KnpMG/UWbqqg8wbEaZdG5K4W/Gki5tznQohRDzfovyVI0A2BqFtwW0BzQEpXs
qrjKSgX+QW1yXfE1QGqUN1KrKTDUBsq1CTdl/ajfgm0VYsNvSoLFl2b8UOn+5cCpBsg4z+UmWUiq
X32MuJg5EpIdSG8VIqN2meKfNqq4zUgiQ9v/ETto6ZoHhCKvNVG0dhQ2SFT0/w43CHYaenzsEFIF
kgjA8pBMGK4qQlS3bJqu/WyNbJaH7HL9BQ405306qGfNiIp7cZvXi5P0Apt8LHvcZpE4I0f370XT
LzZHnXTqaA0dbwNy9GYtQHMGdmlPiwwn0hwuGN1f5VNeMdK3FToa4MGpjS54lEav+LqZVo2scH9k
Xfa/Oq3cUHgPKQZ4Wq7D377kGdUGpzc62s4LAJif5NpGIC5eNvU43vEPTM9R6xfNQ5agGzN4Knkh
9ncs2Eqyk6/1MpL5LKwVPN6lXxGINVgQxpOX7j2xGMZidKKYg9j6eBL0uLzskX+530IIlYcSZvNk
0bq3/YUPQ4zsdn1Ny8YRdso5WIkte2o+dggmEna+flswREOJ12BjOrot212yCtfeEQ2c9K1Xd//N
IAHNZw5XksI63bpTOjYTsuGtPM9RQ9m4wD/BhS9Qy/QvTmYUioeyfWhAmRN8MC1hK6xBQckwPLyg
wm/A+aAcmyhn9MkY98ZKP/rIJ9A+0N6vLtDs4t6x9/EJ+MNbPsK7h9v70tx3LqjnC9bQsPYzU9Hc
0M6CBqlqHfTvCaU9l2DzGKIsXDrPPTOt7KTrW99BuwUlUMvB3cZ6Olkm0oeWalpyXDA2OCWV4itm
CSK4MaSNiWX+INI1iOv+8dI0A7b3YR5mzqR20dQqwE79BOY+x0Onfp14cgHfVj6UWMKEaMzpc00Q
dEL77Fmfj1IGeF/D1CxhqvDtuOTj6XDqVYsq5xxTcMQMUQcEyNomMiAzYR/yvFkP11MmuP2fBDtV
jJB0hzOZR9k5d5Ex1A2eGA9jYFbcWGbkStbXMHmD0HqyYXy60TM27GqIYhQENCUHrKnSAupWMUsn
+ouDcenK5VpiYvDRBpqmey34ipl/Idz/1YD9mpIWP0ymDFG0R4GjHjwM9shY1pd8/YkPcwuYHoZu
FozJyNPxPm4OGVWLeCvIYxO2i17eX/sQSTekOMJqEG0JeDRSWmbJNBN36P2Vtqm4mqresyU47A9b
PAdWEnifbfllZ/Cy7kR4yIdxyFi25mtblQF35Oq7Kt7du1QaLbCPpuDFhB1lfMsZORBBVQaLew7D
nYrgfa/Ky+xrPMsVZFgUMiJpOSd5iT9DBYU0XJ7Jm1cxwDn2QUvX/AlouZ4UfKrLbZ9cbQe7kn44
AQt07a6viX0Cs3idhQ2UDjVwSW5iQuudW965SwDqjmecendcbs8efssmxKjaUz+0V46eFIhsp4hH
v6JtBaHH8jCqVHtNIJvUPmjxYoLjtsxbx0UhsBD2RWn5L9Wel+IHNSekn4jt+GUOjvcB5UbIMxfF
QUNb+hFKYso5+U4cqN7Z6tCXEvxXIznRtUZdKwgRFzL/IOANPEmXNZXgD4EhLyrzx9PFegLX2dTO
8Uyq/ye7R9Tn7evsxgn3LUyBTLHvdV47L7zzF1h86DrE8VrW83nk7xQkb3s+vczaDaHxIZWsU8Oy
jYXi5ayf0cGlr/7Tnn95kyOP3jk7HHO0R0lkLVx7FHDjJuE1vobcyr2hPWSebJCwQg/7VkHfstU1
aPpB9OEP6GhO/DZArACOA1q2GIphXtfDYhn41Tw/JvZNNDU0RXeZTwhlLn+8Ho/Mg2IGqY3kq2fX
WRbTAeTxjRLk+Pdv4p+btwPQGcCKJhbl/jkUTsXugsFyr/sqhOXFB5wdMj1WadSy6XfjUi46lgGJ
WrF6L8n1dozfuPVfZXQw7NbyoKodQKb4a+vsegmC9/7BnE7mLbHXej/cnjAjXQb3T8nmhbddyf9H
AjEOzQ+Iwn/DK84oSm/3/czOpp5yFjg1ei+1wX3N1KCUjOrPEpRTciD+nkL98mXkvFRks+0zK3vY
Rh1SYb4YuUn9HYH8fUETmj9iBe+Xpg0Tg91X01LPD8EGEbW4aAgL3zMyxDDY1Bs3oVKI4e09zjya
jKdfiN3B6D0s9m47uWdYdyJvcDpaTLP08yDo05+YTYxMnNq2YK0nPohhJZUtyXg2AlhcOYfL0zHd
WEATfezPmCCrOO3f4OvBpJ5CXr1rXr033fBDZCtjQ7wmAtChpyTnS9r9oPy3QDzJ4FOeEUrX3QXq
F7ewatjZbeOMbOw6M2uGdRU1o6ZeVVs/vXFCbnt5Q4oNtUI+tofjFVTcMLGTCL0CfA2CrkmxG3dh
VNgdWQ3F9p/wMvJS2QZ62XmPGkS9mjDWB8TeJxk68sKu/YeNL3/jtg8R+dggba5FqNFiTYuO37ta
DfDsRUfISEpxjn2uS+RtaSgpVTZvMWfrFxlENxxXYt5fIhbOr3VeMBMGiKIJVNXIPge887Bw17vT
UUAqEIRP7kGRewuE48LB+ciibLGlGAcsL5BmGiAf5dxSU4xF8+ukCWmsgFJCf2vQzPdvGCaPrCn6
cp2IHVJtIkh+3iWyVllxBGeJajx0dwt56TuPtCtrOLc0EyakNmp0zaEVndVPynoq5Wbg+6hs2b93
Vabg8nAmgxa68Aby2c3RZ06QmCMGMepd990p7PepJSz9OgdRllGalTrhJHUy9YnvcaAIv/CMz7UF
uOzY+Bpb3kFcRLIrbfcbhQ82qgQ+RXhTDOdiUB4sywwZk19Mdq2EIn6iCieNfYaxgVFYyCKEf7p0
kFCbBKvW2Lni2MnaFzvdLCAtKP1RAMxs48ejPEnR2Z/yyHp7sct9v2xjgF7SnyBCfGp+gDjIiqEu
7GkPTnQ2El6PaLO/evblIir4NE5P5LxOA/XCHU2DTwnqiBCC0aw+xW/VxHnWX2Da7hsDBFWtlGsR
EuNvTiQ1ErkTrltqQf0xRbnNwZP2HDfw4LQwqnIBEzol77aZJRkylt7Y8NveLAMfG8lVMHL5YCQc
FLBB69dur66uyj7vrMZJdZbot/8nUogPbnFd64Red/2Vbix/cJTKsVT73+zyHU9kSaZhi2vFvKjp
NjCZ0g7uC7uMUUEL5AsiUypIVBrUEsj4lAqRUaAd6urDsDWkIlBfaC3sGgBMjfX8bPLI1OgY17Rx
5DhBCt8YOy2xuW7upIMFbTBUXZnDo1E72m1n9fbxJsoLibYS6pPrmgU5NuRbYUWDZ3lklkSNTz6C
/U2LmD7yv7rpslupFCWdkq16G7P3nSHn+ikxXYSaMJO6VF2lsrDPfuQ91zB3+olLwGldKkYBcrVe
wsSAmEypmVyDPR7bxmret/BF/RI/jDBR1R0PpHLtRT6MIn7i81k17I7peErnvLGRkMnqaZQ8vEQ3
TUq8B+MBd76Ix1XsH35AvTvK4tKwc/JU8AGbwxR4VRO0gbnyVJ26oOK2XbeDRt5k01obbBbrBftD
LdmjG+9a4wpxbZIvDgBAO82pEWwgwA0aJJD8OJsk9kASlga9MogR9Bg1TWTpyhVRzT0/haUBRDto
tSGZKCS2HQr8v8a8JWsp/h+jOR5D/dGkp/ZOZXfu3ajmJBoAQf83nyNIUNVsfWfocb69cNK9EOvu
jV9lRsMWazifMyHt42f6qMZmyqjsTQMax4X/WQ5FkRn2MDR8k4E7+G1CnvvWsMhafgx3/4AaHuXk
Rj9x5e0kLdJMGbJbjlHvAJVSHd4iPFIiqAkqYlIBMEDtu7/rjHZ4h8zqdJeQf8EkaApzyTiuBRtO
tiSoovuOiImFyEmm0C+bgtNNFkW4Mx5aG1U/2KEKo/4yg1YmRnJyjX0M+9rHhHKudY0gxCwYx9BE
Tt2hO09EzcRUNLJylPGu5WrmAcyuT2Drgrys/JXILUxtVoeXWobrCw5sy/huFsGJ25Db1SOM6GaI
txv/48UGtePqw0MXpiIT+phxvtfl1NecxGGA0bc20QLUuptHMT7yPF63tf0Kjd2toeyiryajbeDY
lCOrLERlIqXHpAX8qJZ+Ptwjm8PTIbwQ9w+A0/DMelytUdKP7p7i4bfW9zxLiTgEvXKPzqrEetRg
E4aTDqK4748ky/30XI20436vFcHwlxyZ8Q0SjQi/xSsL5U4viIiSdMDAZ435HTqbemNWTLI30ziU
2U7GCQtrKL8hSR179ogNC4iu3c33YWJ+NWlE+Oiq/FOYUryIIjIQrWNtkgy0sLNaxGh4fWDIDPad
j03cyps8CvxyygonUvY+9A7pwCizYYoxA8psgFCL2FlFckGpBCebN8tOafUUUlj7Zs4rCX1PtF52
LhBFRlv83cje9ut5VUujzvDXc7ipL1wtEBCDNJPH6C3Kr+REXh2hTaf+ggjC824y6fywUuiJe+ba
JeINYitbFyEybh12932oBqtmIhjTXKS8iIwiGWAWG3/qPdRVxBKK2IGBFtqdrHb9dCaq3sf82pRL
jPCYy3rGjvFW1T0k48Q5eefyow93cwlEdAiclvu2nQi6tRhH+0zpdg69eA92h82cAF9EYaXdBv5I
wyMWCILzygJI2dk8cCNEsyEhOsz5z1J/9d67lfxg5wT5q1y1r6qJsamrtslehJ4JjIoscdZQtliO
ur7H1ssbwvmh634WXFNtuuqLa/bZ+mXrnWodTzuNlWvh9bOugbXJGrIWlYcAZDAE+Zq60VTkoIFX
lOQDsIGMPN/Ej90E2ov77bhFSGb1d/W/hA4oFczmR9W9L3PzPY0R9t7aqQr9mJhpPW9YK11RyfCI
9DaGN+GP5X5uElMdGTUZB6LH4OkU6ItTU5JoIyQlCtNnVWGLP2dpRmTAdxopUUo7PfuFYPINVjcx
FZg9CSLUWOk2V+tydzrUleoW2+TVVM++PokfFPGfod1OGEB440QNtQaZIWe5dixcFroN/9aYRrYC
hT1sdFOR6QvtRoASRCHy/F9ASB+LYIPSp8OC/qr8SQcywiv2gL1tePQxdkMQ0KptzT+Z/SRsIwqZ
k67RMxN+eFB81e9dahxDU5mAnof2Uzsw34ys9EetqjYpSGBcOZEyBP03FAiZ/cGCfdbcDT1XSZZa
t6+FcFVzpJLk24VhrlFPffQhgfpaCN/nhBbJkHVWe40rQhESlYJ76m1197vsgWwwYLp/JbHgGRl6
57ArBsqL/P66cw4lpjaXqfmu/jXc3T5g7Gd9p1PrCsvNmu7W2NDA7s6Mb4d6uFNWpJwWBzW7Qup0
gY84HM0DzEqS5iecFKwxnCXHwOW2S88pFN7546YxnIQnjQdLZf8Olec0A+odn/nM3+legxR8+Pdt
/7MwdPrRYTdGDl6q2ImzemgkSyb/pX7Y8NSWnn7wYm4RJluI/oxkRnzVkHzBZZVDDuVm9WEd8YUO
u35gj09FRJcdH7a129wzfDPvUryXzl08NQNxMurNHiJsnCHggAKuIbbU3gbM7KzJXA1vrLyB6qU1
icTeYfAA2J9DpAfmcZ+ZY7TxGw/NhB5cXnZd8FsCO6z0LvRiHUW40l7Pv+G+MqhQsrLWy0ST0DfR
RYBQ3G9Pl/OpQiRbW828PryQ5mB17gQpFZCS7OhPXO5F/SRLYyeqnyXfMdKgCn7Z1kzrUALircpO
LxSOkfg0LWSB4i4mwAhD4UCN+Ebqhr9hR01ywm0YvnSbMcJhMrsCmmQt+VjjCCIdACYq8J1iKpVQ
CztXxlmxyun/P8CGNSwvCgDXI/JTO6fY3dgwfiuAy/qn7O2JYBNmhvODUX9wtge9DT5ETbtBGreO
rSLIqTlzgij21tQe56KWsiA20KUgYd4UFNrw0ethlL2IGxxkeJQHSrHIQeg/yRrgz747yDMXmcgs
930ngMdkk/IX49JPEGkZG2ArPy71QuPwqQqm7kl78s/ETIqsRCWAuR7teHtbXCTVrW4/28nKIG3k
hKDqCs9xN15Vil4bgKu9cQivVUMj1DgmOEhABph54C7hbqw4cHhlJU1YBy5TOhXU+4lKzfGwsjJN
yvjrTf7VcH1kUWrD1DxDtw2X+x78rddgYQMWA1QhAJ/jJXv9AnanABhOSEQEo1d6UTy7gHmUtiN8
w699XPUqauG7DQd0k2Kpcd/JR0Ue6U8/dgp7yaZH4Pat9MocT52wd2vFE2NWqpeH6dZH30EhZ+yE
iuWTb6RGqFbTYnwrr7rhcyZSgL0El1hgSR/O2uSd3OFuAIw44WLFXedUwEwUMFgPKbCkfO3Io1Mw
VO5si0SDqnv7iKlBlzAO4gkhF2/r4ONNdGWiYZFUbs8x9NqAjhb9UWGZFl7J4PQpggWMLteoHyyV
eFnKxiEnjcCgR+1k33cItOnh/5oYf7HAIKmXtWFua+AGz+IwGPrb3/k5v7CAarw8yWURl3pY/9/v
sUBsytbZq/6IXaGQp6ljRq1638H+FNv84jeinI81MqaSYQ1AR7T2TNvaVtKHv7FJMphU12GYcTys
nwzGA+4wr54r38p4f6/Wxat+TVhXgwvBl9nh+iJ5hbFBR/aIentc3T4rrSyud+0nusHbop4sd9p6
9nF/i3A0EMYCvSf/cQmd8av4QGBtytULUI2jPpPXrDzCt8JH6tEqfPmJdpp2wXCXkQGPtUg+rcTU
2cY/pItALPqIjQ8kELBh+EKIvy8OPPoau4y4ug1La7wtzaDoIqcMONgPtFakCmvcw4qiJF5tYpQf
nuT9ggpfop0DwpI3qnXwORk7kspFl2vDzs9cgJ/mfwnpXW803RBuExJujBqm/QYo4op/LQs+ywsK
VYP/thi2PWu8Xjech4abLAeI3i9Z7ls+UOm4rX8CBnrF1Jch3LVYIScJzYjl6sYWCwiJHtsR1Lit
zQ07z4d6cg2BVfVXTJv3gd0WmspGEjDLVMU2kjYf7uYxXb2SIFZlLtoVUc+Y3DGtENUEGss0kMX8
bh8RL6Zm4IvebU+oeYur/FAB9mPiJEsEqt/uZFjjE/jEpSiSVzCcgKUiDXSeXG9UpwBT/Epon96a
mk9+E7LZl5pJ4JZG+8F9bqkIdauc4AKT0fr6vWLvy9bCn1Ppz6gEU91FiJXhw3TKXbzSYlIfwyz2
yWnqLcVEaDW9TNw7tZ5QXNgMvGYCcXanacxPHMT4ASyj+mrX1xGFk38VlZRwvR4H/KE0uA+eh4uU
wB2ibzuMbhIsUHAy2PJ3DuGAayMeUwcCPLAW4NBG4ChQqoD/3wp135wM+Zb0gRnqpYh/Yv2HWr9t
r3ZUSyCNujzbzs0e6lNoN57oZBx2ybPTbFETY4DroGx5doVpF5SUeliUysODkH0w6XMnolJEdFmk
uY24iHDSLIsubLYgPVBk0/lHaNR7qYcnO/kM3SMqwnFoSnUXkowoxSYE0tdvRqKx3iPkQqRrP8BI
/oFhseQpYqifXL/+zRxJjU0Z/+JvPnNT5kCQxvqvXVFFoJieMEwBOCivKmIsiCOg1KX7+V+Mg2hg
G0xUFveg0JxGV/xDD8N23hI7XmNRZ2ZDoS21KR1DdeITLsgR20h7o0lgpNvnio13ISrVAQPe4oS9
Yv5NiDtN1nAhY6UkLujW2ZNnsFUGUwPOuNGUGNOHkBJD0xfGuXUBNjnuYtTLgz9dXTcTCxttvA9Y
ZbH9BzlHocSYjFZIn1Nuz5em2xVGYU7Y1+FC6bl9cJtTz4hu2cuZWGBYaLYnHob7utBeA0oAkNPp
1u2Bn7rsxki6HKyBmI2uN8FGzXQLysZ0gYHXZtYbyhbR6km654Kh4hQ3f0u/JBR4+1Fh9Cdpa4zJ
+O5uuft0YhiKlLolvNCs9RJ0XRTm9x6eqBuWYzrIwQtDlyVIqdgiFKpIGPA8T8BNpConQc45H64J
OK+6U0ZxJz6ggMCkZKIiqTkuQ6cQsn5BXedy
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

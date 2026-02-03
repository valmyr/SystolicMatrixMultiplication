// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 18:38:07 2026
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
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
0iwHrCdjPielDIOhVuGr1MTmGhwfvLR9is95
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

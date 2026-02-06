// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 20:21:18 2026
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
j7ShK3gViTJDkUbWQagVu91bKWRE1WFT3aqu
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

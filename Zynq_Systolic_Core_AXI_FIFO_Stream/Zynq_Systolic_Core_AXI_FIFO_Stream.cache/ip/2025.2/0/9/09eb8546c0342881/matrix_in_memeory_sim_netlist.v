// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Feb  3 17:44:55 2026
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
MShzvO3AwJ12t4wKIgSkMhw3wd0v7X7cPTBY
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

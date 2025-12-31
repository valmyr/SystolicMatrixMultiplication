// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 28 23:35:30 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.867232 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57856)
`pragma protect data_block
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
Yw==
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

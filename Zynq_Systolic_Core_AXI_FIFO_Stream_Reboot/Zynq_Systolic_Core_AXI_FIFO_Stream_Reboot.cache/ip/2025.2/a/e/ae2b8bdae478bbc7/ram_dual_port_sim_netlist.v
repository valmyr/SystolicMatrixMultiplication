// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Jan 27 21:59:03 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_dual_port,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.204579 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE = "ram_dual_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "31" *) 
  (* C_READ_DEPTH_B = "31" *) 
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
  (* C_WRITE_DEPTH_A = "31" *) 
  (* C_WRITE_DEPTH_B = "31" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52544)
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

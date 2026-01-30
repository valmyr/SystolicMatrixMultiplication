// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jan  5 02:46:18 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top ram_dual_port -prefix
//               ram_dual_port_ ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_dual_port,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ram_dual_port
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    rstb,
    enb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.327111 mW" *) 
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
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_dual_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  ram_dual_port_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
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
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39696)
`pragma protect data_block
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
6r06EBqimA3ibSOQQiBOkJk2ms33nBn9
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

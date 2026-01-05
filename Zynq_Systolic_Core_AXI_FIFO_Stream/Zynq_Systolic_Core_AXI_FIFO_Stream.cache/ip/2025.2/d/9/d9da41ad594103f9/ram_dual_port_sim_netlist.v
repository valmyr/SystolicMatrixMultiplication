// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jan  5 02:46:18 2026
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40000)
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

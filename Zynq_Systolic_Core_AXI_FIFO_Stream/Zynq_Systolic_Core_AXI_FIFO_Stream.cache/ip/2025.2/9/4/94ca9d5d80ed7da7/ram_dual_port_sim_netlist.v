// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Jan  7 13:33:13 2026
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
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
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
+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
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

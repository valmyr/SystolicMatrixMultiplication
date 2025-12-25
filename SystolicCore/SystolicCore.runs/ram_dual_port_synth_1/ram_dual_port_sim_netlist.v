// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Dec 24 23:48:11 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.966099 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_XDEVICEFAMILY = "artix7" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38208)
`pragma protect data_block
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
R+4BPrm0ZKfuOf6gwTxrR/RK
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

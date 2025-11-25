// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Nov 25 01:42:06 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dual_porte_ram_sim_netlist.v
// Design      : dual_porte_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dual_porte_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  (* C_INIT_FILE = "dual_porte_ram.mem" *) 
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
MtvreElto9GoEkLQOP198g8x
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

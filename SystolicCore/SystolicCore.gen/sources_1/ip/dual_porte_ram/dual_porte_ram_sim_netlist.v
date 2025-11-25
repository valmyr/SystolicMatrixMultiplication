// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Nov 25 10:34:37 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/SystolicCore/SystolicCore/SystolicCore.gen/sources_1/ip/dual_porte_ram/dual_porte_ram_sim_netlist.v
// Design      : dual_porte_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dual_porte_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dual_porte_ram
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
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
  wire [127:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.9322 mW" *) 
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
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dual_porte_ram_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63568)
`pragma protect data_block
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
0aNMY1B+ITCp7MvR/w==
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Nov 26 17:05:42 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/PROJETO_TCC/SystolicCore/SystolicCore/SystolicCore.gen/sources_1/ip/dual_porte_ram/dual_porte_ram_sim_netlist.v
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
m7/64riSRAYWqorcBg==
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

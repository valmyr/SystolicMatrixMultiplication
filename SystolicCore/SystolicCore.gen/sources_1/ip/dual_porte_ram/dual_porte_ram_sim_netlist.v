// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Nov 25 01:42:06 2025
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
  dual_porte_ram_blk_mem_gen_v8_4_12 U0
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
Uk+C5ElwikK2S/6TNFYIklbT
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Dec 24 23:48:11 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/SystolicCore/SystolicCore/SystolicCore.gen/sources_1/ip/ram_dual_port/ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38192)
`pragma protect data_block
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
haA=
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

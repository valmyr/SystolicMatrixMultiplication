// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Dec 30 16:25:44 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/TESTE_FINAL/Ethernet_ps/Ethernet_ps.gen/sources_1/ip/ram_dual_port/ram_dual_port_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39968)
`pragma protect data_block
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
Zq3Ic/V6dhGb4I0=
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

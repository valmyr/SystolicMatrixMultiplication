// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jan  5 02:46:18 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream/Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/ip/ram_dual_port/ram_dual_port_sim_netlist.v
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
uxTfSoDJp9mFHTY=
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

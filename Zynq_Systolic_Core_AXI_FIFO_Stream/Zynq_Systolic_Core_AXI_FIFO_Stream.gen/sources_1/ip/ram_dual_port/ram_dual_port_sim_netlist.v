// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Jan  7 13:33:13 2026
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
3QUz78qKWzwvv4tlRbv3cpVRgPktA55EjrZAFJXA7ixsRDpHxUf+llSUQBR/jlQESQF5ih7y0sOp
4BHc7HGoetshb7dAyzjUJmi9baswYV6ruVROSPxrIKnvS1auyIa0szTXEnc77eHR247C5AlLWkGJ
Cmd0sDbn0Lr93gMIfOkZPFgUrJ9vsP+DY9CB0xVGdb0q3Xk+2k6v2vb5T3LMIAW6boWUPu5WUnzj
73N3Sr2TcjiVh+FYZ4ETOBRlUBGw/ep5J7ztAjPm3aGTELgsYxecfk3PhZlw+F8nm5IKy9rMZ4c9
CQGW08FeZeeBUWuOGN0YJwc+LWE7R4Hj28AwQabjysmgVcbdLE53k6/tg3XBcXZYFInJ8oTTMztV
YgI/2dSuVsQfwopLJFJW+ha8K63cYI5xkvgrhnc2rYw6018KhEwULgEYO/CJrC0hSsU7aV2R2ozI
D0wj4LgjxIqbc9vYrRNkPUtXhFTT+PDqImbPmhIBI6C/RC+kfnVEFwN0Kg4UYsAirSJmF27tHW8n
Lw+oSyTrDRqfNVntpOTiWZIZ0TNW5EcEctDx5EJijQIYbPRhUAXjzZrzrb/SyF5+cx3C5mdnVJW/
+fABQE+DkjJpYkLPgP4vNEpFBcXvwDZpxXSSB+HH4XiOYu8WzPO23Ad6i0paksWGZWlnq32bSSlX
CHi0Jpuy3+LPpS6Zzfyt0m2ghH15ucN/UHChdogw+mgJmeaDEvZf7LFqBZobpp6uV0V9O7KhH4hx
xN2DKvhKwcfBrcSUloaUWzuYyjdInV55eY/dRu5KlUZWDQJP8HcjdeRFhpFWXpdmglNOJvI2i6mW
tNsE5Tqgd41b2B1izPg2awOEs0Tg1hBIrH+N42aX38UsvZrBEsVDLHMbVmLFduD3Oxt/4MVdUAAP
TlmRTTI6kxjv4bIjvdWC7I0J12H60+qabUi9IOnab6ugfE0LYzbCjr3WfcoPJGyYmbikoJK5tJEo
6smzWI5q6x629+7Rn18P7ACCfae+S2qfX9VKWU1+7eDq7vNxiHSqtXpZLXOtmnCx8z9SJw89YOMD
Id9SQXoyip9r/x8YJ7sRLHrx3MH9y/S6m+IlRlO0bvfBNB8WYHG5jp3WxbKdCMDWfd9X6xuUqpEI
MTI8P4vO/YtCLe+uDnPHmb7sfuEVsqdxqvBS+yy9mYOrKfnA+jFBi8jP9qX17ccvxt55saV7V3Ni
boepEBr/FPSSBR1KY3cTkFqYTwwCSrzI4rD35yDKk3vfSeiWTBdzYLslRRpTcAlbZlUvreT02Ob+
I/M7qicRfCBOzUbkxfQ1eY9bXg35WMFaSHxTQbW5H4qWbMKJDz1xr5Bwq0hDdicRfSqYfN7v7ohV
Ws7HfWHHEyvxwDDGhIKsgWm+LLjGE3UGYA6VQAgkhuCLrODi1SCKo4ZV9pVXgVN1UzMynFrOWZVp
7QdH5ytjocd4/t96v+AUwLL1ex1A7VAKud7OtrxgY0Nqi6fyNjS90MTXADXaDXbirJ+x08r0ipu+
HuT30Xpc1aNmhQw/QpESBzpHGWhgsbVi+gLT47/JgQxil0em1Sc1NRdlNu2aRGvOCv1cfDsVtaqs
4ErtksUvn68tmcYnFSY87xLA3soUrvJqNn9/2aIQnTDfAuQDJ2kReij5It7heGlh84vEJDTcuk1h
oh+26gqCNbGn2at9tRG4w0Z8WIASvoMjd34kJ3aj6hDH0EyN/FFHdVDbM2Sg5bvNWJZ7nUWOKIpv
hgHuEJKuOzdCsQpSFMxn5Lj49Ganz07NSCzqRzUI9rS/YXPC0Qavyx2yK+oDaGDyVu9QUftIoSss
G8tvZkfPEgryh6wksImb53g3tuo1Rcwpfu/NBZPgkKW9Ms3nJgAdvMZNoNJxKuwEKiO4wvsG9t/T
DYlkerBN7TXRElqngnYgP9IhDWRMYURo75Q8gTLeoKPql8ztLUicOAHDBNXtEGukFAyK/B+7dLM3
ItK6EtFwQDysqnn5W5NhNzyxiyGzXIkGXQ/WAUJ9NqE9dcGCaa4IKvkEA4+d4OjdmdIRXBp2Ss/y
Vsl28cDWeJWF14svOd8zVhlsZopzEvVZTSH6Z/s3pp969amugSXr4lLzTnW4hLVSdE1BnhIsiVaJ
IcUnI/ip5ZSqMMcvvK3ISU0qX1X9ZcX6zoQC2euWh7TWO2XXgykHLjQOcRf6WI/dCnjEvLuRvkQu
yFoQeYN6bLbJcTV+3XKArTBBEkRZxEKZmlMx2xuFcCAqVdgmywjNfs/AsUJDxkOZ+i4tyNK0LQ5V
QXnS/RlHyHk/VZfB4ewT9TYSP8V0PduLh8C+LmyNX3rGE/oLjZsq6yPV7l9+sJNqwp2+9BBRMiay
05P3nm3CHr0NtL0a9zgH2lW+vY1w+9UPhutSWseB8nMXvzhG8U/KDp/aWxPlxgYVXJA+hJbUO6JV
+nUmO87qHda46zjIWm4ptodhfYqqJyIxLeG5QiS8sIn+udHMg1RJGDb7Uj6gDKGVP044K9sto0KO
ukZFn171dMn3fRFvNpX5o3+bSBGLsNCHiFrBYCPrtqk5BRYyqR81GqTM/aB+0VEF7skM/aQiK+UJ
QtQ8RZKlHPiEGeJu+UBoJi3eJlDZAoCVobtf2dChidSdFRQCa6q+yhyaSucnY0mnEpMbjZ9S1KKK
H0LUMlMS+rH84I7Z/oj0M9pqyhRGCp10yTEvJNga8zRHfdR9bZkIBnoUky1VhJ1vd3ocax23qHJI
MJHefPkvRH1MyjlIXaKrrknKDb1i0x6YSnZu1oPCMqcCI3g9QbxvuO/INrfZJdBA0zNUpkU5cfHU
VYCGU8VVbcUQdG/BEfmDbyplsKkwlWqH1y8GV/TzC/LbRHdKbxqjcBU6gGyF2cyteyW/goPljwr8
0x/ALjvQ0CIgEW5x/qwvzI1mxxHa9AeMzk8HqVWgiRvKNTy9GWileVkVSWHWDYVjBgbZlU6BeTV3
6kIdMamFT1BU8OcsTDR4Kpsi/f5l63q4NQ9DaMt5PJJt8U89sKrb/Lp8AJHkTkfyNB1XnrUEyEt/
Dv3sruRGmilOOwk2oTta0l0eYRcCeqklPhTAkX1Iv6iBUkPvfq8a34Oujcb0EggZgcTaCHwVR9Fd
Wtqtlyo4dncVYDsk7g4zc+xTlUOv20sX8pgnBClX0NJ9f51JMrw3obsBtHVNHhNZFM+Eg/nHXFB8
rOUp3muHynipoNCqIcXjtTQ699rhvzc1ti6y77VJUMuj/i/FLA4IE4NfoZUWPYw9NUTPddAUdGdk
oo3Tlz+t8iz9L4Uyosgxk99KrnxbmsRUr8O5vzdKaw+IGN2W0W/LjbY2afRHFc2Su2X9qSlXoI2y
HYDegvCG20SvR1Kfc2ESa80oUaqaaPbaAYF64FjVgmhQbt7MOnrMc2qGuIn8nq6+GoDV5OQaMpBn
GWLxrvfCPaYvdCsuQdhW9O933emLMTd+racekkGd1w0OT1JtqO5v1x58/8RKwhsm+dab8HmLeOXx
6+QfVFhTBx6J6gdo4RNhOHkVlJ+M5vaaJNeE/HBB77b6y+AZ7Fwjg8pbfxzBhh6tq5lJycGUlsll
DKIXlVVn0lYzi+Xyn/jlrQACwKvJyDRbEzvlWkMrjfxMlcAKoiLAlT1ujTpEU2BmZVnyqISa96zr
A0j9HdZ5roHLi9ttRaTe7rguxv0/NRKndyoyYCTvLJ3ORn/De3XSPmBHi/9LHdBA9SfwviVyK14X
4xD+COwmg6gLldZWSbAW4KQr0Q/B6G2EHeABb+pA2N440zT4of7InveB8KyrkywGOLF5zsPGfE32
7Yg2mubSFLJhemHE6lLyfuLynDkxxdlGYThOoM1qGz5tVf2ZzttEUhqhCoblZk3oNHlLQbH7Yrxl
9gpsLpm6XGWJ2+pqdzW2OOy7LDo23hHXj6j45zeipxBuSSlxO/47kw2JhjhDEVYwRyaT57jKeav9
4aqiH3pnP5GImdeDmb/v79aFDkusQ+QwwbEpm/geYvAWV7Wh5zlY43UfU2dYG2xu1iAkG/cTrmHx
urctrwEvlUj1bGlmORXo1ePgo7yngoo9UnHrGkM1ksPQfro1PSTLate+Xdrq1yVhG/z/gLUNfGzR
d5/lBclqOdGQYvNq3zBAzhM8Tcxvq98PSTZ6b6T2XkcAmaJo6WG3XmIXBcyB1vlkK70qhpL/5LTD
5O7j5NeHiyB/ioHXzEv7bh5cOvb9x7UAKb82kenQb4ZULCL7oD7IxSADwz7CwdTDGjpnXdtNE5Eg
MU0nUCgLnyejBUOat+axiHAz9fPsO8vPMPvLccx0+Y7b980TeNqxBo2wxapiYwI++IxRyjyyKiE4
xcbsVKDaFET9T8hMhQ1wDqTiCEko3zoSPKUfhyuN9Dp62cawqoM9SJPn29YbhFgz51QasXp/hOIs
GbnRop2QREjBq4oi1os5lZar+SCyunovNmY4JgePjBTMZKjrouanHX/sX1N/podA4GO090GnnQub
vDH7CcMECaVM4T4Ug1r+y0kldB709lY/USXoFSSZrduMc4t4TQGRyvoOFHYC5YGcwHAb/r7sWofK
QW6ay4u6kqUZjExbAHO09/IZ7qHGuKcoEYribOiKRGq7XsQj6/xL1Fmr5wvQexhYhO4OIiZkWvFD
OLpFeywC03VYANPY/Dp6sqIylGVF9CtbACNuVLCm8zAaWJJTJK486706dMCylhl+Yvjm805vBPHb
5nttJbTN+CMB3vO3IMPCXZDXnhCSY/COH6Zo3HUr6gSeQ0665eQSC2+V3Vvu7MAmipav59fajWna
gktIHp7KTRuhcDjH9covI7hJqH+xTVsV1CeQj/Kz+v/RcU55bwlw5PcgJvMvSMGjajgHFKRvliIb
6/NfEI0hYhpH+nEV+/Rd6NMVufJLEsWLvhTUrVHAcAJ5WMCuaeC2iWWcE7nhE9YY0ZJWDHx+392E
JK0xM7AYlXJcsEf3TXyu5IJE8rsy/Ntlbznaw99UY6Ik5ZuZwutZ8AnobBQ9bu3Zs7gmwjk3B8wQ
zu+PWx5AY85Mz9iEmQG+dQln15XEr16VXIOjIYWTr2eFJJ4ztvaLU1HSOCOfjeNDe9SRPjrXfA3n
Iaz/WwcBHkPSx2exlfuwWV1j5nH4VNE9eO89pF5EuF7zhQEVWoFRJPDrvssbJzYu/lr+qUzl48uv
L+7G2oUcSTGO74K7rsvJimnq4lqLY8zgW9UWgUF4v0QIQXVITFEYQ7FYuyXJGCxUnE1iqMAJBbO1
dixEn65pfI0A9LxnyKtIIAsMa4paaG2ZjBogff6Cn7WUgo1ZdslMv2U1GY5I4EYO6duT1sorvQUA
PBACOt/QwUhopAqd/mYC9dJnp9JKKJCtQCTz5UEHeaqiBEvJZlD0S9QHt8z3jyRAIT+K2QJEJY1S
6SNI8K9oaXLwnjG92x25rDoBNokhHUiXFyPm5fhkfJNoilKeuWoj7mzYDqlrLF6k2qwUU7BPi8i6
7uJYZzacdcaK7Xz5XxA3v+sSDSxv0hivrZu/73pL6YP5vDTeF49e/S+Cf/iZOs0gnbrXiO7NAe2v
y0C3F8Lnmcz6uAkXIrVdEdU1gRMIPsC7Fl2FuZxuAHvnLR4hkphH0P0GoA1NMhb/F/2IeIBEHPdy
I9s/i+3I6gq96i45WY3+u+2jwlXU3JFHWzJnVY8J/vuTARmGEir1aFUgWXZwhUOXq0DM0gzUZqmw
wgdCuJBXNDoGFSzMpc8WbgJKaWkBzhysAPWB7g8nBAFFi8FGzqa6FjcgOMp1UysPC56htZcNhldZ
QR10pSXXGlRiDHD+EURpsvUc5NQaJUWctxSytJ1M2YumJBcJ0baQ5p8c7vJIRIOvpTsK3S/tv9Wv
HaSrcZxEtUiKvyxVMksM4HrKyALT8lAROQQ10eJ6v4RtwdZ5kBildqf6ob8lKC2RpuZmRagboiBn
xkKhHWWv88l5a3JZ0f5pC8o8MeYnygJHqiHd3WTrvCXsIDKE+7NsTMKfpEzRna1nGaWnt29y/FtC
NwGtdxduOgrYbsZYPr2uQqFtiaSKdxny3M13LDrcA20DNHXGbB0NlTuXO31FRqzZGz1RDbXV6Iys
21Jwaucx6hrcikKLWc9J4mzIlDTynuaB4iDUbXupwXeftG/LsaY6guxHQR0cdI8soDVP0rkGrBQ0
FOv9sJJgHFPVspzMI7fBFxfX9YnI8DlcedQll1vA5vhuYJIv4ipmRmydrAH5KojOgXunFhYJOpM+
hL6FAMTc6NPZs7+luNBLSuTkgyxlNrXf/POF+SjLrK6zoDVvTqQztcyUvCrpA26nhDv7N1xZ2exK
8kT/llAmpVNsh83c+JsZUmyiFxwLUEf2xUaqwp6gxg6ns9RmmYXouVF9s+x8kz51eSD0SJbDt3Z4
hhhfyE12BVeb277qk7NZKNfzGsJjbmmgglAyp15Zq8GSqh6ab7a2Y8JyyJm4/KyJLOn+z44x0sXY
S4CgdH0KM3mKe6RJGvgRBRnM4wJ9fwS/5zP9YReDdzVhTkew6shG9N6Yb/0uvapLQ/QQYLkfYxcO
+lnHY8H5vfRtRJxDZenkbF8H+iGYVzpY7PyxYKLzhB8fmVuxwRrG+Kbso8B/KA5P/ZVJoyDEd9pK
VT6PNQLGAzxMyE3e0qn0RbyAunSsdIBdnQVCxwc8PrSuE0HPZxF8m/thJGvnc2YwVg5sATZ27aRS
3dVozxx2APAjtY5RtmSnDjGT9DJmm4KDUHW3HVkoWHHXxsX6nptdGLMoW9+5WJ++TRDO/RPHd3Xc
d0QsOhEAQanTVii6jDCBZ6FFhd2L9rzVSvKrXyf12x3UXMTxJsQFvj++gCBKGxyszOA0p4rE3ZrZ
5WAjQvbaAeaOvr9oMZZQnjrfZxdvveb8PyBTjHcYr5CZxhATtKliGyaKqqx5Kjyp4IDMaLtZEGCq
TafhluJE9V3DAoEeswqlZbVt1oR1wENSIp+zBi3wJ7ZMx0VSDvXJVS1rXbWPb7hG/8zb493STsZC
FOr60Bu4JbdEjp0IBPHIEBIwpfzgChy4/23APAW66vi86fFjhcD55+HO1wMACcVqqnYMy+WH0euV
Nm4ZsKFo8QboeMLBqk161+dqg95Yiyv6HrWg6wO2V2F4tfQnPcNkMrywswga7LFdbL5RHwGF7GK/
u30kELMbBKm1jfcgYmE7aM2U8Ip5IG8EB7O9cFypgggk1FM/1fGe0BDv7GI2h0BvRplCPj+HdI4z
/I3wQvXev/Ttafc/X9kNEJFx1AiBfwyXJX22j7ZD/19gdRaNSp9royV/6zBEePZ3MrNobP843tHi
70fAzchaKgEUJUoBoeQ8tS76oTyfD/mt8cL454uB+AO0xEZsRh8b30HF1dUG43xpg3tl8ZFuka47
mCPzwqrCdEWIIfGtu2rZWt7zyBzqxmJZCYiRIeJSZUsW37Q4Obn9xSeoTDiSnvOAhcIarYnAHVDc
uRj+/Y478gnQqaONZ5Nw4MwINiYiGSH+BvLZseyP3d8isV3lzFIXU2T+Q4ZPT3cjOWM3u/uEv5KX
VqEiVppb6kkxZDDCSL3VxuYyGOj7nTssb3FdMlmu3ZqZK0bWbv12R8S9/K6OuVFaWI82E8k6n7yz
SrJ+U7DbAUVfiUnGZoJU3cvjKshp3SvFXSsNdgQs0XDKzTXia/crIMjvxeTteVWvhH1JvHMXA6Gw
qhl3rsrV4T7OxJtibR4u8zaczHeG+NO8Vk8Mr+/iiWLt1IEiSZSnpfrwR21qkK4emsuRdTR99Tg7
z7n4JDDHzJncfpO6CG5sp2rFjoM4kGhIWDwcom3uXyubtNVWecMRm2xSPiw+sBLCbqrjsn6+QKZH
5U7sXUXXeG/AWWZ+jIRzLdwuXJV3ue8VRep1p147tlmjugCFkdhsTk42tKaiwlvuDdmU1eBtmPwp
LtcCGSF5sIDE7eN8B8IiB8dx3GB6beiFMQdRv7LNAF5VD1LgkyCY3se7dCxNEnfHnk0EDihQQDhN
laQqDI6dREnHKPbWGfsyjbXfioW7UMUPtEUfEyc1rUk2sek0CIuCVvWM8a3XQ+2EiVweBLTM59+S
yKSsUcb3+Pq4SdvBuppVN+OGtmAPg0q78sKhwy65+Clt3yNRyx0XgIisMNlvTrSpfPrRrhK+trIg
BK0UUOdzI6FGCEhOnp/Iuvj24XzMZ46lVfyoKFx44p+0R8RoMiEq+XqPDmWlr34Su+qqw4eEMzrW
XIshHe3jsYSz4Plu4Qs3xWvO8xmTwbH7JbFKVXek4+qBz6jqJyLjflBGPUOHxM5VAXcU6z34qJX1
Kq5hSfDmWgaFnFHBPzpAk5aguGiBdw1DxnMQ6YJJiyJG2TeuMgUf7JCpt2JeATFDTaabggprH/d0
B4PvLjsnFOeATDlI/Gl/1ebQnXpbUjWToBCPxkjbIFFL3MftuG+tQAV7xuJAQnxASidNakocNWiG
KdRzxbXDASOsZKq+3WaLNkKHBLCSY5eISS5URnKQ7rJ098qgH1pIP9sbKu1vlKFzb1BhycNy1DP3
/tYPrkLVyduEqzS9OdQX12/rdTwHdWzlKUIhRvDVwg1mdeo0tbMGV1h4qu30lQpt6bEOYDZRo+91
FjVEmIn0bzGAukGZGvUEBs1EOA9KXHU6e3izEQqmiHoIVMIk5tCuCevGrFTEcbyjtk0HTUctO0fE
Vov0LHCSKMmrO3SzIHKQ2lX6hCxzdK1j+Zaaj45700zCc0Hpv2MQGG5fS4o/ixG0vkPDhHrO7UV/
K0qdsw2CNNXlIkzB9sX/N1gbywxkVbH0dsMCLx+VuSR17vCDN5tjJVGJ7of0CvB0oBtH0+Swcdrn
y0oAGY2PKpImr33duTQWZxrLPlZuEYiJezZqg1posxzjDlwqn+S0RSsY5papBU7eAK7Se3/sUGz5
yUblAa+WBOqO3Hj1Po/WKOK8otxgavurmYiwJOfnfn+4zypILIKSH495A5A8SJR+5hmX1kL2i1iB
rynylAeMXk/5MwAE9GIjJGlG/q0CwFUdARHF2CxyoVVAvTMYXfefxUKMl09xNm7daaXaiQlsOZmS
pM3idHJMYCrCS4QfP8Gv+3/JlCkeFcSrQDJ1dZSe5SWoDuXCXOjU0SpdPXxJzRABQ+d1bR6lpaHg
KnkDItUl99AQ4sB/6UWCRV1kFeRWdtcNTtE7C4UXAIRp3nfK+ssokUZltdXZwwFa4Zkv4mice06Z
zsb4pJpEGipKguM8i1hc3T6CbBLfsx1hhxrocM5k5XR9brJQ5yS6b6ALf6k2IUl0XTdZHBFEyQVs
fmcw8rW0XxLzFFnAd182IHvA7aB4Tr/Qsdd4cjVizhHBrv0WQ098hnSGhJJ3KpsmYjvCFLzQC1ip
jHbHHaQY+7M/uPjitDQGjMEHfkdvepm9MsH2PUpGGRjcHl0b0aosPOV6JA87tzNaE6raahmF/2Mk
C/9rzJSH/EPoztRGrShCJcvOV4RMCBF0ggUIVCGZr+xyD55UIcABQCp+xxkLhMyEbpj7vtccBgkX
Mjnl2bf5RR3HJronPlKadSC/vOvs66emKZ0U5YikhsrPjJQub5Yi97lx5Qgpp6tpNiLxB2jaDm5U
S0UhQMfRkg+SpiAFGSn0kF9JKQ6EDIyRIaAbrhg9DbXQd2kvc41o59Y2p7jXlX73A007sJX7Dz6f
LK/HAbU83F/U1UoIwI+MHkp+2LjsB4RRwRnFnkc9VCl3Jw794AtjpN+PLC9pRD5AWOK5fdjUkjj8
MYBFwTIWJtzlvOS3MXhA1Z9IObYAGu3zsvbRHIiEgbme1Ajm+sKtiRLlB3Jc6TpTdMgDnXbPOW5E
MWwRG4m2QQz9kSGK0Sv6k8XMCO+iqAFf+odSHU54lagFM3zItxAhNzOAMIqbuDa+AlDOvwdhqI4y
UhPFLd3taJjPW/3Rt9H8tf049Bf6ZQqhbjGSbbjpxs/m8qHv8t5axeMneEKKeDiawgdKHCV0PckL
ZotWhRlqlLXu/jvF4uosskUStP4G5PySPjRmb8IfeYCYKTznQguPu69rXhbBxPtFhFAC+WlrcXpa
wG8RMhWF8SIoE/cJifdC81XEgNVoISud+kr7n5kP6qyMULTuREOVQBNitCZeglBmFtAgjKg7vqJW
drD080YbSNlOlkhe3duRzi5KhhdywM8fdueap8Ywqu3V7utl8SZbzAw6xRxtoIvXlcV9zJV04JKV
IvkaCmabcxa1YsdNMLw3+NOafDnX7DCxi0wYxT+ybxKC+3LOdcx/Kp+DQ9R+G9LounbCq1ELzNbv
8UF8j6f4jzH+wuew848l04XU0uRLI6t3yTd2iCd0KmikLTvmZyMnZDEcPP8MS3UOsSSnBu09wCfm
/TZrdaQlquxlmcfhy74lMwfWBodoZCYD5UwRJkD44jf3C414emOkVxV/LMzFsIT0bPWryfoucV25
2pXfzRdWOxok6t8DsyLCr6QDg9t4ROdKx5zOFc1tV67mLfCEOGK0eaPxgvKfR+DPd5LbylSRbkRh
9GPX5O0m10r+2wxkji7mJyKS+iSTbo6gUKDi83XD0pf12RmTbi854zrrXv1A56JYXMVKYCyO6ZK0
4/4d4F0nSBlNhtUDnXbaUjwxUMwoHxfIu8TkzV2tLAuksD9q72bBDrTz37O6gnRRx9Y8orw5z3Yz
RjaAulg5CpIK1aZBUpLqbMqX5scbbQxS+cG4BqIStaiZI5s21a5o1blgV9rAntO7Jcyw1nfnnZoA
6fEZVYzWGJx0Rc1rhP5T9oJ2WvSA3cK+cJ5RZBnMCJt/2Od8z/vQjmO6v0LE6b8yS845M4ajGSKb
s0ISKhMwqIKWZelyylazzCjjCczmidWfcz1iQIn8cJhdM2dTZXfojCP+C6JaO5tt6C+icccwpoQH
jlpOjgqRp/mMmvMOce5yXBi3wDVijgse9DxzlkHjhZQswdGl/ByWq7ZQ0ICjY66fEBhbrQbDnRmh
q8vmzyZRtNZIKPFZWIH+ud/mPQAltMdqiUjO5TPOSoT9c6FX8vMNTfsvf4a+Yrb8q4r/X3Yhi6/S
OqS+Qws1zXbJhK1SVrxkeHEqw7i67ORnKykAUhj5D3oWO8ztSZgiiCVqt5qVC+Q2V0vsOKS7kTgC
M120sTLKUrdraynykfq53qv9nlYkk7WZck1PRWNtI85fGrlLPmG1c2MoWDZsWbRhVOCZZvE71mWC
1Juu4JaSaDnbd0rzhdSewUUNV8wlJOMopdr2+uCEHOI2NwCpKu56jtCmvpjww2jVFNBAy3uBL8pZ
Lm3RYG4r9hbou3A/kZhclmzLax2N7FSc66DArJ81JNSc4wlnuGHPUQ/2OdQGvpxn8H9bdhSLA7Rc
wBxDw7VIt5Mf47MdYcwX4AVaZst5YVxaNBrzWF260bOI3iiQWfmawNoD8yYSUetgAAnGNo9usk51
jq1bWYLqPVrQNlb4FZc9F8TECW05QCJDHYSiruoRpDaf5Xujj9q3h+/T8wK+RSgjNLrqm20x/JAU
r3bjen62J5ibGkSa3vkQwfKUKLC1q6ExfSLq25h164OeiP3I/ZQKyuaWBg3ssfgpD5MMyGXe31LN
8knU+yqA0Vm7qq64ltrtP+2tXWBx2MCXzJ78v4vhHGMIdG8hBtpfPCzQehl/kEQJ9AF//5vnP7Ju
UDDgr0XvS3ow6eo699CXjFz9b6LpHTrAiNlPVFBIQARmcw4Qpc2MKKi0sLCJQZZsXgsmFrJG2KtM
RqALKfySPGFvZtt7ztDlO5VHKBL08jkvMAWPoGYJhXHJyNjv9IaZxdgvfSH3DONqIW0sjmGaW8+d
v4jxI9IWTW/xM5TDBc8uDaR4y4u3+vIKVWq90jJfHoBuzy4BWfDO4ISnpAgi7XyoVIl2ITGjwzPm
NV0ae1EhV0QGpKpAv92Y8AtLIi74pMAxclc91Ch1SBz+GKlcwhCXkKZrmFG6hWPtq9pTjqDJE48/
KNgjUfiNmG+qT44TddlY8SO4iYrR0K+hLT4+L+SAzaRTuDBDl1wYl8FLuf3mQ++6d9JH1H8FaTH+
9kPBz1P9kTLyGLXVkryF+fk8lVgPHvslowDhH3si8/B8PvCsrJSloqEXK0FrjR9w50ZbA6W9/fYn
XsgqxWkEvtC8O4WAMmrRXxkHJIFQjqEckuCJ6DbmyfphKHuBiCT0cI46ay0BgqzRSgNeZy6wTol9
ZIQcKYni/wURQDgdplmTS5Pqeg9k7l68J2eIgrT6+skb3g4Q0r99ikoCYd7AVBMdCkRDqoXT2wdb
fvDRHJNrHolin4609UzMsDARpxh9JHCRbXiTw/45qUbAO1KND6qu6+7CJ4aCR1cBSOqv2LeTkV8T
ZM2FbDYsasubC6bejcgvagLDXMZ9rHIi9eKQGBbiGPyfzR8DFIyNNFgtAJEjZXBjUosTGSZhe4JT
csq6RsavsxrXjRirLWOPHoRxQ3JkRt7Vt+d3S4Wcum4PwR2CoV0HATRFytLmD84OkY8A1zcV3ttH
v8/r8qG0NdG7Bc8h6y43v5LWYoQLm8hU5qYhBP75ZzWW3iND5hdti0cPw28/YCmrIZA2PBd2df95
rvPKsJxtOI330iES/4beNiZH8VbNaIqBmKMd4TMVH4enF5IbQKfoVqQzdDS0mcLHNG7E6KlPXOEM
gRMviznnFeJezArkNxuW16K6Rqu4/VRA9cRaVi5KA8UK8qWQ+qITyyveD3gLjI48B8uWwbC3Ngsh
gcN3aqIr2SW3MqBoK+pvEPDM35DPK+Icn99SQKkjtcll8RGXdGcyzQz0LrQmOEiWNZoUEUYGC1Jz
NxHjXCt8GCSP1tQemdHrEp4cTLLt6au3EASpjA+ilgsu5uOBVvb+d2TBv9ooYV93bdi6xX6vDr02
0JACBivTEd6YH+h6TlGM3WP80Jhe3WYB5roH7PqCuN6vUYwTmyzJusTrFVgMGq5FPTn/ts9irJtn
3OLLQQ/RjfgPHniLLqKr1c67F5DzQODamluNX/k45MeOaD/6GzvYf06CnA8WV9bcY4aBpO6Wk0pK
zKHaGM1utxMP10Z+TyOp0Y0mzMSXTycsfR+/KEN93NckEJKhfiA5B5FOn0hJG6LbUR/KspjYPH9T
6+iNWckeRRV9/KkG7z/0AiRHAhMhps5inDL9A62EBa72xgFpHqZio/cvzBWdBb8/SLFzsIQy56XS
F83+7DwnFn5bASjRCxKxJmRbl1WWm1rBX6gRHDvV8HSZidkJyqWE7NU0Jmvf2X7W/rUdLMIRABNy
qYEgPrF7wsFLABXgdlWDi1+Nwgow7e+Gew8fSouzqVrCXT+FKTZfbXZbCZsG3omiiUjK72Nnc+zl
k2eMvxM3Pxd6mqR8I/q/pgMcAr8695pJbivBc1u2JNIBmFC9jL8LWXKkZv7hzlzrgFwMGUUb+deE
ijsYABpgWuuz/VoLvuXvpuLI6EZXc2rTjsjdNTPXJTnp+tjBSMqGsi2VdYxOoYzB54EmLb+NbWMd
JuONjlbDx//HsTtZ1+dw9V7uk1fElFMkIhySOLm4H27HqrtZZzlK3eRZpz5Jj7TAaXmK5cDm++sB
Tt80dB/8jADMjmmK5QJrmr/nTIZwb3RpuE75uFYbPyZRApf3oU0Eaa0qv5bdVE9vxLVFWnjOv6DZ
E/cXnhxrFH5ZNJ2oJqtWqeX7ZE6TPFK1tCglBKNHHc83I9SeOcuHbO7h1o2uFvvmdkPpSKhAkbf/
vRnYGLRFxIk3H7gaOYr0BymdDvXfSNuaSVDfAN/4M1KMxqiDAH351cH1JiLW642dsYd0oQfrsl0i
nz7P80L+nKGGfQ3J9H7b+IcUysut7ipag04cFt+Hpz36aBbPYIw+qqwdPRALqdy51uOovdJdvrre
6Fwy44+jgG2yUPKZjwlKFyuEYKQj+0ZGRK7JX1Nvw4O1ghjUV6//baEfFv66XeMUYnclJI2h/WCv
zEtecrT5YJuUAlw41SafgUlYlxNGbClTosDWF120YU5HUiQ5mji8YKAqZrjPY7nUoVGCOzVZ6dIH
vZqZAZIroAbNnQZK5OplNU3xbrTcTs5RKye52TUtuc2YUxLOQ2qqM40jjMZvjS9skFCKB/R/WaFY
jaPNEpp+5VBSFJYLecRG63R9TdlHddW1b0L5k9SGt7JvV2DAAUvJjtIgXpHaBiCMmnLn3Q0RGzHU
TdB/5VIvZLHj0TpLhbWiSofMeH6XNVUnmiQki275McJTJOY/on/TlRf5iujTY9U3qV8RXSVGA0Mi
Lckkjh/qUSD6jHobu/JF0pHmbWhtHu/ln6dR9FNceMU4/UVgVerPtzwqzc4Qh0myHeYnxOjLS45I
/j2/UEQ40dSivgYSsLK2zJsHZ/PhvZ7NTGQVE0WL5X1RM9qfeUfvEfX+hjfbBYwpZBFRAcrcYgWM
zyjSCZc8S7v54HXC+Qey1iWBJTddMkZIxejMwolSWayTGwKWVK4n00mOdfAkyWKLkuJaUUP0V7zb
TpCNc1kq9ZGvAIFRBeXhyvnGeB8yhJrA8mqnjzdgccShcmXcrfTSTEwDpSsNLyCFpj2ZugTQ8jJ3
tGw+5lbdFX8j33aOaEYlqRR/e1YfV6HVBsUzf0ZgWfAmxjQcEc872NR9ovS50fb7VQq1F9FUetB6
/xRr2otxT2zJWTVSNzxOuz7nr2V+nLlK9ZTJJgHvFVdr1GsxJH9/yvhaxp+iNhWE37VSGzOg1wXG
evIChz5SLCQdIt1KsyJOEiIKFa1PWC6AOe6VBKP7evHamr3zVUINXQFuSSZh34xZXqgGuYCWb7wv
l5gT5Gr4hoGlrmsX5SDKXEHIQ008lXzglHO6OEkmOvcgJY1EM+yJ6NnJsnOnlpuHgKUfKNXXol/F
VOXHozNWfwmnzya1vbw58lN1Nsl9jj0Wy1R6N0DqVYgU0N82ilkVQgmLiKerrbpipBzcluZ8TaGG
TEGzuMaSwi9WDlpsnOUN8G8itPbSNk9hCsVJXHJesXYvjLFujs9XEDlMvhnIxbg5LXGQ7YljBS6u
QKWh/bLZZaEo/LOTLoUDmFRtNaIcP2T3VzM5Okgjp2uFs3BP6IyQTgEAxgqU+ZC1phmmuYNwnuDJ
LBaXPDuKveCpRQmfb7uUSDzMbPFqbwFbekmZHM8ZfJxF+IV5DwW922FPySWwby/bdUwkr+KXCmWl
j3om7OFwlYrI4cg7hY5H+LtvkMgOCuuTTQ2uujP1410/K4a6NGrl2RxFAYhzniKZGw5Jcfwudq+m
kSz6t/OdG0muG0e5uf+HLgKOIPgTw5NT5iKUiRdumUzrgwVSKoqiXq1ccnKF+WLiIv0ZdJX3gP83
VzQ1kxE7lp6EPTNKuJg0sVSpzAh9X7aBI74TyUeIVexrHm31c3fwYlijCpvQC7NeMhJsSpSX4Xec
JjaL5X0Qjw5QT4rXPjRTpkcwcZnOfbk364gej/7Cs//aAgEp7YXRpzaEHGkr/HixkY2OsmxZ7Rxg
6BJDNSGhs8IJmQ1k4EyojNKCFUWpcrYZSjYH4ogLiq8hGGQoIRUdKnNi6bOqaf7SOa1lDPbMKl00
mDf5N2Dee6vXG1FbdMt+o9coph7iBEU/ZTCMUj+6I/m0GQvQx00kcl2sMtnfL7XCtnLo/f367WuB
RR+sPGeH3URklv5YvD5F8R6Z9V/g5lyl7AL8GbFYzuDKHD9sxzeNBkJhydEQQkuxUQtKiyfxDj8h
z00Bu/FeGKwuUW8zEldyInbOmMwQLXJMjEh6lYH/8DrWnom5aNOgwFV3za0QXSPFns2F2CFvCXD3
7MjBIN2uWqZ1rcjrRVnNUGwC7g4DUoMbRckofEUwbMXlBrVNQM265gygiM/h+UlUIkBsG1VTuV7q
2wBcIqqqR78fMwhBLG+6B+Y3gtM0DuYcavn1dTBoiOtp8skFPsHceW24JR8RUr1R6GAqIqcu2akf
8/QPy0gMbKMxjnl+MAKez3UXiVyPzTt7HstXHUcxJksUwl6q1brE8IPXpmkVjFbvX5ZQy+zTu4EO
rQtC102lOL1A0nmGr3upM6AwiNXLPWBWy4IpPywI3BUlZaA484iUvdfozScKZTiCS4ozOQGiznoh
rBVAuqnj38E5M0wMU9waaw520bEmnyWGw5V/Rr/Xfn8IJu/hmpu7ADvJdo7yqDiGhDow96iWa02j
ATUi3QIjyccVKIJZ3n+Lqbh9rEGauXpJNTh6cZ8uwOppfyE3k9HXMjs7+8FVyN7Kkm/8Ex7L7Rq+
Rst15MkA93Patzf+6pBq26dF5X02AX36nFENdOKsbFPyzGaKTCjCTXv7jQBMz+mvucMhiEOz31S3
Ecei1alsC5xQ6hOBP/3ZhXx40p88+HfmDqAHbXZ6q7twYndmyehykUJf2ed1aYz5vcz87IvEvY9B
izeV0oi4XOw6jJPLxe0kkHenvodjpm+7y/PnZt+KrRupwsxZ+0VbHpvF8mK5W7dca05J3NeaYL9R
IwUucZuiAj2LxR9imYTqJyAFj+3ty3aU5PlaXRgSHvnYdETLHSdooH2swkojWqQlAfCEQOhJj3S2
ukXvKEPkO5lbHxU3iQ37NpXyKur1nojAdFl6Ufc/bZOkzwe2k4+MQcv+7jvF7euYShL3ykp8K/Nd
1WKcOcNM7lrr8M3j8FDZbdrSLeovldC3sejfmJsnew/LP5tc61M+cLDfuvDcCdazN0L0quELWtPt
4CBhDyXpx4/fDWqTBbnh3UDqpfD4get45MVhHlHBnLYf+WyRcZBjrYPa8KAQgjCpneR8s8PJeuD5
QJtTLZsRjWKCnR8Nms2MhGRaTSCtcUFJhCSn+cv1An7ngK/VnZHd/cQWKTmZy0vznmLRtUpcGSDb
VusWZlfogXePBCawFPwOddVHKkdjECp4GxhBE9NmBlYeS/le2d4w/eaibg19OK3CgIIQ4Dqtjg5+
I2c+m2m0Y4OvyYHM1GcV5aBztWL8uak5E1k4q+aVnJuu5NBqPlgnhDRbSp5fyVTOj3PQys41EkKX
H2FtPCEY2P3D2i8qoOuBdF73oYSpvShmOj5nXYIwYXJcs+7h3czLiK71Vk4GcHgYMGfGMcl6KvQf
h2/qbyVDanvI01Wv2RU0A07QsN2Y1EBYaCjMsC2vGI93xQbweT/wMGxGZYu/iUrmnOSE+6vCEsqU
HOBcdRkwqxhL5f+PXdNgEAZ1uFXPjc9tNMrrIu3qujaqgUFq6LVC4QG3yDkvcXs+gRLFKvoPKSww
7uVG9z/p12xHMDGBNEiMbKRKtxBY5x7ztbH0YY5ASLZiCiAGyPZ22tUoxHY/GaVtIxV1aZQvM9t5
/ptABnayGJm075dXk5VyR5qiuOLvN8YanZJ52Z/03hBi8dQbm20Sw/OwnVTmzFuG2igUTijTsXao
JgvDL2NWOvotY4cpXeIgGsSzh/tQHL8EaB51STpJU3Zps1J1Yd6GemoRQScf5WVI5MXBb8Lvlklr
F1khcSUVPY1hea3u9jZhdmuG6zlfWVUJah2YmdOjcNIDqffOT2XsdnA+2xz2NraekSUi3Mefwk9v
9DYH6Asz28zi9eIml40mHx2U/Xoep3+6ViW1AFXbYtQt6FmLmSDIpFE8cYF6E8g3SnH9fwnH+TV5
rreZ616xffDCnDRWzs9yomPx7i7FnC82tMu291xMSIdcRoTc15d2BWJb44MuPOM210iJ5w3ns2Lo
kI968uydxb9ofKXkyFW6s06z1U6JezPnLf0U3FVR5PGT11inQsle4Scclk7wbd12XiA2uo/AL8Dq
/4J5SWQMij3jhzES2UMKRyAOJ1jOKg0n9RHHiXvzn8fw7V/+T8mKI2hZ8PwGLbS1cA1V7G+DdrxK
V2sah0nWJVAqD//2oLu0NCP6KvjqryZ3aaaXPqB2RIXURewWWoHnkqEK9qYE9sN2K3aaEmBubZvM
HB/LWSgUke1foHIKyQiMir9c1lJVRCsBnlXs74DOemnVhz7a6tyqLNS8YV6ndGZ6KhAGfscz/lc9
vZAySecIm2Fk0HsnXrbVSzEDfzTOG0HQycFGOAAKzVNx8nwK6Der2zBsMu/nJ0xAcRvjN5cKggrx
dKRu+IwzaTEs86STIdnkirh40bL/YF0i00Z05aJRQ4X/poITPYjvnKfjJ8/WrGx36FuYjbHpCMHN
D1FGZOL7sE46JGuPXqQS3/HbeoHd1hmtYV2PsPpHuVGkyQAJ5VXv0iRSNjS1e271qKOKo9cXaMNJ
lX6wXYjjIsnW4Fooad69KtgYJmBvFnaqprPxBHEiOfk24oXkcZhKKsEHq2jmn54G1uISkBc4d9bo
J3xUILB+ikE3B8PrRORBZkFph/Y3p5VECv372p2WNdZYxggam0GcC3clKE8MCZKvUvMbERWc6nhM
xnMdzwAwKHM8XOuvpeamnfMcSxNGM7c3HYhPS/tmJe526Q2qu4SZ8/mtpINUIC0j3oVrIspolNY7
HztqD8uxluySKJqM8hMzbS+4kpxiN/Kfnj4srPzUN61YU692PRh9XxyKdKfxnYFEjpnB08N242yG
dNUd2HRwu3byi3iGgPqjr19x54J1DcQLwJOgi4MJDcDV2nHqPmpPsb6VAE8dEXdz08nWtginpfGK
dDNDE36m7BsHt1lw3+YW6y88DI8G8unKmoWxNwMvFR40DEBRDAJirsfMZNJdYeNRHM1bI+7PACvh
q+TpzL1GC5iJzO+p9/i/lTjC4jYODk5FEZ6QxsyMBsRdXgFtJHyvoTzh8o+64qX7fCi/bDmVWX4P
ZdvoAu3vQ5phBUv3/8UeDeVz61J0Tu+NXrhjzdHfYZoyM8uivMd3QkWA2x29+2WnAnNvjanLH+Ti
LHJoQpRdI5g6RKX57ZZp38+q3YoGmIeuvBbC/VrpdsaytY9DzeUhSN5rtXpIQlZu5pScGSlx+zjc
M2/A6R/y+Q77kzJuc+yf4lM7S8YDnNdUE9rEfoYrcC7MU8Y8WCcGJjmlrG8ntT0ziYFk+S6ESwrq
/bSM0TCN7cnvksk/CG18QzwEgcNrl8ZJ5MoAM6rVKOT8L6zvIsx5Gpt7HxdcAR+lWaOx8rLBYR4r
v0f4Qr9mir48jKP/07rEt9tMnky34iKJx2IVZf39+Etf1xlVz+hp8Sl8aOeDr8osfg1aDDp82FzY
JrAb4u+xpcWfATuAfcLIKeWebZqONAHXXmewTPAtAxrShi0RQbmwK0xHGHCEmv+hIwmRf/kFTyA0
U+XHSJmTTLApL6RsXWMW5h76T0FyRIYJRVZheUW+HLUxyG26hEQMSSrPgIE/+/ynjKOdF1nKmUuy
anXGmDoElfXPjD2lR/OhP6nbrqyI1XqPQ43z9DzenLsxHDl8oRzRe/2IVrH3hDfOswvpVrXAezVa
ZFGscJ5RVaTTXyr0fWH3X/pPo4sHsoRth1tlSJ1wYDUd7GauBOfByimg4r2GY+Jvdowb7gPzYLvT
06+VEvSBkBIe4fMixsujZPvOBoR3lpyD3jsUzbi6bH2VRLRFEDSbJXrS2ViBVpC/ljvaNEu9+bIw
USSaHlNGELzFrDoE2ZRQOfwfjS9InSuXy/y/Jp42kYja+EaHr5+m/RA2R2jed+TQTPcdE8Cl8vfO
JRb5DKou7SGLk0hxS6idN13YjW/7qclguQQV0GEnwmTmpBVGZdTuLB1DR6Hs/vJ1uuhgM8yHkmk0
Lke4RtDFLEBlQqG9Tetagd++dzJl8KWszBYhqpGgykd9/tPfaMG+5P3qSM7jCurFikzCjbBXAhj6
Heobl2CpJS2c628KUs/xQDpLkYsgzlWZsK9YsOJKEKzhZ5bQKpzkrEd5MbvZZiRL5EBqIr3u+cJZ
70yNYhke/r6V0l4TOMh0c/zk6PptRaVxBh4o/MMQ9WrUkN+kuFscul6Zn8DL7G/dR69JYIEtmFY0
2NH+QP/SvuBJcrMIbcnf74b1WMc2tuskzPeGQdpRol+X0whhwstu9vm+Ykvi9M09EMyo6utUCl6V
lqVR2BMMEDU9c7g/x8GvT91w/o1n6UQf/Y4wO6polL6MOpdf2AFXdJqawHendySGo0Six7PbMyWk
e5zOHEy2g9vZDn5gTrFXM7Uz5ZVZgDv24JrBBcmEWHTuJMeFwQFsSpocvd3rT/jTsDXcYPfsdz3f
Ug0q6ZrKkRh+WZKhYz/Kq2gioiCeUCchekFEpyWq0C18ZxLNiJpuAwXBwcWBpYA6aJsfLhEQIIOC
oxFY145ZgoBRrkmwv3tjiqzl2yP+PYRSnd+SD80DH62geNgq+AKGTjD3lFxaU33G3OukbjZUUvkx
2GXHpqxJqzBdi2X7ZPyNyfC83eVbK8SJ4ZbWgjTDCD9ZhrANabOinRvOzQT5Y0LTQxExYbD5O7aB
Zjss9jNx28MRqJBznxZKKDDutRgBWFNqdDYXA9ivJ+GT7u4Ghn53+J20T8yOMEV47ZRNO+uqXhdQ
slaaQc+Q5gT970RbRY+o8adWo9ezipxEJ0suxMVwMj4ujR8O+hfg3LXKPggwG+/YOBqZE9ffZaju
aihtZu+EXX3jvLWdLFbg2DEJWqEk4kXYwzTIQpDj3xNE3ws9vgzxyKJ2DKdKtmwMHQpPmkd0IyR4
PmUD9X+lIiF4Nx7mkOYaoq7yEDf2t0B6/TKY2qGHcGM7BhdHv9UmgH+R+TqjxZt2fYjiV7gU7yRn
4IBdtYcRFLtSsroNPcEUgMGnzHamMC2zw2PgW2vL5an8KfY7hDEpFLCK4QoNpsOd5ivpolp7O5qV
T9FEGBRtUnY0ec40GX3ER5lphjA6zXsMGNIQUWhqK910340CTdH1/n9JjGkEgAX2w2sx8/4L7eTj
GLeZWqW0H1mKKg4BvZFPr+j1J7U8tGga4qDgal0kf8w4aHzOzDjL0U8WZ8uYtNWrIwoaIK9OlSYs
YgzrtI3N/++0Pfeb2IBcJnpQDgh53ZRZzlyUdagcnQEDVEQZBGSHdnMdDNi0mrFBvxEFe1ymJfHJ
+WNLkLKzFMx55iN/9/yieslMdlx/oc5ry65c3DYe427o2MLNtRCnuRVY0meBlW5z2CFRNXAu2TkG
WyEYPOxEeOoTvjoz1d7qsGsvO/YlCfXEH6KwoDmAG21xh7UMVK4f8L1ABXcddphG9YSwbeMFkQhR
Ymh+SqKuMGAxMMilaMIrn+5ywB8hR2zKKSsw/B9rqy8e2Y8fty49SR0cjy66C02IIJ2ft25i3INC
0H+foxRa5i9O7k2uIHKF9E/GZzCN02g8i/ItKZqJjhbh2jX7CtIHM9CM8B/185NO81bNEZtDrbg9
7s3hBgVJEeGXS/fOnZyuo4CypNGcUQ6X0sLxANYn0V6h4xmkM6eU0NlVBJKrWD2/enSmFV6Uw2MA
AkIjJiBb0Uv5t/Y5m/fPKSfxwkhy2c2imCLNACPDVkAD+Gy5XJi6i8IbC94AEo+BKNXNp25yoFFU
q43BzKlCEcZmja94sLnu8z6RiVFsKmVd5hyl8JzDShX0qff0I+kYDrzk+P32qG5VFG0i8mOtRg34
mYhJD0FKJihu5wCih2Djwacs/eI+dIw4UEvrnu2AS/NWQ6tygXq6Q/4gNH1WtsBmtzKJsxGcq5SN
7zmNzGccuU9R73Cxi5e/zEL5PrbS55Ob4pjxWCoS2/g3E/mYPd8kJ461zd4iB/aQ0Y5seFmwwJqT
e+Dc+lquDmIwffQEu5+ubSqvy/h1hQRSvWgYeaQWoqEwgyZG9oko54cnCuGmtRmRw7rq/YW/nJlA
nFuhrv5TNwDzRVRX6uVZsqDyyqXTKSnEAl3WX0FGZBjuOhzxFNOy8TV2zIVu6Iot9AEs2LwfMwzX
sSonkmb6uxa0qsi2tlXQSqfFp4mhVJ7wJg6O2bCn/+HjT7NpYQCMb9jWdPKKSqf2PyI6d5b9dVVD
9DGwdsYmMsUZugBkujLSK0SkmfDWcda4Ju4/ilKUIdmePIpSotGGd4+hOshKxM7eVG2AEwSCBjjQ
Q2qkshAWepXevIM9rkPKfs8KfoMfilMRfcKcosAMcEAr7hSaiYF/riSoqAWoMPNa0Yyk7t5UuLkA
k8duH5kINOVo+LMGcjINENfQWuK45drZKu28OQ5wVdpjydlG5xY7fjSw78ACQ+S/soUFmw+6jBr9
0lc1Sk9G2/Qz0G9xmGruT74uuWqeBjLZyLp+gSB9F/fdOHALvws66s1wxPafVPVx+9G1pkHFNlxD
w/m6M0yXdny24ueXsBpO5n2KdDz2reFv0QJ5QWXrUt342iQayin3wldWHruuWmix7vzQ/6fwm7wL
9Moag2xhQyZx8OX+oHVX1dsV77/tfAI0+GPouUvH2YMCM5XVswxU3MNjDFTIl7fite9qtJk4Jdfy
k9XF6DKeAkkXLA2HdxLI1w/AH1F28HP8Vx41o2tUy51tR7q43yIr0d4uZLsjdnrqGHLinVqHdTc2
Mf+aeOgReT0a+FCTPB0+sx8UVcWVRacnRxrQrLq5WOCxgrAbeOhESB238D3IUDRN74xshNRD1MdO
kUmfC4ekC/Xbpyr/RZDm4jkZO95oYxWYn5TxwosLioH1n3hpUTDjfrcB2FWRsb+Od0fMpPnqLnA6
zqzRKKItWMjm+EHXmEr8R0p8QMT+em+TvQJK+NE4FusgVr0Z7M96gbT25/O+JLkJ5VK541ylQzLh
LcDZRBgdSio/u2v9zeHjVBM7i886Af46iNWBy+DwoTNIZO9KCWh9fesSFMqQsNDAO+4WoP/XnRib
ZPxJm6qlpGrOgzVXazQJVuirg2EFX+kBeKCm2ryFvw88BmBGL+F8h00NHWgMCw7JQMcSq+v7SAtm
LTgWfHiv74cNRNtIARwPU9UPLu8XB+55WApgSZByatF26SlVxVUfgkHX6T2CzH2GkrP1IzhAy7T/
bcM0q3IL+fJQZ/AmJpymvtl0ATf1qlfE4vSXJYdZWBIKskKiISx93LtLzQzPlozGVgIqtlgoH9Fv
9jW1m+oQP9ACTKFwTzCie8mkM3xJPTpY4+vLGn3qeWy1puIulxNOfC0btlw1eeOjoNxqr6JATvEM
pi8OB8dKdagcDeFPGnHm9cfseQQq4s0hCUFHTFLmKW1B0RkDBYhbyEnRaQyGncpDw3FNIDrJ/X83
Gy11SmHjS+PdgG47VfAqwkbQN41uf46RezwPoFKtY/3QxxWMYgX5nK7QaiBTf0SqhwBUZQ0brK0Q
KWaJhgtseB4qTZiUMkJGSh3//FRAiK1GImFiuxL/04kJjA0Bfwt9tuhPOUDoIZHDsikBR8BxHX3O
IwJsQpEenpdQBYjUlqjy9jBYbgcs0P+R1gdB6BChm2EBkc39cuqpd9ucRGxdJbs4cjqEg1tDKoKR
qcHmWFQAE2Ieyodk8DqZRAcuf7buGHLpn8ngegYv7/R5WGP89k/xHEKDqLzdCwVHIBerDoH8DUNZ
DFghqKHhbkh0AOZ7s5gaAoUurfmQPV9b1ZbSSRs4mja0FXycQrE5VapwWbmFOPNn7QO1GrI3JmQ/
N4Giyc0gVfN1tdiqh6A/CJlNZ0+ZLCd5OqOGPmPwudq7gq3tu+ZP2Eq7+qwNfkvAK9VzTy0B2YUB
XVuZ0p3YJxxfbEwNqqrIsqSUWyZ1DpDrZi6wtfv6qouOw3G0nto1pQUcPBtCChdc4ia9LYZeQ0e6
lTsqSq2KeWorIXxQogq65/c9rRmWmkSmEnP/ToLwzwAQGhzTBdaMubNOrMBf2gNbyLTdh6HBpNPF
PW/SpbMd5LI/a8ooLyhtg4LcXVAbk1Bwuq2h0WVJ0fCFGP4uAyD5DBc02hH3NMnGutPiMyTDd1Fj
HTF9PNAwnwV57lSFGHuCg9OLVrRtWdycwsE5N4xeJfGa6TAd1LSpnkimJYj1c1LbIl8Um9sKOdAa
o//qAn/Dd2Q8LS6PzZtvSFuO7GfgS/Cvmg2i5fgfNruYk4qWV3IzlLN0q8k/24iXOepPi5HLaXz5
ShpePdSI9BFlLMVW1T/zpvBmx+mq9y0VStr8pcD9jnEPCAr0orQjA6JopRzdMgb3Zfg9P6YD3edV
vt51WSFHipHy4r2kDxI6UVzFpg1jjBsqGwIXboNA5vajFfg4nN+vIV40unDtTVjTjm2GilzeopKm
Vn2/JQRK53VBgx7Xcsi3pBkIykAzlbyfm6tsLJ+LKuWJ7NHKNdprhjPJhJvy9TPd3UEnuP5wKNUD
elJe6FdpRVK46qyyqoIGDJ9aZfMErpCJuESCc7RP6UrvYfpdWkrflq5xrQxC3txQ8VZRVXyQLrnX
/XlmxOz6dtp/kjI+JNNdIe6DDeSMRjWZ5V9fhv11dqXcZNbgLbu08pG8VYaCcqlOADt1clWQrcAC
lVfd7aMlSqNnKfulgNXAqRPVQwMaOyMDzogOH2kQJcjVNKlxZ4/qDaL910hEV0GWoYj3bnWUaxGY
PcNhWjGbHwoLCjQ3Y0AR1q7I2yS6UN0lh1NKO8R0FTHTsuK6Qv0URORW5Wb/XIPV10cjilTH4L23
dpiQE8FiapGpxPtUuNSrieVZB/81LlBG87bbh9r81m5vNq11iX2kC3qIS9N1pePERlItoWN3m50K
jMBIgEzibYzFgCHAStL68dCD1g+6VMOU99DJfWRjQBMErobCZ9Pz6kJBatZBmuub6Xosfd4NOQ3Q
uTC4cT2+3hAIbTl92J7K0UOd076GxwCpAsvp6i2utWCxLSh/BSO2Yh2NZ1IrZlH+nRMQqd7yIFxL
FpWt6kWsUJc63AWvO6omvDpUzUdrTXAaTtfGqLQ07NdOLQ0dxtbD0Ts0BSfD9+SxLfwz/KpGIq8F
w9gnXhiB2z1wSfFqVgOHUvZ4qRBm+2pvAaHvxIOp7QmdwIOGVnZrBF0uhuHuzcbgnwZBqn51864P
Cc7kLEjLdpuwMGbI7XsnRE5e9F4blrx//PcFNaX/Wc+HzrQ78L4Vrh48917PdppOIJNpdcCbuByP
i3g2pSE5weJ+oT5XnlFo3nwyPRDJYeWYb7pbBdoqu7jxK89NaCwIJxuM6Wv9wh1VREdhOx/iFRs4
Gle8dgeBMA7lovTTUDi1XigYsGwniTHI5SsXes9FBpaZ444aaIvAyFHUEXzVJzMwB2JOVuBjjYNX
4mSdun8RkIonZK1e5X12mgMEP/B8y54tIMruqIksg2xUkdDvgVBo6FXoV9aj3QHn6VLdy/3CiShA
iG7s2WjG1IcI1KTbpO+1/V6cw6Cs2q18Z/XmciV2m1wqPlxb2D2Rh5G3T3lWy2l8ow6KVlIRX4nM
dtwuXYnNRIXnFZFTPHG+OfRps8q9JyatVzJ+VyIfLhYu4tPnkffi/au0rCBZ+eXYd0wzr+zN2Yth
jbi9GEkNvXPlr1Wx8yLGLM2Zka5RRD0hN6xPm0z28gSNgrUBCnoUY61jSKra5owpiP0OdYkIKiD0
oVvsnJ8Yn/79z1CaTm7fgsqFS8rmUpuqAMHKju3XNApOPkbsXaqsa1u9xJ3k5Cg6kNtC36jtUBpn
ZOzQTE+KcQ7PqpG8DLBqV3Vn0BJJVOjpfRwq5gyXxdz7k0pBAKZiF/sVeonoXJIvHkv7wXPoT3I2
7CPmDAOwMgqCrFVpziOJnJw8CBehBilOZqvSlnSkc75PEiCzGjKoy8y8DNdUsOxzY0+W9pK/CwLM
9k79e2t95Mfrx+TabY/xwtEan5ruBFDoutqzvqDpBPRDPnhk9mxnP55601+xKIiHfCHeSkKl6nNh
eo/TZaBdgSRIXG1hRD7vSLQ5uI9ThDiQFgck1Gc4jIKSPDHU/qJcDK16yiAc3rXjaIViirgkT/YP
9RLpZ26qT5jg+ptRwzYDpBxvROsjJC8RChnfbTcLLAoB9vaUtJJ9LfghFnyPRVSLTGcUGUP8cTaP
jPQZswKfPdtRDuqcpt7+qJkXhW9GVQjeLpypBq3G2Q6aLSj53AqRcgljyEDw1qouIq1+RbvMicJ3
Vk++FVl5lrHDHIKnQ77aO3Pg9+sXcExFSvnGIoqmrjfWnNmuSoORIVgFP61Xp899QyTvKcUbizYk
YR3NDP+fwPf1SKwmx+ASBxbH0XgFvGRawc4Ym3ak/SyqTtzysEnIdGPn3PmkcHK+kY95UQ+4HpIq
PZd5i/K7fKkePYEraFXNWz0KppQpsPLH2uKMVATzMOoHNx2Q1rZlYabpr7wVJSzxmPxEsE6qrgP0
FslvLcNON1w0Lj5BB+QUaG0LUwdiURysQkPy5OpcOi3Pnx9J7GlJLWvzqFLFR2JxkV8GvZkh+Jz4
QRLisveOfTlwC6y/rRochqpZKJbiaC8p9SbKzxTLpGBIRVVQDCgC/XOrVg81k0WRVw+y/g6QdqnR
Z1y45DEN/KSVVTVHeikRtpc1gbkNbwduLd3flHSRmpQpGvySHIS1cIa8fmlcFW6vrU9RHlwkYKNk
GjoDLEkibwHYUWgGRRW/9dsFa6VCgFhf41JTCa5BZkegy17EQDA4dGb9VAIG6rv/TTXbRPbIsPMH
Qjpbg0BnngcMa1jXXE1TFI2541XVWxBN/j5/BQXYDxnBz9QyryOlN0cSrTOThbuLY6KVy1fmTTJf
r99tuep17dC9XOe0N1yvATqWeLyPC6Nyy73+/pJ7qE+MNJkpHUAGRAIkOKzGKnB1H3hcZe952eh6
e9YlNkNF5o0yB3kUDdbaDtYUOh4pF9F3tYY73QeLY7vFZm7+syqNPED5KdIC/vx3wdD+QoWbjIes
xqdzNA9ymSXSVoSVRmkX1ZoLweRBRVgC4sPrlcTe42C61TBND8jDpgVrjolboycfljvC+kqA+wVX
eukdYQ5Rm+SyvGPTmwKGE/mo/mT6j2GIwl3n7RBqxCsRZDOMderJQlGeap70UHFvuEsv9I5bdj7/
VS7PJk8FEzwnGIbrdlG3MhLcklv8HpE9Hw/azHKshGy1osbauLrvVwmOduYdD5JW90JsW7FP9XQo
UIX6pXls1iu+5fhMbNJJikVEjtdvx6XAO0DIElWY6Vd24YMwK/CnpcDrNkhKP9Z/AP0p9qSbXfbR
8z6Sad1gBRKycuUk0H/nKm8W60uRP0GzYSqy0mnjewd2H2UYCEB4nvthd3dJwb5PhzcVgG2uPbaJ
lA+pE53mSSreC4BItfDRKS5C0P3IXul+3oaVElyxEZA2hg+Rx3+nujB+DyD4gT1UqQF+zNWZ4xKx
YcijOWir95Qgz4bXAtHakv0unqhZoSap4ruAP4Aro0jXSIVbu0JMi2LNuEv79u+b2YMwAy+g5ErF
CCz+J338irOAABWoq91EgBX27VSZSv+4TCLFzkWEEJ/Q2bxCfB+ZaLRfU8z2n2mfkzql9ZLxJI87
WK9VuSQLf1nlDDDYd/gwviRmIYV2slMHd2FnczQfGmgtUkChXJ5Jh+4s9+OpjedbLU2edIa7K9Wm
1qy5HIebfWk3g+Q34HSB9iNygVRbrYXO+qT/HZtN/jytvqcAe+0NCTS/8+0gqrr09pHH4Y8bx1JR
ih8MH2RQV+PUYbClyInB5i3fN6+QLl4InxrTxOOaVcBfprTLLB2eBvA13nc2LXD/x2MObYV53/II
eAKcZBZOBRd2DG9knTzkZJomvfyowVP+TH2La+wdD/eAQW/KZUKbtA3mI92GrEEmI3OVyMl4oKEN
SamAgnzlzfgWH7DdeswDrxi91nuVyTvUQfBDRTyFY2yspxe8Jzt2fzfaP4ZoqOlyFXBjZfI3OYer
X2uzewoZrcyN+bb+BaHACQ6KhDcAgAXiCu5tYctwMqoDc4CcOAfm1Hw6dZVCr7JUY0WJOk0nE8GG
j4V8DNbI80ijFWb0ekoJ7Gc5V2O8SOcBepI+CJLWDUMTQLRmbX5ui90Ib/b3VZ2h54vyh7HHnOGK
h6y6jPjUafeUG3jJec+pQTW+nKxCOwSHHRBajlqeX34/XoPl7LboxSHPGPhJR0oLsnMoWS3TI4b+
Z/goHc6Wwl0H02FkE8dy5g57ID4Eu2IUYyyyJ0jVOzFkgjKt3Y+TvJJGdRL/hrvGVkNiMhGt5YkA
HHpJgCCSxbNbsKEE+KDZNn5GuyGHdEYyyV5v10Zel/JgHnSqEH1dP4dSXJCWciHXY04xc532p61N
9rJ7HZlk+XYYJ7njfpVCfBQW/cxi74Y7+v9u8jVQJqm9p8vOZQhkKaDXYFG3Xda4gLUuaghvvCO3
tZ13zCyFdM5fQhKQDt7HYD2WgD60G7u3gvBlvD5sYY0e1dziKHCKLTyJOwMic7tRcNL/GSnAToGM
UIzMKmGUGFI1K36FaZOLfkUf+BQA6dQsy/QgQRqVVZbCyCaX0psobFZGgpNPHV+irlVNAAba9/Nq
fYsvtP4ygfKyCxTGPWy1mjq2LTKzAHWWtLMBbPAO8a7U9v3JD5h9T+z72gaHfJ/SLMbVsUmhECDi
YbQb++ZZzzcWpZj7+LciavnG/Lc1A3xSIKfPADp3/8y5Bd1ZVv3DqXgwSJCESkR/EE6mQmKKb0h0
mj0kwmd+bmCnMcOPjp059k+DpKVtGxBJgbW1sFh4pblaMCTRn/bUKtm5SDp7PkkI4N9KH5FN0zRc
xQKdeGpqWa+WfvWumdUq4d9UVjZzZivKXFk4bHqBgdVlxlccbRyM9dpBDAfOwDgJepWC7nev82PI
3tgkaYrMW3cY33KcGGtV/2yqHHsXxgFp0d84Hjq8XH7CE/D0W8AzWMjgWPxg2mM2GfjA9+enb4y2
IZ4BHlbk/kIQ7/g65r81AET54HmOtVhcvaT61awZNmz0hPYCOkS696FllRNrJQUo/vxZTNPbVD9s
g/d6X7EYyD3LRg/FYvxTDQ4MppPoRNFp+slT+OUAgrjhvC20WtcQYWBVsicqPfK8wJqQug35YKyA
HAtzQxXGhWOyyTd2CIpuwF2idWzEOIDLMqMkHpC0pa7bXWrocvAJcbH77GQAx9nfth21DSgZ5M8p
Vqve5XGSW2sHvdf1M9fi21wzc7KRUk0KurQXXVZ5sAdVqYUSW1VimbC3P3ieBNfUOerbn6VFlziM
jZ4Igvm0ujSGzMQ6C8PfblqDJ/z1LBcHKandzhxe5I63RDtXqvXY03cqYhof/61Z2gV6z8RWj9JP
1dcwkXydzNZMA/tTeP7exn+f+Gs6k5IeVhjwFBXM8vX/Urmq01DLp2ORmKPL8qz/BV2cOL7JEMRn
J1EZwCjqzQ31Bw4ohL161zZ7xAt6FbFj3PuMRa2JK+RKCsxrHjoL9cpOEp2e1hXHi31KFeU+lD3I
4Mf5frBplOwa2hq3lhwqgBzWy7JnlnpewsJBIXJbEoKsxdHem+ptcPBSi/Gu0y3Bt9FhpzSlRTsW
pG763Wew0BkOurMjNB6NEZCtZw5QOOtczDgLbDDY/EIKrQhM4ejU0DoB3nunMPED1dUepv3Xuwd4
Brl7EWZBs234qBnlVyzwCuuNeAijppUNE6h1kJf3QHZTsA2QxfuUFNml6B3mhwHKxmqH1wvWp0iY
4EpNqkXlzwm+HYcQ0LfpC3gG5YrdzmaOvPlR09ur2pjKN2FajcrAQbF6v8wxg0MHOBkaPgxsT+6v
cQNH8jrd7nAeVjJvZ9Q3kJ44FEtlrq9f8omSZulJ1twn/cac2jH+LohXQxxyikWFQ4WJBgjQhxOt
TfL9dcW1EcO4aYzP0ejSp0UQmbqUq7ZcpzXSJhSb2ZkXGZ+6fMKS6tqMH/bmtBAgdMYnnAJTwN6N
afrNaEM4LOx025Szq/Prb5PVcQQmR5CiwirmVuZyQ+PRxYr2SYqNBP7rZeGR+DUIG6cBUIkrsqxa
zKoXgeBGTg8DhoZPdKwIB2qitjYEn1sHtiIpsofmK3SCv0P7weeexOsqnRCtrbmd40I55L0hQAAg
9J9yU6Z5DqmCIyolMJjCjg62d+4D9Vs8l4lnsUcbkmJEPnYjS3QY1vAq8h1JwwStOQfdFRwbUYFT
UFQg2y9kIdnFK2J8++BVyWcjMsxBqf1s5QwXx39FZYJddjxfxznpVBmTyrhHih0WAtsPR5GDLYg/
gA+VJYQ/OUJYOFYQtgxrj7RbjqObmcA3WfxP+AMh6umIErBYmhR0EzI1d2IwCXsk0av0R9KSNjeT
bd/mJbF6ilNOvSSuDAzDFNP/pqlJVzXfkKC6DskYUm44aKm+yHXEh4bmc/t19ljUU13PjAJrw7Q3
IX2ba+2fQ42fEGVOX9gw7y54Z+WgEdIvqwF8BCOwVCcprJbMkSHEJjujkT6RT9rnH2XVKtfHU97T
NWWbZUXubcf5M3FEmS9dOeyr7J12dfWcylIGVr7NMz8APqLgvVJqkgz/6rmspY19EXu2lerxOP9V
/KjaSDSNtQOMEPdl8u4/CjWHYi8UG11iuKbpXs/qliI7fy6h1bm/tzr+L+nuRZqCCBazbamGwxIX
1Kz0x91e137d+uYeYMoEx2fAIpllrxjY2wys5Q/r2Z6LnOpsTTB85siAQof/lfJz4XRcbba+wsJt
hQTwUAq76wZcJihUbNe5WNHSWOwAKmBMkGMAJUn+wMBDEZCkEqSsA1cplGEFd5/Vr2NHULYQmdTT
NTq9bEHUTliPdiQ5veSOK0UAdqFfQPhv1z8HU9dlshPyzzzhyuAR5mWqL1O9UBs3UJK7E79av0XU
cHWRVq+g0eJ/R5rn1fAMdTwBuMxi940Mv89ZmcDzbefC0cbRoCiQNNO1f94QCYMtIJXtTW5SnQcI
/x/DIIWkinAKi+t5vGhxeTGsivppKgY3Lq0VoLDRdYA8PYnZK9EnoQte0JyldoV62aVqrrVZqPAF
ZURrQt9RYrkcJGvR4J9BDLJR2Z7qLZiNPa5/AfTudkmYQrX99mAPaGZfGbjIxwga6VUPdc3zfhD4
tkCR/R2KkYIuq3pn1SS8Q83jIT/5xHDjFoxN0dX8m9Lz3a+rOeoVKDY59od6Heq3zx//CPQD4qn1
QXsGx62mUGyhSs52lKct+xX2tUGJBRWeUvejMu7vazFs6HCn+EmetI0ItehjSL6x/PmYwUh/Y34P
V9r31geWWcxrtdeMS8IgTX0ier8QqBPXuWELNkAonGyrBcX/raos0Ea8tiKe33ro6kIwGSgKwo2R
2ZiKQG9XVVumBjHdXtyf1VGzCcaUilq0p9e7c8ow0Cd4Ni0WfdjJlzYkBsiz8BS0tSqkfKTHPznQ
+iemZRLfEWegzc4kd4ZTsxA7x3y8yHHmygbySGMJYO/c4lQkrlp1o+nz1cIUKGrMP+fAQdezvM/v
nD5960sb47R+10sngGuvUcBvgKSM9EkwmDWF5VOpTDHSx3Pr9hwuCsn7fMuy4xXvrdqY5vdRzy9/
0HhoNXwXw0cNsKPKaKjRntteUl9jDEFuBo3WjeHVUiA7GKpTQGXRGCIodNkl1eiqkfsPAQukPj+4
CBRAVYen6VRDsIAahiU0dgS6zFylYKA3Bcpwhovi4Ngpy4eNhVO/1PEolKMIRenI5DGEBN7XZjLE
wO9a6T6MF5K/bWDOypv0BCsBsz/cE1GivA6wrGPiVVT49Riqlvep70IPajzh5MVcv9xU+1rWkNuM
4jwStgNfBcGdTTEm4F1GbDF2KB6uAgbvBNfJ8XxFLryZJn+P/V/f3YKMQaDlHik7y+MtzvaCWuFE
xFN71/9rGOac3rdZ++/bUuTiPfsur5ZVeEEenX/AVZqo7AedoTLUq8sC8ZbljlXq2O4AmSzH2JAI
rfTLJjkZJPsxpHje1eFSMjSAYg5munUR3rzfCb0oyi1udwl7ulXHoGWDwWG3f7FF8Igj115KEzyo
cdmxlpgF1Y8e6sCxdsItrIgQN+aeXGWMDlm7SWGRmzpJk/ydiqsKEQPcMI+flhsMA7h5zZzGhdDE
gtT8nYeByR7aHJcUILPSdGbuVYADgmfZiQ86VEVkv1KMusDhOfYDE17PjIe8GorfSoo67jK8cPzt
NK2fP/Yz2hZ6Y+jNd7XUQ1x0aPvF3Fm4WkCVLwX5dehovYLr8RNoL1MEEbXv6x+hsxQzJBoCenCU
WQ9o6Xv3oWyVSPlq8DEXmqeZSiazw/EooS6WbTEFrWMODBHXuPDHJyVVLPM9mT3/K1X2754/AJFy
bM9BTEHyvG7mSHZdstghFiOl8axR8ZSlWPwt5+uAT9jCDYhP1r/JEmlUnFtU62PTk87z2qHlcynP
Vz1qke1Cf63aL0yTR6isQ6XegdrDOpmHip0PvIuszf96Z3H3Vy4TRC+28pau1neQpgofpNMGre9l
COmTIkhGVvzE/yCa2Of4+KahQH387GmoyhFkyoW99rMrOrbeph6uXMH7uRNnvNYD5LI5ao1dQUZm
31V0R5C3cjw/ACJM6wNKCuU9kvrTrXi/D8Q8aZOYDZw7a+PU6QDQoezLGSSxwvdp6XPTPSOClKrQ
4mt1aTo0gVKGeZe+Qf4n5eRIr83DZf4p1eAdpIqSPmdKgKqzbNM3Cv1gfAq/hqt87ftzCTMR/3mn
U9uy3AxOOTFoxc1ummRoodHhQkFpYymWKoGWk+CwpEYopOwDAsXq1LmigMDm6eqZ/M1FvI+eYs9W
AychiLE3iCLsL+F7Z67d3GDdFl+A83TgyDpZ4ABsOt+SZeRPW8229PEqf48+1N5+Ebg29txHbM4T
t43we3HwB2KgeQWATLzqNw8+9AhlQcONdtjfRhMEo3hmNwOJEJ4m/VeOiz1Bz3UoE6Zai8B0F7oO
EkM6uU4JdeGOoLqWXrQApFJabOfo8hNz5ncrHvf/z/4K38QNYlClHn4PwjrsMHZwfBTPu3R6Updq
1uTgX9fMcNfH05w9cS5jJaQICA1iIdvRaRsBP7BNv2jAJFjEybuspVsxg7b/FHlGbUrYVV7olgYP
U+RhcFe0A39XqBzFhf/qkiZ/eysLzNiO6g7rjD2MfhpzOUrhafA23PvG947nzb/kpxcsc1WkolYW
ucoE71MtSFMnTGdMAplQQf2zcGDCRFYtGWw328wyPseVU1Cy00ACQBqUV+WnAiYP40mV7NSJwry4
jLuWp69Jzk96RK3CeFC09yp9BGUv/4SZskFE6X4Gywex0cqYVpFORxwzXTfP17W6e0+ErIRXMp3t
HIgB3M5/mhyOrMZvWgPHX7Ty//yHmLdQl3Srsp+IkkSx9kRhFNdZTWjiS6OVrlFJ9/ms86wpjT3i
D8lG1vWUs6IShXgRbXvMRsgcknCZ+l1YzWgRwLeYmF04MzOtvq89txw19RA+2hmqpuMPcFMPk7fA
wCQVjFG/xqOvOmx1wmPDowNFDT3PmG949dGP2uKEkqEJ9r4RHaMUAcO/UBVVeOEe3kjol/8fHfwO
UyR8DP0cx/R3tEt4XDsbM2+6Dik+7RIx9qlTTCtgyHIN6zqrleAvBWbZwgJ2kU1vrB3wCvA9RkDQ
UxXf6ZyFekpNIekhIU08JKhvNVV6Cwaylt3YeZ6pg8YzLKubjZLo8yQgb/uLeZPKos41zZVwdr4g
3IUg43APXOeLzFQwETRGGOcmdUwxK0IV2NU2RWJ/EyfCMCPBJAWMfNlC4gAIerlxgzhH+JhSkt2F
K5F5CmEsOtAsOoGkGbw0se8+DO+tNQeDd6BIE3lXVr7kVvos+hIzNMp+vyyogXA1JG5yysJRufiJ
hnwNMrK6ZAWKpx3aQL7RPeY8p8t+lEAyXO+RRNOIisVJZrvcexpbtJLb4iYiSR6jk5qkviiaVu3u
mjtujSeBTT1k2uQHx+YaKaepMadg3DviUU547WZloacB9KWHyHKRdN+hOh6BNuc1Q2xq1/gxabzZ
1LqFTQL4fRzSvzGTSZ6dpsKf/vae1WB0+GlJebjpvcncD/5ypNc8eoVjspyq/AneiEoQorBtw0Ey
/fzJU5AfJXdhQb0ygH/oLDWLHL8Aw6A4M+az/0W2Bz98rwIOuy5Kn6n14XIv40CZiTRpDo9ANKkZ
N56/xhl44lbKrSdIidFzLvu6ULfMq/7z+dNg9+sQEJdkSJZXTewu9l3/Y304IZ9PJyJBiIQGTepj
PggCRfHyu4pBDk0Q2CIWOhH9udKVSSLhaVO+odPgWmuQ8XPKSVLkRUYSjMXH4GVwpyMdYW4JkkIX
F1pO8CYwuYUvBpk1OJpCucNseZ+RZGOGVcwsqg2lj8b52BGvcBJXQw7boqLprPnsTXnxs7xuS4aW
NduWpme4uuaLjKgeq1BZvSSoSGT9U4qROccylQFpInnRCpNT62aYPIUmjtGkWRFX7JtmXa/rU6vd
hQgQphG0sJSM/3PTd6S8sE12PydyN+ocZ1VZQUay0+oqvHYLm0ONDdKlvvbayOEp6mpHEsa4e47k
R6kVtvj6hJObZ5juTGAL8bbqZOIJtpDbWeZZyyLHQSdJwaypU4uGW18A7B9CSmA0pNCBRrvO/yyk
UtRtUtZ/SGZI3A/XRpacOUhSoBZ5IOgE2vybwG+rciKzOIesqOeSvHljRH04Zj5F4p3A6zPBt8Ly
8iTlgZhsVnSFBjcYc/PBX1uiVKMoVH0W1CXcGo7bvn5fDDgVaY30oZnW60Pm/H1qOkQTB2ubnOvR
MGDuKpbCjrERqVZWPVMI6gFKh4qxioUkAYYbpDlYvUSMGkmW/uOr4WAWwQ50Ub8mHQ0sbYbDS5yJ
xamtrqr1jQyhkgQo7Ak+4fypAy2bKTbVzv3qvIImB10L1IKtGzDNA/tzSIgRUEG2yASzrqLPPdFQ
bD9zfMya0NcMOIyFdkH6EJ2+F6WeG+BaQIJwt/HiUS3jOjmfdSPPvxmzsSDw+Kwt9ZuhQVvr/HOY
43agCsziDOHMsPaVml8OHHiIH/aB2mUWGxUj/oYk06MnDCqHTbWfKoM+j2SP6DhQv3i/PZUEIq1u
gkr/E8AksYFHYCcuz0aJSlPfyF5kw9yub44Dv0v04kjgu9A3j76VEFHopIGAGK4JPVCgXDWmbMbw
uN6KCJA8HKWAeIFLUtH5XftJvdFiAClSe/exsGk4kUOUxyb2hvFEa0cVNppXDJA+BZBaMdG8+Ib3
b+0Cf38LkDxX/1OINyWa/h/obchBgZWs39YGS5MARz9wV6hfr0+TJoDHo6vxlcPctNivxlYBqv+y
aR0257xFDlTAKMx7g7pdntaohyooOYGbbymU7jjbm2hI/NHZkgv0Ds3f6804eCBKy8tLbegIq9Eu
t5QqRP3+g5iFBYk7u5LB3X0Awceu2Q35lqybi5/oAUKXlNwCpUYAEr05sNOHuUidBMWYS4SF4iWL
uEjOXWSRml1blKgxojSRDJzIeCGSHm4M2w94gPLx0I+QsVamuEX0mJJPq/DT2Fr+WUzEHQL97Fh3
DOPUrRyNqvcd1LIyXeWRlIKwy7KHu/pHgpaZiiOonF0ZBsE37lXiHRskLsYJTPAyR1eQDESHx3aK
P7K9cNK0YK5TmAZSMhWcsxssYu7iqQQHkctopXaVjywVynpLj0EqDOshBUqAAkf7N965dGmzdyZ1
IQB4ThzDTXQ5EMlQU2dPYaTxFM6N5SKSa19wURCbj+jBBcFXVWhJcDe45y6C0BejzGtRuTbjyLyC
4VK9nJB40b4c61MtlqfT5rReIOgQu6/oxYAhZ94MniIYOifQcWyApetsRNm9FYc/AwczRoZxRR39
BujsBVNzrTPxRf66d4UxLLVRdfEVpEtUkcI1BZX+WGibKNA7LHVy86V6OFsB09XYp/GDShbjQUiq
wX4T2SXL7Ym9R5wA31BD9SB7vgn7HA1EP37Z2yrRdbEsIZX+1W9ikShAZJqEwZ8Dex3Gr69+Tsun
Kbxf/NQdHUn2UF5RDL/tbcfAqZd6IOlMXG/S4tgOnzXx5uHiAUBsmmijIzndxBpxHefr3kjnMAE8
+s1QZ2+gQiLIM39x9F0co64M+Ik6LL6mn3lfge8bafDYJWulDudmADKkI2D002yvsqCacuAoMaEG
QCrm6sGhftaJK94e0L0NimIRnksxBGxRNHd2/ENWOEOLryd53fZGnskfT0OcZgSmwRVHuk2vEz7X
INnJZvncmNKBpHCGZx9lV9KUcyF3OsUg57ijdOqL80oUE30Kqa2loczt5BgguKrB++FB3skxVKHi
4xEtIZFlZRL8HG0NmGwCS86eAGefjItg+jFE6ZDAi5A7sK+ogUF2KRWEFecbOIzVhL6yuPanzQga
JM9r2vWlXN1bn/WRGnlbmSqL6waqKEMGT/nYXWap5T3B2MCPD9zagMx6qNxjv9vIh9wECUJjFVM0
4SXdrmEHqBdr71phI1adixYOXpHpWGIQLKbPqKcaX3yqSb4XukczteN06URX5vKr0NE2Gc3lsrf8
M4stwOjLFn8m2RTNKi4AjSIwOt6PsMz/j1CG+7rpn2RPf6Usld+df6dievGUwBMyCdD16qXTl75Q
QeoD0YvzwCPe0JNixQkuO2V9bsVefRBYSF8COer1UBo84QzNPqFz0EiDypuzjK44u5jViDlDo0+5
yCuXGW8C/+UeAmrCRYw30wOHWITfotV3KOv2gNleL/PbQ3taPdBmPKUSyzC7fzn3YeDyJB0o2e2D
NVDh4LMWefkk2x8cGF1++3knJ1PMrJz0wDMNFlD54YXa6POzkBWKZTx7qEc2ElGOR4++vlquUJq8
nix3uGXJ7vEoCYO2bk672WAtD8Dt+HA+1EVLyNIAnx3GMbjyEjYFx3UPay4BK+iT20xfiP7HhJy+
iVFzSbwBBRP7F8+xBoEvjixGh14iQOxYSJTlhNgD1Tw0yce5ZQP3doATnr0kgQTZDG8KvxB3q7Md
qAIKKWa88T6J/zqgzggWMYqyOtWDicjjuwpZEMFgPelS2PFBzQKDA2zYKbgqs99x2YuAXppyuvmU
+pRxuibGGaobOXFpTXvGVAS4TBQkyDtVpa+qB21yBWYGmfjhh+7ERzptdG/8x4zpyGHcZI/xWBr0
wkr5+6AJldiX6spKc55gmwNBwkpJ7zq+gQVbyvuF8yLNhFeDKi8VihPPOIpnMb7B3H3/ra7Gbcbc
HqYhcBzXEQFYihNjXJkyd53eUcMf0La1dC3XYfLeiGSN3cCEi4O2Nb33ng5cu3wKm03zsNT2vK2a
re6BtnMLytsPHrrhfpN98BBH+KoUsidTg3E68jgXIIP25oW4051f9mjMh/DhzOYNpIc2VTX4CEml
V8wKs0hE2jSiG2XhgBdWRCf4/gpY6+17/A3gyOKEC4Xb0Csmlj3xqe6zMfCk4RUO5LFaIkHXh650
f6kr4OLv9Fpl3Nr/BOZsYlYUg28zLdWOkD+b7cgyunxOovxxaX2mbzqzylBGgtNTl6CHPpsKiXru
lBxdkaGMuDM2Ww39ll1LVE1TDbDdGsaqHu1Egn1eDnnAZ8CByV5n9hBF82H4m9jF6mDPlAaaGko5
V+bHHRLC4TqjFwjC+sbL/YOz7GqY2Aw2qcJqHhryCzp00O7JqLTn4eX+4M06T8Ua5Lvm2dFHgIbe
icJLpE0p35JIKIB7jgRo3AbUEkxkce2tZrLoUt00a6fcLRpLknS3W/9Gy2pTDy0P6m9hHkc9ZuHK
4lJDBredK9ap8d50A1Jcxm0k9WMe7eW7Bf1/uRmw21kuruyk3g3nTvhAvG8SWOjlQoehcQXl37/a
nbQ0efLdXG9QXsjiTxyTEfwDvNBVa2AHT/r8erEyjHVvFmu3EQzc3j2eyo5mfj+x6I8k3HEg4BoG
Iq+Ybfi2iRHAK+o7eGwCfmIj2IOMfu7OcsLoGDEZmF2+T7tz3uM5WzIigTx2XDM5mBdwosJZZ2/q
xJtlMpvW9sYoWzBhVRa2rBCmxwvwl6m+GTiy28V0MbZJdeF9UB2zsJZDCeTnD9HAJ65Un0qVV5BS
Da4sPeroGcUK/eI6ie15/wBVdw94oFb+ISHf/FMejhgj0GT77GQMEMWQpNB3GmwFph2kzYC2BJzA
S9QO84euNfp549ijbbtkU05rS/8LL9OxjrGr1EqkTYLnRDwydOnyj57JkkFRUem5cjUKOE+K1ApB
qsqA1PPehVo0X7sXfMUA3u5bI4onHN1e6IOZcDleOgR7tzKuDXBZjigc/uIWqPUqN/q6hecvU1+6
VT92ZMGyAQ47K8dOBgGVosuHb8hno7NqZkAGtQy5HPYy1fT01QfT1ZmqgVOdiCbYAQ5GfQEw167i
UTwnK5Av0NCTUQcjF9MqUJUzKQzGlMQIjAKqEBRqZj2Remjl1ccEk6+XrGcOpnXiouwqnSOhhljH
kxfgv5oa1FNiF+uJFTKusIM3IOXe/ZIknQewHV/XNvn+2ooDLjfuA1eyBDV6OrVyB4S6Y9OL+Sh4
xzmfqOyegV44KrIVPPlpLbPvKkS8rijaF/HnqftoT7bmJM5STyjU70rjvOmhSlLcPbz1LDXVPXQk
KSrA3CqtjUUSgECk5ERND+I0nwHRzFTMF9qi87Q5568uGup8cDF/RaA7/1G01OUi37/TxZmBmCU9
eFZuizVkht0zeB1UoyUIdI2YfSbngItNLyEM1s/Mdscx69gTObJXRS56n50dH48nz0Z4dg2P0PvG
LsmmX6pzAj/M7W/vyV1qdDBCjn9RcT+Ggpi1Bc9wAimST9ImYube4pajFz0oxqZi6KsXjbmNg8wR
OM/0dco+Mz7KLaK4Bf69ZW4Zd1eYIc07tKrS72NnkUKO4OLkf7eIuFO+OkUNw315KkVo7QQc01+j
ITPLloCc2c75rAoDFzevaJWMryFO+NcMfsiBAZ/ybASklM7qYRLfafqaSrd/0QYfjNmXncOBFQwy
/fy722TIxAoloMhPoCM/5xyHnw8U2mFuTcvl0x5x5SVAxoZFdyy+azyv1yMLDpyvC4UIOq5IbzGL
U6tKHAcxRkZAAa/HtsCVaJKTSR74horD3tJowVAFONWGmP4i10Hvib7GnZn+fSdLJz+GYpdS2Nt/
MLbOii2BINxGIMHtOxvFopeJWWnZ/CRdgzTtOHrsvCkOO3jUnyy4je6hCzmj+m2Yl5cckWvVn8hH
Az0ZJY/4H51yPiLldlIVC+MZwciH2D1HdLomvUCVd+xtF1loHtMWaq4rAHkHNbQPK+LQXe5tSf/U
BEpi0Y+jdSTEKQkPKtMThxjrFCJGFPm2oZGedUp8nmoEWk69c+vMkIUCG/4jqKnSS4WtdO2/9VLE
FU8iRN1vgJh/eInDYdgYOTbwrpXenQ/HXU3guIeC/Jo/Y+YlGRixO1jNStg5J1ReVWCXHSvXBx53
cUX/iV1gvjWjaCn62E0IXhzv6CINQ8joBua2V1M0HWemhr0VRgNuGmUkgCjsNp7voSx8XyOtNYbC
WCXxjAd7Ewip1JskDZMIdx4W1crMk24dJvxXVsAbp3SDZ3psKrbScpUtPGa/ir10P/koBxtlOOuK
YIUnfH7WsOsRkfFb7J/mFIiN1yF26rEW0GZa9QBb6gerN8hRGp0D04gC1Pm2JPgezGvtbtquXz63
1yDVYQvu+Jt4KpAM9jTupR+o/t2jOPxqEIqLdjoRiG3PsjZcByTIuXlyaaTLjHzSiAg1dMz7y+Ps
jh7XjOua6r9RkWVqmJPubPdtcJHmxnALXZmY8wJeNHSxVjFusdmqbq3Tn7ULP88AceN9mMJ3DnP1
NcFhN6GAGZQ6Y7oVDx0h6q1dgwEfHoEIALPWRIrJcAL+RUUZu8LmS3AjovUqdnxXcZvTjk+ReNb6
e+kSDtVpqoSnfZr7xMpGJyBy2qM0pygFjrLaeTa9YdkgB24zEu44+fGZYJolJ0eAIUXPMdbmZnj1
GNAh0p99jmA5g8nX1Dk0ArfX+j/dh/YStX+MXa9/KEKeVGApxJKsQJjZWAUydq92u9LbCeKamFIo
rr8DgquZeTff5EO1/ztAdQ0e1aIR5N0wkS/BCy5Y7TglMR9FDg0F7kCDW1nPZjXWAhr//Xl38ByJ
Nfjtj0SoOmZ7uDHf5ozBS2eMPmxo3mookmmxlsTMwX7eYRvu1ehhfzYYnx359O+OxGb7dzJd/Reu
IakV8Xn7ilHyOQ1n1hfi8oc3ObLUYB+aFmrVATCF2lpSwJyvADlKZPTWc/lrXdTc99N88s2wtJJH
9sPoA0xgwgEEFAzHY0WEVXVyGAO/03AGq3ul2CdqGNiuo3k6UNcN0k7OQJZGeRZIvHYV/DAe6TZ1
+9uCsfCj7PZRQX4OJprRtCl3umVf62BAHiSEMRhLtWBuuhcMmJ8+o6cZ14gbv2O/kM3yBfp5tvJH
8MnbK7Y8cHZwSsyz8LE2vCeLcWdtW0PMiu4sZJH3e4VcyFI/z5UlhWNzIdvovPjLPVLQSTi3pIrT
IUvAtmI9FI7UbOgfMSZyefr/ZLM1lJC+UA8FmR6PU0W1lBHSpkmalHMcNpJsglvvSZLKpCdAclZr
ybs0XQm9qK9YyHpRq8hUXjFJf8onnNgAfTK86Crxnx6BqMCAr4APOznO9jidKi2bT3Im0Laje5ff
JkNZOe77D781SUWDXebqGOGO7dyx7xaRVTqT+ON6ktEkBa1OBCMD/S3pFCCdf2VjJzdtPxUdaMMx
TnYndiykrEM72sXt0Mr7hOUsLO0GYjMwlygRZABzc5DyXlhl+SiHF2YPY9eF467PDNyaDUM78D37
tMoMXAhyRW/iwrd1x0BlmxGL1aeRIv8pFlscJ5+h4vtUosu+cRu7qf6d3a7Y/+H0J494NfDh0LpR
MLpEFWs4eEb2CmC3Z3tJHyGXb3ZBMVy020VxS72PHEUzdpXsGvqfJpi23YKPNLFeYHlMMZsWNFJh
jIuT3Nc1rsS48kLDbJuxKhVX2H2XPKDa/tR/81QlAu0BR8VWMowtiPEjjiFrJtEKu4kw/73qm6HB
lR7Wd+bFvgnAU1D7uly/VSBWGKeAt26eycTVWtnIs9zUDk20OaPY5sevEaQyirU+I4S3Z0vW31oS
Xo07ZSn2v8xs8iYUFGHbzPQTS8FrHsC1Ajeu5OsBO55GPVyBuYNpCdootj4ZMOm0vrNrdy+A8Y+z
yn8EaOIxhGDwTVByxWOSV1TiTtctbWPMcU2GqG9ArkPnu0iAjOFSTTtxpRIj6FZasv8a0KbdVSyO
x7RJ3bAQ2XSeeLUwXEne4F3Xbv9MVyUNyAzHQzm8/y4AG3ryuhuzGpm+7VjC/ClinAbpJzOYt4nn
yXcBEJrKRrMU0vYQJwunTm7fdNRmmU0ApgGLz9M3UzUmMhDa8mC5n54yMfYwhgmyKQUAdPOw+CfK
yHs4Cn/wC0vlKLpCclxIvQAu0qJ68eL6KGbZJnguMSZZXuDdevJNHAH1e8OBZYK0xojR+BoJ8Y6c
5sOXJfVr9nB90cHT+GLHPJbHxyLBmOc0iWfU1hB4o4Zo+UqYqPZay/ln7dgeQP8/3bhB52GsC/LZ
M/rUhszHVgQYERZ7GDb8V69ZjIT36kLZUHzHVMvxHG1u1DPWnlkRNDfh3iVZlZBIsuN6VfMRB7Ze
Jonn7A7oB57zz57NyOgtXZ/jYI9bccyMbRVN12hBRya3ftC3r3D3d8NelT/gviFumJ0K2XuWWm4d
zhQsinJS4GnXwkTlPiYVqUUWnZTRrPobk86gAQ57pgJaCW1dpH/9d/sRxbcDNdQ1ReOVEQdnEOXm
SUqVQUrLfC8oI9QUxb6Yp9V1zDnJVkf6vGDEkZjSkpdfhlys/h0kTFGeB15czf8Ux9yMnP+RsoTH
QrI7SZTxYbf//PfHSlV/BvJk40B0RBv3SbePYaZgqZojWYMaBwhJCgf7to3fn/0+aNHT/q3dOt6p
lF/F46q50fHA5e8FZWdEF9njKQ9goNTlWalzmkjXoNHDYaH2PmOdk2JRT0Kt7BGcmupG9W8wU75n
P65hndgAzQMfWOiIkih1lA3dXeuEDwsm8p3xlRLJ0Jmnh7+EvYvMYZhCmoTh/fgQl2eLbdGj730g
bnglt4RMwopQFi8OzUHWaj1MLVZGgAL0NANv/QEsvTA5eezHhCZHjnjcChOtOAXoVQjXJ118zAan
M9DBqRDTUoH8y+rz4VAuvtAp0eluq9QEF3Pqwms075zi6CaXG3+512RkDiQdmJqi+7C8Wkt8SCHo
qxDNEdFEMeT9bbNxH3ULp6Kweidaz157u8QKtzA2BmiiTyF1H6OTZyABMEuJfMTtNtABUj1kN8KF
xuVJ4mCuzwmNaCCsi/m/MGwM2q4PGUkHYNdt4L7hzT+vRsTkdx/DbZ2GzOAE+Iol6n5rWlMB8CuY
Np96ec1vG5UN4+IcScT/0b/+OkCtAljdsXqSSxaZSEuNBHXv7t/5NqSUcaW2rHXo2NBsXQM+Q8yt
IZkjWF+NvTCi1m/OEiSbRcLei6Li4SXb9/eovxYkavB+eoAXHLjNLcOQ0m3m0R2ksSAXI7olyKxM
tDgZ2RFfDh6MkrzBr2LdTNbD5oUP5pCvrDdvroRb9prcn9bzCqQzNjkmizSaH+Luvxruh/+DOYeB
Swi0+DFwhYSDkLP3uFOmI0DxszJ3VJrdwzq5OnikOQGjiK9wQMEwQiCmbrL9Zl3Wa0jGiyc6ezLp
B73Mf9VuP8ouKoQSfYAVBEkbrK6hN9uLY4ctCHn/qVU03OzS0m9vsc2CsYgpCqSkJudx/M8Ja47Y
VWEcycDGFId4ow7lIN9Q2XkrZxgDPhjU32FqjpIhHF/p8mPUAOIY5E+ziZTNER6scyuiuR3+1OCO
s1iHi/0WLm6OOnk3hWyrk0dlfaqHwSaz9aqInO9Ui5hFSa+li3TDleEG5iSRZLxY/z/DCzYBCKnQ
fZ65VdLwwWjDxs+HpA0ODlAUIgY/KhUnw8iUGxIrxgsH28IOUaGdBncMigNO5N5Pj4y51c4DgV1A
N7sz3DtoXY7Zn/91cxMpu23eKwdLLh4e832zMhCa3im6msE5C0DKuQSaLFjpc6rUQqR9FMpcX/Iw
YHR9zvC/HpbnMEyikNo5bvmX+kybBRCCRV9wV3Kg+5rst94doc6W+orpZJabVmwU0TyJPMpeWLez
U0uLffvz8MaFJy3dwgN39U/Tm7NdU8RV6+SsK2GJEGT3YEYA06E4nlH5YVQQA/QvcHDnSp/BOMSO
FbWlimAFLh8WnNjmDBoO3r8Yx7Cu6d4csS/T8bTCtEsb9z2+SYxmd/1IcfnGh5idrW3rzavjRuF5
NX7Ge0dM3wikrbvbPmaKHoqYNuUjpD8DEC+orWM3eQBBP4Gut0zZs6mIC1KXwlt5NaHXe4Xk4rAo
Aeo+7/b/rwZNLqEspyqQ0QLDN1tMQoGQPQRGiae8MBdTUHuIplOZi/5mDD0a11n8lctHvx3MF84C
L00IBGslw3/Vk3j7QCCv/5Tjd2yU/eRqLuwPHevwG2qrxycn+lVqmw9MFlILbtxkLlzWC3bX1Cbj
6PhbiPdySqfO6nlHT1bWL8XpliEEfwDAeNxl88h27jYmVDmP71F1sy+JqZZhMQ9FfHwPF7Z/zrvB
7/XEMh49M86cpa/t0na/8O8cc3xZmc3jdup/kHICAcU9ko5nXvhplkDX6Xlh3VpZnBao3gdvcdeX
8iBP+2mLYSTZhm3VHeBYH4Aq9GfWUqGF9Y/xwODteWRLCFFjg20SSju4LDq4sJA4ZNhn8O4BAwXn
7L8meas4aNd88YRAw01VOVOFnuvnUa2WqFOodX7LUe0pyiualVRyrufwdCacasZLFeIfYy8WQKUm
HeKXbstbcTrsd+2C+kEueA79eMDa8Oseyz9OL1vmInpZIzVCX5tvFYVJKY2Nu4gjMYVh+QqqNAl8
2OW8PHfy5S8FzOoAPiVnH6//8PeNhetJFc5+JHvu+VJldgCNQqish4XP0mfeJ6I+8EAOe88b4jPA
pojhd/uYBeLjQKVWNRX/fcI55XtMPDHWTFV9nJpaCfuMd0PXx6Y2D+//01hyIHO8VYHob8crLTE7
viE7RdLMfm1wpjXxcLm3Gu/lS5LZ8s/xL7a+GC/xcZhEUwZ2uw6ibXvHJi6T4bTo46OF/jC/oDsV
rTM60sVTKGX3+RRiv9JxrN5f+sZgHtmI2K1DwVGOy/ExwjGuk7FIDdOhcv4M62Xp4yJajobfE2Mx
/pkFpqrO3NG5lQ89GYyS9gQP1mJc6RzX8/w7c89suM7bVkCOlZLztt/QNX223ZjaNlL2hOiFZTnO
V4wR7wbmlKeyDg17x/HPCztaxJd3oCmWCepKgBSXImro2EzkNU50W9itb5XCJ8HdGsD2idfutqvp
VpRPr/GkpDW/YsuUfkymacG9Vdj9QBS8GQ8tQB9U1jvWqv0mgFaka7YcZINasE3CeEmxC5NaFeAg
kleUVTlkswTNxAryCQO9TFIrCUnGr/A6wHZyBcclGn93LW4yJJ/OlW/ur18IBzUplsQsH7g943J0
IFvx4qUmMj9YgwWOBWnA1lSGTue/X55Hs5pVaS2d/BArvMnE6THArEnkWvrbyhVl0SOI5F5xWif9
g+xlS3nIF5rQ/H/ElRMtakGHRo2Jzg4ZgotYxJ+tkm3a7PYj61/y1MioxmhEzvoQ/6BIlXbpWV3d
93MY+eZ18ANu9tm7dkB9xNhNJ6rkCVnf8V32ul9mkg9hUdVAWpmPl4wyxqK/GF1LIPY1cHzsIOD/
36R5JAdsjyPvgo7UhHU2Lrm7eAwcEHGlaEPnxk02wtX+cx8DX0r5MvC/is6CdmydIqVMzLhyS0CA
iPnJkRy70N+t2DvFTQinbFWwEcDO5zaFsah8KFJYgUYJS215qrRyC6xP2t7QWV8bEbBn0eWCl7HE
POEE1VyCj5cJn9xyLiaotwVzwKBSvq152aggGRWIDSHlp0i7vX065Y6490uPhUZcXKcxIk4Ucf2k
9BxDAxV0E2aNVKv9M3M1E4/ddWWODcXMgbwA+syPLPo1l0FaaDXs4GugVZNALZZbIGkm8lMwHjaa
r7ucvkhayuMSHUtDLDn/Z/w3/MTB6My+g08CC9BwY7FpuA+P9qM8Zx9zNM/OxiIhepvMNlY4iC9o
KY9as7ZBAc357xphVoFad1PpUxjmdzVWNNnO0UdePDFs6QCzfVacvvaUYhqnKnccqPXqYSHRN7ZZ
iM0Jo6y7dkkpNMN+Zw+fpLq3fHSDXvtkGagAsM2Yv7ImKyBlSMdxrH96mUl+KyQ8g8j6bYRD77HP
P1OvBAZ29aa/US/d6YjqvxnHPDWYW0PhzWW2tt6cL8S53l6MnZN2VjTDHYZzholDOTzxdq5iYwQf
dktHBYvRJ4pLSbsOQ/p/glT8SZoulQzq3DHrrc2PKFIQXAWPMcCiW0uh3/JOcOuMNfQwNsLpya99
f3N4IE59ilX3WaOpkQFtutGChZ9RItH3ftL9mBf6SUIBbYjLK2GWwhpNvS217BZOxVIX3GCUUplK
9QQRYCsJgxIrQd1s3g5sdT6trAOtaV5m5ISS3MHvyKa8Anmp+6VifPK2SvJtAHCEXhv5dI4fh/3s
ZfoQorAVkK0NbgDgT7NCL773Pcwor94I+8XB0m0WX+X2K18Od40f/be3IRh7sim7003faT+o6Hnv
ACw0FaJATQWJqAsRBlRevg+tHyKQj1jqocS1RaeWVX4j9dOc+NDXe1G1aY6Uuv7oj6J6oDGwnJFq
HjKLn9byZvEdnD65kv+P1djTRoS4fhMhVImEKrHU3FpVj7a5X9pKYjnw19LHzdvzInbmuuw+X5f8
drjXjF+X1QZpP60Zyrr7Rktpw2HeL2tcKaEt9NOJ35LB2gKI2TOnkECnm9D1uwVTFaUib1Ksjprc
pljun649CnYCVPpqU2u6gzEVGCRjn5q8dUYjOs4dMaiJSBiYWGtqu51RKpkqoM8ZMlE4QFgltw16
asLH4nuV4J7dyTnh+WfFehT72hJV7t+1Nl+Hc9MY5bbkqkSeatc8nz5BKpErOsN4l2L20UcewCKi
txbRcm78Apfd/MimWX8MC4rA53mpyYOFIyvCIJG6dJ06IpVgFMBbrTIXiuSo7r8C2IhT3L7awyCR
eeERsvr3Ebag+sJlVeeJFWQ+U//yFQXnl7sHA7XwqpBKqaeR1JtkuoAzdsUT1ZTX9arEV8t90hGp
rHpvpfuWSKj6rdoWQoOXJshCf2etBN14JZKiTT0Vg+K02ZZqSA+lsfLxEM5wH2nmeuhbAd7BtOCe
ESI/MzBJr5wBRhdZFk9SZK9aBoc4Tlksn9REkD7K+l6S56oG4PqkwVZCd0vCE0Clp/7DMHrGJ3Bm
sflRtvSRJ0IKSZ+nkg50CTswkHJc+gvk5XXPrGKnSLq6Dm/EJepuy1Q6csJ+Y+WicmFDKbJHC6hc
Q4jyKHUJBJSEAaYvBQhcpIFm1W0rODbCav2sbEMtWENEeG6b5t9rGzuKyzvQ3AYUuQ/2y7m+kZzD
ockRzoaF8rnGevihH+S9MlKIHDhBQYnVCr2GkBjEVe/KEGquaSwxctqRv5OHO/P+6qr5lJ+GmrRV
AtReY/Jh1zTp375uo0+9PCMtXvgrI8uoZ2Z9gj5g7sq6wFol7SHWF0Rdz2SrfSVCMwaX1fQTR/3a
YfJdUMyrLHZKsXMaRxU5GjbUrBvn78yDWYpwW6ykLSCvs5e85cCNou6lbwYzRXEKgibHC+era6I/
a0+IcdTo/NlUUyFMdIbGV7u/akS6ny5iuKeqye364RU0BcdfjizGzPnNDLEU/tiNP7Z2zYRIXUze
7gZWHX2EunQ1hUQePjXr/+CPCxf09dR7HZLknCM69rUuIgeVmju1W84ysLdihY/TIUnD/pkgMERz
C0P2s5a117L45Bfb93bGRQuVzy5xh+zLEXghHzJSLhnfLrK7vU1GzrlE57zUssBeQcbGBMYjN93q
u4U6TVjvDyaRYFh0LF8BkU/WRHeEdIAQr3fNJKwzZpOABI3n7DeqIGbj2j0g6kFYTOwQ5QXuEm9Y
ry+/1t+WJXY8KfUYsAvUXwLhsB/QAm3JE9zuy79WlvEwXIZRNuTkI/Yd32wFNHv1qtC9ipRSww0/
VS7wGfskKSpalqBtk/LQIwubuiSi1aAO1tw4pp2FWiF+J/2iUCZG08DA7v/8bwcirGwfbGFqOoI8
+xO8wNmSTp1Nj3KBktDBR79ph7plaFlqqom+oC7ywkXhY8oNZPsYOwXkIEJTLCnyHbSh5DmKcNbg
w10OeS+7vptlPobTGAuDdnmMmT26KDzCuJn+lUzEDVhmZ33+deKL6b7z4MP8WjcCeNs6avcQsNHA
lkHXWHVY2OR4S6bql/th6Hx/P3Rxge4j8cgD5nhftEmzbjQOmY3Uckv9Es/nPFgSv3ISBjG7GKSN
1YWKkNOIuZrzjQaBbXQv6uvImKrHxnCp1cPQtgXDw728O/H/TuTDUcmMi6pjWZgclHW6Fhc7Cq+C
nBaEXyurL1jfW0gZt25hFaCFG+wt1jrFqfV0RCS6a4TME6pgTegm13L0GVw2W+yfF+NWqs/U3Ude
YbWZYK75VN90/K38fQM1quNvoakFyo6fsKmYk7ypVN/jLJCyT1Mu6Ic7G5ODphplXHoFPKEJUN1r
jquCzwEuTiZilZUjat+QVPQV4Ddr99wAFcaa8z2CbDavkUqtb5qKRM9PjhR7DWy20lMKo9t/9vwr
hXbcnfwmtxuWMlp/rWP0bjLqd46eE+OCnvo9ToJIKFFjog8klBX6lsBWgLX/QOKTK5zkIxgzf++6
1T94rXbDA2TCicw+JWeIj/zeBAjvNoGAHAFP274AD+xWc3gp40D6gHdFab4RVc/Y2lB+T3dsOQU7
GJryAGRGuQ9GBBAf7D9gAW5wpq9r4fj2mTxMal3NBiwaBVn/qSd1hmFtLzJk+4noyXkLkA5bFW2j
8VQuu5/z4JbvPZbX49xxqli6QYAz8HjTulIYDECzFxiPVDQkf7B5uiLjx9OBSx6GSZ3FfuTybpjn
5sxoFWh83hzCTfU90KstiCLg1xjH+Ek8BhDA2LWIqIChrduQH00NpzPa3wrU9ZgrdrbhpnJ/z+H2
7YKF0hQwyP8ehvg2z1/x3iVXWRH/khrDjig5jUoCI5xl3seqvhqZ15QK73qxm77dILVTJpd4az8+
u4tsR4k1fwp8wRduUqJ+8gSLtN9VRZP3K0+bKx2wc9RZtoBRbVk4no18AIELcA40U31KgzDWFARR
4hhpRa+EUwxPWvZnTErOgCOGvl3WDHzoY8C6L/iXjmaUw9SPmzqfwcpoEZb3whW4BBPQA7mlQ2Ge
fTKefIRoANhpz3SxDNGSD5CisKJmNkutHOtDJe+6WWdnr5kwNCBoQmadGSXJtRvTlJlEM5wQu8CF
5BsK1nAHvgsw2ncHsoNvR1RjXC0ePADzIItdsFpoIT+Bdr3l+yyXaQPYTMTdvtDmLhcfaCOSsTQe
62MG95RNxWo5+b8yKQTQrbK6L6wKoaNxTulP/TLsNmkbiwyJk802vaco07t21kCIyd2za4aNE9he
fs4h322URop9gp4h2kYhCufxw1DLb1buzt+Lu5xHCK+r7itpS3mNacC/QK/afol2CEyGE3o4sYMj
Sh/BrFby+4/5keeesJLLdBl/UXDz5THHztXqq2e1DuxGLigh/Mmzh6LfR2JTokPwMV1vK5Riz6Ax
dYDUWg+X7mOhdzb43ZO4MVVAwz/8Muc+IAzH2e4kLNQWmEVNeNqrmgeZMTjUPsNs5Z+YMYXrgI+c
rIisrfqClQJszLmaoeiK+V+unhWY+bn14Cq4e00PpDzci59myHU3CecsxRz1iV4ZX3Nql3ryA3IS
CDWk4C8em2+OC8qlQA2qI4iT3DE01+gq3nT9+mHcbsnyAbLFMIxSkUx+CWdUulYZfRDru9BesThm
Rg4fNbc8flKfPvUVsyn9jwpVi1XwN5QoFAQrifd1XUihgq1wPEQJrtSnnP6GMcn4CpKmdM6xQqLJ
k2twlw2ODk2Ogja2odgI5mRAqCbv/KRPupJK546lOrQnOq5WAHaLrY6yCeJY58O4Et9Ne+HLFNgG
RLuQ59zXeef0QspAPcmcMYpZDw2V9zsGyw7gekJwliZhzduRROge/ljPw9VvC0Iho8ve0ljlv5Q4
k/6Kg3Tfd4bv9SeUdo+tEVeHH2Gm9mw1WlNGibLU2aREUkpxnThO/mvaOglwTg7Jz8LMRf7BnnU0
cR2Ia8AOkOiZp/uHrNTvbX/lMQSihwwZagfekqly5go82PWrUn9j8Uj2OEBQGzuka1VYFqmPg6IU
sQ/A5mheTUAAqKBzGbAzEV7Lkvy+mn1xhAa62w8KhySenMZPFeY+POn683DzbpoLwL/xvUh1CJJQ
lvMMetu6mciDm1B0kkQTkJTw2SbwbxVizQaXFbCBECfaednJlyIzNWn4jN98tbfp61X4KfKkvpBo
QkFEdgS6ZskJUWTaTvJD476AJFKk4hjwbdPomZcpSU+umjpLoWxRCEtJMjS1tdl1uGoWo/ljgiAN
YOaD/Vt+bqDkSNpLlbMY+3klSOrJ57550M7IfvBawRhwfDwcLBuKuKvjscap67WxQFgTfc82w/tC
cNH/x5NnquMn2GX4A1IOWc3KmRGV5Q/NGwi0Hej3jaE4IEZLe0psKVLyeanMYAsN99zsKyMWpM3Y
/wN9UlglrjvGsjtTIou7Ztp9UYAQ7I2JbF+1t/GHoR9Qkjf91LkvifipC6ZGuGWsPWvRFxdXWH9p
vd6MlmTML2APv23HvDWfD580ONmwHFrVhSd2iO11ArL9Z+kDMoGYJyOt1upm6KFEjkIIxrs5pqy8
UlcEF867JYkvwy06SvgH4uGcV8jPy47Euhyd3FfWnOt3xWVZIKALOzgZGTjMcEuNHgho6FBjUPtL
y0tNiN6/C4y/NAhH9LluSwF8UzIFklkc8iNsqpAQ/4M/xiG7l7aBNyfjAFIT9onDD/Uvgs+OqoTh
TTmCbtoRV60uGsyZjDrO7V6sSxvLcQG7IMRVyY8oztGaOpO0Z2ocUdidWB25TZ6WlE+UcyZ3eNVD
j6n0ZNvKCtmtNJQrDz5/In0e1D221ozyW5ZZwi6dY6X6BiC7tPOgeG1ccHLvdzv5ZcAq0OyPYUEm
/NAfKdb497PlAkkheDkAitFl5809rIU7Yo3qoPP8/ddHkNrGQSzNvOZQ2XxVJiGxsperd2qT5488
Zp4pYtjOdSAdDvMXqPNWazs+k7zXDMQx8l7EaHebVVFO5QZwCt08NvU/0MEvhiUjGoIbeIB2egFA
Nb8pnWqpJzkvc8bLhtFiuyKeW7UXeUUD9TXo4Wk+YaxEOVt1Qy7MdF3uFrexy4E6VvGbYO/e8bsc
UvdZaIhXBySEf6Lbu5InMLzVWRblmkvyNgTdJkDbYX0uUDySS8M5GXxqzQPzxPrqX/L1+cvpbHj5
0oeuTwav8u1EAlL+cV1A8W3xAh130LwjL7sZF7Z+Q7YgtHZvlMCAI9MAwS1P7D9ToqKz92pR1s2C
BlgClgqZm7xP0rz33amOz3TssXj++CXTrC4ot7LkjNJjgnIjc5ZTdW7o1jRxwY1oR4xqp9ECyhez
Fz687OpZyv3YWVDCzRLPepRwiEYoeJKIP/mWGwHPLde9d1i2Clj88Re0xf5RxwoufSV7mNoj8DkL
nqjUb5CQjGI0ndo09noIQh3ACPfhjw8wXra+iD5zW7vm8Xo8yciBzkuZUYPe88CS+ResZB03ixhG
3Mm3QyeBtVjscTrosWRM8sHZJv3JIcPN8Yd514u1fcpLpZMSd85+p98ssv62RFywMPmyJ1WcGVGu
/TWOjai7bUg+oXcGeGqz8pJdthyCZpcmpwmpA/W+D3e9Yv3BPtgA6OZ7YHRtbuMT16SPig4pr/rC
AuZ69viB1TIsBo8nFRFttyeJai7hwOQPBHigddS8mqSkRJe2KtfpT23QwdprsbRM/YGdo8C4OwNF
6XePRB4xKoivcI2lxF9m4/sy4ljmJtVvQxCiNdGJEcPtSNzFen0UOYoKmhcUdmYRyO0paTA3SWoe
NRRO612QVJHUSVTPH/8JNq9TR9kZyHv/KjiKZlklypoSqAtMMdcY1Q6me5OPz8w+L0xRMkuTePhQ
wGaz4hzc7WcF50iN8oxwFuUKMN/MvolO3q6sBeBqP16LJlsoBhd0KbFn4rPst/f0zZUfQk7+H/xP
mw4oIk931iEqcqPw8jKm2uOJiDTqan9VX2sXADT8NQWD0Pd9JgyxVWSTXtv853s/dESPMWYGpinB
7O1BMbnryZ04nlThQb8k2WFmYp2Z5UGtNz7aaRxz4zxrJTSN4sl71p3a0AsS8KQMzBLoABaM2alM
QSI6gs+5wFh71XA/N5B/1vvJ4Iue5E3W0VugIq1a59zLQHO0tBluESBK/Guu+Eh6Lr4MnH/0Vs96
Suk5rlIJxJN3IwGEXlGuj3iy5mdu3KkuDp+F6v7dKgRwhzqOfn1xj9UWv3Cs+3oZCI2BS4GJ/jQ3
aMCNwnYQz2Fp+QhcaHfsYb5EJhOCuPlpYRiOw9JoBeWUKhi346kKDgdqs6kEOxdHiFGQfExg1TDn
Sf7mzbpQS8GzjWUG+I/ayWFjsIrMxw6isUozLnHzKSaSNhnSJadzysYpYv06zICb8BtdqazhRlWJ
T/umslPuc41wD5vnVLtFCXCXRN7Wu5QwglxqYLlB0FNYjaqqk69CKWMHP+L26CQeNf91I5e19bpT
X1LLJ7b4BinP9cRpfeFD1Sr69pD3c3mzHwS6nmFvYMeFrzeTXaVAwJV8EmUnUJijKNFQafZJsX/s
rjog20qnnqUg3RlkpUQvnXd8PlG4ZMDpNzZGspjmaxpufZMAsggPy3dAIsOuhSD91DsgI68toFSH
Bxp4OGUvBSjDHwqpNeZW5P4qLWaP3ae9Ajnij3De5LhPrdrrH/FS4y3y6GdGR29t8hXp5/kCD9J2
Nwlt4dt2/+oCY4V0F47JPPhyYqPNd2g8C5Y8FFIhUq5Ax+HtboY17In/hGHksBMhxfFzQqIIju8i
IkB7DmZQu9/ASkuXkFVnRf8FKYo/URZ4lowuZkJxiq4wuDIeQeScrUEL/WjxhjSNzgUEFirahihW
uyyrphIe4JJB/7eQmAH1yxipMKpec//dQt80VbNm2IoZITWw6qrBlt6E9JA6XQEZWmRPK/8Xr/rt
uWHH9kHaeQoeLvfkEFS0K+1E72Zc9ccqonyiGQeBeGbOAUEcLUg8M6v1LhXO2pDgAsHvaHuJU/ea
nauzr5gfGL/MJxYaOR/VqqekOd70G/MnQOQwhwcHjvKPiQUj2BzckUVhjkWCmtMJ4UMg4ZDqZMRP
mRc9aintyghgFgT0BUXrH43Zcpnieuz47qB3EUwtWeLWH6yoi0MB9CibUb/RC3dVKvr/9mLCZMrK
gcMl/a9poVmItrGUBWE/w0FRe30icNogNt+OJ7pi5ZIecR8ljhnQmU+5ZWUEmqmM0vz2s6jll4Om
LhDJsb8zWvwBp63BjsYwnNCXLjsQn49zP7slLXPv4M15pJYgoo/Mcc3+7tJIhsmzM59Omc70ivrq
sHTSi3wDXdElY6sZ1zhIeArUuMUeIF6GZln0z8oNkmsJ9EI1R4xechSYEwHFQQ7hWhnp7twa9f17
DD4o7P54xA+254gAnRBBT8eccFsZsdb9H+fwBUr+jaMu5VcgHMLjcPP26WqDBRIf5qa8AtmFklAd
qR2iKwnr4T5Iho5lsfTxLB6xbv84EHNiJSqHBoEST3wNmo4piapy8x4SiCnrh72XstaDWzZ1m1IC
pbz3RVEePjKCgIJg2oQoBnsJ8oZVv1K4EBOLqdto+D9JLaViipybTiFdVCD/Y9ObTbjn+xykZQex
vH08LACo4NJakbmGC6+468o/0QTQ2Tl5AgygdBV5t7Av6rUEH+OSt57Ezz/GktuQV8i+tmSb+Ouf
BBZNpprCGFHJYabbFG54F2k5GNDrvIH0mje9x35NrsJ4j0ByuhA72Pm3fyayOev8s+H6llNElUxT
dNW3IKTIa9bAipg6raYzftJ6e4DahKOpKnPg3id1nuk1Lr2aG3VHjiG+DTgij1J8QV7PtQN+GY68
gSGUw+hAptYLXd6XX1iGzBq+9+1gnQVUdKRbUAcTliRajiXrgxEd+YZVRpXCqnbMiNmXScGzBLRB
hqC3Hvf9+fQgZKNMv2t6HSSpCm/o9CsosMCyyUZCxhkyBAgfxQtOqNqr7tDd6XIE+F0oWaQcxtpE
t6Je4l1kKP+w3ER9rZ4qNG0nbXrM7s6qinukN1IxwWfjbdpc4n62NryQQKnArwShKpLw1BrSqCId
u+cv3pEjr+NY6f/8PXrcRiMBS7IWuikHIT2abnFkndsx8rL/foNEgaN2Um0TN4MIz+ch8cqh1gID
CIwnP9veaAVvTdTrDMgvceoubW9sWQDmzCBGC3a5g7RpaonRQV1OA+o9WjwVC4koikcuNDkUzyVZ
KpeZEZBWNtSGkGbc2y8vxDxM+NYmnbJ6ZyYHhfNI/fJrhgktDFlgH9Zmdj7hKLl4RtXQkq2dh5UW
HVYNeJOoxHAKvPP/VeLnfPBmTz0uKKS/wZOqT1HNTiGyfeWDq074jPaGSfNyHjq1xYFeZRCpo/hl
65x5R5O23SmisLjuRXPzAPMC/DcqKhuHpkJpwdX9V3Dsdo/76VnImxikn2mavIuhCBBHxJKDmNDO
DGeoeu6A99FVrYc=
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

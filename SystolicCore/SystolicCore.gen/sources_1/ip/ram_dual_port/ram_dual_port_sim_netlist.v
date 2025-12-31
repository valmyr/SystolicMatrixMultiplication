// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Dec 30 14:45:39 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/SystolicCore/SystolicCore.gen/sources_1/ip/ram_dual_port/ram_dual_port_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43968)
`pragma protect data_block
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
fthgBo/9WRTfQbyFHhBFuBg61e2K
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

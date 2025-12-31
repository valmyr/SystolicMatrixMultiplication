// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Dec 30 16:25:44 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40000)
`pragma protect data_block
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
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Jan 27 21:52:48 2026
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
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTB = "0" *) 
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
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32848)
`pragma protect data_block
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
VlVe56bmFkfD4gSqV36QDQ==
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

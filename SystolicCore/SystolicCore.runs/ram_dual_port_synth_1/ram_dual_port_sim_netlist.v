// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Dec 30 14:45:38 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43984)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 16:15:33 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dual_porte_ram_sim_netlist.v
// Design      : dual_porte_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dual_porte_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [2:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [2:0]addra;
  wire [2:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "3" *) 
  (* C_ADDRB_WIDTH = "3" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "dual_porte_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "7" *) 
  (* C_READ_DEPTH_B = "7" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "7" *) 
  (* C_WRITE_DEPTH_B = "7" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[2:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[2:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27200)
`pragma protect data_block
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
zbpnQm2XTdr85XQ=
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 16:14:05 2025
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
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [2:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

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
  wire [0:0]wea;
  wire [0:0]web;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19888)
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

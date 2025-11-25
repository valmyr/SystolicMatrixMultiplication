// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 16:43:17 2025
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.88935 mW" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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

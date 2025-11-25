// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 16:44:49 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27184)
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

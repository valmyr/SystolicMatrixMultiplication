// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 15:37:18 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [2:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [2:0]addra;
  wire [2:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
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
  wire [15:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.01735 mW" *) 
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
  (* C_INIT_FILE = "dual_porte_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29584)
`pragma protect data_block
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
pA==
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

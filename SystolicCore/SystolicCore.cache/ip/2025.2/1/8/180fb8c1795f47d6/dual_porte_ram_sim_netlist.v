// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 16:41:41 2025
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
xw==
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Nov 24 15:27:05 2025
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
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [2:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [2:0]addra;
  wire [2:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTB = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21248)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Feb  1 19:43:00 2026
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.343777 mW" *) 
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
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32768)
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

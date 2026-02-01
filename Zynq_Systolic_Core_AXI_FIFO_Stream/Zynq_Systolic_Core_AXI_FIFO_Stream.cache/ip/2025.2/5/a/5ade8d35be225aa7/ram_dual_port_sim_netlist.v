// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Feb  1 19:46:52 2026
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]doutb;
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
  wire [3:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.171888 mW" *) 
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
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[3:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33408)
`pragma protect data_block
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
cPZ0gr7A
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

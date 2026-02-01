// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Feb  1 19:46:53 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream/Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/ip/ram_dual_port/ram_dual_port_sim_netlist.v
// Design      : ram_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_dual_port,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ram_dual_port
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
  ram_dual_port_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33392)
`pragma protect data_block
lvPQWGinaCz6mcNfgKwMNe9v53+XSwpX+hllf2lx5NAQ4LO2fljjwCm1ouk8+pGHGKhea1lHxZHo
JhiZHmPBv85NG3z5jtUkJXoWFFGeapRzJYat9IrlGR3QCbza9V2N4KVQP6CurDdB5MT1ns46clMq
5bbinBGyHBTPqS49ZOoCNRH2zW1+coCdClQikvnSBwJH8U5lILcCOO8FYl3RWvGhVb+VOxIdKs0B
1XP05GzMgJ32MT0Ny5exSogNfi4oANlqbn1X+ZAxQeRB8JtAtswlUmSG4/KbgIHMsE5KvhDkSApY
prOOttIG+5u/d63q9D20VrLWbINb9rTV1bkMb0zOd2EFyChRko4JMooG3YD733Mtnb4xaAljs7xF
DFW5f3HAnXguUC5zkzgXNGP2hTMdSGjksXBJoJddlDE+4kqiEk5Sr+FgvoTr368Ahq8IYJJOsUPw
wEBE4bJQs9+NaLM6STTdnnHBu8xJDAekKGrok5fF8kS0mEghLtkYKfi67yBO2i0VOZJUVruoqLHu
cwc3EoRhIZkzuEyMISL2yhxTMcYGYaiqJuMxD6g0qJBkzd/JLSxLGaBjcTw/jaeQ8qeOrSXbCAN9
hIl3RMlz2tvO8HxyaIhlBQwG40rqtZXxUJEvOvMmeHzwMsA73r1ZM31whPIN6sUzrAy8CUtJFcVL
EAzxBOT155rYCCD6ONBj/vv90dbqL2aYJNY5LYgiFZV9TZOzKSrSru4umSR37ZIi2YeABU5SV01R
dPQzfn7xo1TVN1EZ67dYuqkg2Tbmh9aYSJ2wgLF94sFRyGaQ9FXjjo6twmAZPAObxyz5T6qRQj+H
TnluS/l7rYxm/2tW0m81YD+VCsZVMWEpqmSKxUwNvZvxEGPt73f/lHUgKziojAhyTPiGDfpJH/mP
XfVobabtKbQ+WBtor9UAcnTt/Dekw4MABgz7Qqr7k3TjVuS+p0dNaEMxC8absJynB87RlZnkGj+j
SufbJV8d8vba67/gZh0gy5PrKve9e6VMAXd2590HdBpz4UIe1PF7CVI8iDngBtkeGGnqK30ZXgIx
lIJnwWfjhMytyjkHrmQQF3jacbLoDjRepu4JkpqMLMVhMFpZuMdKUQIC5vWr2y3a/Y0ZvDH5GytF
PUFDkGWbsVAXSLX1+SnRC+A7oeyc1fq8DhoP77H+omryYytT94YcWDmC1iLgSayyi0gN7OOPk4qx
lnb/sJLV55BbVAp/Gq/jMlACubBrA++Y40ba4VZ1wOsf4V9K/meHV11Q17X3ewhOnRWxepc02Ukl
UuYvET+EWgCXnZdvLGN1lpqkjbiEZnUz0LC1ly2RHtKi0hhZcSJo9JO/H/HOvmBFbuYCkDI+7Vdr
UcVdZgmywvFznYLjTIKrHxSk8iYgpQftAq5nMJdDYAM9prO/AZKsdtwNIiCyzLd8iYsax3kGOoIg
YMq8CGhibLAmrAfxDOtqy0HpI9Z8m76WH7BDJbTY8eiMol4uqEa2xyMVmZd1yjfnLAflZIOxf9MI
RXVQpDEpFtWVSMxUJQWKc4WUAVnVYH6K/Sg3e6C7zf3Re/seUdlim1hmtB/O6Y+m0zPxEPLHbYJq
OOywbvj2UQ8ROYOXXoukUiLJQ/543JpKrh7diqgP304jXNpFVObl/lb0NdN/9sSqdHQdb74aQtfd
noTjSiA2aHrIl7e1e3scMqBUoF29rOLLFqvPDijL9SVQ/OpydADeJ+1AGtflIAJRZK5c42JYmxBX
iSFhdtgonnMbAg2UOxRhje7+amWm81TFiOK+ySZ3wIkEXoZRWUUw/wTNlcBXTsrzZk1XeV7q+nBy
zDtPchpiwI4uvGbkKAxHHNSiwpvUB/6A9lQ7OxyD0UfLzYQts1/NGmbxQ/sZ2b+5LUO5AduskdWW
t2JbwczS3U6XFH6gNRDv+xBdUlA8bMdlam2Qg/7xfdGhEZbxnLJ0ss6XRKLdvr6tCgWZNrTvtXWQ
osrt3FCnh4XOkTchvpLZu4XWmPXX77pi4fhfyB3b4cP2/ZJ9xZACHehAJC/3+Nv0GMXwdET9XfyH
MKh1DDD9t6oZkqiL5YZ9pLaCbw3NRbaLGY/qbW2heNhsOvARaa4xTbLWZP6j2ADH7F0YA/HrSn2G
zmEMg6v8chIgo0pv+QLIlp6vukDeO7Q7OhgCweE/ZpM6jb/VnqH4bYOfrUC9XJ0Jr+IWqxdtBbe8
QhI773Mifrz+KBob4UstIfWhG6xHpmyXNU72cJjMqyXG3kW6AzGhynnhLJ9L3fuqXy+do2wr+E1c
CztMFNv+9qPUGPMBA3uD8f2D4mk4KeyELaPstCcaZfQlx0T4ebrh0ScNEiv4Cjouvy1zVEx2hesD
bU+N4/3fkKz2qV6xijZKPwiMufq6aUwWj3ZZ1lb0/yImoZUMyj0/OUmKqgfKXI/ymhXSw4xQCQPq
J+Gxn3VUulETwnUiMoYmkL0xVpgRKMi69UrV5qTrucP4oGav0uVB++5V89hXGReZ1jEuxMNopCnb
y2bg+kYrk+68cYu343bYL8kMImVLmFWEkaf3vXqKtH9mOIWLir8TVoJ9LhAQQ2+69qY3IyPdRflM
IaErFPv7cXFCRha6UJp2Hc3hUFj1Bykpw0KDSdYGE70X0IgP86MRwnypFUe2HPiRPaqF/6CtbLJv
zk3ix3k/8UOFH9gFoFgpXGiVFQRMwMeleJS1+KHNDUiNCZffgMFCdSv798kh+AR4NLMzvfKqKoAg
law/mu6SclH8FVY2N897RCDlQtOGToXBrV5+j7WWjA584yPFNclP8bZtiYsjaGCK+oPtVbErbCoq
YMV9wxax6nOUe2rEzqaawt6RDDcjd9Cfir4Sk3r0yTrPpxBNCggUCo625eeANKuwFdJS0Aklp6z6
YOPx25XSUh4t0WmfW2MiRtJEUgsmsvvPQfhgdZV+0kRVyiOsGOJvPblyLiNndg0rClsNwQmRvo6x
jPu+us3L+VKbAqr5Ugl6VoOt296NenedRqg/EjvV0YSgFTvyQZqT0/PAIJgdvV8KurvBWW5G/yem
JV/vnhTNNH9e2h3Jw8RkKNpRAwm/NHUKB4My1PrvHcYassYKaRr80r9xv9BK12TFNeneXGyTN3vw
mzLaJFUgkDbefAhlLm/QwQbkHySNpnB/wfC7h+PpAJMpO4s1R8Nb671Zrsbrp7SEUgA/HUQGVjIq
mBqbzW6FBxS/bOGDuy0+UJNn9UeAY9ukukPvHS20AdtltgEFpZCWbRz/oM26azC/AmCvQ2FBS50I
WLt4nwlhLlOVvyMZ6SnXTy9wYN/V+6EIpCxs7DjstLyLFUnBMDlRM2tATQxFncCT3U2TPb2aEwhs
rMXy9fDj3lPwsaQGHBbZJ35vjDxjUhioNYGXKbDibXy6zdTTa4RKO5Dal0YQQecOW+rSXa+i+eDd
sWjzoHj4t1MQgg0EwpIQ85Ca5MSV4cSPCoUcBsFQ1dz9JlnmMTDtjKGDDWDXUc6LyaM4I1qmcYJu
fX5ckKslbvwLnmUgFPivEdyUUNPrEqeFGZ9wJTUUtMm42E7n688djiYqky4ldkyIL04mSVGwJgZV
rJwCQbk7lFn+h9XZOF+71WGjPyRPoS9tEy4zDOa2hvuWy4avb5sEzKYUb/Aaz/JxmRNlWIXT80n3
I/xsxpBw6dRvutOvxzSRHrS/ys7GRtK11jhZBYYAEvjqmd52U+cOErUUMRfw+VuYOa7tjgZFoXmY
0FVbB/2lfKe6TEeOL0d7IG8u+iOiUmeaOAKl0wG/VEIgVEaJAUjDTC0MvV3R3BVJI2CbfMa5GRlz
QUJPy8iK6GcXncujOyrCjSozklcX80n0CBv5GZOVg8PfmgNHc0H36ipogGqxLjas9fnGjCclgROg
GXyf1hGkl1wXzJ3yP9fybdSLzBwDMokVcb1p4QwjE9DbiveYX1XhQUdJz9/D1RCTcjeF9VkQ4yOj
kRLdIfNn8boHT2QbVcG1xllCrwuBvvL3cFSg/l1mGmP87CefUzhJx8tuyeV/tqLUED7ApRiVvedT
Jd1Ks0Mx1jGsLP3v6UKOpqh35CPx8yDy8mS/DsNn1q+6ynxRfpLxNHj8aFakrvyU0EQpUy8zIABs
pP+NQQVmoMltbWIpt3mnEZ9+gvy4SegoZncs4dq+VgkKrNkiZqxqtsFvwQt1bSh+yvUnSD30IU37
G6Uiu6VzsYFpc1E2iTc9jzKRKmpPCLzjLK17dkzwkFxX1I30ST23wSFJpDM454qecxtz+oZSa5TC
2O7NoDx4V+sZtypZJELp9LVt49VzDIme7buSuoJoBz9GjnruiznJfYiAD37I0+oDkwPxLbyiHlzA
UO9LUi0LErqyf9LjiHtZNfuPUVhADxmJCdYNZUKrIIQnNOhYHtgK8cjiV472nIZP2rW4kgMsFWDO
+2LfFynHV1vxbTTLG1oII1JJz/EKZJ8OYps/XUH+UgNKBmYeTTeiwb1ATYlSdfYblNiWMsI8J9kA
P96Z1qWbJiGtnyOHpy4KwzaOgwu4YwfCBNYW7q6hTi30H0zXMsrdAFT/0mcAb+8X3Vx/iV9Nd6wj
7rH5w4siGYtzv5AYvEwLeUmsJKFm8Ue/W6zUbvKrvozhv0QMNoWCNc4yYqYG2Yla6Mav/ZoDv01Y
ifV5Gky5b+xlMVFVOi2U0y9KXcDNKQkSGgZ1lUdYjf319YZh67KEA6liQXm2DpYrh5ibYYwKaVQS
hho33fOHI/2qsxJjjbF2yVKS9Z3cXaVb8hL6HgmNjg1SoU8TYw62B5wC6Cgwx4rcs6pzAjsQk0GA
CYa8WrO+O3gtrP+/0BLnhqCoCb4iV5UIj9LpyDi3tzrEMtP3COO8gOFcd9+rBUmlhvkVx6Mx1Lcc
oG/LuDQBqA+bc2qHMwyGNgm0KvgylFjdrQV1toj5C/NNR3EaUEb/0nTiLy/wQZWiAT7/f7g0UDs+
Mg6sh1Bn1sP3hJSNGQPEvPOO3n8keuhkgDuu617CoZvprtiXouxHFm6hl//TDjVnWAI9NLjki3mT
GNAV40K6fvMmWXMD6vQ7qZkPtlhzkllkzKN1mhBYS30IeZvV+HxGrnZXP3px116eji3ZI6N1lCIM
n3Ur4/dzObqNTCAf4ec2j1NV9z/n+eXV2WTnjaDYg8RvmnI1/hXgvNoYxEeW46mPivw9ULllW/0F
pjy1oHZz4B+DE/i4MAHdU2j68zoJeDHZTsLxEwSAecwwmc4r+eo68nX1oZQagDmTqIGF+uf50jnZ
l5XltrSySoXwtPFOAU70oAOxbwZcmx/o4LDxi3vISt+sTZTXGUPjD8NMcbGnBPM/7lveDWvNPukH
iRi0MRtUvjT2oUnOUAkW8UCzoPcR70HNrhl9QePNMsQxO0pD7K5fVxp27KFB+kNO5ushJvfSnG7w
rO/AKu4yXdejTs9vRRybF2MPBBQhX76gafp6ABK3ya/dAyrwpAbbzRAkprix0v1244ZP4W6yuwdB
LYcXtnBN1C1CksLT4NaZC8McybPrEGBQEP4wMPT5MNpdDOxuUx//RKnaVhpH5zWM/BjtVxgQLCgY
X13cYTnjpF0u1aOrZm9lt9c56Bt48Dgtko80VFpDkxdNubUU+2umJdutzQ3YsTLIuRqH04PpmHzS
7NzCC2HXUYkY13TroC55lOEIYCmZ6DtiNNE7eYWOVLHpEZqxLqlj//Z/lThcuvLCqYJpO/euDZUT
qmKyM/dU51hI6UvPmVDEdnQ/RvUwn9p7qVkA5f4IlGUX/Ja4ggw9iQeS4z/dRtMug/wRg/oxKEv3
NOmkbpWyVk9ihXOU+4o/OdWzt6EwtGVzC7RcAk4ypte/l+xkQslBTEKt39957K4sL/SsQoDGQxVB
CyKBA8ZrzjvGd9AlKpgmnA7PTISpoIHn10XpKUlBHcEIymtgknhjrtOpBAP2DhMiuMsoApgHlPal
U4T/6mIEq7UKJVNcNGjK5Zl4l9t9NkcDDbYHkMDXK/SQRJc99GokHBT+Nh1KexlCqn7shiw+Futm
ILDf5AuQsRufDprMBJ+0sREaa5hH56SB2sCESqt458nIpft0WIF2Ml7srTj/QAZF/gsbu5JbZ5hu
pzuSANK1F1ntLW/9aj9zEdvRonuD72dSP7fYX0iG8ieuGuLi6n6sVG+BrKRGnHZ2akjvjDqz24xZ
Nj1r28ckOkPNpbgosIFQkY37E6FKL+9zR7zGUGDfahEHWMTYmU3jsP02qJBEVC95GK1n/k038YXI
rv8PVXE8pgxkp/sVx67RDFeGxS0sxAHfSqGzQkmTcG+G7Yo+VM580S3iEcDIhZL8lTF6/MkRcuiP
VYkXug1Nlla+4STCcn8hIhuM1J2FIwakV1+mRM/LQCVR72hyR72Ws4pVraGrpMnDduvemR2gWTZz
Wg6Msi+ZyvZbYxxhB03bUaFpv00p/SApOwqfQsvREn7oKRvWwjj2N1hLrDJMFGXNvCi4EALUc2tU
ykcrfC9/nE4FFN75JkasRAJ/DCZbGi31ApxMANRtoKiMy6qa1Rb7WruHEJl9PvVptVB99KUm3Xsk
h30phCBA7GFBuW2EJcAO+hs6G7Y/DcpYEGsU8Nn18vzz+7nfZpp1WLxeBzCu/nUfdevM2JQHPUo0
HUvbz8pSTbOZg0Xat/EE4pw/fjAJEh0myHOJjwbjDFDGnyD0GuUFuwzNssIzvZmLIs0mFsMsepTc
tbnTH991WC8+gBc4Yug79L1wuKROBFCZ5zalcb2fsXNSBqigVrft/jdOIv1m5SdR0GMZTmhJds3c
XUx7NOLU3LIXrg+2uI2wcE8AlqGj5195vz/qVvRo7XZha/W4CIf/ljyLw6ietQTwR9SH/n1lkxb0
+LBKvPA7O3z+KUYWYsZBVJzPkleuVygo/TNkDjoFNBhR2CFnamgllEDEGQw2CGZ5XlzInzZ8q4wJ
JckYhXboYAv/oEXwCJ2uVYllPGyt8pGK6XCrYjCgw/4qc5eb/isbdkRkjjrQWGMwY6c6+Ux8BHDN
aDMKaSAG9HLAsxii6rBbwlgArWGszqwWggrKuTrXNrpgeV2BrdZJsY1+StFdLWX7jWDyjJb+IvfJ
qERVjfjFpNKogjzLMpfiI4tBxuEzrQKyhn/9RonIWSkIkAVpMpVvM4DhsSHTj5FOnnujlR+83Q8x
Fi9To/gxPIhwKp0/b7AX7Acz5IGVmJDMqVICqBW2Sn/rNIplpnzU/HqB9ZwTvjBRvmd4N7Ok4np8
/8p5K/ZhC2+iYM9c9WHuaUYAzpfqoWcKjkj9WNVYyb66CifdpbunJxLpFIlSE/D6Zf7YYJHjtIj9
Ck+BXyVUh0+cWrzkaOw6MPUcRqbD5jcvqURyyrSkaHodnZICU1qTHxNIMbGzywSj94L7D5H+YD/I
6KIemQv3yyRFCQJCQZw1BFs70OdYl09SQVhiYiNapsYGDgWVx45TmWG34HvKIV5Es9YhHurJ/Q/I
2BbpQ4Mccy0nk9S0b61E3+CVUWzYpdi3SgiQG2VnhpWEEnNb8o3Lp44p8+al/W4gJmjGh+S4+f/8
oxYNKtueFciPMb3gZz0Uphjt1VT55Tn6SEwSm7P1D0SMKXDMfe8laZPjK5fFb9nVupwmnpAF7Bu4
m0OM4SPo3YHxhdX8KPRl1HX96vj1rFFrgkWic/FgB0dS8K7MKjVHUjU6E9+Jy6YL5Lj8skUrVpBP
VopDVcKgkuewIccSykuzH3rAbNT3nK3cDVrQs8jlORFOQ9k+KtNIKjhzLqBQVZpao0aeMvCgcoPv
f23118i8igy/4E8FxDbJMRYuW8gYXZcSadUCK+mrfmcLWjFAiDoocjfRIE8k+3vIQRUhNuL7Qzyx
oDV8z6rI+B+xosa7kVVVsWl7I82wnn5DAjClhYqAppCWQzMlRtTbYPpE6QYqsyPZX3H+aw3nsaHP
QogNePe4ziNOQiQjmyvP8voXxWbnvpVeb8eE8bREdETbaWNWKw+g8ZDtgrOQQ7zcTHWSrJV44bQP
D5qCc0bPgnORpi2UoOil62S0spL6+3mlbNmkGSaslv0Pqo10i1vyqeLAU2hOl1SVQr+sTz2Jv+7C
dm+zPD06YTudGw2jmobLkxPOqO7+5aLASqo38ijkBWzhU8wLSfhJaBXkGUDisMUf+JmGLtio6fjZ
H785KPZVepwl22BoNXdVuylmO6N18BO4ZHIl8wk2iPhfYecQkrHIN3SxNC8PA4hOY1HC5lFx4cRY
e/NA3313tZVBWXe4LfeghjYFkn24Z5niJTQfglmrJn5RxdS94wjLzt2eOtNIq0gudVu5tW0uar7H
2rNvPBm1AZDrSlF/sxbw05YHRbor+Tre0qd0maeEVHE/GDoMH9MtRE3oDyo63oym6V0UAjXZQHDt
TTwdvhC0KuL5j56E0XHRS5PU4UjCDdlXVv71XgLIPH8vPHe7Fy09hu6RPl+ySsmCGL0QIuqglZFA
ON8KUvHjuO/IccXL/RmON6TDoFsKAmjzvptuCdrLWG0lX7EZMwrpCrZz3Al1RcLK/JcI2NHSdqML
Vp++Lw02sh2FsNLX6KejkiiNbs9oUdJgd6gQi7MkiPXQMXTlQdPpxLZNttwKSFJk8PEJI847uW3Q
bciMlgfEjl59ifcZ0F0e+f7auN2XC7tmwLoZ0tKRRdpudxTvC2+pDbB5/yUELnEk1onvP3khc7C0
Z2cS6NJF2kf8Vs/HAWl1lUazWRcH/NMGQRwK60d30ZLarAcaRqsRwkL3OtDSEXiESkgwcA8PgHCl
HMSIPuZbhDZwWOBvFF0Ajp3pS+uc9IF+sZ9HmWc2WAnweMtw79jaer9F89P8OLzPdwaQGcPLfut7
FCVjY4VpMKD36YYPhStNd3ajD5KiJGbtb3tPn2+f4dXpNaoE6sCTRY2APFvxLtrH0G7nDHuLjeDN
zhFLkhYKPx0pethk6dhV0EVKCnUR25bYj1NwlR+rtHknZvVifqmbya2kZqX16qrk5GamHYNvIy+1
XRs5VMZhKdHL65glIX4F/Io+EVeKal0wX9PMXEQO1caFtxDiMkTgR1zpxTupiwepOC97wQCgXxn2
+00L7HzoKfTkIW7qitQmy5Oev+AreTWrsveE9HgQRDIIGyUwhnvTDJRr9o47BjRRFNug2A7ZXALW
bgvBuAnCmgms7uM+ozbp9KdQAFnttyZEe/ilxkys+LQ32a57YZZY+RHtpyt3JUY062uw0Vy/x7LY
kh8QkGQBkiLNoStynOhNSK7ppYWPXE0JyarSbD5xtl+V3S7n+F8ixX422/VomXQ+eSEO96ardrOr
4jRREtTOjOhfb8K94yCQhz8bhmlglJnixB61xYIYd7zDwMleU7kd2WSrZZAXkY8AonLBd09BWXx9
ePZfebKELnSEhmq7IEWUn1fksOyMIEkXPp4IdFUd7A1Wb9dlEFPHwz8hO523XchFs6WsA7wSaRXV
nC50MYRW5vgIrSYA7SxL3wX0c2rDMh/28/142f5V/WPm90OFOtAyXn5Q9Wogm9iPmIaqTVvmVYEl
/4p9oWuGe7O/3HSwJAcYBd5ebYnFc8dS7UCkBPJWIbfgGPqr4zfvdwCNu0Hc9nS0UXhP0vSkdzno
PxUObh/5750OJ09WIcMgP5H/wkf0GlzshSGd5v5T3qCWNcBopQZ4oC/ym9dVE0TVD22IdeWtxcbA
TBOZ2zBItOGhIRw9dmsIV/LFov1Ue74/RufPy8R+Rw3oItr8XVIjBnCwdTWlYMBHgPR9d4XOcbjG
ErM5whHmshiJ0VWGWwcNT51FUVDNtCjGMu+si6StdJ3ETz8Dz2WRkoXZNzCBsvn9Jb+xlxqEJfCn
zCac3HOFeG1xkyge3UHZElS9kkG5y+CnoKY/uHSjzld/3Q1+BtKN//kU8u3/VQcvwfCzQiAmJDBp
QMj6qqQe4hONLQDeJfxjzbFhP939L4etGBPrws/GqglmY2xKM+2qY3bFqrO7NKKOAPI1FYVzp8KL
AZFS75KZr6NQamLpgOVp+FfAB157J4C3wFBeZCn1HPl6+ed5cmtNSR+FHHIYjgxOWkIHg+S27/+c
0lfoIxitR8JCu/ZTItCORTDITmJppeu3rsu5nZwqWf5+oVU/+Ya3f9aK6jtNNmqmUYzD81FA+VCR
md/odwVHeSOFrfiw0v5hsGd29rSO0VhtT7K/Ro9eP1VQbS7eRi8qDz9ENryx/o0L6AMdpHnHqyvM
UIcGpFaPkFekfLhSBzX9/6vcf3ugVaVsyaCq7x7gbZGc6mvUVQlaMizNSp5OuB2tWTj0jgvHAjNx
9WVjxP2fQSQ1Xjzbarn6Ckmlh8mxKDEP1Qe5zVtdmwsQakbqmT6dWDypOsRvZh17s5/FhSs4XtiT
yuoGGsgvTK+y7yTUIi4bZ1fiOdvVpEe5T0SblJ7FmlU1X/pbgo3O2UPkYSYhtmqzZ5JpUSyeLug/
nx+eKBAYGPyKng4a5JZFiS+JLl2vuNRTauTOl9JDDmbcBblHrSSt3HS4WPpo4VenLi8La1hCf/+I
LF4hhn0ZibG4qriW+svdOqHGuq931t8KSxkuuo8ufh0lUwHZ1AIfBZOIGzBPymb3dvkgRstmTTa/
LiXILJKGGZUFWIXYUVU2uT/0yFtcwnqRsSu8NzspSvzPZ+GOnOn/hAXCReuW7k/HVodXTRP2LBPG
C9ezIv83vcmRKSVJhq43fEzspHs7kEEMYD4aDk8gsORhnzNr16QJUY1qmWEFQ3Gx51YUx+SJl4Mw
rPBQL7YsAEp9t8VnJ7wk1PlTpJEjxelvoYR5CYJ08AyNH/u1zmv5mFlQBqXkqqDiE9EOPppAL0IA
Cv8JyfWCIHxV/bfIP9fC3ILTToV9uKMTXk+aUMC6GMJiy/ic3VxYJepotkJp/EtLe8jjRGgP9fNZ
S1gslq/ekP+XyzVnres+W/v//10YOfeCEkmb3grnNV3pIuiCMDbbvN0Tl7fh7mUifthxqvLhHHvI
pHNaeMt+jd5PaNUqDBSr2dgt7ntQsIH54oV1G+n4cnrhGc1uRz2LRUQ+xr4MgAuut1Cum628Ualh
Jhr2DNM2mlxmgSmiPBkoTZ51OdtNQ8n6BY9Q/2caywYV3pAW4zQWc3IpX2vRzU2hEmGvvfOQSVtw
WizsW+PfuwpI571OSHI7/p0eJd/f7/XkjmGLTSgGguaGE2IsXqTzBoPnjzD6lFWPB0q1FFpOIgVh
myV4TqnZTk5MO1GF4cwqam1jc0uGQl1phO6iZ79vRTePLYYKI4O3N3IvSQG5PmBLrtslsaAefUwr
Fkurs+trGOaB7uN1V5XICi6QKXzpxIJ9BkHlpnun5xyG4P69BMLlSTQH03pqC1Asa4eVO7VFIa57
pacBDnDbuy2i5doUFEzJUz3v7HjrUuOB9Q9eO9Y0iUk70vugemytnyqbZaMuGRL5/Afa99IVhmk0
z/WJi4N9cwe5Fw7Ftvq3xCW6sNXqN90GazEJf5t875O7FP1LNEuppRA9CL8s+NRJin46J8EYXj+O
lnobot0OYnrJtYee4Fwy+nsZsjRKp05s3ajhHfW2Sn6dbKUMqxSrAS2n+eySOO93hnBKHkRG9Ek7
c6S5giwpYpIBcXly8lwyYF0TmrxGmAQfFf/rjTgoCkHBBS34lD5uWblQGnckLuni78/SSDp7jjk/
9gmIC0oK8LSHlZJlNLbDHqp58kNu68/VR5119WDAznDbbVaEGevBtsnpdQGsGbyKZEgduDW0LwOL
L3eyrQ5EJBqyh4s7U2z3D9nwdqC413JYzHclR+bDL0N6Ji6/asIH9fL78iAaOFuJNR+cxzwfdAjl
GRR1QNm8D3PVhP8e2K6yb7aFgWjUN5hjSBvT2w052i/QnrBGPvREDoN0LJ1xPk0z1B4O8zJINdAY
B+zE3VVfURLWkl9/IMxyofZvOQX9oi72Kf/cR1kjy9aZjj/vqePxXyuagddBc24JizOEJJwvwkmf
b3tcYTnJYmmU46zUuFzSaGOjj+wpqa4cYrndC0wVQVrLLOnXlsciHQipVoofhdrg4+o0NKomvV0o
NyCsmJzXz5qPz1iTZQa/XUcLeWvalKdCYjWaejJRaY/2ANjFbLHBYKzq4m1ziGbEcZpJfOMs0EAA
a5ZPKDxFlsx366Z7g05yK1KwXQQxLajFLPLGAitNwq9Hiau/8aITfLj8DnTKEJckF/5O8ywmqXGO
ChG23RWNuOkWXJ9PrWLAN5B7GUHPG69kFdomdtKw9f5t9En761qNJbXLouV1nfqJH/fjpM01p5q3
NL2JcIIevdSaK/0twqLjOuPCdGYdJ/qqYQP1yR1mTPF2iVsWFdSVbjUVwURhkV7gOwee3wwti1ve
6xS7I/GzxXK5ILUvGjI9m8ZtQuwT5eLmNFxt2hPyavkhG9T8xQ9JVr2g+gVMabCWp+nSdS+VkkwA
geEOhIFOaWFVAnNTICuYNmFnmeKuBmKZbQ40PxkoOQjixxgf1O0cjm3t/bmD5HQZOywWnPSaFk5T
3/wDn0M3zH+fP0MiTu9/esvwZmfF3Tywg/KlK5qhtFV1myBFrH82FzhMuO8u8fc9NuyQlkH5/A1/
S/yLWR6Yu98HGafO1FBwrf2ZYg/F1K6i87EgQo0zacTaQRZYOjHF0RH/pjMsojRlatiq5W1vozQ8
9QkwJFIO2lKeLLSckWQyUq1umvv2fN4/iiQrWyP22SSnQRooLB1bN764JeGnKNXt3CTJKAeO5jcN
hzxuTK2HL5nKFCw35OsoaQ6up0AUOj72b8PhDN635u/aeIGsO8mxK6ZOfXDNaCNJylQzuan0GGN+
h14FJRfsDvzpFrQP5PqvSpNvVXDIdciTlWmMNC93E6+z/eKcX13eCi7brqGdLfnEExNrBIknbLUY
rclymgqkuf14yJ/d4PPq8LwF69b4vv9pMv0BF+g7irZoL3g0iSdn3FrxdsvWYMGI2FmROfF473EK
dziCwWMPXAS3YG/L4l+MQPXgAkcl7y6wLjhRFpRnNnb3ml9/zrzAS28n9oNYSiM6/x9Qyq48fQ2N
gGgfC6Zr4Ce45Z3rNKUkLoPvW2D7UaXG1pWs+RYRFW52BUBDm10SxAYaKrPKW+KL/5peNj0N4CdI
z/v9njbD+yZpPC/Ky4TcT2N8Oj6vEUyyneVWSDFyO1V9rZ/Fj8ehD5/rS48dXaWqJMO77ll7gB4F
yKKQ0R9GjQTUdufXGct56ZbtjM4D+c04meJCOD0DzZzE6n+qfRGuxVTDuHgLzYp/RUYDC8fZTvR+
Ne9ZwkQahWQFbQDWHkBeGwMTwa+SGJdv6Qire2q9AmTsvIjoRk4iMxyvWZyJJPuyySGroouA/QD3
GGBIR0OBf6vY7VWNjq4Eq88PSXHAgMZI5T8KvEO1HReQuEPew+30yWsqDzauoVEYYj4yv60u9veJ
z+zj0ZgAOcSrEaD8Z+RbmIjKxWyUsh56uHNfHC/5JVCD7uWRhsR9h/dY03uz6FrB85FudEZe//Ze
BVkPYJfKW2nqe2PcLewtvE9Q0XkwAmQDYLaJDVKUWG3oULYnCjyt1RLhNL407EjIE76jsMUy/UCM
JE52q8NzlsjqX5ZfNZE7PxqgCacRIyic3RsQC/ELyJgXFMuphGySkQxps6p2XQdjGwBlpPf4bA08
RpVmw2BnmhKI7I/V20wlSIyR8efu9hdbCuP+rtlKrTZcodE2fCY3hFtbR1Q6IcCuzM2FiU3/TsSL
d0FQqsR5VFqyWAd8tVdSoSzPkuLs7Ie8HBbHhlYOpe5JetdmYadhwGcYD3+781+dtJ38m/6Ds0uH
1thFH/3DIU5dPT4aDo+LTtPGJwHyu8mO/Ip7t2NTYkhi9ZfgNO5sksg4t5Lp1tgHgvmi2u+3+H/6
cKstEcz3Jf2yxzcpyKvLXlTwQb9i+Q2iiC/Mq1oYPhrrfz+1p1EwcGWbKIeMKRyrs9U0q8b/NfJe
iEBFbwrHumTBwp71fLCSisYXZ09opSmxXekcpf8F1TgaJ3yI7xoXpTPuAy3xRIVrYvwr1ubtKMBX
hbmOM6jbf0KOmpSnSSmpTAFqY72/oJg+ZqIGE9sjo+qeVEQUg5pqOg/+kOgb9fBY/B22lwF37P1e
dTNNurjGCgz7SFDaYy4giZQ7BrwN/1EnO39jIuWatwyPFVTOvGu0JoQu+dArcMhBDEgR3s9bWaCt
Mu3YubIxscLm8zD23E7s5L6cOqRUEXcrGWa09LXXM1IUHBAtSxigQ5Qcu2XlwaK+HUorzXTaUzVY
ye4kVGsXCqF1SqPxLrYXzub/fkWiuffmylSAKp5aNydyfuQGRDHiTrd2gCDekENDYeV+Bf9GGA9T
bVZNS+tHYHTKQcYSubJdgVRG6wrz2D3/m1tEX/R+/D6Pvi3KhkfKM6fLKxzfgzaxP92KJf+MVMPK
9zu2JXklue/wraxYFSEuH+IcJnCOnCmwfFa1MQ2o6X7THoT88EBe6+GfX2qcpJzjoJEBxBpUAlVM
KBmrrOJq284djhZXvGVPRI48rUGqNgWNsEsUKdsPfMYSYfFnzFyw4pKZ9hxFaaHxB//ftVGaXxyS
fWz9jevGYZNhIhyGC0X74fF3NkdBwckOWgWbNSbFmY9yraM6YUo8CArbl98ytRLQcLVG/t+HzHLg
VRk+xYoQPxjh/Dy85cAm+yS3SLzbKfXTWhaVlp3yIXuA4RWmXSHiENt7ixQNdyHWbBaw723F4oQM
xv74x3mwSaTB563M5owxPvgpLRw/uMwOe6OheU3cvr7Uq7hWFUD7c+O4s2FP2c0Ra/qLfhWSwzIO
IvnUgGWBXYwambz65utVw6qsdDc1AH9TXsMX0WMcl4YtsMKDn7N11vxKtmEcc6U0FcgJcZsCH1cK
kkDb+QUhlHYwA+uYoNNIT64T++uFqdW4elHDSE+xP+LdeuYwqqrQVE/0vuF/7iFhjCpo9y4WbLuT
CpbF7k3tCmc70ExvEoq4F8/UkpA/75oUWj/thSzD3XSq4wgFbp74bo+u9Q1cLIG3Ob7juXQzQqBP
UsiXjyJAkUuWCFHWAvnoG4QSVBQC1wwrcfi48SoUoAOPpfZbt4npcwP4ktnm1k+lDkdyYWCC+zPg
OdrABvyrm85JksTDscxUxRT7rBuTZloUZ9PN1tbPBV3Bjb03uZy6t/KwxF3+GYX2g2+aDjrIDTTp
y9uvZZrA9d2GFVazWajbd573pvmA1XGZQIDYrtvnaG6/ZdUDdADPOHBx2WQOaxKOrHMLxFHQLG7s
oNRg5ht6xIEMNUQd00GyCbsGUF2DSbLFD1rpKEm4J5EEGsX3oly/Cbvw/l+NzsVaRvSxcfN9LRcO
mRz+fwAjiwMc+QMWKRKUxhe8b/nhIO89jTH2sYvIgJuUQaWUFhJiIiWD/zjy8Ogppfk0RYQbkp7p
XROOP6bbgREKhYF9RARz7hXNdEPmeknHQCKqC2CvxhyuzjaIeIF3PJ+1R2aiJsqIkQSNaJpKUwMu
hIPW75IoQjav4FuyD9EwMkAcbGn86JZbWc49ckqSvOSZCrAdB7d4BvcjbGDhmKdaAX0qN7SUfVxd
qZpuFxyHmrk15MPOdMlLNKwvX85YfBcAwS3XhDwL0cLempwNp/GTGS5IPq2pwGAU3M9JRYszvwt5
G5xYUsMcvs8jvt1ESLJ1vX+4qvAyagsSFiqKWfr6bIpbnNgzNg3BcEi6McxVr27sheOyUPJel66p
2eW6PR6CRAnk9EvGDPchLeso0JmDdONmBch/By/MucYR5pwrlht4d2N/N/ZACDqJphxXL8sNa4Xe
jKWcvOVVUyihPtmoy3tHtu0dN/RjIueN1pzO7F6DNEzFlPPGIUfWrq21owZINdhvGppVwq3Po3Yc
JnYrxkpf2F8Ax9ZbXq1ixmAPDAc2+gqnF/QK02zBdzwOaGMxjMiDCQHK+FZJ7HBwlh9MCA/QofUR
tubQWSNEqVEzc5O/rct9AE903vQEMKGFQ7u+YJjNv0x5zxcJ9Pl6VY0FqCXxY5iGQIcl3+UoWzHk
txYcsYYnMjdkT5RNIqgU2HAZ5BuZmPR9uuZ/6Vw1pOZaUgbjUx4DV/UHzvie3Uc5whFsfroojU16
qj1SL6/G6o3NCRMP8wAfxz7ock6og/mKihgdLlvKWbGVpgxAuSNXJ5LX3mcFHBkTqOw5bLJFNRng
PVDZMi8oXaDlFbxzDo1DBfZLQA4IuH25lzgA24syNYWJUdGV+AC42VXTnzT2pRhCpybr1QZYTWJQ
CUd/yuAZ55mH/zMu5NFhZ0YoXQVeCjDPdFxfk3+aIiwq2Fjlb0alvQ53a0VzHeGWq+CUqAeJflir
TXx37sOcqpe7Sfvsb3X26n8YX8jrCXqj80BDR676ol39Y9iTeioC/ht3ND0cUMuqYter8OlMubJo
ddjSNqhqXenn7zFZHIljEOLCGVZJ9tqCmHw3iADSoQFKSX9HAKK1wR71DVfoHsWaNNANuoaVFG2W
71AqcCyLq6nvUJrUshFJbnPz/MKDLSn2eXKDDFxg9aA1KbJ1GvKetsKVuDn/iXHF6iCyN/CSh+Lf
Js/x9nZs0NcrpowgJhTYhMQFMJtBkI3w4khQMqnqFYOF7d0nrbWApE2t7AFYKy5bCNVW6hop1bKK
gAnaq2l4YSAlCohLwVtyMSm+fJs5Bjg40tVtTaxCFiypQtD7eu+uzPZqiTGGsCMTNtKzJl6vqGKN
FZRW9r8qzfBetP/qJdlqLgZDlUwr4HfL+Of/HprMlqtwlD/d/nYQD9dGoR7QpVzhQ4IKaloUSqpO
pg4448GqE5KzmaNEzGMQOKuLCaDXd1/EzoxqWHYNyAb+SpHvdSYnPdzJ9kd+86Xu5aJTMVxnKMRL
aVE8yFU1i/v5iEYRB+hKZQi9O8IcaEjCCfRNeHDQiiRPrm0Gww5DhmEPuKQXYyPlPvSUgoHKsWjb
ijKQ1u2ymQT4m7f7h8zWDFohbmTr5nJilJ0VDDOFiqaTzHxBIYA1rbBU3Jpn7MK4jm/qqb4mSqdl
D2y18AlcCabkQgZkukMmAuJerQfZylqdqD0syK29FENA4XbUb0h62faQy6LbubXSbyw2Mqhh6j8m
x1TJoFhZWAOZ6KCcT6eOfe+0z3ygOty7fuM+hiwCGu3uEgRkgqnCYUOKyt7H0pHzsg80xNkMdaev
U6A8lpmA+OAC31eCr3jI1SZS1Y1KbTEAMieKHoURIHFq7iIAnxJu2v6K7ex0cctR6gYulbkncXml
det6ZEt+a//WPRR4UeACEBMb85S0qeA5lcy+8ymS/bsIqWlYow7uaIfHOPH8imUtkbLDCLvS2ki9
nySGkhrSw+eViLjNxJ/45LuAaV/YCyteE7bUZ6tgjhgi8GhbBkL+I2YEYNTctnBomHYhBR/RDjYI
o0HHuLa10rMjOd6aYWjOtVzHcE7Ifn7MPVtuwudLbdLZ5KRMHuZtm3RS64XoByvf6Nvt1vTs02KJ
kLD0MZ7bGXbFTH9gTy6GqA8mexecMZhl/iX6LDvMJiOFqw0Wby4H8FpNalQbyWcHXhsLqq2hVqrm
nfFnfSHBWNlCTw3N6bpQmWeZK/CYDrk5JOYTGk39Pm9zNrgs78ec84aPuLVUnJYr/pk/TxuX+Rqj
jRVWqd+fI5A/G0DBXieAde9yViPgjJNIkP59xHG9wMiA+JHEk+64Ys2H9QMMm6mWkCrO505j3wxE
XJJJMceocnqgaQw82/CXJu8Fb1gtFvCXsTIKLRr6B+vlwXzUzYefeSdIy9Wr65i4qx81IXUh4xLI
qiYpo5lpvww11q1MSq08z8h5gYoR/OFc+Wk9U3VCADiyUksvVaTgWXAd45zP4cS3fWky57VduyiH
e2lLA6FHM/o63FRJVetnvv8GcxUltnpX9RI85rBLT4jSKVG7mAEL69aKznwIHgy3eScS4Xsr2C9z
4kLN/DU4F8LWdmXyOSLBmfvV/tzEliSsEkaDjUrgIuIltkiuK6wsmu0C2AyUv2WW3UVJSgXVOPaT
rSHmt3LETcZDAUBhRlvzEAhLPVEbniwnnBQCgq0GlYKdmIaChgAMpbRecVvVWlivxRx1iDnOsRUO
LCw6+ZN4H9qkn07eKIphqF1L+z7+vyoSgAfrPRMhXw5CMtFXjRiszjeGa43koS1mAMWEcQlhLnq0
3h18SjSuS0Gqbt9Fkll0nUS88nkYsJOHo+Bk0jG44G4rXuard3CJzY7IlrTR1xvgMGm/P3S2UuRr
x7bx+2ZaWDtgBh+mHbPRFWrS/42LSP3vQlhu2UNFGgxIqU8Pphl37vvHx9RYb6TwUvzsRX0N7ESo
RQCaIh7jLkemFhYzC3JlNJYZbWmYqa1DsvyOLwjblStI6HiQ7eJLmNK3Ny8QpxBNhXw2ppL/mZDU
q0JuSm6kDj3s4psFJ1URYRzJIA/o1p1r18hkqqC1kK/ukSyy1TLATcy+2HzC0FLdaT7U9AxYirxU
Tbb6ELs/5sdMEmAhwlnvzyKepDHT/9KYOpAJg5H7vwJSAYHNEffFNGPcqsqBwB/P+sJChIXwQwuy
IHy6u0XZNhbIfUgElo28+ZrQbfF3mOTibkJB7cYZPGsNbvvS4JGpMf1AJ81e1Ljlt0aTaBUFH34G
hfJw4BLbM/gjeAYfIFVyj4ovpkE7rI+K7W0mJDYA2s1oeGzuCxD5IkaaVqFOmKkKZNcYihBo3aop
o5cUOqSOoHvqdfk6rq3WcwrwTUXxvDsZZv9FnMem1hNuhq2rYMmHDEJ8364icPMt65RXUSi2jc88
8qVKy/t7iuky5GUjS9+cqIYks/qc9MFuDUVKeT/mQLAtKDGmMSaYuR2p2/hV2xPJ5QjtcaH4lhcz
ejD7lvDTH+1sbx0apluG8+BgdbVgn1OJKL/LKsWTWU8aD9nLHnm1couGAleqkqkZ2+2B/j7zHdka
VX9BRkSZkpQqtO63dTEXBhX225WdpQt05b7vFhvW397I3nYMAzBJnSCBaBf9JjcqusG2PlXsE3/z
3gqiHqXl/fYb1jDv8IQrFCbzX3JN4ct2YFuVvg824IksnRaLr+hHnnzPhHmQ127xnt1OWM3u1Wf4
NEDUAtPgGmUfqYzSL3kpkb8gb+imf0+QLJlWWNPICMOQGFnghij0RH3mJ+3ibnt3aTSKWKuoNoeq
eLph2CbA1HIj29Gh9Hm+/A4iS8BfvE9xtteokz0QVl840BtKe362YFk3wuorVeGk3+r98gdrxx0k
TWyyo/1UgUhz4ACqT2OFLcFQUwgmr3IXd88raLDyJ5JXGNkgv6VX+EAkrMGIxYAMdyRAIupE8jTr
lxtwge8KU0Lg/MhVuOqKGxYbhmQVQf8mu9wu250bdobVoQWTOB3DgoLZ0oXk9YMon1mMMGBTiUdB
3N6aYowWAfBH+bS9BjVL50OeOzHQXHfxQj1DDb/zyB3fUCLS2RmlpBAQLESEfE9viTxbhL3lj4at
LaNAUVZURq3D452TOLzvFBpkGoaYF25neM+xVMA6WaqnMlV3yLfuLx3yn6KSYIcY1Od1wcjCjB7g
x9iFQzSKNV39i+PKbXafRu7YvCSeogq+G2nXNipR8Z0tEb3LGqFtH1OgWTGVml1IgCjKTjfOfdBj
WnYRXxWtDrSL8ShYnhfrDSmA6BFrRf8ccUcAUDOTH7SCQOFc8nrM+dvYgOwZE/Jrl+BEueIppCUS
WIOjoefncTZiksDxVHmsqK4vV0BU/C5Rk0p4Xximatld5Kdnd1c4ukbOhSZ6YfGHMzCYY2cAzy7m
MSHVtet4NpDqLnM44cmlbZaj9T+LTGrDOeMaicyK4mBYmRzuee04o3tXTR1qwd9o/EgsXVEslRyd
5shPxaj7omnqxiLQ/cugbWPjJHCZthj6yItUwST1x/G/KP3kDphnrUL0gj9k09zGH0Tw+Lnx99WP
mKsXwhgREqqTZeT+XamNWPGwbB5VBkdkuo+kj56GIktQxKZmIpOR3tDwRmzB5dVCYxql+MBF+FXA
IW0ncz6iVk/cydi6YtZgFyoXJja6EXPKNlsC7409mnJr/gLWekjFMj4YQWrj9+x2WRXHLcodIgNa
vE7XI9lqGtk69oH7JBMHXXUZU85zyZ4HDYDb1aS6db0XiinDKITWp/hpaeh8dc5sRgdrqalQ11zM
TQWwv/kEbQ2nIjb/zojZptmMgTn73GrPZHCZMY27XZAek9KaWJwxZpMgmaTybQFWHs3HDSUzLtrH
SD5NvVUCdgjJkwDE8P50gSbW5o/9wF/fWntYACRN2uaBIkrDAfejV4A2itjMBrlZxBcqviJCUt1p
SLolq7VPt5M8CIgoUS00X4y+bvciY6TMcCXpHNbk1ZgYwNoCQ74BuoZRpnwq/KRrxgMkSfSTyZRw
8iKrr/dYNkT6PnhKBvRBKD84p6ccXZ/JyXa8socyN1frSOuBFAoQhn/f+PSINb5HkYj8KrMyoS0d
JLXTKiSxf09GYXh4cR09SNKt/67S0lADmk/oAfVLgNlnroh8kQWtEs1kyK10itESVQKmy7Mib/lm
HYdI0EPTC3BEbGBgiXqnDOUxIs5cbJh1MHI8tmv3Q5BR7+l8bcNF7fOhaanEwJhujtw5RmxoPmot
cRNFA3tb/C81T8mpnZq02MMsaiOhJZMUQ1q8ZLAhIedqdtYldGMKtRia9d+B/lBj++N2iK/b2xMR
WYUC4WkjkYftzdSRVC4uwzJf5W0mNhS6/boG7qo96MbK32FNrNcBJleTgBhNi6770qeEBAtM005E
geJxD7F3UsDoxt9SxlaUfkZp6A3IRTX7XsSoSHRdpNj7FRBZ0LhQLK3hqBAokSKFpkiexx9/IDmz
ar3vqyt7ow0c+hIv9aEhKZUoWLuFzK2Q5ugt52NwcGwjXKiuWxeihd9+oH9bjs7PajD064VjrEW5
MEUh8JjhN3X0EwrxBrlAATUseR1Z7DP086cppDXcRYihyLhgsQYSlMqcvQBuG4bJoWRy/egUmGF7
IpwHo1CUJwdCyTiWjuW7nL/WSzeTwRa96gCUggelimeT3RUusDiQmwnnh9pnApEh1ZbsJYiN16Hm
4k912ha9gRyFnmIR/pev3hDR8hW3cAbPYaGK7EapW9A3VZ2g7C/CNvvvs7fOzl2do24OFmaO/vAl
00a3GZuGQPqnwZu2xqbf4ujg4sv9sR1EnaMq6NL6F8LsLqQGsda/Xcw9rY9TweMneXkfQNkPaToM
UhRP5SrfaCoOHl+uDpYwLJeOQ491r+RdRKagYAovzR1a+7kvZO47PnxfLe+XyFwRwn/SN7ESWdta
3ulMs4wV4soIh4bFpErkgpQ2dKcR98YgiCYTFQ3xkFf6/wChtgntD4y9eDDSj2XOr8/f/ZNKDkx+
do6nwVXi7lvLiby1JOODUdknT1yCtUTfKYw5Cw446/vSiv537I2ruw7wSkkTZTTQ2WjP9Gbrqs+I
oB3Irh3MVuBOCWBkTthAxxStC9Z9J1Su+SyUyRSbbKelxlEq5faHUOzeMwSmnYhNCxkDfwTFKKxP
VDFCNFJq+zCOba/GuAUDvteY1U9WXd5mUHrXrVQagEHed0w1YTGK+w5DpGAcIdbWOQIhNy+ZFVE0
i51wnJBg/A485tF52nD3rVkiVcQo2ESzON+l5QZfXG/cWeFywgBBEM4kW8ZpvR/U4F1ApmKh/L5v
DoQdnKtKFeI0Vu+fqRE68nzkHzyT44KDyzV5F8IjBtQTpjhv2is/gdHIMAVvOKkdmM0ENFS0eqOk
gDYYMdgNV4XKdxU0o8bvCAlT0Dj9LApbvH7VAJS2KSgkPQ0hBCtlca0hI7VDKhuGOE6qaF/VbH/1
Qx3wMn8sYYtuEaQMuIqZqbZZdAwP12c3TtEwIG9CGJGuk8eZgzzbAp6oTTs2b8vsqI/S2cZ1KGZr
7A9CoNwU0H9up8cFIpSUynUsBsWAzBR/ROPEhYWlOWvPtZh8LA7LXzwTXZOHCvH5rF6GjT0DqeLz
R/RaZBJOuCfqgc89cfQA3G3ZbjPVfx1nX08+9sqMBjMZlBoNQBAPRrQks/HymgFkg8ge/hdmlI3D
LHSbMjbypt53IKaAnpP423ViWwTv4UFHOc8NkXrq4KNdJ/OxjdOXM699pCmkdVM36pJOnbUa2RFm
pZizfuNXm81ofiemmQuh6cEHd8Prgw3YcVsIEtbceMyn7qRpnLkT2tZqwusU5fnCmBj0G8OHHNiW
a6zmTL5yq7EciGxRNAHf1XAgzRIyPhjsg9mJu2/DIhSd/5zrlUVKrwlU0G+wp8wyJKriwtqOUe5L
r9P6PrDT7OiAdAsLhrPfAhUVAuWGoUtB7zklQyubWO9zy1eLSbKpy6QegqkIXOZWGqWWDiBBlZoJ
VH57yUyAHhUfNzmN+ctPYMFyB+hvGc4AfHc6uq11wzUhtCOJto2RIgjGQiuHKJ2KPZc6AnqwxG5J
ocjpEEzY5DLd03eg1NjQ2H4VKniraxzV3PgzRoEQOz5Z10d+CaYlAD/Wp0F1cMzl9ADoTN7tiZqs
Geb/XcbP7gEuEPdc2zu9G3rau6ZhxCRNoxoXINDgAfs0BqvHy2DV4wZwtqAb114bosT2CA2chelD
49r+3WoaW2osb69iWi/7uYxqPEcn3LaDnGmoS9oAkF8hIrZnxTUtDRVRnCJx4Elv0QubaR0EBu1a
4hB/KO2ogOPlgzqV7vN03ELcCvxELofG+Bz8hUe4ITD8G/bJ2zzo6kqn+0teQ+7FVRtsFmnHSPav
PYefy2s/88bgVRf6G3Qfvj//KKPFtWl0k9Ouqt36mbItDzGDo9Pt8UQt2XIFXOvZIyOd2H8r3tH8
uiIdgw9zNqQok7dTR5iOXmvP5likL/o9D79ztwWEWQMX1MiJYzKAzQYb3XL6GfpAaWA31fL8lNda
erR5ZpO1goIZhmDlqqed4ZVy3UAnNBn/C6ITP+X60tJgXy+v8imBg9CCwPFgNVo77Hq5EbKIminN
yAaHa09nPBbF3p7BYtoN13XJNvOrM1TzczcbeTGBRP9w2ZMBTi+5gRVgjCJ4iufPP+jsQOKjkXET
eqkcCbc6wv39qiuru70zHrODhwjuKzcNbEPah5BZjjmlUoymu0F3i/10fbX9VDajaq7A4BTMTRoz
cY8JtDI23mAdmoPQQG5noWWZ+EY7wFt7VKBTMht3nXZ7Hl/QcBhCoWlvkB1jPXBYzkHf2HPxzWMh
sVfUWt4Lncd+evU+eWfIDS2+Xar2u/W+QpwF1M3BIatNheC1ARzHVw1us53TZxzlbUqqPcc2YphA
YvzpuCJnLLH4cgNDLvx4tsxrVFN+Y+Fq2DOYhTUO7DLV95AmSaAbsLjZ7jdVr/Ew/5Qvzm8TVhOV
TEQyFHOAO9ReoMLKYm7bv6x60lp1hAnTQyzcZDwvHuqtePPtn9XuUEOetCB7TupLbN1V+t44sFeB
/xxinO0IQQrBBKMjq/ThBwm8in1QQ8nlAWGj4jTix8/RSHM6PDi8vNsYD1fKrBIXKUZOS3KwGQse
unkBcw89d5EW8deiwQC2+z3jgxcI4eXnK5RmHoP82SLoSlBnRGBD6z+rnJH30ljRMv980HwiEX5w
QweHMibUDIpHKiepg7zsNR+kwckKcz8sZF6XvcA1TSCoG0UOJ4kfGWPzDKHwYqTTKEPxVQkBQjrC
yFfNxgKACuxvahxX+jz4wBcfcNhEJb2kz5/Zxmeq4JjtLAY9KG2CCT/sOt9iUQdcMqFqHywhrtbn
lr7SFp6W17IjitfuvcCtdTXotW88qjg+7cdSgqYIPGnBpO8yu4wTMNAT+5XtOXsUBCRuHz+KiGOi
11f/RTuZwt4/oYz/go+taUIiPdr+QEnjL5RsV73nLYgGMyU7X7fPHmNhu8hJlnDhLznBrgvuGNCI
fpDjr76VaQ1E9hj3haevtAvDhujn17xLmoWvCe27bo3uCRmtb8TxaUwy3Odj2F0b/+03jDkaQzJZ
UnbRoCeq7fY/HB5+yVBUJnZqSWthLPBuJ3nWJavIkoILnim3y1CdlR2xXNOTLdeVAe7Z5ul8LSqI
2bu7DFgZR7BIgLflD/rhDHuLxW8CgLcBG+xRgUzh3RRKfNZYjJb7eeinGEeSJI6wLpPzAL71TilM
QHV5LB2AJ6S3kd80YHD1MZ6iID6URhDNvvsdD+PzAJZQO/Wks7JU+IbL9e4J8zURPSc/1kraAcrB
g4PgDHtsQu7HMwcF7ty/E0IKNV8EPTaJN+RKrcU3QU8qgVyHk3hbosb0VfL+bdfT+AyeeFkAxZOC
zX+JfYEeOhxqXAbdjkPP+pKxPvEiZr8oLuIJgEu8rRuGoyHZ95FD0Umly0wP79EumDqh7rwrgpMl
JHMNTf30DjG++45ytOSczoxapGYwaw5Sl1Swxw8xLrxMqrfxfBD+4clnXIb8nLcMSeZtwh8RVra8
mL6YLjmptmvSvM8wdIAscFwGbI+ZCGyeC+wpInSiyH5sI12po4AcrkOSWouiWJaVPbmuJS5X1MGd
Vuih1OlnDuF/4hBjtf4uwLpEXkVPLLgYFlX7ROwV25CclYn+dMfyJNoTePWtwC95jAJVVs322Z2I
aCAvlgkRhmZfLUlB8q2p18s41o+YwCWT8IbVB8g4e3SouYhKHMY6zMFzT65cIQsuBu/XnoJX6X9m
f5a8RqXGV8qwzGXAXFJnBiTwgyb3+rSSXJr6fyXw9Gtuxu8+oZ9L5KMHz/W5mhzAznSEV0kjm/9u
IDaDHNRAKy/V5dI/yYIoUwuLFgUCaRxB04X9RM07J/Qb+t+0NwHa1h5xqEnNsxgjl6yyUKrKUaQH
cgEd/9QSmLVknFooWcTYJIqs7z27WFV7fxqQR2f9oe2iWJLWygy041cXKlT2ZNqOriS6c5hL4rIQ
hbeOciGyViAm18m/EuhCTzuwORagSlnm5LrY8dSl4rDnM+ARDq3o6v1PW5Nr9+htpG7aah/d/qBV
Cv8WAfsoDapoiOh8J2jOTsRwLRXDu+RhCZ0MCl5ctVpJJztPXo6JpfCgE30YN4M/c5wHQ2L8+CA0
UxnE8YTyIqDm/h657A6NgQdft4U07fillm4zUYA9kDDEBwF0jPDJnpyuBLDMsgzobMK5d3Upek+y
ioH+4TWNNsRYJZzQ3sweWKyARhXMk9uraKFIlSEVvogzG50uIoOkOFiGDssE+czELAlEDzHz+51K
5JcSSrF/oyM6Zim9uAp/BUqnVvW0znMBELIoQcmoytMn/2B7SiUkdvE7cEnjaRVs2VSiQC9O2zrV
tfXkTZCCYRaj1iB2os7wisdfuzNUQarnVgYlyj2Q8ohSNgm/+5qmVSZ3IYLLTJxlcmVXjorxc3px
qigWN0dESxHt5LmyAkRNi132yb2KEdKBhE8lwHxOjp+FYdfoYdyir8JWS/gC2ZqB9/kQ0IHg/9lZ
/7yiOocMtp6obelT03NO8Nu9XwFYuSK8nhO0WXiXtgvni5FcqnBgwKKecudcTov1ZO27eiPe+w5D
9MJbWydHtor1IB29M7Uu2B5fHZ5O59HpYJP1GTLSp2PxBj00yRR779zQwvd8nYzuETQmxmfa26en
Ofx05L2f6T/3B8KXW/XAL2ydoMInT9/ZysdVFcpvSn80CZu42NgGExvU9BisisQNQ4tcY5yC2GQ4
6cQfRTnyMng4814mbauGV9OqMoZEfiJy5MBPlDWb9YNu+QDFS1/pcjgZl62c/pxuckiJliAfdJbl
AKewwiLuzyJc2NhhVzT8b4i2BIcdmofMK1zgMKQl8W9e8/9/FwgsUuz5mMjPCMV+0jdZMCQZBXFL
kgbt54+BYvFx8nPeHQa/iRm4ibSGy7U2WLlwnE0e85UrnSL48WDojvZO0IVb+B0K56wzlqk1Y5zT
gvD43cjFPp6gfBY4fj/Ab3k4So20LndppevIsgIAGInE1ef61j1jd8Mw/EK4TZOBiM3WJae4QRQH
QW0USfbCY63jBj0GzNyqT7PaDY4idO2ys+DZs8dut+Jaq+unYhV9F6qtuExJ5xjYuwD2kkDHm4/s
S5MVJAwCZo+xKZMvgIWw064BVMMqqEXGOJAp7JgO2ynkHBEW8QWEeX2IVMzVd2yFK+klBnvHMcXw
gFYGguQFnKp6/EQkg3kwTfKmccc1GAddnB88z8rKAH1cGwIntffEvaZD/GmTQwQy2XAOh7+tXhAX
qxt0MDBDJC/OAw6eKO/9j9VGJVGEKejRCxPncsaMzVGedhdKRU3RxMaWuDYBWA4fD+twiTs0owY6
LrRoSbc1+1jCvtKuKCCu5ieCrNCU4HkbzEMWLRhm5HwYOqhbA59JIBcD66oWA2sg/fKBTbhSlj1k
PBD3z209BIqvewf4SbNfiHuv5haBK6VcueRkMsKMLxTmkYrqqeRbprdgFmUzJYZEAmhhXkEY+rD1
pvgWm6ruTR17h9jCr3exeYdq5QOnJGMqIHa7do7y76r5mzpILOrdSkd37Jfm7GUG7NEgYZyOovfb
rxy171Wo/lHY2DqS+0LJmQJRB2c5k1Byuum4NwDUo8dOpJOlNO8Y2efeTDzFucWse7rg4vBPSREt
agYNBAYvsn/YSbSo8Vrg23FheGjalwGvvcPNDfQY/mfoc3sPLPFNvp4fbq+KFdwUj6MzJu89+O3/
m1+mYEcwbW05Pi7h5p+bu3cxkrNiAx9kvrOlpi9oPWBwQq7/9+edBrnrYhniXp2XZyEBK6GguZWa
0yhBcUfFKpLQ1iY6LyvhSfNudQGsn2S+iUOR4xpj2xqa14YwEwK1KOnErNcDAagAyMwZDPbX+yOD
nllh6jgqfee3vEOr1qT60fDG6Hc6majLX/ChaqJqsAIKk6uGKR0jI3NxOsE+kUQsWQrILA5LhCD7
NHtYZsiFeoOE/dO/sW0di9ZRCtWWPf5yilPt6GpKzHFT3pXss4GlXTB5ONLP6P1sNjrruZTR7R2f
fahLLO8TsBis1oirwDphjGB98fwKihdxKrgaGxkymsKXN4Ziz/VsiuQp+U79b8/vgO5oBO5zmNQP
8MJkjSVEqCzEueRGMbNDOLvmiriNShWWu3aor0gWEzbuUB9mnV+SVhMchwyGMwzlc3hpQKs6/4pX
jtZtk3+fhodiKppYaxgQASpiE0hKi75BuNmpWlpcb1QolcY9FxEOrMGpFSUdMhOKLg+NnQlIn173
5bpyTrl3BbDiHtvanvBugJsyHUq9SCAVRi7D1DcYjKl1xoc4OnGkJB0J5fn76M/bN4Ueuph74D9y
zsnHujd3LF4VZSAY4gRJ2ohynfuc7P6Uz+Ev9zoZHlXxN6CKryWUhbemAUJSSNGImuqHVrkMr3pl
YfnQ49wyRXgIEnNxvF7w9JQX0Xz1dGmXrWKuNtmwf4Hs5u34ElrnCH5cFUtfSfcLKQGsY1y/s4Av
pa5P3zW7j8dYj21h04x7tX83glvvTI0edh1p37KE67hp39yPTvYbXJPFK9nHQTZf+c0s4lv9GFcw
CTZaUHH8ulvMz+NFExzo4y8L5BT/CDn1HruDDwNV+1Au2fbcwzqSWGMKADNxZ20e6sI6hLTADTvP
pINd6U8ReTLaWsc7LKOfeHuXn43Uu183W6/sFDV2jCEyuvpI/ZfQUa10boVssNNh+wWYu1kClApx
oHv0DfSfJqYlknwjTHarc8FkZAlH0LGniVj3LFU7Q8ruPC373A7TebiO8mhmbaHX/KLWYXYfyIRa
6JCuWUyKgcxJAXC0KaUr98w6ImPAwZsNAF6QFb0UUYCCFOLZcqbeTsPvQoyhaO75uX6nxa+JPirH
Jh6AYXXR4amia3XeYPpMcsZlk5QsMpwEykHRInO0tt/GAyHS2cMVch3c9Y9/TwE+DGBpv/zZNnTr
mYZIqYghxz+paYVnAjwXUVH9CPh85v7XFsYF5fKizaJso3LDE1NGFfQcp0dlQvZMH/HxiiDyHJ9R
4hZejfGvueJ/peiHV7bscWT+tBt34epA32M83MHRIFrLK/BSlb/9gaWPYFmbox1Roa6NudbpgrZw
VdorGY58vBlnLbprHflWfbIckU3/xoEXmJJs18aNZ4SQhQ/I3+pLunu0/5W/HXjfGO8EFRLtdWXH
D3I99jvxvRxwGqxJfRfqm8hLGsSLoyTIwtwefIifKynSFw2ZXHSsvMHMdPtDNlxrkpTKl+bcY8KC
GnWFc6dAjWDEMfh2vhD4SCx1udRudjGkn8h3JQfVUz0lgYff5+u3ZS3SZNtzZqQXuHvV1fdWco4B
VzpFcHWdOkYGk/dfC43t2Bu2VLXE+8W3CcfMoJLtOW/2uLasII1PEjMJiL4Ea0qbLgxs6Qc6m7lM
Ekg8ATgQKKSz3buFJi8WZssQAqno6sRa4ggd041A644D794SrLPSZJnA6gq2K0ZCm68VoTYu4TS8
fOPflM0dUODt3KKhLgXopSaZbQMAmm3UOtl8k7QXmrlAWP1OmGJsMBsXF4XYAbAS/0YUNjz07z9E
VNJHZG+f4qDaJ+9KD6cOFn8S62VZc+wLJfGutR5WI9d7N0qSWcaCkQYWCDppbYDGPezncP/CWa7R
nW/kO5iir1oJiBd/iPLAh+5svJ/CZ3RhLaHOQmhLYXtgyL+g+bgCNKwGXdoimRRFSA9emz6B3Iay
jyNCqxIRrAWix5aFQxgDuPSwH0eJYZtfAQFq9aoJ6Ga6lc6Gf56F0UkCV31n8cNIWbkCq2LnG5mB
wV4i5ZDjDg//zQI1wjDFniebQDH3sm5COgrlrK2J0gB7s8c68jMbAiCeEIc2DKDOzfCS+sJgwi5N
8s4XBZW7EI6D8u/ILOXA2gFyMP1pnAB7EvJBoPlgAaXBJE2P7TbSXYFFdbI062mjW1alEXtB/RLn
+ILN64SKKpV9UR6ELlfB2/B5K39N0CyDVsN51IB2lejLzQQhmXpRqi0cOuWG7CUenp9c6/NOjP2Z
KK/mdb85b5h0aRtH6jalwiJ33PuwzcVKvVuttkp5MViPOMc5MO8chBD3SyVwp1U+bGJybLTVeBqM
P30Hoddi+AsnK6tCIxIHXlBIHCtqhYcf2xKy69N0R1e9FQi5K/YZBJ3pIQ7/8m256UswYvcUCIaz
uMaJO1aQ/Gh/G+al4nYYyqakrR0Xjyrwfszls1YOXTYfoOXSR8ah7ESi6rBbibw+vWvb9YG14cdN
OcIrP3f7CSEX9s3Q5mgnNqVV16OLRqhGqhBq+sPVhaWAuWco5kmRZLFc0LyyRn4bzK7jkQ3spXus
MWbrAFx9VYGyZgibcxxgYftDvzafaTCFA3rp/2Q0OLBpUZxTJBtmawRwJOQ8eYfvP/KpCreyQPhG
1kU6Fi+IVmETbKbNRz0M9MmhZ0KlQJzWF0EdgxKFa5bkukzwl8ZEmAG20TRNMdHvBlhjjZySihQ9
xXUIk9KzFlKtnJyD5XK9rMvIxnXHFnn8Vjsy52kAqIpO5GTOge9T9rG9Fl5ZxiuxTedI62EXzme0
H/+pvTY9BYaaeWug50wtQzwtcS5Iv1L/hrcJk0xxAeXVv+Pw4XUS7OR4ryrciyDSrnclL6l88e5y
y2u5dDDSzVHZtrRimBALBwSVxg3dZ/PajWVuB/dOU1v8OwRDMdfa0Ylu4rfcKVZYhgWAdJrhvJ9M
Y2K9nRtEMfXHeYIwF7dEH+WycANfpK9txRT4HJM12KrhK/rmkn23mjnuyYC/gTEFCzM+4PhI/kP0
zAlH9zFwYORN5PfevQRZ3hcdcMXcH0nP8GMNsxX2nTIIJ+gj85YfUAa5AnxXror2vxSzGSAjPerV
GsreXqgBbTInKXTd2pebzTRhBVhA+gSS8xtBFQDXicDzTFZVtCnbzYuBcQkDCZv6UsrUNnHR79I5
1ImgRagpKX8/3hFzx5NUEJ5FqteLN3Z5Wjb8N4MRHz5XaiVton6r+Hv0A6stqnwUWzNndUlXGPBz
NXG2aqV1pxKLUh+fiqWpvP1scwWBfhLL6EIessiisP317GQF3eF4cTl28I3mkXhDoFGjNH61Ib1B
K8oww7X1NKd5AGKQz504YoEG+IAiaVo4nj84RA++HfC0tOHCSf6LhQJgLYEtFA7rirXaUW/PAQkG
rIj6HQxarD9jYsORYp6iGLsee7NCEkT7wTrY3PRPqyO94FseM8e869D8sy1FUsCflmN3aWoPrn/n
DXTpTmc9A2nqV1BJxVO0jFSj3z7+eunFd8qhE+ENLh5il9UIg7+xiDsaDiOmdKX6Ql1NXc6TlrlN
mma/bCw2Med64JRM8AhCCzZaqLgpe5gRdHe2uTiRLO4YvEYdGKaxzOcSL3ba7qnJ+7FNcGdQow0J
MMg3OtmsSBXZWMKdVjnr+jyKHb3xPR/m7yQ+VDlm8/ZPuuFdFuNavBKySsDkMT9AKDJ2SE65IrQJ
VdNo6tzPxIpkbgobGOxN7SBXNmTnEAALF/D5mYdIB2U+Vhb8V+mefmN0WFBlW9vyklsJrPxbrLBO
kQJtpwIvHTOHLmpXvIwJ68NXXRV9Eb9BdiUlTNIbH5/6Og+/zFgY2lXFAqmL9X4gC+2PkXdodt2o
6ATYM/CLRps5hNkRHpCpjlDsLvrJjm4sRy/qEX4T4/J8awVzp6rrpZTUdCuWiKjxEOWLJroFTSMv
euTAKs5fkEQBSq04cJro0mH89w215UH4hdvvTQsNW6/iRJFxSVaQMU97pW+7sb7Ev6wCzWE8KE2V
IX+1OjFHxFzc4F/24/MRLu1xQQpLfjBfmXZapyBM7Pho84HrEcY16/oof+Gc/+14EcKuJntpgtEI
Kg2I4bRjli6A3qw9nDZtQ/w6LrF04IMIIa9/ucv+9HYJtD7NRPJDHkLC/dcBcsUAi+3X9btgoo7n
9MgnCSGWMuyHypwK0LwHs2pjv4a5Qumdmn7YJ7FysD7DwXiFax872GiI1r961PEB8stAYRdxn9sP
8Vf27E0998ssTK3968x+odA5yj3ZlhUznAdAPW5m6trQsg08vm9dYDOq9NSAiqxdFEsUs2TCTV6U
DQ4qWpP33kePLEtMgBgmlQkfn1MjLZS1M8BtFAN9PtrWuE0uiz4e/pDnj1YSmpDZa51pOHX/JMM4
WygUuqguJGEG6GK/P8qMqD4+DXUnDT2hQVvedlX9Zrf5h6tCA+KwC1Dkl2aAary1/mQGqGKFCTDJ
k2ekvDApDe3bob0qXr3BHpdXnX0SQ43FJ/oigHlN66Kx6yeS6lpeK1Uo21NPxszkonnYGSx+BPst
wRIosGjigSWECpZiMjei8R2TXjPH/xwT+DFHmyKS7K4bQdAvKmlt7mlcopLBzVn/96NTOwaLinIH
6OJ2OSumVopL0qo1Mj7y+8XTgDBp0UyPBc5U5mWX1knpO47mDARS2XParcEwrnICa+nVZQ4VrheT
EgkrJp9O0SJe4zM9U9fyABi4aJAbYt4SNn957JRGCAkW2W7AGk7eZMOKcCa9a6f2OhhAMGf2A451
AUNVnv5eK8NYZ4jF9oc0kDm/VZdbrTkQHDeoGRkC+uN2zDYAeM2coM+knYykgJ8WtRNblr7QMoxG
nFRD2IyhDXpByEA8HNeax45msiyWw3fs/+ai/FvKN34ZUUqMhnt7bUjrHMgrR+IN99H4akVjs6mP
nw5xKVflDv5+hZAVkaI4si9uv7Jecidz+O81MYQMN7YiwZlywX0E9XLytuMU3TPfvJxWd3YOJoe6
EFCCdgJp38N/Qs9xxQaq+vJU4Feyr5pCK4TuQEst9lngvhKUIU8TF3ne8JI4v8zX1hqEbg7pNWBQ
cRVFPl/BSHGwSaG4VgnP8n+1n+O9qB6+cRX4anSMe8xRsIQBYnLVOYAGN3st887nRPLpaxPmeQjL
EfSZXFiOkI6h3+H8gJEpRPFgHKJXpyLYjkVpcXOzs0hnzdNeTnyDhvHypi1bdm+u0FBomS7AHRvS
Z1F0zt9unVluc468kC4990GnRhI1Kt77gZNzoyJcIj57mQyuEnLkzyRceqQEpnrl79qLSk8kzazI
dzh2O6zkmBuauPOBxV8F0hb2fSXkpHB8cjlBzlGaoCnB9Qx56qht4clPKk/87R4uGPkH+fsKjeRX
uNuneLttloqOjngLakkPS9qmFXf5Cz7zjEL9LL2MAqRsugOZOxRdbkbM6rPgTYZwQsgaMWnRIs8c
W5661o4HkDfHy6RYP+asCmV65aAV1NOSmo9u6g420dtUPxRRrg2CZKoIej4B78ARrnBQGZFwYaSR
s28iJen2amZGfgb5iONHrJoRMrFlHJl2+gg1RqIXTvLpSnwzedU7fcXi2LiN6UKusVrqg/4A3XvS
CTdnQhGQX9/AnIrsjbiSfugqH3F7dppsOJZCK5nTQ+Ei2xAZVrRD63IMqt6Iue4mYVX07xnuzADL
YgBQR11gH9c9t4lks0Sv78qnK+3AIRa5yi3zUYMH6FX8yV2YuBHM9fhWdZ1wy7NjnvZK0JkEuBEM
mGgbTdXUJf3syWZ7KaHzDC6JUJuWlGOaram2wQrxyULevqeC5DlENNCKOWJmLnuMBnI0KZ+volii
5S56xjIVOFLtBo5WaEAIDOzz7J1hDZTZYt8czCm7+wLR0Y8DB9Kq/4jCxT3ph0OZPLdAF0r0FQD5
9o7VRZU+Of8jfAgeyB4HJ0FZpZtIdjz2k1+oPV3nRzaLqVjqOgaHQrfE0Ptr8oz/XiDgh54HzkjZ
Apk50d6paH89vZo9x8wBzGJWJfoWsr8vUoBlvcWfiVqrcWEDTjIQ2OvaoCqyxba++cP9+ePcEao5
flZABMu/k0zOZlYJ9BnK+G3MQWh3/N9s9Rfbb7XFjmJfV9Fqs8XO25yiqz7Gl6W9A56vcE1x0/4v
cohF78Re0tKMPj59iW1Nu2VQpTU1dhAfRKABcwE2HysVKzw/aAMhGdsUqlYKWFCw9+8G8K4sqQt5
Ml1JwdA4fzLpubwSVmIjO/g2GZMk1IKX9Y/XZ9b/lKnikDCUCwFOHHGAGy5eEeyX1M2x1SZROIn1
ukRxrF0EeBXDIIvkl4MqyO4Oay4fD0vLTIX6yEDEzXg2ec2H/2npvUUPSqULywpehcp0srykpUa6
zGNTYDiZz/PffE8XgXUW2QRLrSxWNoWT0ZH9aPXKRb8sCcv6Qurv6cb3zWp4I25wRVMQYZzBnY7T
KmnhrF+qekRi9RLIXp/Oy9Ndl2nPqFsTSgHghWvltrQlHau7lf24fe0yEKhI0Qe9gLycwxN1C+/T
dkQKc24NiNdsLvwkxm0wy6UYq2bbBCZ6v9LlPrzrNFXHQBQoxZw3YIXTSNuUZh9GR2Sg2CO9pbmF
FZ0bfpmu+/NoMeCoCCDNEjqsAxSaQSA4rmlgs0FTuqkQ3YRI+GBypvLk8mzFUdIW2k4A9xQzacVi
3NE9mz3gbpXoo3a5UQ+Ef9KC9OTIErd+XDvfhc1TpJMT28Rkl5WZfbX+6b3LfizHv/sK4P1VUhb1
KzDOdQTNwo1VZO5rDhO5znKGyx1qXwhTn9RQV6AG2fLY5SzMR2pek/J0LgxNfCYQsXZL5twvwwC1
i2YGoQ1ZGQAwRvBFYUWMKX+BtdiTB5fCI/51DO8H7BNo9MhVJ5Vl7YOu5yW/Lacdsi6VvRt8Jmba
Xr3b9QUWRjPpKtpZxhJsO3N0wW6PrKG6PANVvdieZmDPGUokq3/3G2Wq0JQiypCrpsFNlnK004Kd
C68K8OOJx38FAqxSZJPjbwXfAZtZjSzHcq3vLntXJzzHsPeiJbroX6IhUvkdNtKfrKmBtzA9wHlH
9CoKq6l2xuLbx7zFoIAmCAN3uxaystNJ4j5C3AEjbwXbv1Y2F3af55AKGfCdaLvcqvRrIiMirOoc
HBDMx/N3p8daJKqe6L+aLFIAycBRi9M/zyPZtaqZjOPPgMiYVzixoJKM48r2SFnsw2dMhqYGU3rX
iXaaKMw2xabRPV0YQ3TOG/GpWK9HSHarQMmHMt0CkoMP8epybaP9oH0PTD/tEI6YAP3jhAcgbz2q
OsD7qCHIncrhIb9oWMFjA4NSyw9TGKS8tE4kMAkuAcFLiHwCcickNY3WWjIwF3fckCTLxpDHHx2V
MdWCAm1CVJja6t+c5pbxNfhMv4akk6o0iriVGlO3EGBdr0auQFTPAFRh0JbA5qZ5CCIe5w3WsVxo
L39Vh4tI0KTFb1QeqyVMWTJQWHHeRZ/wFz9tleqxb15FX3RCciXdMPF30GtuPzFD1fsfapCMd84J
DhS9/vf+Mavs3kxHpzKUDbefifRETyAHojNXy289bCiNLpnId3AdwGHNWhU6QY52IXaJym7/iDcV
SNwTiMjsJT61dgVianpOD518rFDyR9azwSur5xn53D+3RfwC0bPM0u1w0gnxISnFS1Y2qyFweyde
/gX28UXfNFdFX7E6tIMpt5kVvjzak2rsHmSEB1OvlExqgJjQnEtp57wj2tav3pUoZbymukSAAH50
lOB65ZeINOOmYnFOOyUWG07KtyI5gwNv3qsMVpWGzq54DoZkt7OAMtaQmeUcyAijgiZBAXY/F2X5
qki+jfqFbE9TxDw8kvLOKKSNZYXi12FHfX5wnnMO1uNeZK1KQE8YP7x3LE02nLD26vtsbO4ETLi0
E8MVzKI7f8f3AiJLYsA03c4TzLjSL5WzE7Iy5ScP/UGugCvMQEbXis9RjCii5ucgPrzQRAi1E4uP
9URywd7i3171MYDv5Ah0S0cSiP9WkHYZM/ySiI6Vk9br7knCd+X3VwNO8iVOUBdquIX9ixIDibrR
OmHfe9wwlMRPETRt3dXzzKRvRighmR4xYP9yPK1+8dX+WUo81aPhMoW421AU3XjSKD8mo9HxFoo5
hTKZQMBlDWWcaetDnI5otyGwsTFrMQ7iBJUIfmubI9aTYUPxZ5EO+xickgKG2uj3dldBf198taPJ
dhCTdXzqhTGmobmQ5hK8oyktN9OTFNp9F+944XW0tlT5cnZL/Yl0ixDcmeFx03+NzPrKDPqtfD9H
5VOL7kNvMY2XOo6kV2sPKuWCLAOIU2dYfQFqpTX1Pj0W10YsAoVXWzWk/m1OQOb8Gb/pe7YnGxe7
a0ktPpEC2YceZYvE73NIZhOrA49mK7My4q0vaXYVjYVU00pm9qwjwmYL1sj/NpYDrYMe52dChDTP
swdzdrNLDEFkkPZxxtn69EIfypetgHmIXS0zpllpI8Nqb/L3q9VzeuCJ97jFlVAkABeyoz2snzeZ
IlG3M/vkSpzokkjc3zE6d9hemu2Fw48QJwBsw7vB2QQi+9pDauvTEvdlXcOKhpBsVMWskTxrKin1
XW5gaAvZNIinkvIIIt6IaNKPhJAZH2bFdqmWZvNlXw2WKhNx1iS12qPMH2ffNwC/M0yIyYCSVEm7
4N2LLg10whMJ1Nl1dZ773oqdkEOLaHKAiWWx8by5GfbN/y6hFwxavPKIo6zLunAzh5hpvnPre1Jy
dO2qnlqDOIT8gByo2EdD7+283C+yODA6L5kpfzfpt3+JsiAgxGNPwjmxjSTu2+GdrpjAecx39tbg
aJrp9Terpx2slqIfakPwP7U9bqIV8URuMUXw0IErfCdnTrXsYV1nXhE3lk95GLPnlGe/x9+08sSh
Mob/8AO2jEaaELjWESCyxhd85HgCKH5zx+ckNQBJmEfRi0W8NF2fqa8FLpFlo7znoZQGuVbfFEnf
QBVIAvdy8GBNFCYWEvgvcs+iFDRcxp4AdhlhlEOK5mqhUYPo/WDgnHwtv8MqiJ82CiyylZR11Ea+
Ag4Bxc+ZzO72+coQEybr6/g28hSSrYIB/02NAvc1EuZZU5R14riKKe5cPrdrk1F0Rtd/4EAqGe5c
nE8alyPI28G4ZpFFWonWMNNEUaFUk33O9ZjpbRQf22ZRCsi9+uxs2bnwVImSQ+8kndemtdhgqgix
M02laAaze024Fi2Tj0TT8CDxnFxqfqDEdma2VANEj1gfzPmkMqfihn7zB1upoZ+Q3TfUXsJ1KrH2
SUabS8MWobw4TdORrbyEvXH7EK5RMAYpHPakNVJyXwLya04C/ET0ntDSXA6zZrW4C0G6YruDLzZY
m7BfUcnkDvkb3Jgkv+W+7STVgRDDgIz3kcoBbRk2XypZtRM0jeQQ/X+dhXp2dwg43wV8oHYsElDw
yTfkims3duBH4dQjAbMB2VKIVuGCKFQBJ6NmyliMTtn+65xkVXKh+yJJIQZqkS6qxrk7KeNB0QzF
Y6OuWgeI8ViGQe54uI1gIdl9SvQMPR9I/dM5IKG1pc8xBrldzbGJDTT+rNY1u+sKplEyuKDso/39
eiuX7z8nw6lZj3tTDL0jQDPZmMh3bW1kNhgaLEe0F7eyGsUvduF4oki2ZvL7eTXikQUaS3G2SAxD
Zl/pSt1phPYwAUtuW9anFejqQOkUDu5E+ziJUwcLsIg3vPKsm2ULuRj4O8MtjW9rHBMXaCgRtXrD
YOwmsnR1HljTHj19VqQXjUVAqfiXh7SyvGBVs9ouEXcv7Rb1eiXuUrx/dMqeuIb6OlBNLfqnvT4U
eu0zsnBFJ+vl7WBfx3iUtMBlEDtiALEZF1lviMoZg2GTj0+3f1j2zBrQrlxZf6X4nkK1bv3VNTsB
CgkmSYx2XmnMr/HO1gImQpfgnExq9xM5ppFNkmY6FBtzXSMb5Z336wgi/IhaNAkUowElbo/XaWD+
EMv48grBgpSWum4E5OETgdAqeh2/8jF5VjRNzjEZnp2VMz+tWvj2HQKtkZsrf4KXyWnNpGe9Hu/S
3JTTeJdSnSSJPHzkP+1T4jsxJuB56uIt/K3Ad0xGz6xSfV0JfHrPn/xnwmBtUCBidMSYHuEj/j5P
jhvnQx7vn/mNnj6Z57LVLGVEMxHb142imdpLxaM3K5kUzJ+u/E89Qmj6A9rNqg+4d1axPLIaXjXg
H1xZcFRN+iY781JWGQhr9rAHXcVdOKjzGnyoSbHw+JvltG68UsNV/dtej5RvPWttWzCQp+BsxxUu
vHZDgX8V1AsBFrQupLV6qhq3ag8n9KU6nEdQkDF20ZQHV+lwqW9JsliNN97Ff4Zduos+vPvmGSpj
jxIZpY3dtRRMuSc33bv9jk84GAQx3Ko77f8zHL/FlmaL6jzgdf55s9p5kBn4IRt+qm5kjr1Ghw3o
8cp3pArXsmeJUAhrhYy0SS66S704goldgNw1hLqxdcX69MIhJiRurmBIbP49ToEaaI4XT8xrjkyo
8gzd3ZCqp32Vfg5FB+88d2GjeuVYyQTe/WdyfPCqcR1rsc4IVVk7TmFkldbnO6uDdalcnImpJ4qf
w7308bMOejk7J41oCWb1I+dLRrIA31EzEgb1By071BR9EHYPxcZp+sUGz3zLRDozrgEGdaN2MeHE
dL7JlEQCctoRtMCIZWB2BYEicZdB9CcIwS+rtg0WNNGHJPSYrd63uDi81cdjBYNf4Tl+6uVvBpjB
RiGNh+6p4ETkO+76cirTApzf1RcdlcLR7g84mkeCWQHHL97obit2rWHDtQthTL+k4es29n5nhGOP
TcV4xIkabFnRMJG4BD0xbkZjIcx/rrkFaEyNEZRvUtAyuoQ51oTfbsgulBh+RBheABfPVpg2D4tk
I+RV0bnPQ6fSXj6FGuu+dPRU6fSu1Mbd95TcCR+SjxOkvdLX/QT9dkro45W/3evtKIXIl76FBSNA
sHMz1Pm48baWxSw0A8v76XVSBpyN4VQ1SSAnWnGdJ+GxxnWBBZdsJLlcZKfEU12vxRAE6n7z87Nq
QpOUp5ah24I9zhO5QtgKD2mLXYiJxYW+CcYZoONQUkaNOuM9zJhQOF6I0wPTI/5SsrKuwiPHpXq5
2w3IWh1YjLfmWK1ynMmKEfGlTJU7BRlZqYAhSoVABzBkORPCRITj0AyOmhQoc/G8FOmMXhQwPpQc
9tllnW/j/6mjc0cnda+FKDUXzv4CJ8wjP9OZWJShfs0TImAq8ybJMMa1WlUYG6gldIFc4QkmEEi+
Zyxj9NJYSNhkAMNVQaldMWlk7iIuyz6i9Pi5ai5kYrab03NiZvVrok6CRXmt5AFSRWY/NqbWq9FV
BfqCnQG+u6asOjQT9khQgPIcSd0dk7hGn/rCquoIZAgrjFBWejhv7pqNze3DEJM7t6bINCDs/hpf
UnauwKk05IG+dA2UFXqXOhqf7qYW/Abu+h7w19/TwjLD5DNVBQsqCMqiWpTsXX9NLI+90C1YqCEA
KFCTbpmIdTG/ohP96+aFPVvlIvVF1GZI1vcCOA7MLXF06x6MDGR9qtCzTB3cf3ufWkzbQXg/VRxr
Rt2ANRr/roXYqK0uFA2Yfc225eXBBqbhEYlPglMreWzdHBXtIot7B7zaNc7C/47E47s4+akWphV3
/zFcJQzE/iywrH8cppxPXQfqdydiCAP0PRlvfN8nCPnU85nVy8zd3xssEqwUFr8vYBU6MXwqljX3
emfSXjZ/JKV+ay683XmG7XIuH/GbqloieEDbUzdrP6QE/+SSCEWevPZtzxKCpkpJieGpGb8cFpUn
UhpaHbfk3gGun/xqqV4SkAUy2ep6kZ8HJKkggpF7jmfIeRHlFE+w4f6zdQuEu4idLySP4lLY0IfV
+YvQY/oNvHpjSFibePSprl+7STlHQcQHLsoUVvwaUDCWax/6jk5ctnnV9oH/z57JylwS06WxgJXd
hjl+z3XOxq7Q2ZbMltSdT4kti0gxKb3p52C4NMMET1BEsmOFfOlEf2KvrUPPjhAiZp9373GLjksI
D7lxDWPxdOhokySGE0VjqlKGG62jfooJU0+juAbng3Iw+7W7t8RkneKOd1Lyy5r1LnNfz4GLY7XP
4GoGKMDTJGFFtehy7f1YTlvlaIb4IAdNSE6eZlbn8IRLIkHQmaM4wNb2v1eYFxi2LZEuBbz6N01V
peamiq849MSvfC948EUbQVQmbk/zBWa+9EHWowtf9BP7T58lz3QV7SUTsupT57+7l7IKgaG3+9/x
2VU2nxoHJqCYK75D8QB38KXTjpFIymYxaQaBR0LsjEeQPv6NhafrE8fMugpWxMnOLo3lkCowKf4i
GpDHD4bs4UKFYwVO3RxyZqUXJXeLicxCnZ8Ga+9Mxmv/mzAYwok0dTFtRPLKPEjsLizghsPFGF+r
B4tgoO10ZeWO6/di805sL9R1WAFa9rtUh8dsE/nnt98Yp+kvYOSMWY0u3YrLqYzOZ4VC14fJAex4
fjF2sr9rT0Jzc/rjkdNdg5iCGIKTEzftkHLUtSH8JRo33iBQKbuVee4Cv5MG/Z3VkBa/INx0e+/S
BctFGKIK5C0GZtSGv0oJ2F44EcgCri9R2dgs+pFDzuUJHxIqIlb+tAvqeUsoTH8d6rgz0C9UII+v
NkBIC6rY7M1h/zBFPsj1zgsZ53NXPWT1V8SX15bozqO7yJ/1t4QcKEQ7afkBAbsgq+p6FAu5mVJT
tvbAfkD7R6DRu/F845rDgDuDykggYU3OqSmmVCRmOvXRh5s8sVF0IADB3MUyoFwJyyZAAz/Pa+iM
w+6MKo1czr7nHfXwWbRN84auqVVuwQtQlh84y62cGytSvS2Msrl1L2QZdmbsAzfT3vt+LTnDVKe/
0qD8ksaKF0940BtpVhnlSYjkNpkwOH4p1USDNzjv7sv7KJn6tjc9tcuSjwrcgr8EmjAeatuBZdkG
LSZDWOAPXSB247OJcq4r8CVCR0ttNab9Iei7ul52JtyJfSUJeXDfHfrHrUx9461MepMyLP0S+OyY
rOPcXunAQgDMwHli0CCSxMk5z0gkcCYXFiaxnJp0cKOENALD9BgsxBCohyMyyzmf2qyjsHGghE0/
P70iMzMBGE26RiMt3/ktElQzYVGlHghTtPIvlRmhysZpkQ7P2AZvniB82ICOCEEQgLsP+TB2/HJe
zbJTAAtVWq2T+JUThda/FJFY3a5zM5lOzZY4DuuJWb46AJgId+te3tc4bqCNxFjzkJJnvD5mQZoU
SYKBQR3CCbjxZRE55mWgwPMleGg/dmOhOV4ivCR/Qq55yL8r79iblHmKKxr2CLxjMsqvSRffm7ZD
fn4PByxssIgBjI2nLay3NxWcrfO8WjL6zkOEAT3jKrHE+fWzXhnsXU7sTR4DvTjjyk+Qdm4NaS0X
Vh19TBUkBqDGN2ViMIr0sZ+lF989tXL1t8O7f3ZbBcLrctLJ1sI/Et5z0dtGOGsJsDSJsJ6v8r7I
Yk6tLLsVV9ouWmjKF/P4XNai/+2QVEJ03Y+8IfihawpPfReO4/rQVQBP/8Pr3lIM+FScV9FBRj5M
u0SUWvBVS1Ob6FegEGxJP4Sl7MMzwF1dt3lpGfb28swuiQ1uWH1NzMSTnHgGfBj0J5LCkfJjGuuL
aBprfDzz2MyU2IFu8PU5zbhVYLbb1+xIACJq/cHy5JqoM8Ah1D8eb5ZT8XvWOECT7fI/fFsWNR+0
Vcc1AutCodlaTQ9/ZfUX1YWc91UNNoGZLCSUVv2NBraC2tGiLXdKRG5WABmgu4SBKf/+6tAHt/Qp
CLRO37dkaLfnCdAJAgwkcbLtwaTBDClwX6zJq9IsZAvA3ZmnNJddOwi4bGSWKtCCE5BdGt5xAcjC
8BGPTO7zk1oVPvawDqXUa3Mf7T3QfxBzD222TZdM4kv2Tq3/CBT1n70WA5AzcnxpcFOGRsRj0EY4
vFaiLYfR+8EDTYHndiTK492/cu3at4o/Kpbcw01uylMIetFJPu2wWov4N6BHbeMmBoL9Wo5JDplL
FWLsqMaDULt+8Kp22WNJ6n//D4RkUYJJ3rl7mWg9CdhTlJu/UIT9esXUK66aQwMAa0CVWKPSLtwq
AMIZaw6AxRfDuL7Sf0XBkH5vwII6NWjFfRcR5MtZKtryeRL9V3uD8gL67AUruBiHo4IefSjTR9zC
lod4+5DGeYTl+Y7qZzy8/t7U77XrcjK/OmBWVwR5mYLxnh3IwXl5VIEyxXvJF+VhF/NpvW4OQZbC
TjVy3x/ZdYw4hrzSD5Uw9e97XwYXw7G40ur7Lx2/L2J6Yp6uMD3eOPhxlQ1lkIz7M4xP9dLIDwpX
7hhauvzirgr0g+mt0pdJ5Y7zLqfHB+Iz88pBIj2PjEa1xvA9cuomWmTVe3DMZl0BVYZ3Pwt/SxGM
/k36Wb61rRm2770Wqz6xGoLaD2R+ZlvukkYuWrzxEvMk0ARpS1gsaNK1+SGQn2xv+5h7S9sanluh
W/YS8clbcwjG7pnrgVq+XPx2G9rTc/10jV+nIHqg2IpkmhvO1JHklc5lP5O9HU8Nee/KfCDNUyeN
Z+iZJAW3yRv/vCSwPbO0IjYQ2RK88DOSk0su+9Pdu75Nqu07dkO8ijMU//gSj4Nrd0zJgC6dVTa4
xdwGSmCKWT5EpNizLEEUutLiXOSVO8YxF44TTp2h5b7CP85MAwtfe5gTwajfJn8APAqbKUe/J6/M
Exy+XEFrB2dzBzZqJyOLYJQbHcmOQbOVrk8oE1q4RY660/ImJSsgo285A9mSYkIvLj9Uxrj8YHFX
HMEG0/tuYJQKuMjU852yZfpkhHac9X/P3HquRo6fTxr+5FKDQy8DyshVS6zw8p4d698DsywSZlui
tt5vfj0BC83WjibvxJwxWDNIK8/Jyu7IIdt0t/cQK4CHj2sPauwdLkcxyzJiW2FRwSci2NppfaRz
HRKQg2lvnIFinrhzMiunMr49Sw6KxCBnm9hMF1XW3yee5kpAwkoRy230tv8r38zKA094oR6X7KGH
LizPHK3xu47EeXt+BP5nV/7av5kNDVvxkvypKl1NamalbWRVkIsDfhctNUEzZXH9Asau0Ahd2wmP
JfA4NEdQanXI4B+Cyqe3tjil+qLE2MHwKQDyfoBTygJoPooxgsirpa+xMmfALYwZXB8IUjjHd5/7
M9Kml/HQ5vE8zpdDB/q912m1if6LIhpcYcfmYZLDFV2svBd+DaUmF9ljzz9dU6ruoV15G+0bAfYx
V+opph74gWyyybbW48aAImVN7EBG6sH7hEGa9eQGhlOtaw0GZnY0wrnnJEjB80yKrYDG4Nm5w8sJ
ulB3XwGhYYDuSvrfXZogd4c2Z1cRMR5r5pSZH4G59DDlxhDPqOcZCnVa0PxMyCovRt750sYAJcMA
ifWmiBseiDX2rV0x4ziZybQ1ojJc0AO598Bo+KT9Chd0K41cnDco0txy7VrNiZ+QPjC8I7Zi2Ts9
g2xiY9hziE1CC+7OweLZUd3zWp3gUbGbni+6tvngZi0vPApxRCBUkuR7StyKc+hvnqhGHjFDRcLV
930yA+eBJSKmXEfOe1QiPk0DuHmzHe1uUtdCroMkSABI/FlysU5Mt8eoxnKNweUQZlpuztkKgKEO
FohraX3TuoqpXquVvTrc5xLvOnUrzdnqdie/8uC6L+eHTAA21oqztu6rRCTVW43wd0JGbLBmUhHr
N9jDQMgnLFpVTQqEaIm+MnVIOTdQWPpkrSp2Y6zZ3ZVrZMeyc+A3blQ+ThtfJwP6Zo5cRUA5abVz
PSDfLPKMte2wYDlEhQlUZ0NI8T/jmqUdeQgR+NII8er66zo3LNykFSDQwvSy7f04gCbu4L0fjD89
YrTaQ7xVt0aoiJ83wMRDNrcU07R9tX28hZ6ObOJxzQibGlbesPXWSqdDyJqQjq4T3YC0k2Vgk+tO
l0ognIUNIyhIrhhSxww0ccbz4rFEOrcmtUFKsybZb6WFlq6Lz4SmoIK9tHdH8MDrpH1xKW+wa+91
B/b1UZu7n03biFcbBqUEozCF7Tm+rlHJosXMx4Qkme37KAOWm5CEbSMWRyEAXj4Hq0lp3oO+Q8FV
m2WQDGivbJc5ea64R0sbgqzNE+lxPzFK70ciWqd0l+S8Ec6P6yg1ilcwwfBbg8Q48bM8tSBAN9qJ
+Oj9NZ4avBNODCgVJhPkh9F5imvE1aglBWqWg93e6wTsv6OYVBSjVA1p/7yraLy1bKKfSvIuGKD4
hheMTSlj/zRtaUwf3XH/+5yK7WsJpFWolGlL3+XjcUIcS0k8fiaWbG2DwUQXLL9w14eO0hZ9+nfz
neAkzbwpmNRYx2agEHfwmyap8kSnHDgDKNFwqiEmFJNMgUyiOLQJCTjrXfM5ayaxD4Q/C0/6Swso
zoDxAoCiq0E84+PTpv7GrXsmicG5y1au48NHCDoZ2pJ+S0+DGgR4eiihCpRAeX74UHbVI8ptnehL
/BFkgLj37wWPbpv6TlHQrYO6kS9hLz6j8U9SMgJxtZWzVN0c6ocv56OeA8HmvJcccD7ZX949ky/F
K6rlQIg/9Kt1pKb+4zP4S6b9fDGVsdeWI9o+ulIfdaUyHCHaOBrBF0CXZiEnXKu3v1eg62erB8FF
tHhJoemO+9OYJdLaO6jsda5E0iQZFIkHmkNFDQ6Axix8BYiUgExaxPY3zDVkRWP8P4OOr7MjqOYX
Fe6yCXN9/Ipwtkw8aGkL5d5vXBevCbEzxT46EccwShflg0+3xp5y+RiFmGfkPbhJ4PuYWZTAM/Hq
VXF4uRl2A+gWNBe7iO0iJMasuJpWTpFmmGVy5t61HPsWS1G+sn71BzdH/qpzHlyFrGS5i0GwZP0W
siXg8GCZ56EOlcPeBj4Lwo26umzB4x9VrBO/zAbW7/iSNWneaHWYNXlZFZpSG4XNapr3mrRSulda
++Z06W8h2HZtC4QWNUm6nfm9wkTfR9aldQcWAhMif+uesdDdvLpZTKo639TzH1OpkTDAkxu1+xsf
aQZnW+cbF5j+OWtX8Uv1iAIOEuBBLfBery9zYscn65tl4FRrMoQ6kOJ8nem+HPiLy6ll/P3W3mb/
k0ecfpuqxqrTbzuLKof9C1hVrxlzXZrofd0aC18CaVS1ICod5HsURdY7IvFytcTm1o2wUaXXmb/v
OFFpPu3nSukC1uL02DvozHc7X8lE0fW1jNVeAFWTpVut2ccUnN6DemZd7yc+lXc67VwIN2fseRkP
1rYdAqkdvnCLxgaoeLk7J37asp3qVvYQJVV09qw7PrY4X4AO1DnzEB2vTB5pQ/8pIusgJ1AATsNb
5Lf4dQCdZXZ8mh1EemiNySi7mO42EvYYPyzMdUgZxSXB5LoZK7XxMStg93aaOEdnYJa98QehSjgJ
6qt2Yg99Ubfqw03L5tXDR+1Cuah8oS21NjOYFaJ8TjYqmvDejsNxe3aSCJBqxmE4XRyEVkj7wdj2
Q1kG74lTAjg+Uq9KGMfqus0SuYzHRSH1skGzxmbRYoRVS8frlgN/PYNgxHnPHVt4pz4LG0U2e/sw
s0LJwnoBby2p3h40pOWk0d2te1RDff6pRD1STyqwkdyDjXAU+4nrYSj/d445Pep45no1HyAnIxZZ
dpeGFIMfNrErTWdyNOlA6pkpGyx/aBbZsHq39Z/+3w+hqhGKxmHsvHYAc0BefGXQYQUMJckhE1yd
f26IAIGAWMDCaZ8S+jEppQD64cvEQu+iM0CWYQUcLxXUdMdVZxAtoKzsNjGjKKrjWaxm4oH4euxV
tk32w0KHX0eYc73o6uHtcJ0a6oaG/QQQze7mWUh7yTBWPzf+0s1ueLHF4DHdSHlxZCzWMzkz508A
CmS5xdTqEKdbvsWDFpobCq7n8NF1qzoPxoDWXsRDvthA93LMNHke5Pl+hlbphvJ9cxT6KwjkCrNr
oYSnAg+Trfdp7gn6veJFzTh6JIHMgmUTLbzED+WEI/s4DwlQCPttTIgsghnMUQr38RLbjiBWJkh4
TyfmZdPqaKkVx12qdC9ckkgA8LY+hljQwLztiPwWBCbpbQTsBlYI63hzTo/DTYk=
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

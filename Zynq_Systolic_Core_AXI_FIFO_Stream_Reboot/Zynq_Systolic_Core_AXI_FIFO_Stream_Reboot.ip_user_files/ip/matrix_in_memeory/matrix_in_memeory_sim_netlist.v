// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Feb 25 00:12:35 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore_Metricas/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.runs/matrix_in_memeory_synth_1/matrix_in_memeory_sim_netlist.v
// Design      : matrix_in_memeory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "matrix_in_memeory,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module matrix_in_memeory
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
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
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.862564 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "matrix_in_memeory.mem" *) 
  (* C_INIT_FILE_NAME = "matrix_in_memeory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "143" *) 
  (* C_READ_DEPTH_B = "143" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "143" *) 
  (* C_WRITE_DEPTH_B = "143" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  matrix_in_memeory_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 56144)
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

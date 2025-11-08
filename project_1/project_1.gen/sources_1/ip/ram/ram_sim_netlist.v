// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 15:05:26 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.gen/sources_1/ip/ram/ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ram
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [5:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23296)
`pragma protect data_block
ky0+Elon52QWlXdCMTEJNn5sxufdQP7z59+ILnNSmSlUqZjMwnm6kNR3yVTIR3Wr4Ugygw05/ZDP
p63pWy6wzoriQdjKtEGqEnAfaK84owximkrOr7hVDVDgjapVCXo2RdLQGwpNYh8uIuuXv4vDl7Au
XRBtd/SWqIxGsgxflv7OZQh3Sr69a8/C1lc9wu+jIDFs0Etm7Gmutg5u2QECG5JTGZEZE01F3uwL
s+KwvCASZThmddAsNkp24NAxJjjsz6mWCLSz7NTYxKkXEsrkffXzt30GX2sFtE0yuN7XNHaRW8QR
icOSVWKRiQewqTUWPLWSQDEhs3/oHIJAbcgGcb0LNSBQTiVg9vOVO+zqAuSSKyX01LYbF3hIDXM5
rMNW9NrTlTlKgj1lOozO5l2V+1QFnmPiz8S65+AxnoY4OB8IN8Z0s8tCTCSLSdOCEzZY4AKQvYV0
aRUjigByOpJgWpZgdP2zQ4MAW25lObDbn2KXqBfoshIElMCTZd64biXS5XhPZ078ZRnytjU8HeiH
xh6AWwlYrTUNGjT4/FY1FQnBa57m9EjtFx8hDmoX5UlH36LFE+bUgrfJFwjpp9QS8d53XXUc/57Z
fPMRW89DxBCHaf27SYWkYHgDo/XT5sIoCN8Uzx+G5zRo8gWWAkWdpqurHlQN7aj3P3HU/y21nm88
mNVF6qSkTtdna3X6GkQugd8g+m+XsIRNp21O4b1p9v6TaDg+zkLortHctqIqjKur5kDCemeOk644
+b1jt4XkscmIAE20qrbKgXo1Pefz2E+U91PHqg81oycfFNhiCOTsD+KFbyFBxiT/nBXQJwDvAjt/
GRvdbT+8swovWXHF8x4XIBO9ZWRASnaEzdnSkQk/ZGyEAehh7bzw+lS/PmPkMAP0KIOBuUdWneUR
8wwrJ17rgJT1P9zQcbB6gOyM+oNfLJOw8ihDdGdojpK0sAagwpsQcpOLSalEf3bmJ6HM+9zPM0JN
JgJtj62HPddxe8NhC86Qi6Xv83Nn6WuhhU2n5hx0pudZ5YsoMqVI0Ubfp0ss/JRP/82c/KHpJQ0I
+j875QyeQZrB1OlrrFOijH93QAv2RG+hOsD0wO5yUb7fdK/gthtuuYZkyng0DfdiTUvEMBQ8Pk1m
rgMQkRRuKIoe9vlsgYAq5JXq3LLgMLysAHAvIKhNbvBIKsPq7ivZaIv+ZXxXIgGYAT7Zoo7LC9Rp
OZr+F8CXVE1K1YiRhtRbdgTInz3KO5kjSTnni0mW3yxSRTYgllQcUQ53CGhbCLnJnXBmpP+nc5gv
qG45aywNDT4s+uMnawqyR8IIzefdDg29nNdXubgYNPwMkRBYGjWNFr9GEeYrYU/XKz9ig/a6V4R9
rhjcNwrnkSocAPFyr8vc++gmG5/Z+yU6jz9jqgsVQ4cecmyiHWwIqVa6gWGp3AWr1ie4ZLr2yeMI
gjIr2BU8z445ThAdeb+QFSU+fe5ibz1PFXTdSPRDs+eCXp4ymIUgZI9UwTEt6qEMVfbZHaPEEpB0
Mvq6D1TGfrXnoKvf6wvAguyVwidt9W3QYeE2KjK8Jw2LwrtquDWVxa+2gfU3vN6/Z0MVwG/QJWJQ
H9BGOI+1hKZOEdJcYP702jVvTW9pSVzxMXOEz2ik3xzro4hnz5RXH/ZShLWKmnhOUv3265+ItOe/
82OGEwC/PLWLoWbOx2Oh38XANAsah1LLVSPsE4GCY42irqT8HAVXws1zhmxScry8TkloQLh/wEOT
7wJWi42oCRAhxltV9+JZy/utLvC93HQMhUwOiq6fBZkrwQDcyb7NBEYaHaqU0r6Wr8mb0RuyjMLL
BiCuoKZWcmFCcPoOcoMssX9/EOwK4yvyFA09P4wYU/Ql++0z8ZT9yQ9cCbpMRyFnv6mzgqoY+BXB
r3+NSpqre9luEUTceuK8dTJmJsgtfO1/8daJ6U/mqIjyBAyxdiDHLiu+1tvDmP2FA21N9aL8Xmv8
wVEqI/OUw88vFvuWANdeV1wGn8YpDaai7StwdG9TayMpsKeR/TM0F364P22tIioV4FhyJlCPgPWT
rFKcUd6soVptbg9sFkKwuarHnFX79t+U/petXU0sZJvvw3cQxuZTRtSCY6fiDauNcPCmdD0/XHib
w1pcZY5dxez1yW5RodvmavAcBIMaUa+k6rNnU0lTYMHxupbnHHCSoWROQcC+sm1KCQLHp4EMJz1/
USuulEDPGdsrDAzWtCVlD0SIW7vPTEjRhIOJMWO1v7EHO6+gzmMSUYlts7UgbzcgidO0oBiTszob
3ICMM1IU6xpJbGpfurWbsKm8V+TLUsvIDvXCun9T+DUGT/Vf4urAr5es7UrtWMUUcHdj5CatAOvu
4XmPXUNdE8rKqXCGeFE5yd1Ze+WAg7ptdNLFrdGlDhHAVzAhldjzymmSTnM3FVyXGGQL27py9xBI
9f68yOqj+RJKko52W4ceMUACOkGAS9HhOFivdx571JjSNkCIkxVXcFC66/rBhuXmuY9hZGF32ZND
jHXZvQHbkoh7kUeM7c8ubpTwkBiXPcOqQmdh0ix1pgmkb/NA2sZVKtJcu+lPIGAC8GUq79bwhazo
uOWBKnOfmCFIKjQkVlqX9N8/ZwUFSnUXv5XudJh0zdFD0eJPev351tiA93rnzht93J2pLtGdgPTa
T+cp5wJP8bU+Zixg8ly2xoFe64HwKnjx+4TPCVkI6+IVsGDBWjdwVsjiUwk4R86k433tfE444FX4
F3zm7m4ZBIKaG8l5FH1siGg/lP13wbH6JCPukGei8/BE3htvkfii49CWfhac5ywREEmiTDaLQxMx
8mZGkVkjvWRcg+QS0zrjuJdIRHdcCaJSJr1mgjuhovF34vMcdSbhn4MYTFIFlsJmFYW8EmFbu3dZ
OLpt1MkXJdzjvm+DxGnGMQSAVx3TFpdfOQzSZ+FVOtFl/39UJFtCiApTnpysfw/EKGuyNkJ3LOcb
BQ3gvZQiAh12mCsADOhFB13Je85fYGT5cYnDeuJU/pWGOiILk3LhFFog/C1fB4ihWjDbM9/jWjDO
tV7ACodMM7oqrRJ3S/CifZYZwWCNzHDMUyKBguuTK0POBOi7Kc6kV85ystFGJxkoD/VXcwv3LEwz
S9fmqn1l7D49UqIsog7kG9RCcgfM68YDq0nXqqKdHk3T5c3T9we1VB2MM8wz4U4/AATnWy92rmHA
aJ3XA7FIhll6kmKKnXnm6s0nswc0e0bMnwFbQ0zp9cApH/9OL88naY6M5XZHBLH9ey+nhDI8icaa
7rEY2od2OP9ug69T0xTtP8kud4IRP4zEVb5aP9YxDNJoCckbn/u8r/6HauJfniR0RDiSCsG4SDwy
wRlkn+O6IFsPs6+3cuC2Mel3We0SP/kAp0y2MZDEebwIx5hSNvbkM6D5/6OBcMeaU4QDDWtjeFBA
4Kv1hX12ZEx/t7WeXa0s7XWRySlDKyLOFUbC/W+T/3BBu8FjgnZCpNUUs46emuC957reh9Qlv8WP
rt3ECnIWdbeH9bRabaJUC6IplXwO7U2ttZgVohp139qGHuDIwCn6EBd3Ub5QRPZA1oNkpQ2jOdQU
XixfheNzjwZ96CKk0nxLSEUxX1/XUxxDAxl+19RcX27n8rTQM8n5kGjfMe4Dfo9N1v4GwkC3Ud5X
KgzhaU1+jkABB8UETEEFBQoXHf6/dU3G4svGrSzGV+umamIPL/An81SNC/xouDkIh/woqu/Atgw4
jY47F/ofl4sBYoMAFV50JayFcAeAQkjuPXbKR4t+WXRJjHNRjTWEnBCYSa3gM/VF0hQqNs1jaMzE
NSDluYYVJeaezEAbgPtYGj+1Dxu4hP1X1L9Vdnr1UHz7iwWv/fsAokgZ5U5VsCczmQqhsSSRexTx
tEQi8nPgg+PCvtCMDOxWYJ6cT7Asi1986pe/GiiCbDybPdG9qzo7zxAFj24DxbS9tp5n5IqTVhsl
+ndKGPPVjKceDVb6lCTAn8pug+KzWNQokSDywmuZ3FJqAUDPd4oIIWzNrGJG6fPFNWzH5i/F2s53
r+F+aH8rftpc6rW9Uyj7Vsls7z2iF2fxhoOBOQ3fOS+joxzsCDueW+GZeO98A87AkyekOStwBiRX
3u39JdKiAYaJKmlzh6DUQ3YrXtCx2B3jow+u43Zei54BzMo3CfSpn0PrJ5Z9fo8ynJMGmOQWt0v5
L5M098iq28MIC550wNmCocduFq/IZ4A3Q17yY3jdnq0PlZYgGHx1iUFJcGhUQt1/Lpn13/8YSc60
uCMseCkpObqISqbMt1L5v6X2+a3D7epwxwVN4XvbzdWfSvaxgxTiTTb23uEbD/tNYLu1EQVCgkIi
hP84aGfu0jAzhwxgNI3nSyULz05WMoNMf5IpMLtbzCampKLqVVvra8TSU1eH04W0NjAuo31JiZwf
9hh+HHWU+F24Oe08/HFjM4YY6Q6RO/P53bPcZktnT+Bl9OeFsfHfVl97b2xitV9YSNfdEyAuudoT
Xme/CPQUjbKgHywQXvP3HlSgalY8MXdhimynMja8DkiQDJzhtuS5MqyvKmouX8+GdIAFW3KBBkpi
Z3LM5YtESwpuMVaumcl9y1S0jwH+eJbudykH57SwRlKu011s5jKq59hDcUQDmkenYYAfZoyN6TIC
lgL+KYU3FNRvzqgLZsUMjIyoEusl1wKV8WNMY8xo53vIXL5PZxpyLQhPvfIG2uchE9TGZcmW8cnk
qr42ynES2U8Zvv+CieAFISeZiZi9PK2mPIQaRyI2ZswR7ZP2iNBXnZAaYhKS0INHxzZXeKWfkoqr
ZdDi9349jtCQeNM73havoJDl7UhyjXbe8JiMxb5H7fI8p6crIPTrWotaB92FPTd5MjSD/Ca7w5Tm
JwkYJkBRPC5rXBnAnaVJKvEohmaX9+DF1PpCRUhP33mQuAwHEySQn14adLtOaBQn6rPD6dw+DT7i
RN+1k7Cz66PXu0mGIk0GAXaJVc+AoBdy/1sO/YHVpwwmEj0GxlIsD6DLFEeHPggapKkhBoz9P/dN
vKjEeexZtpf6mj0TMwo+aQPKih5xZqDU8XGhhXRKr1NygbXBCl2nK52jWOoiUlGcOIf5l8ETrhKo
ys7D4gg/CzJ24URdleB+FiG0zTs45IoXGyrTEetmtnIHPkc4tOzQZ+/KXG2cNdmzUPyzJ6sqm6D9
xrgDvhApHsmUHNMIhGgKpMGZtzLB62lvh1iB3+Fy+t3oJolvwb7SL0/sXtVT0gCFInxmrmFY2BYG
vhsiIL/OZ7OJlfsppVg35DU2bWnpfGf7JpTg2PsA7rxJRGQahBN6L1+3SqKYb51OrKCXXhiHuKhr
du60ZRzVxHRLA5UUMauneWPgX7zxzHtNDOSnfqtLFoN8vSyV7e3A+GYx7HABBMrRk5KotBt8Dgpk
aVGaH15PGpqNX0MKf7N0QGb02va0ooEP4o+H92B/gfFhrAuBd6XvxANgCDX6FWuAAy6SKWMhcETR
1voHRbWkjyQj2Lu6G0ux3A7wHAwCEdu/ZUH9QT5isLCjbW9Nyrl3xSKqer1Kz3Cu29GcNo1oqUQt
xrSF8cxs0IVDvjKrxNmDkWdXv8YECD41BMTZ0Teuvx+B7R1tKUgzdlh6/bN6+UyLJXJiA8lzskbd
6+Fp9jpGucZ9S7wU76OvVxMdInfAB76wpz2kitmF6JGwxeZrJVqSzOg47PLnVOI0QBW+8Fza4AQi
DngbQpKhXDFhDGGMDCnfN3T8PTRZsc3X1mCcaqCvKD1lfFvVjf+DXKgDA8EQz7sOaNhx2YU0Kzu0
XdB/AZthpExpsJ27B4ofIiYFWA1Qa5HB8FdKbyi/5HIi8/v9ZLF6w4pRPkwXh4BVExOgfvmow14a
FsMAWAO+FCBdQZIH6GboFbX1gCX6rJP9FB6xBIXKcpOwWRsFEF37k5tj1cgggHiwu2D5w3JQ8NCh
MV6ZRGaL8ebx3BEmIuHr3832YcIjHbIDGpTfHQ1NTf2MfmbGchm2ydPa25gghF+PBWbiyb5p0/Ce
ar6uHQ6q55JkwUfE/PiFI/3tdX1lFF7/8GzNw3itpB73+x8stEisUQYvpc72hWrigCXF3CE8nVEx
NDLQPjGSLlWjoQTMcxOeHp4PFh+5EZic2K1prbX/ukJcQvNr/16z+avqtrCpRMq6Xam/hMdrQ8rQ
TI8L76a7wm8qy9ZMlgYd+P7DXEbtJ7nPU8vZIgsihDJAQto9bWwalxwdaGEKkY6gakVFRh336cHQ
BYYkEv0i1lY0I6/UNcuH+PQAM8ZVc5AiP5jI4lE9kQ0aEEl/X80guX99pjFN5jbcPgVaHOyN3ycd
+sDye2zpUZff9viJwayDH7MK9K3ugxxU7K9pzya0BHAp090cdj58Ky2CJHbzBBGkCxbtk0uG3n4S
VoT7ANJtFnwklaKz1cbMFDgGvFuZUbZJ1NrkKBBFrWCcbQs7Rcda4XGFA40Kn9qVGqY4+X2vs/Ym
/o84gurgtWnASEoARdjQ0OB37wgUCQBe8LMGYZ1g1xeL7tDtorDvbWT6k4eIUZk9RKqRmZBc/2X+
+sjmbCzUynF+NIORpG+4vt+dsOo2eJVDoGYsMVZvZ4e0f2DJ6mBQsN/GJqjHu33Eqv81JSIyhvbn
jxTm8EZEQU9y6c9o0NvCn98fkhJa/abGshKvVZqAVfixQ/2z/uQKqfkjaejg4Ocyvo6nYUT5qGcz
fWOfrktgW3Z5XcLD9MYni8FsOcy9tpL1776Dy1gOOCwYvwXrQ4VbMgrIU6+YCLeP3T6OphHUCHQ9
4+SF2RlqJc1i8qU1B8jb5wwHjC7xpjVcCk+ZlWlOXKJ8eh9FF997edYmlIK/gFWH1n/+ZIGhqtQT
l7xpISM0BsM/xFln9w0jF+wHfjUmkxhztjNlNU5ILUSubbsfU+Z//zdEXocMToiJpXVcu6Za9Ivl
DxAafgYV1vWCgb5EouWpbpgO8xGlcgLfMjcGoZhkN8QwydKU9zmw8KcvKFZ6ufxNmylV2OWTgmsd
6y4LEDexpTG+DHlBVn3fwfvPKo7tvuxMVKec/Yu1PlYkd3mgQYNBkapsr8vNO70vlGRTZXqXz72P
JxrnYhIAwbGB+GkT4hQC5dMlInZHw+6GK4o/69ZXY4F8g48yQFbXxc/jf0CVcUuYbRtbXJ0v2jL7
REd0gfjuysPUbbH+j88w1KD7Pvo6JfoUJolbbMzmUjfdOn4uRzwYO2PSPS5NP1DWowEYokjApEfP
JlpajwYNXTQbcEfKxnsqiYm1ry19NIWY2Y7N9/+dbioxRUOXgPgOzQ6vsw/V6jeNdeilcQUT87Zx
0R194TjzY6Q+VohSKOlTngTQyZ0rpKue6wSNYDhk+D+KakMWsleOo38dbji8dCOnAXaWP4jRzKMt
Kw7oirUpDh75LkWhARGrjmhio0zZBnKKCMq8LIOq8FyaIKpjpqsmKcolxYd8+lr150paRlwUyjez
uZ+OnSoydrN1RQ6LvxUDiiQqK280zGda/kZ5vGCg9rOL2M2Ok47masvNB2Z32402pk2d/1isf1aD
8twSXvRWHkxNBvSaFq0Lso10o08/DUb+nj77JuP/9l+T5WscvHRYLEbCuLwcETyMpNrRzpgyBEbO
LLkrVAPj1nKew7qlKLrcrNmYVLLjMp4JgmNZV20IUgOv7myd6P4p6gi8SBVu/uMT0s4DH/Btdw9z
f8KqfN1rPziW3RmJbUOsVB8elwzJgfOJ3x91kMCNPQOJ7AvmZLW88Xbqb6VPHoIKQRpr7TVl1ADl
GRJQ3687ZjAwWbCxsCwtwQpfLI5DOj1Erlp+mCbQJFBvVl/xI8ML3ImuKB/gTlR6wXOEwAdRO9/n
OYlzcbpmAnqHeSfPiDEe3DYHb5rSmBgqKDGaZcvlZnBpolBdz6pwfSwPq5LL8yLK0ceVZlYeU3LO
yTQNNnfNpJ8OKlN5VxKWo6eTVnYgd2kW9YFNYziZN60jbTZ00lyKmiEo0c64x/2p37KhywExV6jt
Hk1sLGOQMBlRqIwELcsg+sTfc+MN4t8hiOK/ma5fXj3+GsRqDiwInG9725a7L0XGY48UoXxifvBd
Y/nhmEgEGTdOjr94ncbCnxBNiFOPGzJm9KPOTCoNTuLdpAH3OI0rBOhe4WlStsGFrI0GmGeC86tP
AmRZKGu2O1nlBlGfPkd3yYiM2qlz5jafhHLpIjhwpQWSmkin4ezohlzqw/L/AqRHhBu8iP1hEnZA
uylR/BiQLWDtEH7M12AD3MW1Z09sw1yoyabIOEklDalXDrlUgx2t9ZeeWLYWLBN73mVJukWNXSXg
RzL6ba1ejZF7vizBgi8HZ2CXZv8+vedlx2kn0ACuJXc3JtxoeuQ072C6lBi0bwOp3aknYJB+3QWA
X2VCXiFbWHFfJ1uvmroYZapCmHx4RIxVI+DLegqwgAdFQru1WfE9Pst2qjidiX2MkgC+VQJUaAQD
rKFvzXbdQT3kt74tKecf/feRQCakLr/A1wnh0uMIhiDHXl/QMXGW54v/LmLIF+hd+kL8T1LaTUna
PmbKSpWPjKBgWNtfD4Mlm/3+GnNph/t66bFVxCUSojeufBLuwtjV87ylDQx+0XLkNiuLdB8ReGuO
as9LoY3yBD9v69zDkKNBt61Dz/7PM8cy673y1GE+/l17sfHPbLZ0OJSMU+eSqiDjg5OXRbl5MwXK
SFNENVOQW3Te4A06B/ZOC93jNPnGS+s8tb38tBC2RkQaODGZqgHaH829cLkXQNrRwbOcW034wAri
mSxcH3jgtjS/4jbgiATDbvpnyST6uMDb4m66DgKzjo5e7GBIyAo8GWQPwKm+B8QbXJPCvr1SnnBY
TYD98P6Pbf0rPPakHlr1EOdB1DNIS8feo/ZRZxi0cPKyHMdY7ZQsjTUjQ7Q9AdHYAQwOhiRFyLFL
TRqIoq6tVj+6fD7acKKQpcYWLPH/sRPTVgOBE3nkjJaT+uBLg6L6f6sv+VuKTxLmJAzVu1wuYShd
ObG6aGGtpHfBkCL6x+aQYbq2bYMvcb8hqLHDDgtAz98xgkmdiQEt9e198X/JGJ1uqoiq4GW3lAJJ
+vM8INmASfCXMAe2lHUo06EGe7iNepi7b+mZdXSSfB1MDk/lR2DwTxhbS3JN19lIQ8CrtaoRd4EA
RRh1redFCLuK9sE3V5fbCAByjDA0S05JYwusmgmQYQCwYNTPAX4p3ZFytkYyro33ErnYzmcxNM/6
xWSGOkSNKNZGK9iXulQnaSOMM2+mQib5aClk0stVSsppQTzgRLudm39zim4CQYlxfY4ySd/dCAD2
rWEKatEGL0bUuZVYsobkVP/qBbGwPtlXiSxvLQfWDkV0X93mdCrFl8LBR3mCJ7ZuiFh/vpHOMnnW
akemLM1zDmNIdIwc6ZnVG+OYwxUWYx3StRXBrxEDC1SMuPDmHDNy2C1huSDicWQqaKW6a846Am7o
JlJqbVKCldXIK7CtofiHNiX6InjxGqnAE6YBcKW86e7qSGVimDLv1cEF/603bYucRb+6sK8ZpSR/
JqgVii7ah54vdlMHzWSrtA3PiB7+VSsTgFJf2ob4yEq4MNwIEhsi2wdsDQQm4KPM+M/xwZ82MsP2
rIW1bakqJHzMBYH0tCVGB1TrDIyM9QzZUq+7Igdpv/lKNVKU3w8ojzpZRr4DRd74rI5tvOS+Njfy
T9XxQ8RWweURQADbFYGB0LpR475rV26A9WU7GLnbanaS357Fv1oNkDnTqzIE8ITlSpH8CM0Wrp7B
qVqsN9TZ0Re4lOiV59iSjwhoGbwskeyypln1RM2tEA5as3MR54Bqy3h2v3PHoujp40PrrUZTUZX/
4bZ8kRVqLXdI0cZwbBWBScjGVPEgS9unaoDnassDpn8Z+J2GwZeEzhMRJsv+Pv3r6MxqsM2Oxiju
D1MmNn2T7D8VfmYw769wVXx1u7jRBVvGnFXBgyCJukNVVY5zUwuLVYVppEJQop+023W9T6vaHnaC
GQNyYANJaBEVrDtlHYS7uMQ3SWWnrZO90g0ctgJsfEsleDRxbvto59B7O1hrC6/5wGW9zHJjJLL1
L6VHAZNLoFINfDCIXDoJG7wDmeAbo0rKEf2YkzsXAhIGhADZTDOo/6LGplcgujjaSFeZoGVi8MgV
oZgATmaZ97rgZoyQRnNHrc5bUd39eI6Xuo7RN5yYwmn6UtyG2kvTELrrV6etggr+V4hW8vzEDdfV
JiabK+D5KgMFBORLbSm9vWn3evfv7Tod7ikZBv5lTRb12L1/fy5YzdKJ33dvVTWHWkIfc7sz6Tsj
JcsCq7WgJqOwtExB8bAa8BQ+dRvSfKXfqG+U0zNrEBvEHDssekA6BIqlkB47N2392HIVfU0aOcMM
nAd8F/URX1vIRAIN37vsPjLGkpqnpyrX3sxib/r7GPCLiWHwWFIgXYjHEQXP1tbtPo5au2aSiI/l
fJBaRKwVSqPv5qiZyrcFqt2t1T2dfpvik16chreHKi6Ydq5o0NILHAFKSbGQC2NaZ8iusAlOgxJ0
XMkwrwY2gcIVIBM0qYSj0Y5cGLDFRmrHPBShVfZpLVhplBMXqIEvFVBG1IysU7lP39JV/PYXiqDn
I1TcVOXYRR/8ncGn7cX7VaH0ecMCW9dcT+1bTrN44lkdXD9E5BIjZDTpdW5KUdsLMXXV1Z2S0cmv
zbb8NKTkS0kzRz0fS+l9FvqPtZVb3S+VmGXCMSJk85dxHhSccA1aKyLPzf3XnmGJebLXoFAQrvTi
CO39BEMuNLAe2B+nqw0HfiYm9RnhMUDhwWJrJNlWKRZoxZ+C3pEdUVtlA8QaOlyjDJt3+OQRvzD5
ZN9p11gzIvm8/KF55HByhyqyYteFHcW1j68jW+rbaS9fZKQDyhQ8f0CUWA/9pNycj+T5l5QzPAOT
q8SgJu9RVAhlv/IkKHIk9+jmnKHuxXzoq4POuUqAoYB18zdmv7MkWIyDymWh7iO5JdXLsWEBrY0I
oFhXXgIpKOKZxUgS0JYKCPXzzZZJAyJNXz0tMevQeTmxFmEonq5J3hH30HLB7641pIZhD+PkfoD0
swtwRRe1fC1QcHq9+AkrUbFlj5U7zkDogglgW7EbjKDU5yAXkzPIXOcsrmbZLtfuOmkKkTLk1eXx
f2oWl16syGGLxkit4r8+Zxe9vx1aqhIyrodgZvreFzi0cgis5ZZmoS3iMr90dOv+iqu0J/ocMaAI
fITUflE57uXjXQG4sxVXnT6VFL2rsLb75DG1zL2KEYHmM+P/+V2VRby+3AlrnPEqD3PHCH5kKQVp
2bjdcn7G1rEW9L2Eqz8io3UD7kJeSaTEtQNkPHTByYAcpxazjVJ6HP2cRzS/9PsXeG/B/DXylvM2
TlKNq1rhtqaFLp9OAc0MtdESp878G28QqYXPTLLu6X3yitFybJczi9zRTJHpT8z2cE6MhqO+6zpb
CDxpMN5K16g25gxHhRzGq6VYlnIR6Fp+bqoTFSNyyJcHYf4jf3LucYYf0oAolSiINNCCaM+kEZXI
PwyQrmmFpYe8lLvnAmDnAs+VdBSgJ+JpgKVC+P7YrouR/Xm9EuWaNcv2fiF8YodbcHJLpCWrhtgt
2LwW9nObQeW3B/c4ndqlOgmzlh6R1WhHS3hfcLNLk+Nc1B8/AI2WpohaLv9iZb/7zSNjv4RPsDSz
H9Eqo/hwQJkdZWRSiO1chn+qrTjvcr7hBhYb11uV/v8Ha0ykFCtxCcp8cGK3kJbHl83nNJDvyFQK
664zVnpUbwwavhYIZLu11RnNRVY22cZRy7AHbWJ4enObpwm6pAlY0Yb4zf2rRZozlP+RgUDB3Q4O
AAdREI9BdWBNF5p40L7alWrj2aM6G/arF7FypEC0OmO+ogdK8HtZHMnEa+lOrkuE50BHjrebeHv7
sRldHUonxWeEPrT9gPKO+yOsZKnzWFYZA/AL9OZviS5LD96EXOJ1eUxZhqoZsWqCyE/bySpTDwpd
G3zj9r0852WFnhlIdgcsUorJN187BTBIfbhxZLrGfAQCDExEwrCEl8CAas9CU6XMUD2aR8r4f0RB
f3PMrwahn66iAOBe6S2CSlp93x8lr4lDqHSx2MFQtfLkmeI+oZKsf9NTDvNvuxNTL+czjDGZCFvc
OdU0zFsIIWfuHD+Oq4qhLCquxpGKSD1Pb5P9RJ34RL8d/lc3cvgoiuflCn2gzbZ69wNVJ/GqYZ2j
WJ2SyC05jRlZY9uJbtshW7+YQEpuhTmJS7/uvTOkxEZ7ChUr0PYVi7Bc6iJIsO5KeDiyA1i8U8Qv
xt0pEkSH+nMd8LxRtcIpnYGhelGkhf/UjCMH7dLwVMVUrxixq5Qpwkf7RODx6sedVR0qia5SeuEr
Nz7MouYbjk/jKQJMi1bI7P2buo3vDyotq3+wzHSOC9hudx4c1KAbOIkEEY6DD8ayamk9TEROVq6j
XvjIFoEy669yRwqzCWwp3ZAxSsEwABXZ2mEP1X71HgRqJyjbyBfDwQhONjdwDmZQQ2rstoIlbdGL
XmLcXxAaLeEigHAQjaCqq9Hp9sMDeZX7qWUwwdArs+XtcF0i6q7yGlO6/HQf8z4ue1z6+y0N1Ekl
QJnoYlta90JRiDgtgwfcBXkT2wj60x6CUslB4+JAH2E9FoLK1IAA5ysPqJ8G0Bkvh5d2HbjztZeQ
QyvXbEInU/MJD0hbWNwDEwNXbYqMLQuIe2ewF3jvV6oz9tPCmZk/AjBmF7cwlzpbDCg5gdWbcmgg
h5qPKvAIXYOAeDkd5LcwCr5j/bCbpezpV5AMu7dg1lZWZmXuCX8VyLM8LZd9/wwb00wMYQMt3dPh
gGSUj29t5WzW/LD5qN/P2PjJQDh17lYycSLTBFBTXWj36TCJGrna/nCk+q3lm7Tb7KMr4sarbGZr
4rlDT/hYkHTrXl2n4fE6XycYYH+w2KxTGGHQwspGX9F6ZjFjUleYVr5Kes1Py8Klt/BCPtGQJB/i
VsRFROXjDNaTSCDBNw5E1B5V9ICYQHSIgSF4m/NDAz5wXFNJXx97LVNRwJc1m7MQoq3YVHvt6NUp
JXGdubkmw7nF7T0UBgi7NYYn6eWUoy3YGhwTxWHbNnluQawhmg7CfpFDnsM3MOy3tQ2n6TxZ0pvX
26jpvief5c0JL7uAswNoZZxoMJmBAZrPiVVguRAsEnCzsdSS8tpkPbRwaRG0H3+9zrBMnYhRS6Bf
XMPeVX9v+yIKdsCB9n961LgQzweKZEAZD5e7kQD3px5mefPm+ac7fFvCoVkjSV7CQxWdSnKEN67Z
Smy9y7FmlTPrUFtiEQthZoWRMYevOBHar9pYTe6xD4hRkeH3q4bsDFd9Dks3gEEtUkiSYuqoqRBg
l/HDSXEFF6yW7lqO348SmZ3dXoV2YQEYS1VuUU2DcSeNw5jG/VcKcd5NE++TIFIh+YgiYp9at0KL
WE/vXDp3WWYGqMuCp3IvZgNOWXsBOqRvhu+DgPRZ9ZHeICUouwlw7iHU8YmfutEtlmk/hnuf6z01
Cqc0pnmJNzAmp3EW2hCjRJORhZrcq27lUc8RJqFTnoEcytF3fP8KfTetHxvCSDVL1Fn2PJI/+caM
FAPtTkWb15Qu1mKY1mqiBkDsGrskMV4hMGew7vhFwgiztzW+T+XiM96pXa+c9jOG4caFJ3r+0Z4E
JeGCpwTWQEfyam2u+X2rRztZWD0cZwn5GrOtf3h8fJ4XplbUTyKyRHpl1rq96QdXzzYq0qvSTk1i
UWOxasuB/CjaZP7UG8mhO8QfzDrAzzdF48AjdkKwUfPVerohZN0rFiPbfy/qBWqnXUWH93GbeZQT
ulZbkIkH1c5fSBm0J1HVAZM5F+/FXko7xL8KxQIk5ajwTcmainy4UR6+WrhvfRSnHkJo7c3pdZay
alZD/KSChgx7XvIN0pVIJVIbMpzcZ1Y2it9+3cJSWUQGrlqZQrvO5GqYLJGtpk7EbvL1OAfkTU5n
11YBFpftAic00tjw7vwTYtjEn2jTUx1UAuEB5hEMX3FL0wzCYwjS7aoq/exAKIvuycW5n00NtIM7
v2c04T5qWxdijQkMZv2W0zOe0Q49HFkBfvug6UmH+cyIajaJ6XBQmUqlrmgW+dVOjiLjX1Q9mqQh
ClfrEFp+EnYbjSL8N+mLe/7TLwVi1TKo8+TtnjB9mAWgInbiX8lu72bqPd8kebmlF/8ShV4S5u6h
yKAuIZ8uSM+zb2XcIivTbayAd6xx7nXUL21sIImJDn++DdytMMXxo+B1Osc3Ex8aaC5JK3fjIdH5
yiGb4IY8ZsncED/MCufn6pVmO47GFKZjV2qZwZ1nChnkOY7FnloBdqKB6iof2sIxjMUGzhKk54mW
va1N6BVBKxe/RCL7SlQ80sh4SmsrWjIPVsSN/5sAohe016+4kmHkFd6fbgNdR3nmTyB6ydrUGqyJ
Kv7Anp3KWORaE7pF/36iTL5w1KXp3uCRxEMKvYx/bUsuqla3ev4cfr8xxxjLMst/rReJDl/kQ185
80UTtYGTVucVBREwAa6IHrc5van8W/gubqEJtjZnQkw6YkHUnRqQYL1W/faQZZk0/P2L1/QiNrhv
2XvQZhh7jLUrOIcfQE/ac+gLyIIYNk4XTwqJ6SsnB0J74HrWMEglNXdylrnxmAnyBpvcTSg/O6Z1
PKDDnAy5rOGy7rmBv1mKeyHgKpZHjitoaL1kCb6HVAnLn1SH253PWRGABBDkCFKsIi2uOAzr/jF8
jgCm8J8lYj2nvExpzd0ou0rWYfvqsfEyLXFV8A6yHbd8/rXIlR4tubq22t5Fp3FJRNnLRZmEDMhs
ekP1OWDtxFfMuk2Mn55v1FhrxSEPZz/G/ETtnpxD6YW8US6HGO/RS+Fq5rMgZR596d/8EIGrIV1o
9s90fB+j5n1xM5t+IxslgTZZcwJPVelX851qMhbZANP5YWueMveMshHacsYkZ4TgpAIPnAE2qIBl
37CBpl23QVPBGS3ck+d5ixl/LLeVAkdqbd1OdmUg+WLCjFbJDyKc8DTdiH8xXDyGxenf4pWdfMud
kvrSLKJNbpD/kcNjO5HrEjC7R8pnEQ10+4d9yJKHT50ZJKwEZGI4fe2wzTx/9JU39b4y9jCuzMvy
VybhjPOvBi35Tt29a/ynBsuL/cQGBZ8PFZdXANP6C+ouEr/XwH1wNqO7TcMjv1Ti6Z61/cuoX/+M
q+vq9kjsxMQ6OcINyCjAPcIhLhURLBw3kgG+zHmpZauhAiTOTtKTWVNNzb+PP+4tNHkwosEmDv1n
lTU/0X48Zpa4hDTMxxGjUyg2P6JJdnuHTPW55nMZ4fWSvm22nTjB9Gmkaklmstpnl3TtXZHS7/fV
/HcTFjNAnzFKwsei3KRVX5iXJxg1etNsAdZCPstjL83AXnSZU5h+NBNO11+CWV9H4aEGJ8m0IIVH
SpKe3No9tbZMMgz3t/sii0hrVNpJpoIyzsbVFPXBHgktVm13ChKJPbMcWPCNpL4afOwg58EWJxtQ
gAfY0I5t8py2+xherr8TOlKykWjYkSAN1IMXPf1tOzEEkso98zBiemrXihC/PxD7BiqNQkwa1y2I
BnVgKiDE0ORFiUS/nmOJEviOvy2bnFP1tvKRv+JsFsAJsu/bFVPmXlZzaaX16i8jXdO9lWDRLSl0
70d05IrZqEnKZy0KD/QAxbX/cVXgUhIv4PmepYNtCW/SRSWxUG53I1zXrslnt0iHcTbIfp8BWpBn
DfChVhSgakNpWT5L5K3xNQCdIpnlso86LCEyCRPimqhcoydgDVAWvD7NXE5L7pWiPu5VhEI9K0yZ
FVM7qHo9fg3fT5IrKH+IXw2HFq/qZdplgvUGqkn4V9jOGsSDrrH4tZ7Kjt9ZvZMLnZEC/GZb+V5E
/ewtt0FI0RdZUvOXgXtOQoITp+qfqFHc4vHpvPu8fEl5+1QdxUdk4NZNgo4kS8hhHbfPYLBff4uT
uVVYyb5+Z9JuFyHX5X5ZXa4FxoQfGS+iLiqIJC84GVfMpCv2EhVYi907IB2MNYi469Fm2xy3Emvf
PV2W/RqhkUU2/L0ABbSg9bfhSU4MQHJQxuE8fK9qzWEfHoLKS6cCBNuAKeynBVxMsQ5u6pP1v1mT
8TBUfQrpFi2vtWxnE41Hre6hmEJRKVSGZlh62GFdjQ4NDUQWrTiJvYOOeDboixGYHKX7y7CWYdIb
04vxQQy7h9+1B2tvkL4lgq/JBTohotGWeFEh+zIDNynYjWmcEEgKMdKFOBkGZr0uD6BMyMG1fMdN
dSITJEW5+tFwAbwohSUSfjhaAz92nBiqVQLaltHNSntb9dRxGvpkK2qpwsKJ3UBcfppQeYNPJKr+
gLbqdv2/4tKEiaExHI7xIzS30xa276LQr2Zv32JcdBZJdEgLhLUj0kXCRa/H1jgZHV3xt7fuWHg2
mkwjt2q20YeQYp12u2vKpW+VpxSZJDgF/z64xD70rRCvwgSY0xOxr3amSMljGafd76M0al6nFuTE
1rBGkc39IdjkVN3V5GczLJ68uW09TM9ah8yz/45/1Ox8UUPdOX0T38+6DqCCM68CmIpIG0ckoYAR
d79X3Lm7798A/aYGb/nvGdI7nLhCqGGumyiER2VUnBIC1878h1aBmIzl5kOLrXdLZt4Q3iSANUf5
/Ji5whDPDFqjMp7SdEA57SKfTRiyIDDXE4sCM5NrZgQA5jpjYHYNwhZjhCKPOjHHJNDK1AsD6lmh
+dfmAhBaA/oqGC8O/3xYRO3NmMB9ScHFzo6c+RzhsMceK5lo+3qiz545yBN8EvVpwpFaGeHifM5q
TU2IrPkxsaD6/E1fiPXc/wGTOfp7bsUK289LXqIK2KTYMmvmM3L1bcrVoSoWlCUwzxoRsJMOBMDW
dWw3qMaHCTLzSWHYoq7+iJAfLFN8Z1zlAPKmgjUoWiFXMbBorZt2W/hi/rMsAErGqE0z6ciq+Ksr
l/0nXyP0v38vAbwTqWLka4OSEC1DpjisL29/zeIJRhZ5IGLpcu8v05+JlYwxbngj2RFvG080YE8u
zjJzYlTVpAOv596SaWb8pXOine2XdMCqBK1Tu3H+bd+ZBmXVorRD3kSZtpfjWJ/H6GnvD2h/XDQ2
wZThnl9dKu0r7ArrKejYXlGt+K2hU+jwWQS/fazdH7gl2tpeibyLnh/ZmjRPQqqZ0Ur0twDdtNj+
/AspG5L/CUOiyQnWJJmlbAiox8u6Up3ZS7/ZPnzo/imoq0gKju9rHtfy2Jubg6GyYX0nNHR1cCTo
lFz+075OcCdehCn3SLey9/MbKUeu/D1YtjLSN6Qb6cUTh9W1/v3veYCLiSaZu4rnD/bnUYCRnsmm
zvwqg50mfPhtaSoVduJRCTQ4z5L4PLx1IBR5e+FDx8S+iDsP4iiiazouKa6GBB9qgrYLtdfbldcX
CX45yzCfMwbKjnCp3ZV4IBrP86JaTD/aktxazGGbDCT3EhOQjWD0u7oL6c1JlKwPBDSYAc1kjxNO
qHU4ec85Rx6OX5FbRGlW69TExTrOobPkJotcYyLY8VNLQbhgATf03RMEA5Dzcy6EwdU/L4rpHTz0
h2LIVKKOU6AWDslMfgH48ZPhMfBNOGYp8Dv8SLRpy4BRLIsixTSJDTpTWi+OO2yMY0knMi5kLScu
KeQpIwH/a3tL601lTc7OkS+/VsjXKHQLh6c0ff7Od8C4CNC11O0sHtqpfdaljbh5Ab73V4qMgI8i
P2CjQyn4cqOyYfQqaOvTgz0APLjHipxX1kHeEYg3FRNjBbOARI2QbRcVQ4kWpeKFQDzTepH1pPn9
u7rOkAvVObQU/9IeLQz4Bi3A2B84SCwDoLEQhSckkZfkhciC9Q38ibF3jOmU9OL14RiHqtKtOnTX
rR4YYoEfdpwCmTI5iJG8AWJG4mZQCrsiRMhvv8lv6iAkkKxrSokggbazL8evRb94w9buuZDxc9yS
nv2t2ttGtmjTovZCKUEAzDtzT6OJgoqIVjbgKJ53syPGI9JC7VOoqYHD4LCBNF6IxgYps+YPx3HV
WRE4cYf1+q6jhVgn2Ds9Jf4k97DFykVj9jj0cOFVKpU7EAmXctmfKNzv+U3nSu88FiUVpdEIbgcI
yQ/qIbRjbGfolLYCqGke62tMrb8jaqX/ktT9L5myRXx3HcL4Y4LgeUKWfQ6iJii33zgLaBiIJnKy
/bzHMNQQcZ+vPutyKDlI60VZnTLN3Q0PHtkzI7iDep8B4+iQR86f2GTI65iDudXooNb47845lEVx
j8gPak01ZjZ2dB5k52aqOJ8loMgGZehqjrLbak3QUeWZpetwIkXH7iI7iBu9BQfcNlHNHBqklqCb
CWbkSy6HCM18//BtjIwH3JNGu/lUYp8OCGAcBkXETlpOVTfqauaQooTeLHswVNcKa7KSXkwzM1ui
h9i3nA7bFKdull9ZuH8lw8h3WrTZ2CeWfhUgYSRai/6gvJAUZtoP5n06Ed20y6zNXi/Hn4KMaPYv
Nnj+0jKqPO//fSqEAsWpZI5LlgDS0giKVNPP6+RQwOCZEwNqtHdswfi8tZACVpVcjGUQTaQCdewV
5H0AgZUAZzb08e3KxEjBIHU0Tm78/YcH2WSvb+h0C3H4+92pLGltlAwS9d0Oif/dozkLOF3q9e+o
ywh1ZfyYiv8/sX8fUhfRNOmAwPdtx5nFs5iUOkth6Ejrl1oprEBgzc4uwPiKNIe9Oc88anZ0We29
LLmTEfOxi6IKghyKG93spX/yKphtDyCAm+cNtuLYL4xMmEb0NuujGGXKfwmfLn6RPd3d+TDKyNWl
P3tzp+lVkk1c5HCvWnK1xQdfl5S9NiYI9IgV+zWvdDmGE5y4/R/2sRmw6+kQkpmqZ54LQe6eNp7j
mkTwlCYNuoFHoTA8nSkQ6AueH/kBT9Zk5a0U2L3vMMddAJqzSV0880uX+BWuDk6Ak79wheKQDW/z
Jy6JN6+c44vwV5M9lHHYutL9LvLl/dTcEXwYQ7wTAofy/0RhW1Y1SdFumC0AW6XrL8HtgRp0YMZo
s33T3mDq+z7Y9lcEet213l1a4OyVtleCqFoRcM621/ynj58CrnIKRv0iB+/2aQkQq2trybnKTvP9
4Zwq/4QkFMxG10PNTF3ERanEsbgkZ7ZfNY5SElTkXbo9aRoYVzICFly4G2BqhL4DoLp9zK9hB7xw
cZrs7AzLDYSH1cFIe4SM1pBMD+K6vT09pXbNgRYJONtQk1pVohjuiiVaFyTsC0GJRmWHQRf9yTW9
54nnpSRw0MRqmZr/b5nUOd+oV1NRcqT7H1NLRIEVy/7216GWz+STPfhPqDKn5lyUYlmSld6xcCXD
fdFs3HrmDc11Rt6c0ds8FiuwvbKq+J60BlW16gXlnLwV3w7mywWHoVIhe8okglzlc++nh094pQMd
QhxO6GajKYc+SsKEOUzFcbdqy85XKxOP3nxlXmdQMP9/3Kz4hCqoQFJ65B81VIQW7F409pU5Y8H6
5kSEk9/lA6coSbq7aKfStZW8tfq+jEc3KKpf1eFVSps9cxGCNrNMhgdCPDPrPlbUNLmCY9zhXpe/
LYYVqy8An7bLp7Ga3MIM4R9rRihJGxietgmdm7gArG9oY1EuD91I1NiHwyoGW9fHYNMlv73/Rggm
QWKqmtGDm2F/T4G3CLxmkiy24TagmqIxAUBIIilhPktvx8yrdg7ICawez8bcVCHFy1YOIam8lN7k
qOv8NXf70vPpTfmiyym7uURcBt2WLRrpCmX5RjglVcLz0EgUQpjcGK0qOq/T7lw8Zq3o2vgytVJv
07zmHZyID1RnzlkozRo+vxG/vtWrjQZ+cC1g+GLrOEoL40G+2i0k617y76ZYP88YVnO7s0KSr+k0
DNgTddkgHSXW/DOD1TJCTWDHjoZQLF5o7sT4bGAcsJ1xhFRlWau0WYNoqUQvZcV0BJTgZusGeKnJ
5wwONkq57OBmnfQXIx5smu7FSWuWp9XD56ab/We8PfsNhrS+AMMaNw4MabWjK4RXaBdzzpu8+bgT
KRizObtk20S+rkOnGCbhJe63/Ph/wX1FhMDGOi6xKGIdpnnamX7k3u/xWpR3B1untp1MBhs/KHVd
GfFHTnugVo/5fhFu26ymVSXS8UQILuG62vMfFjMWl2uAW1dXUOkFMEdTmgD6a/A4Yn2aUTVRXG9o
0krSRHSCL00UCN5xsPKh1OscFtHDTcotOqyNNeqH3V7gEGBAqjCNSZccLcsDNZo2j4DaOdKFvACq
MipvqggwiiZxWlqVfj4DTS+kKbI739Q4pv3PhxOLgDnX/HNwFxgpDo1at8cGnJl6xY2af9yG/ONv
j+py4AzglKBCDbkBLL5KRuxcPUgbjZ26BSPzKkWDksEkVCgA27oNL+zLPrhWmbwiD47p7lds27Z1
O79QavEYqUMYTgMllV4Ifon6WN8et1wz+DWbnDN4FmH2eOxDIZ6n2sCAN2/5XCltHJhsGPQfWmG0
dygDd9DD6UGiFxMiP3llD179ypqOoMneH8I0oteEc8WKJlnUdhcxKl4NWmIhAYwxJPKmp+z0L5Tj
xFg/hyZfHDY+Z4qezpzyzr+tc3h6+EUX9IA49qIKaYd/SBu/J0BYy94TlU5hqs6IR71jPEyTBpj6
WwJrMTHEJiHKnIAr6pU0i0EPlFyf712Qfxiv97sa3CS5+dlGCxACm0m4Op/taB2kMgGgeQsJNzLn
3OtyQ29aXPqFrs37+QWKYWZpy9BMKTfqkZBuSMu7t/CeYEoimzMpij7yTGbx1qIYa773p1ZDmNIA
hhJqygW9yke8Tcr88ZEcqbnsBzQ4BKQGq5ZLueapW6wmlJ+k8rqjHC0Zi1NWqgWNsuPaexLq4ki8
4U/9Gt0nPG+t5pIVGO2fO+8QKz5aJeP75Ca60pBm6Gr9cxTRWNSsZClP90eAyt0qcPH0g6WBVgQ0
IeY3+WSz3I2ZP5j41EnrXxUziPA1a7AjNPbdGfP8ZSxHbfBrSpdXUVX6t4ELJDiXC2bbPPsrxUc/
rb0zvBI/qM5z2AYRiQE0K32d29yhC6JibpHidTIoJf70rcmKtosQZ5fHXEVukcFoJGdBGjwMVNvk
vEJF/zQXgCoKPmZpsJlf7a0bxrkyyJqabcH44x6FKzNw4voTVUPZZOE0hTDdXJ1+8kuKo8dF8Fqy
sm+7x6TTKazQomETCdeEOdQUFvmFwoA2HsCofQ0dwiHJmAo/xMdbGOwypPEKh494yTluLVyovefL
2704oCxFjeyp7kJssnwknBbwN5zvKYo4IYAU8YWjsPl6Yv6WIx0l9WObJBI8RvEPA5Ba3VPIf8Zd
lF+UpbBdElHaP+/gpFDSq/4ALlLcEA9mHIrAig9MkbiTdiyQ8YyhDJ5/XUBt83YJ9MMO7Bobat+B
qXKM8OLocjjLbbWX/w76vjuQcwUHneGZwVm9LkBUo4T/DqDP4biLoKNGuycQl9Nx0+CFS/oGJk6G
B7N772uzLvqPxmiTXsRAeiGhZ9Ul9Mgx5Z4WInHETW65mK51emX4CdhsAnBHBJUeArJNP7Y4ltOc
NDX1i1o/jRNxeAnGL0F2kr/GlR+Yj/Wq4Oe4sHcSVfU8/vYyVvvfb6mNljDZF6vchDiXPQl1xgFL
bLteU8JMxH06JRer37a4nvxWMzjCxRQgXGF63gVfNyxutFST5FXArG9419OIk1FCjUFE8IV5GKJs
q39cVUw8pGDsy5YV9RKohbmG/hzu2ekWy8p/r4UZHIxJurXdHbxHLfddlKlOcSjGgFOS2QvMp2tz
q4vY4TEyaLJCTRY68g/F1AUemXyjMmEtOAcQhE7mwPFBKqOTmt4djJf6Yg8LMgVZnkO2Aekxc3Eg
Cm7LnyBFzz/OIBLv3JHM34athTfH/2WrFiBM89gQKhPSr4HqqC8K8xAYvC0FXwjRd3kjk9rO57cU
muUgNl5UWVxPNTEvGhsKtsBAIvmnngzdZTVv2Kn7aHXHmZhxZcOUSwLEuwDU38+cHjIvyFxwJsEW
ft7R9KQz6kC8RGYPN5fcrCs8rm8seOVZQjeg8SsisS3FZzjNLaZ2SW/WPzX8RuYLdqYyF4FWDPYY
gHLK1lz5CVF7ZfLKCgoPvXKpEZPJcOrHWmj6oBZmDN363h6+BDRTl5DFzcbJRUyxLcrtvPnQYl+h
/svtmVanABiuiCnGZDDp6q+wQTj1eYVi0D8dcp2oZpjMbkp+JLpuArvAvtHGkhOO1ro6AaeQsOQc
EOqrd4QVenOuX6M1sQkFjrY/dQwVknopqAxpyjuagf2NtFGeZN0N3oP66h0pS8QLQvIgWL9GU0o7
ZPz+IppFD4V1HLx6e/LH45PrqEk/J5bJOm6rcjsP62Sk69DuNFjMbYM2K3mLAuLqhCdjdHSe1f/b
56u3ray4YfsPI0Zyp+8GOOb/qL1pkKz7LAStP1uJRoWR3Sm4apqzAEnxRY/vRJtzdMcmhi5ZWKrk
ukPKk+ewq/yD0venSaY7WshMrqZ774N41SsE6OZkiWrDPQviWqzTHzcsAMzav0c2At3PJsDCaT3W
DIX2hKwx63w1g5yi1WWPksB8tNhqUw4x/JCaWjgUero5hLbuKx9QNFT/RgUY01fhQVGpbPS/f4wF
YknIdWOMlw6jsDdVcWAkyfiGlUy36mg05bD6hlmtFw7g8nLXUh+Kc3IVkl810TZ4DKHvahVc7nv7
3yf+XwaG3QYQxsq+77P+WifAG8CYJ+MnTNicvAtYdqXszmgOTetYNg7n9EzA+xh63bkSuk6x7XnD
lLUrB64KrjdkVK8fi22XD3d/V5q88YQO972SK7FiqotEjEBK9kLkKFG71o+BblJanFbuFUzgyGvt
VhwYcvgiTsaJ1hravFJOWo9/VNhegMUJSQG413K214tkDTgJ0pSJxLFAYaQliG6OuyY06Xubz8rw
K9jKql8H6piq1WjDendTt7cdbiH72H0AKiCZ7+SZP4O1YsJJPkkGnaPzTOJlEDsfC3sGNFuh/Rn2
C+tgV2gT5w6GFGEdsV3WJikPT0jHWWYlouM+hai+juJCXket66M25Oc32b1s3v2pOzluROE9AdLL
LE7dHUVbi18SPsI/jm9okaMulNNwr6TnEre8w9KjkXV+ubkVqYRZDCUO83TVCdrNOXnq8caOW6IO
Udjqqn6zoliz1nU9FDa7Iu6OKSMqgq9SbgSJVYC2/zFTO0puLcPpWDSfvEEa+V47PL2IUv89+i8x
eNyZEy5qnwp2oB8CkhIDNp99TF/oerGEZFqBag7Mq7au7eiQzJt5p0QQq8oHTlqCMCS4a1Jd3TMG
LeTbQMSLnP4/dEVmRMVtUnNPcrREva+iBLAe298P7iXUnD/hx43XKtARiaT8BQUmcaMAKzoCvHY7
QbtAdikxOEilRQyBGJPVQkdwJXq9F6K5W+w7KDUH2Dy9acE2M/LQvEJm0TqRJ7Ib9zQlWVXAOuVt
4nnKs1CDv1Rq5vfJ9i4SBqzixHi1ohc8QU5uOn18VI5fsOSP1KGP/Y/EV1OVMhjiULPhIk+s/jnR
I52gEYFbQQJuM6C/CdmUUYbfRuCHQpeiWFX8IbCJZRGRUEXN7ZgYpLKQE/fNNr56J99xVv+VzxSy
PjUBJO1QXBQSS7M2Tk8gUg/eUzkKZinExoorF/yqKbF8PsbblF5enzvOMK7kEhiFZDL2uDi5RnT3
ZwJVZwl491O91fCbCoXheuTqhBz7AoeVk+dB9ddG330H+S3njmsJb2zFhd1yWh3QpPidkF0qjHww
OBtacb9G4LlAbsLNZNNNw9zPdkTGfmUwIn/NqTmWKJki4TlJvpe4zjW8S1Xc2r/Em+P9lGozFlyN
ufTIHXtjnI/gpWSQXvgfAzdqxy5G+lqy5itw+pzkE25t54W6hhquoAOMoULQHwnfWOvV4icincF9
rxUK9fkCKBNVzMoVE/M+IhgwExMQsDCbfSbaVsFl9x1a2aMauupZPkooAo1iOtLSHEDvs0dPlOUC
b6WCoi1qgIbqC1+gaxwvrbBUyREi7U+NMETyHXwCYg2/fdJc2SoIvvvDMKHiM0oSlTeVOwZSo4Yb
+aKMJGUHlphUU36aq96wjiEJGvm4mqGUGtx1kLXWWW4ltcHMFQsIuH99wOT8wNlZhdi+SN09GhWL
0YMmqr7nSItMFKiZk9N53iZndXV/NP3vaDnYeHgs/Skdy6FPMVSH244GyKKaT2jl/yf+MEf/jD06
j8GSnhb3/UmVJ8AV5Fz4TK6V3YPP3vUR+XqTBLrJJzHFopaeXbpoUbLrkOlwbo+w6i4vACVwYric
dC+dvffh7loBwX3teTuqsx1N5ELh+TePJm0xAu8QksXeJ2v9dzf7F4RXlZvNvFE4P8K/bxAZ4REO
NLOx/PTzi/jZJD2WzVsHVOTyhgdzd63Hsz3cD5iNxxPxYQ+d0Cj3rh5faPn/t6UY4Hqq6e8IMsdU
UWikUTk7rZ2T3xZeU/bFK88h+/l1Cv4zeuaSkJk7aRwS4fTOJ21I2sg2oLM7a6KzBX5787SjQz6J
qWvACQW3WVFg0Jp5kGhuJCVwQYYmQsz3/ip23ebOUyX5yf8zObHvp2kp9CHb+5D62jpUZ4dCY6qs
e76g4qwN36x4Zka5ew01eBhxIgE7nek38JVjCBoU8VcpQWGwozfVoFLjCuGBNnycrWHlLLB7CTeE
DB+6Nar5Vmzd6vHU7OWLJMYT10aKkf9cFaqS6MaPkxVbD36sPyQQCxQKkVhYx5Ol4fazji/8gPTg
hVxQWr8x4UVg0BQJH8sAY+/8fuUQ3O0AAd5rQjkv44iFBv2uTyIfYcFn833hmahEfqm314P2d51S
HkzDyTXH5t/kD55J7rBFdnI4Fx5pPg0hw6QQd7KFOi16/TY6/pPiGzxReqaGSFqvXTKZn6o97HFI
ChOeYk/qAw8eA5+pVWcJzacVjLyVLx52YFgxmspFuIfEgcMKHtUojUVtJIB2o2m9kR+olcx1O7bb
485U5j5XtdYNblXik/q1nJyWwC3Dn+MNoOifQcPP1HyUVYAwFNu9gvDLfUYsZkjhVhO7vvMheeRc
tLGKza5zsty/3RA2Ge6KD0j00ebmCv0o30ZHRT985WXA2IvBHaMLePFLHgDNvoWBCxNA4njUPzE8
3z7SWTOKDvAKvZN/K85u9GyHpWdfpVaKgoiSU3e6LN4IEJ1b4E5Ytcn8TcHeyubQnj7M3qBTDEOc
tCS/ESybUrE8nNeAloupBTiQxjV9PPLf8XvCEtmaRuhvCNJ1vZKYEyhs4X6+xT9elhv8iiYnUJTS
LnPezC5cYe0GhQUMVMEtJY9A+BbKUY1TJn7cCLb/mxiz2jEipI5Z4rjaJnKV7c/y4/RkM//bYSVG
BTpsiJZ43zGcT7hMiQdizhauFO/K+1GODQ8ps58hMAFIfsA2S2Ush7pFquOS4ovHerYbXoVr8D4D
+r7bBns1ELxzFFxLkz1i0UDd4fdnA+l+SoPhA+LtFU1GhSlr87FFWKDiCiayQGF2N0hxKVYXaiUi
owc7s7ksNJeBQFujpReVxDbHLSetjRob9P7vjG611NKU7YkyIjFAHpYAzXxdtE8qmhNRw4tw3rwf
PmAcnIGgDrj5n1D1lSEh2PCDvbG1lyW8efB1tly4Bdnsa7oB7WR/EZwO7QRFMinOKZuHd/LoK+Rt
y25QCXwSJkgS68LcAWvcoUXDu0tveDwLwGCCVGhsCpIHXpCikoBr8G8IFG5ViN1tQFDMZavsSazA
4jPTqtyl6uA51hM8i4UxAqZ4zW8hlolSkFCtgHJVk9DR/2yAGE6cWiRVLPTbxCb7dNuxIm9pEX5V
33S8zumiWf3W7fIvNRBWf0Q2pnayg5WgAboTTvbBczWY7hYU1BSMzM+LqDUdjKx5m7wGUG0DVP37
ycwPAAgT2CbmfB7TtpRjSLAKBpaFFrzi/80D90tgniClYfXvGaBxr+NRMxXXE3ddRONpJKpMyE1w
bCMM4h8eIV306zTpybH2B/JPGFzIkho69Fudqra6pBqHokZOCIicOdw2/2T106QkDzZ3PQteexxg
XtW1eo+TOmI4SZAOj7qriRQ27G6/1jpcXhY3GkDpdXdiA8+qqvOggo5iw6ibRMXiL5gs051+JJ/0
3Bd6/oXWi4inJ3xfzJ3OJ9pWmvh/77mhO8c/yiqiBFNBcPlaZ9TzNsl25KdodS1xgg/RDU1w4IqK
fTGlw+VaLIlrzQCedAEUY3zYN7P+0IzwYJzbQ4ZYw8C60kg05UnNULGkHUfILHaO7IJpL3yxGhAP
3EDHXWDXqTwXqg/gCEEccG5MX9DWAXoMZAsdfoTvjpfBCQSZTsRaYzHXuZpOrRWXhyHpJ4SRcd6T
ORLQrFfHMGABaEmai1uiZnKqwZwmddhAjx28bTVi+Fo8llFmrfjqR+MnIkngzXvAhodjeznM2yfY
i6zhXyg1kA2u54JorcRp0K5LqjMtO2cS2PnbRiHq9vjGzuyhVoUn8yh3nbGpuyWUnZk4foBLLTz4
uHtdcSRT5SroNtEb4XKNB7uvg4sNEf5pJRsM06iT4MaHnd6bn2tBFTvV6gwwuhg+MZwtwaDW019D
he83ogrLvBymTg6tJjgLEDIozG40IT7kxhCjra3yNEiSx4fst1JB4Ux2yMwK1N6i4Cxr7sEjiy50
uz9G/JEICe0nsmfdaf+9rovWaE5KzRmcA4C7aFr6WQabzpiyGxFCFixOZ1t4IutZjv+r73HFmbgZ
2UMfacP9SDPiSDHpm6z92k4DRgSn5ml852ih+wIv+mFnqYQBrfSjCI0Mw3T5lA3RHacwpbleymcR
MWfVpYxB7VkkROZwpGNgisMapZ+I2lEouVk/lVhnn5JbZFRgYWvZLjFGdCnA1w+qXW59VzmgWBot
xdwsUiaxW0zxxM+3uU4EUjvBobzkcT0uEqmAMvTAYYJ9TT5ikQmSGhmZwEhP0/RWFRBlgJ/E//xl
y59kiAvS8OIFe9lq/O5WpRalvwIp6uWYUD52UYahOtc56TVKA9U8k2reYxWxNZ45242V+EuNDtOG
ZkftJxYfcl/iPDpiRbbwc43KkutDiX38vRPSP6QHuUMWZzvaIjfXM3OU+uOnJMM84hgru19e97Sl
P9U5zalT9IODd7GEf6iXzXL29yNNNYrt3+/A3U2TqSfrQFsL64UE4F8GG5X3JGZWvtODE5sdM94t
fWiUUdTuYrmb+Jx0Fy/tdE3xSRlimnftPwmKCayq/+CreBCMV5GVfmVUgfpM4TIiRQp6ZcQjaa61
KO0UBpLgeE8elbw53QAswg6RIDRTudGkIn9hMdRTeRNSr0VyG0gO3hs2OmnAhDn7NYk5kW9HIOTy
d5YJVQLAgTE3G+XE7maq0pebkNhM3XoMajbkM+KLEsf9DYqI5h8ONLUg+aQXcTN5hOVILgzb4JZ2
IkD2SUUCLAPAZiuU2ITNMJBuf/XXOdpxylH9tTYLHkRX4K1L1qWOgpCj4SxowPI0hFbcYUEdI4aT
V1UBtKIgLEAniTJMaupB/LQK0T73OG/GHI3EndakTEJhRp1Ql1lO2gxVPoIgDxQ+5HatuEBCJY8h
qWxGc4aD5VTSc+P/ieGMwDMLqu41vRJ5tbaVMp4Ah113aj4v6vemfWIHqFu187Psa6pm8zqRtaYL
V+cY5FrW6wbcY7L0b4gUvfMMvULN0Uo0LEzgHX3aZn3W0PS2ENWGUlwvuFG/5H3q9fdQkwrMfEAh
8qL7Id+Exye63KxnWVjOKMaY+jwDMO/GFzj9G7oNj6TaZLSLDb4w7+fyAiIETiIdCmvVEpMoWVSO
dJJ80LKAQaNMn3jlJ723cxWcCilpK04LWT5VdfIOg2JAmFa6W9iBWQOmnui6ZyWChXUKJjOb0lV1
ADAmB+UkIuWmY9Qz1qKEAY9wJyHStuXFyuPBNhwyWCzrR0WBIECbxNhYNTZlVWJZX2JXA1DWq+Yw
BRvoo0+HtClIiEVGZea2MtDlQ3bSJL4Pc0jJbYp6adIqeIlyht5LFJhxOUFoGCFPuiIPphUKIM8U
HwPR/oNGy1fzsI3kapMKAul6z1hB2hOyBjH+p8D9ghv/BsV7yV3F2+ZnUuAugle8MDHGPv6oA0Hl
stEUdccWFjf1ALvTwYYfKNpOWo7xIrEEXER+/PZg9sd97f80liBBuVqaHxGMCFe/H9vdB7cKGGd7
X6wcPs90A0mvsjXaRHCiChb93wsPlH5IdMB1D9AgIbrdTfOdKMwxXbngpQrDLKuEjkyhNCL0TZln
czpg9kxK4aS8x5V7w5yw4zHMa/tltKcUPN8ETOYJgU7Y37xkkTespo+F+jKsrPwNtgv5ofzePCjC
NJnydlHjMscd24EpOlsSG0E9dsD5YJ23HkewGGe09fE3JGf7XMi/NrJSu9aiT4rZduy+nLH5ZrKU
MK+yW01LJmdHhLO4gC0q7+Xxd3LGzeaOizG04b3f9gmIfSYWj7UoBRrPN7GvuzaRtHGa0qpWw/0z
oqeId6SWm22VmtunwIDgcjZEiqb1on7WH52nFgyxuoigciYRgTdFTsyHGvibH7HtN0NRhPvz5zES
BHfDEzmwhcnMP6IbJSNMrU5xAemXxNMUBUjMqm649v/+RDDedtLmmx4LMbhJWbOL0NHbZD2Z1LtR
qfQ2F6t+6Fut+e+N4NQt+s2/nmNXEiQnYDXi0bmHS8re14XadTdhFxmBNMLN/DTsLRZnI0QyncdS
Mw+XiTaI36AUKxro4Qw5PoKoVUOu7cC8ruiBzzVB05vbLctA9puG9PDABcm2SjjUofC7ke6kP+OF
JgYViENp/2AZhaK0LI8L9ENHmag4I+B96suJI2B2GqCpxYRNORyNIFKqByks2d+7ewVs+jkeX7du
ms8FriTY/qnE17Aqr8rfZ25fIqn41Vfim8cDqNa+cslg+cdR2nNihl5DkSvcenDG1XMLlTWQ78md
lsj5bdUYquHfYwZIa5qlE6hTFEp+un4zIcJKVv8Vml6Ef8waCHu91eBVYCD4cAJ/USl70l92byfY
Yr1X/8u3+QbGXJi+bJh61fh7x+Qle8hsa8r4s3Q775mDO8fk8DWSKgNUwcUZZqtQTgkd1thh6j4h
NFrSA9NcsBKTnvs+Yr7WXos5WW+vofY5iBetXXAUwEmUOajTnhNLsVFCbCMdTIjRRV7G15hC8FXd
0aheJ4HCtyiEj3sAD5LizpIyEZz13Oznbjocdl0Eby/6wp0viCx51puNq54ZxfQUjz3OYqUorZL0
7PelzZl8rWDxfm9ogKJPEUs/eOsMEo15igFCNOOm4Hin3o7lBVkPNjjPM3DZ2mG2Y6EiuTW2CChi
CHCuDCt07BGhxCbT1zUdxmq6v9jaluJmu2onaqrVU6iVDN30fGtUb3YlhUJt/WlhAUuvHpUy8aCH
NE5v8co9X4jeOfylsToT6JwpUZQSROeVbKNokPzoElYNiGdJsG0bV5Bke1U5CL5klmDcczuv8T/J
Ar94hvVXUnixAWm8YHRVQPJp1u3EH28VZo3AdBSEic0AzwdDKwwmygko7cUhxX9NlxqD1c7tz4fU
w6e+Opp3/gVuFY0tV9D1jE69oD3jmjwn5u/p1iHgvgr9tNto6U7J4y3vLE58jJKCyBf09hw0ECMk
vi3Yb9NSOSknv3cUClkD5f9AcRVObPKogibZuYpvFRVicMVFkudtnGXlD8ZZtqWT6kipQtB/DthI
qGdDHr5njUIsQravGWQcIOlovEOUrf8LXGWa1NpaxPqPqqDB/UsTYXL+F1QtS/qAGhNZt4nn9p/I
SUNPGKy42/ZGsY7Shne16UjeWGNXyRfK176QoNIkjvbiVmNvx4YpiBsMz+ApmmWsqLJpua66f9IJ
hET95reKsX10JfT/hOHsdzatGgNvdepNnTaPrIAQpzuPG/QxH/m4koS0xOmCTmXb5zPdHURpcgsa
mdmHzUtYOm6fccIwwiQ/SUVk8SF+u+RC1dQfCnEFuagZeEvhv6Awgcr1NrCerlqc9MBYU6bP0xRN
19op+rwnkUi9xePgxQmDGzw/i3N6Rb0Dn2obplgbo3d7fHqU7V7X4Fvi9hb3zThO5EULnozATcUk
XOgv7lEMnQmyD3p+/uI6Enu5IuuwGzhn7zeZyP/XzvD0MJ8b02K8qfPm4lI5G2qSL4JolYdHb6iy
am+DzAk2sxkzsT+cDC0nayjawryN5n4/Xj72GVRgmVe7bCtv3VItQj7WQkCZDBzOobfE4F6wc4z5
9Uq606dpU3RjZvMdttwhwb2eOZy+FDTiPsDAK+1+Nbh+FJlf8PMReYWfavD3QsC7bAnJ33HsKFS/
2KID3h5wbEDphIIuF35bh5otu2m8UJC0Esb10Id2i8ae3IDOyjjPAqM8dsuMe3BL4MlPllcCNaWx
3wBur5Ur+gahnrfVtbfLcv8ZToU+plQA/9kIjryDgECzowISZd+TGyvXFNx89217dN2TCzLOCMEQ
40NQKuRNZ/qIOIhKrRpvRwYh5v6hpGpZqLDx6ECWVGi/Z+EqDaIJSnKODMq1ZfT/i9JxSHLZE8rQ
0lxbl/8yRIj2m9CAW1kEIwnIOz5x3v+FsX5KnwoMphZmWwigoJgEPQIVr0C+uXbgToeGl5dXNSqf
AhcvtK/z3oQC/87SOCWt6Ze5LHQT8Jd5o+vnkoeMKobOeK+JTK7GhsW7iOJI6i0BMIdQSOTnFxO9
DKbMxqWl+k4wq+N533N1sjqqW0mlRILQB+xROFvjFbh7yNsXRUMrMUe8/A9MbtUYQCmt5VHIwLbc
RNpH5cqbqx4HwRczNZtCC0qw+hdgBFLG6DoAQGcRHCLxIL8qH7arwqkWUSZRqlxpgz502xlsAffp
gELurQtgod8cNlyPLeBG5GiwmWgIeevK9jtOj4Vv9A8XDNAIQMwn5jsgukqh41cH2/vJsA50AECa
bwl0IkY2H3sesT/gbWxX/ukdDKyhdp0TcXsP2AT8iSGnPgeIRnjFRG/mozU+EQLRDwgNuMJj3ca2
xsSo6uVh78mtUPNp8gdMwD/nSsn1378XSFn6kT9nI9GAFFHBhIE4/Qid4fAcwX5iyK4NvCSua0sz
kPz9AAWHssGlS6Pzp1emTWbQJpSI7N4by6kXsp4f0Zp/tZpG3fFZmnyDG0ujaIk3MeEy1SKtuXGq
faQ38QwkOF6a/CRQf3gfN1LSoHaoE05IE6y6V80HR0VykjdW0MOctA==
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

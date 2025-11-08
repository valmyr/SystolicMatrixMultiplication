// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 17:52:30 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port_sim_netlist.v
// Design      : ram_single_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ram_single_port
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
  (* C_INIT_FILE = "ram_single_port.mem" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  ram_single_port_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23424)
`pragma protect data_block
XcQA6SKNJpYVjudnkPMdJY7ONHDSIRfs+anEeaDOYiGLfCHN5nzqBQzS2laAfjMVwi9utHN9hhSC
CugPEagP/vuIkk11VRmW8sC+1b2fUNPwEbwp0ZGWzYhjGEVJzbrXf19tdt+Yfv20KlstFB7AKoNJ
ZlKhLVYKxNi/NL9RTYRkZsNGbXe8nVQAgSoaVnrLuSX7aLWd+uYGnG/p7QOnM2nQMA6mKcSgw43p
T0k0/7kAP86iq+oFL3VvQ7kPGHDq1Jfz0WucyCVyC2RrFnqY/GSM6tUMxQHHwGR+eQ8he4qNUYww
5O8/UwfbT1kDiQaFprWfMhScC9y6SUvDtTippfez6Bp7E7tZdWcCYqSagdMxfjjSjVfL+dKGHaDD
sIJnCNbGOtF/xYA9dnhjL4gQ2BH6jMekjor/wu1WVdcHy0vuPwurrGAjSTED1VuNR3VETrEZXlTQ
R9t+hJReUilph98sfXBngZiLBsGdoMlzUq7/P5NoIiXOywoy1UHFNqdoE+F3fJPc2eQh7bpa4oVC
r5E7K+uecXzQgacJKZ16QBsGVAG34ABeywWpblZ7xF1zBTfWCYDK3G1WjxYIR8lsN0A9SrNruYGS
WxiSWbQyXUCosFKVNGG9wJ8uJf/qLZA4AUV1UxkqfqU9Ic1hniEutUlGsXPr+08Jb8NXIDH9t6sd
cphQ2lY0jR0a3/Fb/lIDodJAlRszeHDdlIZPTJbxnuFl6xXbpmgRX3nKmppoHoDD0SyiinN0i6id
AEh8sxfTi+cFk19FoMBeF/YIf0JtZpilwFz8f5vwy8mJZKZA2QuOmEj1R22Q+DuigezImbEnBCxd
vH8VCLv+QlLAL+O5uNONqR4ANZJvn7WPn9COLJPUVzDHF2WknfaMWq95BwrUWmTortAXonrwJbYU
WBrXCjb3fyjc1EMNrND0VK6D/TSzY98E2B6OhslD+/Vz3Wu8NjYJQhqslisoC2DmmfRhricyLxHB
nDL5YVRU1WXmXqCWLYL/jMRrf+iYiV1slbwQU5kfMQSbwpcjIqE/rKcSWa5dMmVKrJsfO8tSyQco
pxeQ1fp4tsU2Adl4EibJpqiGE7fQX4bBxfqt0qHghF0di1+cJjA+vc9BUvSnDr8HQ6ubmU+FhOvM
FF5svjgO03QfyFiWbX6cDNEy7rv4n6z5NZXJrsICsr7eO6p8T3ufL4a17R9e0d1pXCyCFWGgQkeF
/W2qmCBUIrJukqfYiks3z8913pQ+NF1D0TyUp+bjnUvdj6topNGPLPj/yeiGkfKftAhKu0y0fz5b
ufLxyUaJkw9Hk0je0u3uqnlR0mjt7WZLNyKIqLQRW+dsGZYauQQXyCXBn7AOauUsMM+uWfytcdvX
olKOzcC7CfeGNkws+QzDimQlPXe+kF7Jdd4pfX1bpuw1q0Osh9AztYADTJ1FhI73vefP6eN/KNje
12SalEsW3oM0I+HXR8lqknjVz/EfaW9mDDBoKhcPGv6JaB+vszqboYIaRB5Ku5OMTdKJx5rGDJgM
JSxMkJg4K+0XZe7D5J60Ka8qnegtsO6uR0iJBPSDNoAdwHUqWaY8MsDkqvRXAIPT61QorJOA7FAa
5HIUWPBpN4eOUzkrj9ADT7ngOBjhcnZD6vlRhYS8/vgbGaNBL3SEjFqnCJmadcLbQxWKl88P3q2B
ReBJlIBKd7joDeJamCc4zGjcrLM6EsFlUzW16zgQEOwO3izXBHBYH8+kJlEM9Gwr1JVsWdbkqS/L
QHcYft3szlcmBKuM6LRKwPBrlTy+ydKMq1DccaY9BOLMDalLixZqyzq2BzOrHCakSunyjADjZWBs
gOXeGdtqSv1hzQQ7tEjCUsd+3nsGn9ioyh9RJiJXuYiQBsZeZUbnsopnITeie80uQPY1CyN4Axkn
mUrd3JpChxzMp0jF3aOJh3YD2p8dv4oEVLb01d97S6HmAgG6FCaAm5FOPVcfl1dH9DNcpNPpwBFT
worN+DqEZcSRxMWF0zUFxw3p0bGDvnGVXmY7yLu93n5QpTWtsh2kabNoD6leutE5p1W7ZhVERxcX
bZRnVP28uwYOj4ClhrKrSywGSxqA/bv/mvy0G28o2RNHBMFYPE+P3/j6Maz2VZk2alXIAKuTyai3
HEaBhgIhykWRSdDy0ulEgQ1175zQrQMiV50zD0FXWj1L2t2VIbgHprXyjk8h2MNNAPln2uYSfBg2
JMbVqUmFPyJ6qIhVVwhQYQxn008UmPthhFMF297kQwGHHwVjdyIcWwYJPIHtl91F0tlQpqU60PFY
5YKciZM5z1kzXRwiE87vKQdYugeKoNWifbkEQkIbCzjVX+sGtsceBliNHTVBK9WftEVm0xHr6EhK
2VHyAczIFLnWoBfuDQ6oRb0cqch/qr+XFXxh1cbtYsGx/+qvyBJPUf3fMrNR7JVP9UwJy9pdAA0C
PDkzMaRgIemWlvr3eqRgZNE7yUEoNzJ0z0Za5GCmaqjDpJV8lTyO/mGnJzASdtZMlrtw6kdO8h79
kc5pPYh8JXaKTEOyjcw6M7RHGXIEaR7M3RrDtd4p9otXnSI1F2euiq7HgRRpUyQmBfqPKqyLBUBl
EANdJsoffKvyCpTCqRokY3smcVwQIRt2SzzluLkU2SPpQWRzDUlge90QZXn55Urp46lurtnRzhhI
9WKXul1Y9/hTwaY63x/E3M54PKO9y+jxr5ExQaP1NiSn2lXGmEC+gE4dV+H+jFfcLh8fc3DQuyTp
wpNg3Tq7GKn8cl/4OpAtXXhVOgE3kJsSOD4smdHxqt3yGWumjn1lsjym9jWO5hpiYP6xKGoDB++F
VHCIC6+muGLuKkljSVON+x5HozBjUMMVxoqTtnO1OJUDdiY5UBHVw4OtgSL0G9F0PpKJREo/4bjP
Ea3XXtTJPUUbM5qNm3m50cC6TVmNm6g0pIgpf9QPGJ6gHyIO8VdtM/3UeJAaj4QfyTYIaPADGIQQ
NVwToxsKtKz8yXN6ngamATqgJ8Ajo7JTlrQDfunTbCrGhIRHQ5L7lCFNT98hPECpJaB59qJEIJ6h
I8x8Ef7k4sm7RlF07YTJ2j9gjcgZwdlm91ZSVujJrwTza6MDWdkroD8RAf0HCKGm5/qqhm2rq1kI
GNP7YtNOGu//1Nb8cyruRzr1eF3ar478uDYlQRkTStCFbIdm4ezxeYABN9Z9QBw8qY4Lk65X2vwS
eP9O1gT+YmVBmaKRz0oTTzr1B3dxAgak4gya7X4LvjsXlrgb1wKDh4Z5wSv4qO2mTa2BUy5dsoy4
qtDB9OdFu4nyOai4muO4xf+l1Hm8b0wKGmuBO4egmdA12K+9oqd3O5PglLpA+4LJTEecmcUj7JZU
9NzYbP5qTS321EMI7ZqPmbsg5KCG5ZPf3OeNL51tBug4GWARQPrniwa0Lr1sZ1SHNwn2mUEgwxr5
KKO2okSBhWzE5n+NnHVvOPvf5LUJGG83QtfXRu9SMyP83bIqzjNg11wZx0KIutLBeeYsOgTUY0kG
DJqV27Bm9SW9X/h+X6La/t11LTE6g72J7e/o/sJlMpETRu1pKv51I3TPUItn6Br4X+bX/9fWY5ev
ykquXgXe91enrQ8W9WVa/UHD1POiYO82SeeW89jB83MQad6ZB8OTA6bjYaNypvhb4W3erX0KlL0z
41NsNvRKKFUx+awcjI5vkc0swZEWkcEvZm+tUxtDtBEW1kpiRmsLh7FNZ/nsj6AqoISWdnFrlH5A
ByhroUy5qXW048SJcS/BE8NEFXRN5waTCOvjW+f20mZuw2gdIJmtvSpHQQYKioEgyMyXV4z2ioSF
/nrGdi72XIBqnvu3SBksgHeYvmFEI8Xr//sK7FCJVC093Vfv28/EaG8rahDm7xmg/VsRHoKhPTll
boDoQFFr0GfFz+vZwkp8XxraRhvsRb1yY0Ft9/BWrqfV6KNtcgECis3uI2gikbLhIHlGXWOpsUB5
SN3dBZQy0NNN/q5j6t7oEbttfBdO5s9Z+PD4UvnMKx3nHd58mkMffDuJj9hqmTI05g1UAOQHW44U
T9tcT8RbDdGTo4hy8jMIq5+RQeJwsO2X1t8Nqybff/jvMcuEih7XYumqdt4jL+FE0GpGykvcYiQg
R/HdxZdJMtlHJbjpiqjyCxDcr7U/zVBMTySAnz1exsmL/r29siJNhxp0XxAFmA6BTvByk/cWaCCs
9Srm+L1fWrp5OOFIPBtCuliYgCDD4MmclE/TDvkb7ASAFuWl9zbF7lqi+rCZCU1tBs+Od1vUiPut
zqIzI7ZxkpDLiT7mR9i2CsVMpApO9CEe9GUlMmXg0hj/PJDlEWtmbgycR4fhtmDKdvBfwiT9rAnx
ty4luBYQlM9UAF5a2WiSMthhyfxEgVKgQTBcuT2a/k/SoFpvo5Gvzx2Mbz1DF6zSwk9TXO9XV8tC
7xMkK4Ncn2vJzoALS7KR1HxGNoeWRsDn7ff5fsAEW1RNdQpp9WcJy6mmOksgVjrq4Jngpz2hYuNR
q2+f6NkoGNKwlHDvxhMV0j0kzJ1OPnI3SmQjsjDhZ55GgBGJbnhJvtEFL6JTS5DTGbWPeTPrfYAr
/NG6ltD1tNQGKmFMmOp5fMTn85DS9Pwi6GP6g4HsOVbB3ECKgSoI5QJ1b46AhVqsqdwl/ybGl/kK
I2ZS9d0K6vVCFKxC0zcDUKdC2/g55/ILfnPzLRpSfGZgg6c5MocFOJ2xmDOY6wIfjTEwCSxU7N2Z
GdIzuWYUt3gTgKD9Qfn9zev9MeKIAqBPK+wcVsokStR1DPZtKbOD6UvqB9aIcZfhgQo32s0cWdjT
bSDyS5TRiMM2Gwb47a7+apkbtaQ93ry/zJFuokonNSMFNyKAQoaMx04tYJeTiZJAld6hm6pdOm2w
DlX/VHBQeASa0NjnNxsANtQS0cTDUYmKuYEBm8h5Q6HUF8gnYdpDZM4U2YPsgJocKH+gZnFYORAN
gjWuZORpbM3LXeSSND8ql6uNI8coPI7fXCEQ6BWSDawOWheXXHBWs22XttIImbcMVR8Tk/iYpkKM
uQg3MF0WUfBBmQCIheWE8+RTqNpBLGEXzR4U3eycts8WtxbcLav43sGnfBPluRcfHVJbrT9FIoZv
ube3pO0GGN9+I70zLLedHqYj+oM1152bnCUQOu4dkn0UuRDoHtVCfuOHgvIGxP9uGRKj/zqaZu6T
HGQPMSN33nemE0TuYZedkN5p9z+OFt2+VE6XTjHndQpU/jLGLLi8ujU/tSVmKFBEe84benVr/nkv
P1coRIVHjK40gYatt7AVZnGgEk553CSYGyvgsGNneTOjktzjJ600BtXwaVCGTdHL4invUNFEaBFE
lMTi81AFwQBjfgTexi2JPUZHH/REp4LpfmLHzOet7Bwx6OcnrrYO5GrUAyXW8+gQgqnLWLrpQcbj
izM0//yyuDEoNEHBjP5/NTdq77MHzdcWGvPE8sxU4S3nCP46AIszgf8Uh+OZV+sE9VLBy8HrqzBl
WYtYfjpqqwlFCZ3qGr6wPqdES4R6rCB9xdHYhuPfoBohB6TPuQxZ6VBrl+gF8fgz9OxdgzP2E9Ux
II1OGDK4lVgZDivh/z4iYWB/4QmF4cHDh3C/z2nQxnPyXu83J5HK5kb8tBfnrC+QDxQ73rnhOu9q
FNXqI3CC1js+yOL9QbUGuCVEED+FIQLOxKX+gsBcFtcnEttaoqDZ9vGoB0d7WDBqrDdtBFovDOh0
egkOYpTqvAom30LkosbqmX8IpTm0l7E1yPu3070a2f3BM9zWDH4068H7HQSWDXLj3RpB5EKhE774
Yq/uwYB9ws4RiYdxzk55e1vVwp0QAmTdR1FPx/kONC1ErVaY3O7yTigUph3Fsn2gTMtXrvzz6ej6
1Tx/5De9GKAtUWlP9bIds3RZ3GUgDCQ16/KP0BvGnpL7bKaRPnhf86UpE9XuNR1fkE6i3+CdBOVp
iX0SXUb3uYlEq7UzvZweH81btaI3hC/uHuNkQfAlu37AfBjLrUUFk3XoJ680IZ4SdKpqN7qQCHbq
sZM9HiJOGzGOhZcGPnyVT4Pr8X71FPHwMLqMUkrxaqDdnTrQ/YQdqmsKpXSG2kYtsbzGbDLw3HXM
IWYDSmKDnCPGuP3RXQycKSDy+kwfvbWYSnV6J0FNVn2ZioA2rOo0kmYpmr8/zvTKioNMTZi4Wm33
r50CdQ5hvLlYiUZUsQk5R1jRtG1Gf46jTUgUqOw/MloB6hfyFrdfrGB+F9LVHY5fdtk29jvD+yPV
bInr5eCgRU8+Q6pBHtGZITGtqGR86KjzoUUsR0Un8lUhni/funaQm8G3+3ymxamPurmFpKRNEXwo
LH/2TK81Xt1zrQWbgXdcM4o30u8JQinh9+pTTUMwj60s3cCO1QRfRpGSyz+TP72+H3iyzisdNjHB
+ZsiEz+4bkCMEL3WJqsoafKi4nFa76We32Utu1AxqRr6FXn4Akis/jWsCPyTIVcDYfStUfT/o6yf
yuklJKOtJbl8QmxqWl2a39ZfrJ5V+zqjEkKWKBWR0TlOvZEwIhtjBKnu3rdpxr4OWZ75/2mfG7aD
Abv3AhcsM5HWRMOO/1Wx4WDECVnZIm7Q1NsQpoh5/LVXhQ/XIqdrN4UyHPNzWptGZrNFJrlTln3E
eAv9KVFnZ44KLw7dBnBwCQVNzcWSauozuSEsDrBUY10zs/kiFn7P/8yy/mZzptF4lvd2Ujqsm9om
VWnUKIL3yEZ81/J4Nn6fQPjVAgHumo2ATF2B7jRX+g5+cvUrHdHhv8sVkYp2ciz6TDDnItE31kkY
l2Ka+m5PSWoQG1ncM2EWR13id3+IlofSAVpcffMUV4kP05OT6T2u98+ExSM0fQ7EtpywyKd6NV+C
t3d6n4S5wlFg3R0DH8sg/5RDP6h+Caplls30ZBJD4lI7XpSatICWGIjVSHCjYDSDKh/9S0MYInyv
Raz8N2S41OMk0mPzWepQpJuj/AlMG6TpYIf9jXGWqx2+OYlWZFD7O5HkqsO075qZ4r7FLsdqYyi9
ULhxLlxZ4B1DA0YVqaspZHo9hk6Uvzic68VuNfMfEQae06AtdtCh1hk0Qupmht7CjFKaDn8mq+Y8
tGbX9Knys87obPM/MPBbQpv47zK0yfIkiRWqMOJ12A8NrYkL0cPsUt8CDqRrgKSP6nt1+8irARCo
K6tf1+z3K2SrwV8mQ4gKEv1A4kJ+q6d8+nds04bTniw8izxB9T9nlynUeZ3P5ppWbUP0cJBGgdSJ
3gPStXBGKdpKytBbe0T21AWaE9yB+iCod9vqv34+OJM4dRC50vhStfXaTE+YPqJWE10Iia6PDVaB
feZQXQsiYXbAy81D8ykDOgh+i2GwrWRTQdAk++sTJ8bKzCnGwR3uQRzB6UN8cO6168mekGgzR+Tz
kvvTeqOEpW+fIoDRfPHxqJgHerqVQlc4IGAN8/yLXbvhusKQ5Z5bkLRqI5rRgbGOF90XVUHrgwDA
LOWaOTSFO3qNsFCsGOf6QWJXDdvxWpqs0CRi6QyHVJMFYzCCS9hAbvHD6uYtA6+KuqxadijsTKLr
ZS118RC511vdgVD8TblnxWX/PD4T7CVuZ6Vni4ORaTyg3YCulorLmpKwWX7xEjxh2UWwOmdCzjzF
yzn58NbyWBMU5R92eME9i7COqdTnIX32YtvqXDVOiwilwhzGs9FFaDrMrRMkmx/A58sjQMq0mWin
ntpDNI42KkuZLZ3zTApMplVFgkYDCSvz1iv8zfeK94KNRIZZa7PWUbHeVClwn+Rst3m/db/drCr2
MTDLm4xdUM1h9cUa7xSWyEuflj4vM1Vt06T0mN2iWhhU0H/Og4AAq2OfIMG+JCu58BfdF15TSPNq
PWy3pEIOjNpknbq/4Cg+9xsv4p7VI1uabkwVnoJPcFhf950uwLPd3K2SmWcEgORD23D5V/WRQXcH
bvIvF8OB459lNv/I0cYm1vqkYLul4Gp+ebwQyESQWO1ckqr85wSGkkvQApP0ZHks/nAx9l8mNO3x
BIn2Xk8aNxWK5y8RVpim3xKZmX5JsxU/EHwgpqsk90IQuYJKmhmoRy374EaG7vxtFv1sgZ6cXM3z
fJaGxxUbTEpt2kHTuC6qzRoWw0M4iiL4AZ943GAHD1elWoQMBv0l+fBXsCZ6hNYhwstMfOOGG9Uz
YNr/jz4WopSnrcGWMRTZeCEvMFdujiSIMqVTJD98gX+W3kJkgkHkV7drcR01R6MsJ4iLusHqPR+J
/cQFiZ+xm+NQgntmdA0qsz02w6ws4LsUBKrUBBKL4Xbr0OMeVK6Sod0tOCU8Vl8AZFIgoF5g09Cp
yHAN8QYCrejxCe/jB/Z+RS6ORapzCNX1HRU01Eau0IJQfikmD7nmTSuZCbRbG05Cm5G3w+xbL3oF
KCfHB+Lpg5x6xyy2VZNtLcnklZZf/UYZ0AGbxR0ITP/5/7ewrlKjb066kotYZHpevHitaqjc63E7
yoZv3fhcZ1zqfARHXDcY4H26RB7cpVqyPbq39UbR934HOVWAQcuMNCJ2Cy7avH7KF7MooyG96Ws3
YcUysJ+bwxfT5OP4gB7Gn6K3/P9CBY1YiMBFZjJua5RtUmJrOEulgWbwX4STMH3hAFV9KOqF5dJx
oCF/zVTwp+Uy+AEwp2rXLgF4ro1NWZ6yBwhAc9TRuoYo61S09hSpAsWeHOjnLfnfVAX3M7nN4ixT
2ay7ToFGH2dvz6M40C7lE50lFd0mSdMWrA/g8Amb3WjTnO3CxjpS1v4CkEpSufRbfl5QNiP/hzuX
0l1o+YXJakvfMkhy3wikdC9WAZyvfh9m/h6QgLBAVGpkM1QYeMg+5m/s4x0UtfhPh0+1VtN6RQM2
zL77DTDS+StPR76hVAKIS9zMYLaUWqKPhMQbvZdBUsJ3GOW8OAspWQ0R1mPfL7qoX5JjR8cPizb1
f2wxFK8yMTXVpDxJV3SkiKUZclx9jdJtDpv5s1pZPK0Q7UOHdPkUEyodJyuWQtPSZsEENCPtT+zw
mk4PwkTaY9f9sCTeu539ptqynqdpqMNqDOTt2P5RSvLhpu7cyfMCgfdpVSWiFdoeuZFNXjDmnyLt
Y5FSMQuh8+5zghXkucgL3CMKvWAvEKwaaEAEYT/tQ9kaR2Bx23buU2DfH9ZOP/fFUDvUWrHBx0t3
PFtx4FkZwP/7f+ciwtrqAxd0x/XR/Meadqd1ETJIKcP63gxfTQyeLoTh4G+NN1a0ftwTdiNxdtM6
D0e4c9VRUWJs8IkJ65OxaPL+/vPiI/8eo5Ij6K0x44/spVaPV5HyFmApDn97WJkLBOBgpZ3mBsJN
K7iXVATfebA/RvJoHtWot9tMnkgYzSjMte58CTy1tZNSyxZgURUKzfdgzWn+Hjgox3i0Uf/ReZ3V
kJQ1ZGl6HpE3JSmLb/sNUyaA2JDbcQ9Su3GJL/45LU5/h1Xz/ZoBBzTS6pCGFMnbGgn00vFFZmgc
nzXQ+UVRtwPqfDC7YO9rsHe3ncUxyv2xyJJVkgBIq2tq4zf9sxl2FGzvdpgZatE4KUqI6/QLbNzL
ayxWznEsG2+lW6IFmh6/tVGbM/DO9B5b+iXzd8qiBDxZMXM9+CQNRfZT+Dizs6BiTWmOPPPO3ZT0
RjHb9jzXMGKgcNy1voY5+dr1QG19ntc2NYC4lEPjgXAHfWEWbmtxz1Oys3cYSf8hm+COq2UWNKyj
3afabZ+X4sJKTKn+Y42BGXmkdxWCmHZea4l0dEbAOm5j3oF2KrMY8GoCJc88bNWWdcHrql2+o1dE
ZZoTSRKgjgFRS3efyyboQH/2zn1ff/zopxU+Et/V3sQ7HL6q5v+e2Z6c1gHrU0xP30amHSFFtz8i
Xmfm4QEFt61m3qBUuZAht2pLYLYL+StAhiFWgnlWBRCOL3hiGTLo5HNJNkE3Z2jjhdg6bvw/bHRe
ZukXCgpsg2gqka9fqNZnDQMBFQD2B0mwC6qHta3JoBEFXSjED5I9fwRK58n0LauaurBlFTkjzRnY
6eC+sCVnr9GEhqTKY9bfIu4Zg03um51Hq6M19DvykmggBYYM6WgAL4/Y+CW6nsMO20lE3g6Yq2S/
GmyOFUXy7JhAdLoc6UAv9o0vV6NxMXUfbzm1BIboa7ynG1h+EyflyuYGIiOK7Gcmy95wgUjT4Tsh
7nyqiBUfF3myBZ5PJdLgruYNBH/WUmsbX6OCbbzKVEBMpovXJOORt1znhqOSVHO23l2/5Jzbzncl
IF0M7VUnAs8nQcPAFzXTplpB8qIXDo64kuj2+gH8PPeGpYUP2ZsXT24WTVnVbZ3VMwjUi6Th3bez
Y4o8XGHCx+aV5JBYbwwZ261WUfxkw+bQ7TrlTMR7HLeEByn1FY6AE88jzedQMDKV3YAs3NJQuSHl
y9v0HF3xToSBvslxSHYFkKb4bzIE50qu86EWk4O/KAuqzu0shSeMxEnrEeOZ2KMGmRzLjjxo6Kct
pEBi/i9j1HxkjuRjcEQqJICy9KQ0sG8TxL9gRpaFvc0Ye5BFc1UcVTB+bAue9jFM0Y0Gr8ZS5LkO
I5KyXEUu5Z7HE8iEC2bcPniWl/gHfv2Q0F8tK7CrQ5uHIUrCqMjRSm2Go6vG9uNEM5n/NvWVpCm+
/ws/KaK/vr2V35PVmyTprXS/dAhPR8MJkD30E+Lr4xHZ74JslK+byBpWcIxvzTiF06xo6eUyAQ0L
71CWIgRZGr4p7KbUA4oMyZKPOwINmTGZJkFTYRMLQSfjgGvBeUHJicEURIRJL9Vi3D3E0ze87Fae
UBoZLk39zd0PeE72HRUBjMZxH34eDks/+u7AAW+sZLQgq2QIeDLVoumIcKKFc8oq+1Sf7exSlNfi
F4uIs2nAmt7ooeEytuiQkcG6Rl4tt08zTQP1hHgBhZ5XlhWoCG9BFU6mBsv25hBtXdLL5f6/PPUz
hDgkeEucMxJ+pxD8V+3GAn+MJoCzkyedlMPey47d9rdvia3WLScFUPj7vZTU9788S6Fgg2QgWeiQ
onfoR5B3JQSo2WM/qtJddWtsYV8St4+JZXipeOAb+GJ7+BGC0P4qonudxJXozAvZCQ/TSH5zkUga
3EJ5Iuh7E9wVceWv70IY7w9QJhhSEPcgnTZJT50GgL32WfAk2+2STerRRCIJP8O82T272baYm9D8
ePRhxfW+W6BEVUCqPDieFWanvQDYMKxbrbDbtni2DlHpp6XgZ10nw56P4rZPBjSqKMTbjQ2PX5df
IvRi4nIbbbASj2hoEb/TDk085GwFnwFVetAAzi6L6dkfqnVzfdBpbqqwsSneHi8pr2/7yJgEUky8
UHDs4c2dpG6mQxvDz22g6yc30ZxLIBvQy9zQfkTz+39JLmrbNgvwfz8p6FqmwLQ9Ja1ME39S6teO
2kbkDp8CbqTMX8/dqnEohejoHfBuH8cf6dy3b1oLIK/GylMaxEANKI/KEWpRkeCPGkMwtBZB22Ob
4s/cZc7tLyS8kTFr1wYkEtGXtKnXcGxkrWGCojEQtLx6Ii2Q9A60Ct+9gEmSvETUiacHYcNzomy4
o5TSeRkmAYBmyCym4M/04M30wQ2LozZxBuvPhXFiqnyDqmZV5PyAgnJnI8TprWgCUN4bu3ZXszm2
YiEzt8yC6bhp0RHik6xCBD5wwy18NspZLkWHrxrI0UWFtGnLhRzeMYbbeeX3TuTjkWw7G7l6UxXO
8jzd3asALQTIfm2uurQTSi6A692JsukBpV2D7aoDF5bltHAK8Dnzr2d/O03HyeDSuS/IB/wPKosm
OyPBahJfjbJJvskgkpSQiHtA0EC6NEXLAELGP9OUbqyw5n0cyEmMkXyn5E45aNL3oR+3dptIVvs/
Mnv2WlzotALrClxYZefvwVOZbX78N9jN3AjKnJ91hCyihu4jobgLpH4wAheedfSXxBthUr7cpWeo
xqwY61393XDh7yZlezr9T4f4njwHbLjA3rvR3Lga4L95Vzi4XHIgGdPzr+0vkgjhWjFz9AFkEciy
hkM8rzXFLNVjHtd5Euz22Ag+LapLCYOinB8pT22Ne0bsi519rh0r/5rH6vXpvYpehnB/Onf5rs4E
74isFX45MdSmAastaWPMySYS8s/1Knsw3k/etR4onUBr/JchZYgicgjkx7/tg9IOJxIAIY9TRpCC
krdHnvFwudaqiMjNGrIFbWIV8tgNkxsfrslid2b3Q5RBOCHxVjzHArTSgEtR5Xk37ifsstuRxyI0
t+pBjMz8PVfg2uo80SGIuslJMrOBT2lkVU/Qni/bsZgs1b5219yAn+s9IFRNv2D1dU955mgmNwTc
09h4TUp018WWx9YX2kuiSc6OKz5vyOlG46aOytngc8ggol5DpzPtX+A2CFhDsc3m8JzMuF8tgtKf
jncL3aCjRxQrFD2uuloP+SoVAhA+pU3jgPen2AX3b7hnWV6KSt0FFoTDm4na1jMRSiLNgwk3N6Va
NkRvqTJ/f4zZFRUtqal+6kfr2Bdxq2q+HVuPAAzXJTM4IbHiJuVyA9b9MMm0qFUVV4qBBx1XNq3m
lJurfmj1O1kQnTc9134a6APb01BDfzmpfyIZXBBPUb1XwKA/bYsWlvsphqWcZJPqLZshlGg5OL+a
qAuYrUcd091Bj8hyJr5TbmyUMh13r91gljUphi2DJWMuvwVWwU72i3/g4wouXclwODJYLDV/rfvP
PIpo3uX1JmdvpuP29ec5sD1BHcvWOq0K7mojuzRWN8AEDqNkLtpCuSTXm+C7MkPgpWY8AWF1s5Mm
eGRiCsUmfKcg4RisYA5wTVFQIyR2Pv27/KYIT2wlpt86QBgAEGmoygqN654GedeQ3uiB3hLQx5OX
7SnOaFefsjuG0dOcz84TA1fAJaH7R0lxLch0HDfkpOwukHmHhj+kl+M23Z+iqSStP33KHsTLMBhT
HS9hGp/nMSZjV4AUiZ9ovLBg4IOO8XhbQfrOkxFcVhZU9/db/e2qfcX24FJnho/w2P7uKxN0XuC9
XQYp9pCc+5ckyxyAUXa+DHiT56LUubh/HWG2wW6558LTJ1smA0YeSYjYMTwlhWOpwC1iA6ZuYxSs
ZkY4CIlaRjqsZl6KXeV32nHoSs9+xdxlfrNSbYgKJ8XNYcpKXqFQ3AgyCfst1/XBw2bHqgTeI0g1
Tc6adUp0+0owBG+5HTz8MGGDQdZAlZqf/nhueynKrCGJ5Ec72bLIz1OX73gWDXkSLxVq09fZiU+T
5Pnbq9eyFloRDyWOsU9WJDa60/8AmQQIeAPtORcr48YmQ+j/M9P/Axa7YElW6jDfcLKHFjKqsrIl
eWYx7bjZyQ/R32mUz0S++qA2ypow+1H5o6Y+ZWErKvtqSgYdvgZYM2pEwr3dkshQUnA3qwXdAmnv
LsTvyfQVbqV23PMhRVsxj1hU0u6koV9x+7nyCJbjtbVhTFVu080lT1Eu2InIXaGsHII7NvB0SQ2q
Il8Hrfg24DF9WgNIAex0d7QduTxsp1jS5iWhpFHQOPhgI+9n5DAgrfUzk/Mt4P7ibnfXR0atwr01
XOi+TFQQVbc/ReXthpsLuxWvy3lbw+058ouiuom0RZEZ8NsaM/imJwIKuJET1ghqYstnY62cdRd0
hYhqzeFBEXYcbRcemA0t2Tlcb4StNm0ZYuAUpH3KFhPzj+BwnLaktj7rVnOcSw0pYxj/0x6uAyE7
hTEVLymdvtV/ylP9hQSgE0ydFqa/r3Mj1SIY3S+kW4jC8iUCOEJbmp9lCiM0vOyo77wys02UGgyA
5khrfQp4gSWtWnvzR9fxk6xxiw+3Yhuo0c70Oa2H33ES+aae47vminKLlXKJAVoUD55oO9YIGL4e
gFR1SLi3O4wPc0QuuN1J9Fl/exo1UEnS3zm8+Y0ToLQWQW3Yw0iT6TPQVjrCfumsNYAgxW+Vu43k
mEIHO1eeGM51IGVhj65XYssaxSldDGt8L52n227Hg0lY6pXdvWJKsjZ7yc8fboj8ydH6gSns+qW1
/TtyjfYNYFRVTcZm3DnwEY623H12vMJdHfCdw6GRS3mSheYQA8nqd0mD3qlXCkvkIKSwP4ziW/bx
oRj0BOjDkix8v5ZBXFJt8uz4/lQfQRroBtTDnXI0Luuhi2J8DZinFBreI21xjMkOBuxGP9a1euEN
ToeLNwmFhlNgMHlzIBCvgtEp5Yp4c8pMcu/P+P3VBCM7WSuuvERT1DOq8dcMeU0J9rk719Z2w/6X
7SDVFyB8lx2Q4qai2O+rAI1eph0KTb4NhFSAG1mQRbPo6ykU6c9ErkF18euPexBLKxIJl47J4ukh
yIJl0AywYrOFqecGLiHH9dNY0Q0ELw68XdDpNw1LEAhEGzLvg9wFup/tLs1auCjJQTXR7yiCtEPP
Wy21W72s8vZryjtO0F2JQp7TBSbMHoQWOUMlrfygkOyBIso6p3u3YiP3TAHhqqCPs5V0KZsfIBby
t2gEPBYjPZbv1jlcrNaW3Z8CRIqzpDE6Fbts/tcK5VnQA+d6gFsSa9vNtI7bO7ymtnHmU8Ckd7fS
or+ZUCoY7eBp0sUkjPiP6/EnIk2p9iWl7khk5H/x/94Hg2cL/TmTRBzudtqCDS1xONq+/A5/r+/G
B86iR7Av8gEjlM95d4+q+N+v421PbJ+/wMuCfR8Gb4xq21Kix/geRzUIHCDuecysdJI03AH4qoHX
HNPvC7fYZUQpc4T/ON35k7Sfzo1qTDUkZzL+tD2ORcfXqsdCJvYViQTrmGFq75Tti2eFZ6Hkp3IK
BMzIjmlMFUji43LYJjIuiKFHTZB2U+NXgtG+AdxHsG9o6mzEYN4LpH8uGK+pWEHaJH1In46J+g/G
7yLV/A7sChzBl1EFYZMFbOyUkllHHt3wlpVo3qQiIAHju7+yf358I+b8TD4tXvuV7ku6/XHpUzle
PuaOhDGMaLWiFI8m5XMtWi0XEVX7PhYYoliVKrX0kbicmLFA2jlrBuNEhamlqGZtxD1zzS8Snz+6
kjBnivMwrt6A4HEfcwcT7UdZWLaakkHYAOUIVfYgOyTGNcnrDfbOk7zkkByQUMbZQgPlgH2hL3tb
/XFXml1D1v17h/KFVVNzvOZ2pQimtDxoOhoqcRrp6mV8aD1t1uPGIe8KczDchQOsk+N2dpLJUI16
3yeCu59xwfmeI2heEkBEYMoZvDD9/ecZiaaAax1GFj8SOV3fMcR8d7uz4x9gWCU06X51KlZHU4m3
wY57rZhi9WAleh+dVOkEK4W2sA2Qs3JKi9h9CfaaPrH3Hh9KX0r2JHQdzAUHFTTa1DQ/unzg03DD
Ut14fQeedLWqKLgxPjIEa0QJFoWrNo6YA7jaBf+4WlHGfOgtVaM7mxP7a4mXU37HnG8q1cNlIK0K
j1unoi6562pQ/aNS7loO647bkbxYUdrrDrjN1Yl9MkI6br+2OM8kLmDndC9S6i0AazeS3NoU9KAH
jEDGgnLK82/xV17nNm6dG7jFW54NxMONpCDU9aREC+vCLkmP/HYY7FurJG1VK2SEZ/XavFORc9if
wvhhMKP5INVRVrBsk/D7zWWDbLHsYc8aWQ4QL2gVlwuWr9Y453E89FL+rN5te8XNACF5LLphOPNa
4VMsaSFW6TuYczuD7v4wDmZzq+P9KggCbWjqycALygnp+oj/iZsW6D/bepTE7YvLvpa2m8+DLJFe
ZaamVtnY+LrTTLu1Q0Hct5Sxdbrz0Fg7dhimxHjyitJP0Bnrq2QnbT327XCHa71/BkLzT8N/CdW+
xnvPSmCG6ZQdqI/7gGZMCkRZogwnyLSfKhCOJHJYoByEmUQ6JTy2XzBIeklG7vB+lqrATi8oT9ZJ
wAyPl0kXBGsL2MAcuo7de/fJIBTT7KSW1sBsCXFNUmck9p+qEQmbfB/QBnepCo85C9f+/q1rqRil
kAXfn7C5XAj+5R+n8lZDR7eNdBJVbLShlG1L/BuAzcj/C/ManoA4lAH/WpwX8s9xSv9irSfoboE+
egBrorKyWAVSY5TTTvvgTRrc5VzhwnDXiGRm7v/429W3uvZixfXREDPcFzyEkUExST/gphmYfnsb
pyXScKdOIrd15wC33pvcPfCs1ySwUMhCTwv3m48+mc38G9hwFjih+DCuVfsDj2mIVYuR8XNe4yBv
TxubiKBzsMEvXcSTENWOMc2AAwVQM+Hghif7Pj/i+FpJ5z7LbQ9v2ZkIFFhdGBxRtzUbdjxNNL0o
3+74KnO/YtnZAvLNV0tnPLytfID+mkzuVI+uluD1v+JueLAAEXpvs+w9xA0cyqfuciOrmJowm0J2
4tCykofUFSoskyE6maDh33BneWbioCFHVmncuTS5O51OHubvg+w1UsFA0DbN4tSjP9dYZTnjUFVK
/8tURRg77EDmjb0wYh1RJbjCi27LvClHGvZtgcTG8KmPRFBZqsJLdwdjL6VpZ3+lBuaLNxmK59M/
GGbLxdlqptr26Ul/SbFcBzREMX6nGf90tjl7zcxoc/OnPF+EfzDgr4lLYfqgzoCp8s+7QxliKjVv
x8RgNbegnj9Rm9nmTMsNgowgHhsFpVi67yJBWi+eaowZY3k3s0ED+hCGnrv6l4OmIwwUvEwzvtBM
ioaFxAH+RYJJlX+24pLz8q5Jq5x6gVHpDQfCVig3/tlb2MFQodWYkTUBYNyj/SY8QUn14pUIpNp/
tiv1Nn0Xdm1Rb28/bZGscAdJ6ioFMaNqFzyzEFk74epvEr8jzYH3ZpQFrCyyoMh/F5iIbXoQu6na
w2bZWLLTHHJwuTiHhLq24YM0qPlxyxaAfEh0stiPGGrNjB+iBzvJRhXljhQgwMZ1/CiUxyYmF2FQ
WbVEV+5w2MdCVIs2yzutNrMJzOuHryByuwzt4qyEFdxfapNTvpMDDmpei4YYmcf1ELy//4r79Xvw
1xMV5tjIjh63jHXBtgzmUnt+2r9Q7aIHbEd3vRPWesFv1GH4kpcCMswC0irSAq3s9zp10ilESbDp
vR/LS3+e3OmCBKDYtvVjRiq2ODJVoxhvdW2yqU8VAS6HcT9ztIyZcgtJdObjqM9MFQZ9kKkuSyVM
lJnoGYqZybeT1yepUs25CJgt2LUUr70VUDG676iqqq7TI4RMioaxjs/IeBsCMS4Tkxcra8SGGq7+
FwfSyCvJn5VGjjvZEiZ6ZzGsvSiRCr1xyOWaKGOmmT14qWV3ujPRpDbS5t2epmjBtx2ZqOqVZ2h2
QnwX8k6KGLUhOwnC4DYGEez+IUJ8Y6yrZOsH7fipUHvAnJQ+iOdnUKpatPSn8BdIRnMKxsWcLvtC
c9t+UBLjfAF2DzSsfEC4g/hwsCJYIpFbAeXdIBbpdGO74WMJdpCRRg3tYAhKeNVfCjYXX8z+RLjj
jEJMah/XVhfGOKwSwreFq2lVxQglAApXRgO0577uQeU1t20Y2igr3ql6K6zBSgTqI3sZWtl4BvGe
lUzAqJQVAcccdg+K6i4ABWhIHwc+Z2PJNpU62TyCjwkkRiG6tSaGE1qTEM+EG5yyblfliYso5X2T
zz+d/1+D95360tblLqnvRFTW63ts6zHDRhsu4C7YkS13hXvu84AVjhfQVJAqiNEFtX8ecWwMBlUC
bmH0WlO0T+jv51VQz5p+DY+eGOA1+xXQU/UMS7XrJqWM8VxxjhD5/I0Pdd0LQRbjfHhlgYnZWU17
nQwifBTyhX4TRZVdxWn6uozihFP17wukWSC5LMyxj/mZcrUHnyy/euzMsqTDwB8IA9FdJDGmKQZz
UE2w6b3Nc/BCfVYRNK9N5KYYTMVm+U8Qu0hMLsy4aTtUnIuYgZCpj7EHeyTndUM9Ov85+LCfxOrT
pJJLSkiBFTQKJy1eKemofvTwS+og2ryqKknpc1kntaZbSoth75P+S6N6ycUgLySPshf6H48iXCeh
zeMv9D5xIAWThOWagbMJZgfi1g5cOY13XVyHd+WVp5B3M77g+bzw/VTKJhmeSoui5cp/lHeKPRDw
jG9n0xje3aaiH7aiPnrT2JBXHiNFJA9Dvqn0iYvPZkH6bDoAm0zaJlYVRsrfpfNhEKN/Vvlf7iV/
nLQUmYCTxCI+dY25zBVoq9o22JmIHVLaah+F1iGylN8HZe4tfpX+5RjX197UZZv8YkorfKnOaAfx
E46Ns4896GlT//wRxgWL0e4Je6ZExJvPnQspEyxZRU4cLNnlnhS5qumX/6OS4y7XpHSvU05ApCxj
C5t2QQm4lPD3u9F/47QdQ91cC9tRcMOLsuepPTpMR5Aiu5Llly3qoAroapS3A7So+zwRPaxNygqq
bGWKrG8a90B+wIDYEYCbigSVNUgMlX0DihqSmAz+BgNnR/dehoJYXytgoWQlLUKh1dfJEvxhUQRE
tkxMtpb//R1z4twc4bpqn/sS9xXd40RCJWKCzjvtD1Y+KyKIiascrdwCsP4H8CmOK3i15uQcPRWl
BPTv4rVlOcTexC11tvsHOIvohiNBRdwGgu6uYd/kv41vkXmeEo/bMXuomlZYvR97nMrGANlVtnIF
ChFS9CQ5X5B/K98p8rDGHolrKhw6RKuKWpqmQGRT2aLLV8IBZ9E0jkYEVufBaQNMlL3leGuXHhtC
8fy/Kng1JKZIufH8fE+gsi4IIBk0Kk0pYfCkQdkFq9XRvbTiuETJKFx6u3HtqGHRzZbqMD9RxhFQ
uRuqhHaMSUi4IUtILRcvToJKJ9YYSU3rbYcrts1FteF1/Ptx10XQ5BMNfBOh1IXWxtYIR3l0UkV9
RoOYK28Dyasv6fhHrle/8Pd/jRA4dIItJhR7QPHj0j5BeISy9LICDVw0grbkw5ALAppF3O7yoCFB
wbNutmuJHQQn6i22mXXQ3MezTGecMh0IE8hS5hdLHVIkv4JfpdK5b50dbbhaCXmbcQcoPrpsW8w1
JZ1okbE1P/MbIg88w4XMnI6u5I/Yg8neKYgfpJmilU+CXBSNGfqnkwySWSug7NSEXiVukMXFxI5x
Eu2QxxfV6UfgZJV9zr6Y/c77TjAnPe7ISMf3l832xYhSySCPGATcFebSLwSd8rpfhv62B3ZiEvA3
u83zgT8+pmuScwI2t6xPTVyVSlsaNlAFNrrHLCbmzbhCnrWjJriGnos5ZjeLPG6PSifFeRa9c6j6
HFbUjEDZpEtn1IR+jFErHLXnnGAlhmN7EwP5EbW1CWf3RrRYEVbqIAeP3p1Ej/+COHVIWa9ph+3c
rZCDQEhQRRTgPEN2fsZIf4vbw6a6ou8hWoyHllbN6CbibQvmlytw7xt+4zS2/S/wzGgwxwUrTVSt
durvxaV9C/Ab7DZdgF41X1jceDtaVfTCGdwhmPsrQ6cdBtZdd6FAf2M09Ndz329ngGYuyCDfJNVs
HrrkWzP4TQXkUTFiA8rE/JZvUlfOcmlVnF9kpgP0AlxexEBZthkMqYaPbzekTHBQRU/GkYbD0TGD
qXLtuzEfK/Gdui2XxE1VzOUny2KyHS2VOx8DL0h2f3Mgx/9NFTMrQQR/3l1VKHl1aRsg+kkCXYV7
Pj0oDgyhZw6uVkJOk0CbXgWoOsJXN7aLnsD67Wh4z8xL/Hi0BZi4xzxT1GZ3bf77yIAnhvtye6gG
BsuSCXbz8rp29zRgSYbpg+5aPzUcGzWvQg37axk9ttddTGIvlBnMlVvdkoaDLv6q4cXpmqThUhwn
nC/4Muy2gtGZ0CPV+tHmDDMCt+bGSRvOS9C0R+rgZn1kI/yCWLadD9ho9AwCR31KHcOML7CmeLO4
uqaw3xXOFNc1pz3QJOklQtBOpwGrUbLh/GdEkXxHJNkEim8OclK8NRt2o12ANgIv73z351WSYnpm
g5BFOvTfJ/oth27CpQIyeq/EC8GaNWjMRZAg4jI0DozsH9CKgxQbsVy3gYAbI251Mzv7qbjJvxQY
hoKxDyR+neg7HG91q9YFc0W8zrbWsxyX7XyQs0/7bOveJJK3FMdbLmmMzBn/bCNQI+b6PUnSMAgJ
to1SPDvMvti+SuHC4xphy/aC70QOMpcsaZV0/Iw1CXM0TCN1DB4wfCzpQ1CaurhIKdXyGtEq/PKR
6j0nCP1/wiFrtd+eThuj4OdVRGY7sa3OG49Jc4wlaX2Bnv2zPGWh6VTgikZwLm/nhHOCIA5ydeHL
X18uKP66X+BFTp8ngoKt92XK9v8vqGP7QIPl2Fc74PGEqrTHqsRlEunN48vsDa+Uhdk7OSZswfIn
DanbN49tSR//jTc6sbXMuO1RC9QQYcqQjRIYIjbnjglanVd/WS/gb91xuX0vGaB1kAlL3dfS7Ow9
D9mEFv30B7olRQm1IM6XlOODGzFp1KDNyrW8bpgUV2ROqNPF4u7qWhGIksgI+qNoI6wEtrH/elmP
LWS22r9sApcYMc4H5Eletx/iiTyLobhRV6XKcBm/PhC7Wk4wiaOb1U7FTiyEUgXk2C21VwkiX1gR
Ieu7OmvFhi2tsXX5LSKcDX1rZO+t/GWwSQ9WWzsb5OSpl+szn1nExiEdPBmsQsyyKJiMcjmVHL1F
ad2sfKJEvYkodYOZzDak8myqDbiqrNIlgDgSzTZ+h5adq2pt9ZANoh0MW7i6blM0AqRwEfpJah6g
FxxYkjqln5o40fMWHy92ZDSLGZ5Lp/kiF3MYzmzxDYf8XCN8dGKTC6h/1LBOgZ9ZAjqqAI/LMCYS
6ZGxG/wfVGKazZQhB7pHfO6glZZmJwVmfvr+OlGlqFqpwW07BSIXcc7UmBosy7hbA4LDebGUi1Eu
Jqh/B+vFE7kxaF5x+XT+aEEfABnC907mos84x1KoXfZEKZSxtPUiNIxy1SFGejzs8bkOlev+nSID
LDPwwIGQt5RAjAMMzp2T1QZ4lM/gT+RClsTP2ofwwbrvYDNw1e+UmxESYg0+qicYApjd9GbmIMcH
wm9BCp48Gx8A8NxXlw0ohFJyL6anB4h7sa6CZf1UHf2A6naNmaDZt0A1KSD/6m9M0bCl7wN1VDOO
6ESzrp9osAo3H/4PISZMiI6q77hbojXDop2gmB6HAojyaGO2Sh/3Ge3uSHwLw4j662i7hp4cRyQo
G322BMXHSn7gl/PYY9u14n3p/NtlY9OK+r7qRxMOQYqT+zLV4uMiJscFFc2GlnPf7nlFbCbsgyKh
RvrrNWAxfANsak40mdYfITxHi4+8LKwFcfs6IOv6crW9ZzwZxI0rBBL3Krx/+yUC7ZjrxQphrd5t
5NWLIlRv2QcE0AlJuEMasquQYjYp4n4RvwuCEISjHXIoCqjwe6tRrDObVJjwrIY4DMnmpt7qIf/Y
TzXcWLgWoZ6Dr95iOeeborn0PT7KDcMcF16YeVElDmxnNV+1WWniYG1a+3Vb/I27cDFKJWnqol2I
taIv9/dRdfuJkaJ5XchbQzW2s3c/MRFCAvHm8MOrzGW4bAV4uHi5umsqdI2UaxgBrf20/4atSI85
bUoqfFQ/92bEibDZcM3wl3zVR8zfzB77f+3TY5S/G4hADOYO8aMNksosLdu7nUniXC6pLDovWU5m
6pP0G4H9SZQ/3Hkwc5W+D28jhjxFKa6puGPVDm1Upg0H+HFLx0mBQapi0TYFUgQkWiGKqS9MBLzW
ZBogblMujeryyEwVUKGqumIkYLNXKqdMA1WoOp5xV86P6aAA57v5sY+6NX59j+QAaP84XVrABDiv
pkKYntP9IxeORrRN3lmfwnSXiSOE0MFf+LAuRKPcA8kfG32hkdcRqKzRP4tTDyFsfAty49vG4Vrr
n/CevB2cBZeC4kUkzAVVg99Xa+IWKxvNbIoe6SGa0bsqN45WZ/4O/WmrlJR01M2vUbAZ6mgI1Y/W
b8e0pL7ZLsflWqaE4Iv4SSOc3qz8D4vUmrQYekGzrfETZWK0Ij0xkPwHAZVfoflAY8K5RddxsxH0
TN5w7rrfz6FbV8KXGn/YarVKFlh74rKKVD26KVEnLg7WyeS7ZeZO32O/RUmoexdY5Rmte8Xwr/P5
GKDkyShzNce60GDVGArn5VbPkU27i/g7BZFfMiPqANKmDnrExhUkGHKUN+VGxbpoMwl3/xY1wGsq
7OkxU2V1lGs1qkhgZ5cMz3ZeiH0X7f3wL+0tpggw2h6UQ6V96TXE0T29IdewU5C6wecxEz6QjOtD
bl64TjXncr1ye3Mhjkjiukj0Bp8Ce5YEk+e4Q7xMG1eeDz/8mYljKfdYkrqxkoOx0YuCZzwyAChK
ZleV0uDxHVgDmhPabLRmPfCElJupOk8lUQeDkEeksBAeRZH+N7PS0XSQF+qoiSiE5mqwNDD7Qagc
NkTO07Q6USpZyuLLT19y9NggrvJH+Khp7uT6PJ7FnU4eWpPw6lgV/zE1hTmHhpHI53Iu/CLSK50L
YuNqCJCSRZAq20mPCWL1xZuvHqNKN4GUsETa2BQ6PqKBsSgVzKUUce9dFpyx+ykx4Wp5b6TwVxr3
SRkkdMbgOsUzEmeE3P44Ugn+Zc2/IpS0EEnPMZfoDFWuHxafpgnVBP1QuB/zw9jUa1hhHoLvjdM6
zU9/0/ZuXj9objxJcdY67L+FSsEklTYHLXJQvxpIoroxjoGoREUHGgOsCMNSwdl6Tf1m2cO0f2bi
ZMrj17DYXWQIPbqErznMv6mKwuFyiNbl4ARwnqpB7fyq5jsODgoZbHUrKP2pCuyAKKtIu5psaAJ8
klWkXP2phMoLz7ZFpilqBVhy6rLNvK2vl6PFeTtyDDQUSQwzfudNkCMJCnx6KuWhVoLdDicpE2sZ
pwsoZCpFwSVAMeMtEF1z7jD7hzTffQR0JTDtnwnOy4kKnXCcd+rMBUBQJzoouMfuEqzbkKHeQMT7
sIIlzO6mEaKhZOi08XeR5VwaILP0Jx8kOYu1qCEixqcJim7ftrGztf7JUVFhW8sqA4geGiMzqUZ1
dtkEI4v2Y8CE/hDe1Zuo8L+8gN7YTEI3lm+4wFyWhOYG3jZPIqFxVxlhgkPCAwhjoXZhOz1VUaQR
zP5YlIU31vHVWjCOw317vTHm6tHMxlj2r0oQwQ5vmSEMsWOrWKdJ5msyzdO6smVwEj9e/qmOBIqH
cfgXzjb3OaU0BtVHup1mRNS9KWPk+JXX1jJ1nLXA4hYElpxeRYd5hMS+Ejrkjo9iVcExiP3NjLvT
KSm2hbDuxWCzA/FhzlSIuzPjn30SKN7UY409QJrTJUDsrvWzcwwB5pT5F2ZswCxV22We/Rf3YqPL
4irvzniVJOZXJioCaw6NskFBkubrSKFwthsyZMR1NpmeD/DXo5z8ySFrfx7H2Uy/rCUQabrDCj+E
GQQKapAmf/EVQWVf4Rn+JhLcuOGfnKq60VfvECMhBIsMC4/k5o8yRaeKlg1L3+7Fyis2mzzum6Pc
fpqCZ5qJYlVgDLlMb9QUgWPgQo0tmFS7TcfuSmGU2vNc96XCxYYitNhQLozxJLuhNKvNQVhv+HNr
ZMmkA/elrYWEaSQhS2YEhQpAvaDPn65A+K8ehrWLTltDkTjo6jGi4G8sCW/gWybxKpSpwA0Ho0Tk
cUZiM3XaS7gJ0NQfE250W4ZhkAV30TlLg7x28boGhtBspTTPz0bZ9Qpu55rSriF0SohSZcCZ5jY1
0qdX7TFpWTcHGX2IohI2CIcwdkpR0/EJghk3WZ/qzKraxxGL1JrIXonoN/HJqQv52X9eULJzS/in
+LlR8rysLqgO/X1SxYN2CLMD6vg+0si7vNqahk8Kijq3FugHOMYiGQCz4BdkW0da2QGrtwJ7TPfQ
5mefargMU3g45VtzFbbhiwq7HBoAzATitIGm3vNbFpkp3lP82MpjGysPtHz3ShB2RonBEq2dAGzO
Nk7TPvj0w4kulERZ7lK24hFuTtiqUCNxKEr78YbqvScTZfCxJknCLjigBZ/y/5pbB/NAt3PvpGuh
7ks+QMvaDRFSN7ARaQtqFXJChE35PrfeP9hx3cYHBJM1kjq/9QMg17it5aMRJR7NJCF8cTviHToY
BKpr7nPqaG8gY0CIMkd/yQjp/UAwtGBIrUN/rfkW0MeCbnmq7PrjYwBnDGFzgLftbQDvCEkoC9Hf
1AXg38b0nX6iodhEvzCVOcrTC7gx6hF6IVyoMuqMykD/f1966EKXx4kuhc16i8ndiBIk1VxdOLSv
0bbmJ4jPnJSZ7skqKhkxf+xAA0Mn8IBRNOTz4i0Q67Fv9S4WKTYXyuVEw7jRoiCynbWkgF2vWckC
JRKTYEJZMRqy/Dptn66HoPwhccxj6FJnY1FXlrA4MO8T3if/ZU5SAjSb9gyshef2Xf7pdmyzEyF5
Yy6kiKHw/i1R2z6facLX7oQd4+R4uL1thw12NMx8KvWOr9/NeP8x7TQkcjT8nwSVugS7DWG33ftJ
GCxcsiPZP1iFpsGAss9nr3uwqaQ7S1+thaysgmz3/RlmkaBaA1kobXms+eG6Aueuvsz5IVQCB/5+
7uV6JYChNk8Oy1x5Z2raldvCx9mawXYZdU8YKtsTUsf6dA5CMmyfFVpC2ttjjd53uxdYf/lY2o9O
ROvTIG5prlNbRcZpoq4NHk+ynLL0odDqssEtYhfEesLtgJYfpr6FoWS3SynhYPFYJ19fj/4k54Dj
UXlym/x+v/QPf7JQPpWgRwhDA05BimTjLj6K/+k/h/LUzbQjalbgsDGDbqISA7louD3wKAUsJ674
z9Cx+mSBpVsniklsyJQx1elR0YB1FJVLK96z9r5cjamx767O5bsqmdtYJBnAAViOkDcda3quAGBH
opUusYM9Vh8suV3ONyht5ccUJdixDf1iyUHUwlfk/u1LadbqnPiSOAZQxkALh5mAHaPUCVu985kq
Hw1rvY+kOvhVCFE0YcWXCnkHs0akMIzO0bPELssQhBsZxfcgXFmEBj0XR1N9YWhhHewNV0Te3Cte
Y6mISNSje1N9+bkGGJqy9FF8HnlVvZHF/7tGDJfN858/vpEWu834HQSMfN4WvDg5sVyNRuhAV7aj
9TAVNB4WNenU+oi2X2bupDScKoS3hzUm+gNH3uY5ulKZqKqqO/KU7yMzM4FB6XMVmX4hwErtMcci
LkCRoYtRzzy8+O5HBiltXjUWffFn8laRq3HPhvOkv2YzybDNcSan0w0+NmAjVQc701f2+t+5pUuR
UJfnVlEwQYQTNEbBYxf834dwNDZbEgmkdOnW7KZuUFP85kyVVNI82Rk3S4gsyuMGRIA9Qy/V8vko
waNG/7LT+Wvq7tdsj+xxm54OtVUSFabakbqTTVZyrBQNW2qA323tOn18aoVCmB1YOiTOByjE3Uxj
t91/85JoZWsNEYIlH63yxUsNnniMMsF/Dp3ZLbbC2GR9D6HqDpp+3I7GyCiXbs116GK1dS5meQ/3
C4Zv2Cd1k+whbbPy3ZoEIPEf60mMlDe9ghmFuzn/V+l2sxYbU7lZRdIPk7uURKz7z3Xcjdhcyb0x
Zhm9Ra8rGplMbVvXkZhah5pS46upoK6YWtkdHoETkS8lzRqi9cDJiXEEBl8a5B2Beuis08pbTAET
9G0LuXr1vLDtFrvOISLJhYw3ly6N9UDcDAyP4Sti+RWG51WWAiG4ZXksQ/dbeCdCZV7vrzwPFKHW
FGuSiiY6B+jaugty5mJNVpoS6hfCQ/Z8BQcVg2zb2pp6N8BDJea4X4i75ANi7OGcrdyd+gDQIBGZ
viyMobN+Qurv5b/o0pZJS6LXMj4o+VeBgutfpnoUA2h/uFjRUX6Bsd61+9d2l8ij/x7ccoXORM0p
z694ogophjfxm+l8nPoAPpUDMVHONcYcgXs/xwxmzg+JkO3hp7b90kX//0JIktI85Wlv/liZBuOn
r/uWYv6qvzmMnL2UhI3+WkNfMzaYmeXpYwmJd9d8KI9Jkyv6fGyu6ehTt6GYNHCYceFCd5Mn+x30
voQsGTiOSLd7buxFecpKwpyTN9Ig5hOCLdV6jKasUMWi7KJk8oxL7bYpa2S31OEbvE4w7aMowosL
EQRxK3HkY8UtUHJ57VOMNhE+ZL1Zukn7mQuBphhxxAnRZ0sdUSnpqGqGWd3hmtY4KosEd1BdP1AR
PfM9pqkv+DCmbsB/TnsfUsIKPiTizPxbKwsnnJVKXYYkIw3v8V4oeAPGmA3i6I6wLavN/PNojLj2
zseoKTtjxIL0dZYTAO3Z1yHw0XBuMty6Jo+6VKQ0D4mgGPbOD8Lj4asFtnVEaAAfBtVGTLVvYASo
uXiBfWsU6Sy8b8/TPMCHb6+qLGD1rHHvOkRqc12cyRVWlaj3mfxE1ubcuRnE8vEMsDX6FBW4C+SB
iJsjALqL5hMw6l9HO/LKIQQ1qb9xWRMmExIkX0Qc8wY7sKJfvfrHLbbs9yrx0mVIghTYHnFWVFbN
EgC3I51+zo/sjg89Oq+Z+apODvmfBi8Te/YsVPcLCgpB48S4oWCCa4YfDASsziQj1hML+UTVenls
N9j2U9UpMet9CHbG2UFxWlNLGuUG/PyJIY/fWtvWo8mjEw8VdAcUvZIatQ4dTTPn1zn14thnSVjx
02wbut+A+c9RoOc4iMFZcphUEc/ULwqZl2LuIabZVN2npjPxpmbC3AMLzeqMg6HJoXRVNxq4U4oW
NmTaswEiknNm/e58C+mEdE77drfrZiWo5o45EbgE2Clk+hV+UbVBqTpHH9nEaVxtCpf1MQoXziUW
b/OhXXehD1fSwj4/Lrw+3W45IA6uZWgJYmm+EcPBeV+eFFTfOiBByIxFzwwKx18+oeE1wP7QARAM
5Co+a6Cr0YDBCG3wiq+MsSyv+C8DdHIhCgNZjvOeEK2kNSwTqZaBTLz0KkRPGfYmPTOt/UFc/qEE
jBQw2ZoBWfW0CxxlncKMbqtkQ2i4N181mrNv4+kcvL2SUeDmVpdn9eeX2+4s9dkXZwWRnzAtHVdf
LN0bOmU1E1HiNJBQiDwFBF5irkXsRUIGP+lyK9EVJCo8yDH1uhNpkMSr0JBgG7j8r1bacGsPqxqB
Pd8IhbX3OVTSOu/NR4UPO+OXWkE39dV99O8n7CYHkdNgn4W3IhZK3Nu4yf+/HEx2seXhVoPkYW0A
9ozuuZtIpSR9FO+HYL4u3myMMIHSokjoTDCAOnxBeWCcvtMl1sEf4l4tnvJVBZqcSV7iK5XA8Hbm
epHehin65aNZ5ZqpV1BqUoHjgfYmfID7nSgZKjdIXhfNt/ZlbNjzLJ9jEAzOgangJ2coFXlA1zac
0BIWQVQBI0k9ZEhpHooO+oL8JvvxHBIjfdBVZTgG/weR/VEii7N57tRzC2ZgCuLn8tM1yo4nyedD
mswZaGyRx8Khpfkt4VA517dUUV1EUe75bOzJP7SXclLTcPIOA2OhtKnU3PeNnAW77rWNBaJJrwWG
iuLqAu9/EpxSoLpzVpN9HV7rqpSXwpaLNhNMXSA+YQQK719r5Be9lV1SV6vk7UCZ1EADkcYOuvIc
imJs1gNjkpHJ2rgzH8OUHJf3/625LPXJeN37tEJzGGNwvxKXGmUeMPdu+AZnyNg8DeK5Nn9JGnYQ
HJELzesfEFS0KyXAKtAOUkL06K+kpkPPxF5Y+UlUGFeiUcP4+mZDFW9h1aQMQt2OsWtNcjnRjw+Q
+n8Q1TD+jKIRSkxuLM5EheacVXyo8d8n/oYP9Tz8hWrOKsmwzD0t1GdJz1yMn0TD/EtYDaBf69T6
uOP5JJE+WwpL7C1Y56l1MxsEjtFj8+7h1bBGvcTkf2uwPwIIhQ4DaeYVXv3r5atfoQjlm95AbZ/H
ajWnAxmY7VKaBSqlMLPjge1iZOWeesDBbvCka3ITFchx6LRxhLu2CXpFpBfNTBNxOYg67DfmJaxE
n+d5tG4f3iG5nAkfrQ/dznmn4sXtCJVZ+dwYgtSkQ4DpPPzNn3gg27xS4ecsBDvGgWJDY4wUpEtC
eua4Sskp8VYsPqyXwykA/Jb1t2WRSMVA8liSLi8aDOS4FU+gZpT/FsQot26CemkODkrTWXgMailj
yX29IBZe+y0HwRs112nxmnGfwZeWPtxBNFMOpQBQdmE0Tp6co6wuZEkYM0qcSRPN1Llodg/xh4//
TRYQ8XKv5ERluRncP8lef3b03gEK8cvcBxof0hfWCBFRvwbXv2bdc6a1olhBKdYVKgXI5aHdLD/y
nk/mPVgyr7TmKh24hwSzvoiQSkgykxOxmxt+BQMwxBmd0ZMZdBxnpu6QDQtsniqYlBi4vAEa3grK
lqoSJcSYDjf/IGH+/azlqXNp57mlVB2rYGPiQZGLM3+EnOfuZkpOeJfpY32fllosHDzTKrIR/7a1
FFOhSDh/ABNy+Mk8Ag6hc8nCfcps4WaVZjbn8av4AwsIr92ZqA1w5O8EZwOjV1+wi+gohlQfjD4D
Ezt+nt0o0JkVOpO76aW2597z73lz2Au5rTE6+75llI8zrey24NY6IUKdou+t3Fs0WNRj+a+dmYzw
WW7EFfiXLfsKgOGri9pPm2pLQgO3bzzzPicNYGoIrLadIh8KgRb3V+Ip0yjpxdR8VzFIuycLIm9g
UCnu5ZUUAl3zn2HtjjGc3BG0FPnQ8SWmehfieWwL2KONIsWvtB/KPjvoW1ADUPSvhh7AJeucWa3E
oMSMaRMlkCDDtiSr1RTSZrTNTJiEjsgGVJc9Z1zHf1D6uKUP3oTbnIJvek3ZDj2A3HogYXtOo0ir
lmZaRKx9YiUc2RmYDzON7AxDmpN3aExoxui1Ab//3KjhdwDjF7E63I0zcCMgSI9s+axP0vXh4PJT
Y9eCfQCKzgMRdaN+xNB9hLoYpmElMcktLhHab67ZSDj96ZuFTfV/nvIoPrCz4BJhOfN1NAHruZAm
vQMzotuWbz5Jfz+T49+T2fuxNSx4L7Olp9e2hsB19s0cqCJN4XB1rp23406ZltasDk+BJY24MRB5
hGcUV9yH9OastyjxTm1Uchim6pu3GRivCeIM6ci1AE8rF14LeQ1x4Ju/CU0Xw3ARg6sfGdWRXkAr
fFOcm0g6OwI3ilZSw4wcBtxi29nXDz/Zwwmwfm+n7AHK4XLt0EbK0y34ZqXWG4HUWPjpLhoZ2ten
wjuaZIohfeXxUjCO5vsuAnfAIzIGS3RFkBU6KyXCzChRi1eYUP5B+ay0XTBu9pjWHQlVcsTsqjR/
cE5FonqvsVVMqBBxkoaZ/XUvsdfWMPrQyIpQKQz1hgIBWYERGvHD2cGqy96vXU/5gYM+OcbwwGdw
xPsC/klbsH95Z5N2V0newj6Kt7iwWzkkY8rSOIRg7dTHEYyCfaxCIyUmJ5grvl+t9+2Enj0acIjj
GXsG3pDWYPfJwlr6IxCcGVTMq1nl76zD6yDUvwx6AF+7DEoiyPThYwHaQX4qmx4IcqAZNJ0G85tB
cg/k7xKStOFguup28InSepf+LPlbEecm6R6UYXRc1OC9w4qWhMD27dfDgjC2VVWqsaGqoFmQzY5n
3ObkuYfhte/b/xCiUyhAsNkPGIv6HWX8PGWq1P4LQJfEwOyBB9/ck1WgVSWPnJkUgVrr3lqj+joX
Vc7x6w4JEK8UoQuWH+y9rR1SgZDC/ZAAPDmkEWHTNaes8XphgScmZdtrU1Sn7w5PwqTv1kXnZVAY
9Md1EFZWxXKUWaULSnhC2+Ywq3Th8N/SWmX2jmUlMPLFvfznclZiHjut03ovE8IIyHaprEJa/Tl3
ORx2y4N4mwWMaFIxTtE8JccdNNq5BZxoOyJlTK2eJplZ1dSy4bg/WbV0/wt+tsBI2lvktG/Mfk5D
SWdQBZTFH1ZBwsxsZXwfbZTve2QkvP0xjJihJeG++2UifC4ycwZdCq3uRgLkWXjFJplJWuV7Pqib
ULrHZJF5S0uG6CThniBZhB0OQNclBmVE8VwQ6PYHFw1db3JTGk9FoRBotER4TJJep2HK0p1WbOEr
AWvV/maMLy6IG4GX4W2Z+KYrmHeTtcAZJuOnITz12hW+fhbN4vza6olWzxCGSYF8xxO85WCmw2h9
EbyZ+K1EnCLN3jVKii4sfbT/Qmq2DJ8d6EovEZnUwB2FCfews0opiS4V+/YFPYw565Elte5YwXDA
nEq5vPhaeoayhltrkqePJFiY4DYkYGjYpIOQD/KIu8949s3CaEGyUBcPUoZwKCqrHo/KJRZ+LI15
qRkODMGOumITh0zHET7CZJhMBJXe7k/x6t3+dpcfk9GDLMi/TIwQZg1V8Bdk/3Ol8wTvWq1cdcbj
o3WLmyfD9AXkDpXyRY5EdSKEO4tXX6yfrbWbY/jCbbIlLKSbA9j1REdNAyIPx4n4MiMxqb1rfZIq
uUA8Wf9NMY31Rpz7PEP8vYeBrUdELwcgu6ElaEr5cgP5i3Xj8475X3LG8Bf+M8tq8uI/azdKHCCe
/iOUzeyZphB6mLkyPTIW45AFBYyp9Sg//fABWNjubQ4DcKKPnj01q6WQhLWe4R/Qzq5Tjb/gyYCP
aK/2zSkFj1+DTHxF/Fer1PjnQqmQF+RT1HutgWj4in/0l6lBXNcWmSC68iISWZ4auBBHSPCbTEnc
VAsd1YVGOpM8+uaqVma4BCm+9fa9jgoEYGbY4xfOW7eAzxUz4IYLXOCIB+Q4DuSTTRL1LmxZhw3E
EDzVZhWuvLPiuSMagA67YpREsACphjudel1gR7bMhaph5KTyvEhMpO2+5SQzq7D9hdu154bFoEFe
aHlizj+7vyflARcMWtZLk0FD0kAJjp7E9z8KU6dz8kryZPKRMXPK/AOJyxjYv8FR3YD1Yv1agYFL
FS9kNZvP10I5pCEgcXnv0G5r+kvGdrzeR/awnVZKCCiC+mamnIPYxYBQqCnNd8LtZWI2YvmIUuN7
Thr8Nu98CDMAFH5mwM4UT1ZnZcPJbGauNeX9hyT+OBtzTUTIP5XB83lyy+kn0SB2KHeJ++9D9ymD
ppVlJnG0L/rFC8NhIcBGVlD/SpXyAQO0P7V+dBju6ZnwKZj6R8yl+0Hif22ZuL8oAdgxFRc+uncB
mVpVdTArnQ6z5CK6ywyBYNmICvY2izSwCvnhMsf97x7+b8ieVASw56+jgGAObxVK67JKFJYxd21w
YvXt/SKI48tPzeT+2C9TMFk4+KHo4L8E4odUzudAtELMcBrwh+xN+VPULlHLjcZ6FdtKa0J2nNB8
WLaMg0H+wYGJYpzaR4z80nHpNWGjKbp6rTsCNtFYzg2FMBk7JiOBAoPcIBx8JanU3hXZYROCySWe
En+uVOdFsjDEpOR5+AjdBRhBBMQBSU6zhkxMDh61A4DVUpBUGkS3WjJoF0FGC3mmF3oyeFhugDVI
rsDKeFFHKnOggp69HztSvhnzAOQU/Mi28tQP1YaDQ73ybDz8fXqH5VFEfeSvZoLihti82Im4rhwN
+1yLONFwnUgch5qVAL1jg96PFyU0GVIm4GBrl67PQjmaoeUYz98FRT3tdVgPnD8lNKvkaxEeFUU8
1K4ea3UR1o58GzvNV8qITOBpSAcDarvVywXdDefCTTBvM8WoVkfD91vB4d4+P2bb4a7n7Sb4
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

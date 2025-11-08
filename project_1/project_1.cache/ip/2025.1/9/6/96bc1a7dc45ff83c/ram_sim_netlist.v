// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov  6 11:17:03 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.64395 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
vucJIuXBPOaZQne5CWOecxzJUbaQl03A98Q/uQ==
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

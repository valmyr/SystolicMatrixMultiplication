// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 17:47:39 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_single_port_sim_netlist.v
// Design      : ram_single_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTA = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19616)
`pragma protect data_block
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
rYOmFTMSqg8L6LhVplkn33jzKormqWll7lP55XrI3qvoSleZEhReVY1l8ynytbyRl889Evk1tw+6
YX5h3vXmq4dg8PcASrLfr4t5iYCxaWUfsC0hZuXtGxgn7VIda3bNnLz70w5HPR+WhW6lsj9HYLAX
TNVBc5VyQ9NI31yU/RxbzQeLJLjXA++IsFkMUEs1ZTTuWOnfIRSeehglf6jdln49LMzjRTYvxu4u
CCh8NdCUeERjXgU728NX5zTb0U+gPW/eHWJOU/lBjGZJ6S9DYN93JHA4e2t79yvMc/3B+mfUzAgc
21LcKBMcdNjqtVM8E6h4S85JwoMwcmS2wKce/CFPHZcf1b5stx69xZ3KpxIMga1OmKNz8YFxXb8s
PQsRH3X8N9JdXWpXQR2fQd+I+LCzCUST8Y+xrn+wwcHxwTkj6bVha9O0uoJDxnqtZiV+TkqkiHaD
M0DsKzXezldA2DJOg8UDBv1x32a557JnTyKVADOLHZZzGdIaVB6hQeqd6vXiXV9JLLG3JR5WZYdZ
x/JJLtNWfuFOv1zH2X9IbOf4k+XDW2XMelyAo5X1kRR/H5Pa6/pJoggSdhKrj2Dlbnm1W4vCqV/v
Innn0xrVvgy/M6ws+QZOvnOGvaZrSHo1vcL5JGsli9Raaer0TMSywp2ed1vtu5oWUtLbZW7qqN+4
i9a15XacYTLl6AFnkVKSNMlRmapwJVnEiR71B9OdJsk01MRDywBQkApAJ+G3uVr7rFeW/fS3BsjW
/8F3X8u+WB0fZ1l/yQZ0dx/qacFw1ZROWiYZ+d2YHrxK9sx9bacJKiAPYvfEWxGs4adW3CLgtM+u
BzaWWVaCzGJJUR7tAcpYFlIi0X4yApoLi9RTbhtZDK1e4QQEAyDYDza9ZHljo3bYzA60UUjImyJi
dQYGL3HHaOd1vyusMQWmcb5mfMgmGwk86qgciLp1ECiWtLpkqYfBO061crSoo2WYY9uIfyekJeKS
AiKyZfy9OHxbugT7A9b6GB5YoR4M6qpQEOvKlikSmoNperqm1Zg6vwkkvB+NouVtJH8MzKN91ZdB
YG9bYX+S4I/2dZ2FKVaxtBisKIbODMjRUopO1u8qwcjT9ZaQiWlH46aqy2F9X9FzsCH4LTBSF0bA
IFXSHfgYHwQrZW+rGsSb1kwYaV2kRfy0NqQnH2hhnXt2P6vgS//0BxAXKvkrowXhYjA5UcatHSfN
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
6MJ5r4gUIrY=
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

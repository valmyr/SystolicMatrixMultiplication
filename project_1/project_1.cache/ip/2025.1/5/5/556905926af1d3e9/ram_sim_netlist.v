// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 15:05:25 2025
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

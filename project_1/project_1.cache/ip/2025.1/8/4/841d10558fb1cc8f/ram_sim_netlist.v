// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov  6 11:18:54 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [6:0]addra;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.64395 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23552)
`pragma protect data_block
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
jCN2N9l1ObBRHr8=
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

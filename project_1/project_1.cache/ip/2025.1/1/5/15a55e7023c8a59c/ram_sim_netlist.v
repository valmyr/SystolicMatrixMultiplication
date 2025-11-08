// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 16:59:27 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  output rsta_busy;

  wire [4:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [1:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_READ_DEPTH_A = "30" *) 
  (* C_READ_DEPTH_B = "30" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "30" *) 
  (* C_WRITE_DEPTH_B = "30" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25888)
`pragma protect data_block
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
gpf53sVQ0Q/Z9w==
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

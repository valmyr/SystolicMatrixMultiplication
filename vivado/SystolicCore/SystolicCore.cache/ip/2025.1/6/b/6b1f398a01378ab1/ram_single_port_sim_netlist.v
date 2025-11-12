// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Nov 10 13:34:26 2025
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_READ_DEPTH_A = "31" *) 
  (* C_READ_DEPTH_B = "31" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "31" *) 
  (* C_WRITE_DEPTH_B = "31" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25888)
`pragma protect data_block
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
l1vFOKa+iyuzMA==
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

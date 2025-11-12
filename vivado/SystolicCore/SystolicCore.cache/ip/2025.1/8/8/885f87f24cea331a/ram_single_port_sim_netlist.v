// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Nov 11 13:12:23 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  output rsta_busy;

  wire [2:0]addra;
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
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "3" *) 
  (* C_ADDRB_WIDTH = "3" *) 
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
  (* C_READ_DEPTH_A = "7" *) 
  (* C_READ_DEPTH_B = "7" *) 
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
  (* C_WRITE_DEPTH_A = "7" *) 
  (* C_WRITE_DEPTH_B = "7" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[2:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[2:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25760)
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

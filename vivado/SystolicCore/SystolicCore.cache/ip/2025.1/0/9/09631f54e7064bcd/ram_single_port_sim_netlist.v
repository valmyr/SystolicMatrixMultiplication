// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Nov 11 08:41:29 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  output rsta_busy;

  wire [2:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.70645 mW" *) 
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
  (* C_READ_DEPTH_A = "5" *) 
  (* C_READ_DEPTH_B = "5" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "5" *) 
  (* C_WRITE_DEPTH_B = "5" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26368)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 16:19:48 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23616)
`pragma protect data_block
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
D0dBHU+ByO+hbXCJAUkLxZ0n
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

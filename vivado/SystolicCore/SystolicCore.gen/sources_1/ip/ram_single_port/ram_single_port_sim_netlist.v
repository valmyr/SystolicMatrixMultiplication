// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 17:52:30 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top ram_single_port -prefix
//               ram_single_port_ ram_single_port_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23136)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 17:52:30 2025
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

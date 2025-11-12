// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Nov 11 13:12:23 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port_sim_netlist.v
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
  ram_single_port_blk_mem_gen_v8_4_11 U0
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

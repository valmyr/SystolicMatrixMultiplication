// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  9 13:37:02 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  output rsta_busy;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
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
  (* C_READ_DEPTH_A = "15" *) 
  (* C_READ_DEPTH_B = "15" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "15" *) 
  (* C_WRITE_DEPTH_B = "15" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_single_port_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27040)
`pragma protect data_block
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
lHpkrhjWLiB/c2pOU9eeOVSRbNd8lQ==
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

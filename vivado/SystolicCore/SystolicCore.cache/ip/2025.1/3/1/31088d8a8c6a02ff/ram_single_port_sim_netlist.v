// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Nov 10 17:02:18 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [2:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [2:0]douta;
  output rsta_busy;

  wire [2:0]addra;
  wire clka;
  wire [2:0]dina;
  wire [2:0]douta;
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
  wire [2:0]NLW_U0_doutb_UNCONNECTED;
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.33205 mW" *) 
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
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
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
        .dinb({1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[2:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27728)
`pragma protect data_block
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
YBbhBuxmdiacYiOqpt7sXmnKTJmEbunnZ7U=
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

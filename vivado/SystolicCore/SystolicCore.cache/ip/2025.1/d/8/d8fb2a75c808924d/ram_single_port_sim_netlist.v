// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  9 13:37:02 2025
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
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
qaCZqKiXy3rDskMU8bfdF3kRZdG2lQ==
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

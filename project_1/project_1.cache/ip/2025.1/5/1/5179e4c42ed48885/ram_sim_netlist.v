// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 19:06:28 2025
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  output rsta_busy;

  wire [4:0]addra;
  wire clka;
  wire [63:0]dina;
  wire [63:0]douta;
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
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.700549 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "ram.mem" *) 
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
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "31" *) 
  (* C_WRITE_DEPTH_B = "31" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33552)
`pragma protect data_block
7ZUtegJZCCxXpeSXEGBsatcwKnSSeKBzWNS00RmuGRDvIAribKpRjPF76vnXOCAI5xX+ZdhCrX6K
2R6ver1zi57oK3nWJk4+OixSqEAKH1dSHLqCipuV00d19EUarEnHo3AD54RdGH6CRNGq6r8VYMiI
jz0kZc3kRyAlZNRKQNTfkimOy81/BymUWAmV09PiA1xKCfVQzu3zhZnENMLyiZpXylASNCQJ0z+X
AIb/LVbQ1tVwwkTovxekC0UQGztQLuGPRZvKeX/pKVBwLsTdRaDjDAyKCPCubNyAgKfkpMIPmh1T
IvmwUmWN1M2QhFItoPHU4gImO98tqOKp48cA2hNVKMtRBgcVvq+A7vOrcE1Og4cSTD2zSnbhJMZw
vMY41kYtID7+GPPgiIRfOrxRZ/7Tm+V8zzrmwGkMwExHWt00eCMy5Nd9+j4EbPePc8i0IOwnprOX
ludS4EsMQcwkpoVRQyt+yzXk4wgWa1/LHfVMHJrCemp+gWMaQw1AIWzoQp2kkPq4ROWTfVnr2TVz
njkSLv2cGP86IP8aPT+3iEtaFuz2TzcPCYeMA75jSprmge9FEXFXEwOoa0LzeIK+fFWg0upv6Ty0
apBUMg3onna1sVpezgao8Q4K3I5jr0hO4cFaFOfCAwSXS7+JSBWXisDQjxqNBsvl7gbhXdx8Krv3
gju0uxksS/7/Cdk4090AO0XNLZBobHiT7aJKtv6UUuCfLbecoXgzFqu6j3V+YzvZMLlddbgvZMYi
98gblazgDybIi0XyrcKpNyjMryEIF+r8t7p2jmsgOuPtEzOittZIwrHCexPqdGwnbaF0Fran0ZEL
1BObW1jyjErNjQIxxH+hre/ddchnTm0HG86ousqvnWP9lEu9YLpavShI2xTRQ91cr/hI8F5+PUhS
BAe0oLIgwA3PdgwOHn7DtJOhXlRWLs0Hvxg1P8lWIiF8tqmkClba5Mbft8TL2O7QrPN3etpj6SOC
XSW3/XK1I3dxQIdZXJL5TqKHQp7+7zn9xAyfoGDhgBjaw4yjoeN2O5ELCOi6iDcioB0Nx0pGGy22
fDjQK6YsKdw/76nr9pfgzv3aeBFnQPJd/FxlT2ze1CiSAZeUVGXvJqgecwOYhccnfKN4cTp0W2Vt
EHZioK/3cXJiDCEa9scsyvO+QeZ4BexPmBKLA3KUXbaZRrLiNx622UMzRThU7RqtczW/yZtcw7pa
dpkc9AaKPVpK6+tn6ewTFiM5oYWNBiwXs8YAD6pp2eUszh5GsT2+kkElzFF0RzLLJGOQPaMYixB2
+KXTjQ5ZWik4uew2pmyMSviLQjEFWSjdCVZ92FeqAve3iagCmDgeyZw1TWxuSsw7VuNy7zEBZR8c
Rm6SVO4sxAuEwhp2anPxzmy/w6tVDw5qAuo95RX0iMoZXllJwMkjlFY+Gw9/nSk06giSzvz8kHzk
Q1Toh1dZTevQKc1mSJBoiNsIYJvBy6vUYweDSaIxCOvwOR/SORY71sC3T8hYlEftIsoardi/BmDM
CDnOBqHbp1JZByIaRf5qjBXlDjsJMrz7vkJNFP1sfcSuFJsTupFzroi1fIyXz5H9bnuqvCKpHZCP
jKCrW/ApfD/J1A28I4BlmDZl3Nlw3B5JNknvsmOmmoECV3mqlG49B5psvW+mAlzck6WY25SJnitt
xVIjALs7AZseWJ/kCCT8Dk9P6DEiOprkDBEVRL9+AIfWe+e+ScU/eLwRAHMnINdHFRmtEfv9NA/H
KocfUM0Tej4w8mQM0sREoTWlXfq8nu3Ky4B/BrOjxjg/7gnDv9UmSvnBILJF4AOz4LByt0pWplR4
mGCSrpQVLvfQBCx1Ncxx8+guUHhmRAzAz5gJX8gCo38c2evchCGFBfmriUQ6WTjOSycRMvV1IgmP
rMRNNgjfnjnca7501WGZiilYyzT5VEW+RtuFCc3XpNuvg8AEEWE/EVHOWfL7uQ98mQh0vydUuvf0
d73dMAd8Ga1fvF5fLGzV+eSlL+sR7y6ymr627WrCOwlTQ3/znFbrxs9MKA4HMtmSTM4nH0T0FB6m
IdrQciaNv6MIB2fGnfukE0gFNJIT1TyA3Ji/oyjUR01XAtAYrfHAW+p+XLTFKhRSywEBvy5eTVvR
PoPKV0G4NDrLyi+IpvuczFmwbf4EBv4j+FR1WQ4OXDuoNBbwRnOSFShUbZA4FUubxGsYX3HzUSCw
kZag1YVjpNKeSRRGSUxynnkuUb9NXthwyluxFdoQpd8+PsIvMkhvrC3DCwjrmLdaIze3sng/EOaP
DU/3sw+Vyh7r5XmaFQuWnjjnB6ziAekLGDVBmzfdEvPZ+7on+HBJ4YamaVCw9ws9oyP8F3aezODE
0+Vx7NYnpgRGJr+IE+0Lo2Yni3e/hneEk3mf7Ksumrx7EhTPJSlgDq5eTT+AAx0c3xOrPfxVSxvY
RSNn+ct0Joe50rOj42bvENTR8HdX5fKmziNojNRC/TRKbFV1igjhaEWDQKQzpxPLGUzUEeKvVxD1
gInzq3Jas1XOs4FLjZ1HcKwvvrN0M/kptMtRYT0b1w740pYkptk1bpflpQcOOjZPKX+epzz5VK8e
AsI2JpGyUbPIi/GXjl+t44GxJIIWk4tOf0IbEE/21JuKiOjgEcW2cJt7jvu6TiayvRE67uYVmrP0
bphtQjqd5rEEqn8WudzeA4sLCq/EOZPotN+k+vUal30+d2Vca6dawbaVpZPpWmJ31I5kfFXr2YS7
IAEPvL2vnVsGJuBHJHA6uEktDSGxs2HkRkcMtrNEN/C//lyE6W+EAJEvmKLJ9jknkRTv0U2WfC1A
rJIxxryfx41RryNiKXPid2lXHPpgp7IJtFw+Cpxal5kcvJgtCW/U8Ym7UGa/0AYWDu24kq44Q+xm
D4bR9I61ALeDOa/Q7Z4g0S80ZHNpnPUL3uP7wpJukgYjgCVKDsrS48KqOqo4E56YsamnfoBYjvBv
2XTNcpnAHobH91XVy/djL1e2PbuqFFPXtMlArEpc2nWhj9Gw8KDXGUM7Hk0iyssP1ajMJIOxJSEU
ju8JklaTkte9iq+qcJcel6+VZsWUqsdH4GZYqMe1/56p1U8YIk1sosCEC028spR8O3kkELeOuR1N
KNUkVPo1UALopPdjBAJ9Fw40q85YHGRiYVYaYsRyvAKPKzhBYm3nIFCt6m7mgd+BI4EzYTJlpvc+
OZwn2IfjQ3MSmIYBwH4h+dS5lVv1kJWWjeKiIKkCFvb7lknXIH6HhssQZ94iyQB+uWiHTChQ3qLw
EHL8sVz38QQgYjP2cvKNc5o/ivm5gqjwqvOzcUOdVI6nLwk4gDU7y2lYmyxoY6Jv9DjIfq2jgaNf
2ofnx125Rfmz9PVALnZjLoLT9aLf78VCW0nhSICY6xSZ4bK+AL/pnUMsd4xwB1hznK5nsttfYxWE
S+jgFtSAXAJiwOZq0u7TiRC2xs5B6sZg0CRKBW1gASfNWK5p/O3S+rloa6r8w/SwgVipv2W+UOKu
PVUAqfIjORmTe62EryB+D6Ak6jsUUKgEtY7ka8EO10VLX53ttbtq0c3wyxfF27U0DCgab/8UVDad
Tiy86edlpOqtn9c7l3oonSCznB67u2lznIPndE+sSnjxLM748U8OzUoQ/4+VDQc91+PXoApZ3dFN
nFLm1jEadKt2HZW/L/YZvK76+X0jf1I8CVHTCP4uZ1YOR0XYaP1C+BTcl7Ik9ZDuUVHJQf6gsrin
ouCohPXC1JX3xvchnvDFMWBjDaA1AmTW0IeRe2pVkXsHRKXGwl1sX2vhlVsEJfz1eeo2Grg4xf+0
M6A1XPiHGtvHVvhpQokSeXYPGoJN1YVcYHD4dx1G3ry0MwuNS4MaQemF+3Af6RJGffzCwzkLxGFk
6lM6TL90aA78GaIRW9nzeUmEvUtiw6ZYKqs1X6Ggqf2elru8Nyk5t+472do3g8X3RXZIpQojTbvU
BtlOVkzPzFnMzXeuoj4YDisY5zKwHWz8+nqxW31Gl8XmrovQ0Ogx41+W/hO+oakyfy8vWnJdBn8A
ANjsgTKnwPZ04QNplffkSkLLTmVwxGHSTYFGbknq+GP24hXxnMl5GIvaHibvyyQv3eVMff3nLBww
BOnNP+Z63pgxznYfT8+zVRfy6hZlo6hKce2YgVKd1OQmn+yo98Qt5RpF6kHql3Qa5HHhG30pHt6w
ZNSZHE9+gsx93bB/H6wq3gYUv2vc1NDLCGPkJfvCbSS4NsDZI+8QohYbogHzrzsI6kArUbBfMpdv
v4/Kkmm37FzNRzGVwVmKdvdTQmEOIHHmllMjkmcnd2xR3A+rj+/wDtJcSeSbMvpTCf7Da1wtnFHo
pbpL5JC9Hoyd9tMpPXrw3qsnpINLBy7ZWYrwdZpruI929+ifHpL5oK83foYJBqt/Zs/67ByGWQu/
lQVhMLmGYg8uAkEMC3fJBhNYrUSCpOFZIP0XhvIC0fBBgmSeMz83KnwkSZMNG4lUAXJoE2TXuV9H
Pb9mlqO+7J5+7mWSSKZdSNm1vTHOSZSJYuOJiSQxxjKaBM8d8jcFOiDRM5UTZXjU7EXHF4jqLn8b
mj4KMoCSz6lXaFMz4cIKX8HUE/Kyjazt5SJ83UpxwBV9JzqLnYNVI1PFECX7vsU2nEREp+8j8h7V
YeH3CbZuGyppgFpPk6ez7szYD6WXjVB0xTdX0/iEiZjMtQK/xbrIcKDdbBaPt4fhTUI/CCPpYTi0
xnUTdT9evmgu20E/pz0j/jERWCCTv59GUvFl0GO3drBbOQo1FJ/GQBO7Y0nClHvYCmk8fRxQ0vA5
nvncqEEJpGFDOvXtnoemWaL+qXHsKJ7MED2B1keauCSDCXeZk1eWJFR26ZgVhU7DRwJnki3M5zBE
PJdAsgCuk2G9SN38+Y1XmSzrUAcNEMQhq67FRsld9xbKkS1KUfwtXeGh9yVAYC4MeGwLUGGHWjjM
mYnz8nFRV6w4PCFMZd0eY1cxIvMZ0C8O5IrmvZC0LuxogxGTSsjfFK6CEKSDVTO/KQq0pF694J8G
fhPc294cxrv/2aYVNnEkPTzx2SKH0H5ZAOiH0R+d6wpUhguqbIZUH98gZh2oZ9eD360lPWQUWqZH
F8D6L3dsP0UWXuCAs1vo4+ac2OyXzGxo395wEjIFFYsy+5FFQ5D1POozky1wdimHA3+cjaGrjCQ5
uTgP2iSu8aHsOxeO5y61no6KxEQbVGzrqVA/ndOnAsVhJSwqAHYQEebhrQgZnW3tYMsyUxRsD+8z
gz95av5Y/7wAQZOByvWtLGabCcFIOm5/+U1JBMpuYN7VZnNWadIa8sI/lmURnHEwfD3w/OqbJHYg
gisxnE4+jdgq1FAMIU1iSO7Rew9z6ypYap7bYPGyh53cAdvYDzhQGR98AnxdynKtHyd5ml/2rs7M
uSHtXkypdFv9YhbU1twcnraN3/xCjHOLM7cEPivf82Ux8xZsWer4xrmTinMeMQxO+SBLBfMlgHs8
AR1KW9EJREX1nT190zGT7Nm/EbqTnbza1XlC0UUEnzvHnOxYI6MEIZkMBh0jdZyAPYjILDAhu6d4
7lcLFBFTAJpYFKbYRdVcp7Ug0lhTUJPznxfQMvrW41OJEZXm5TlF8kRhYXFqFIJY0C/4q0pBXnfh
Sjq826PY5ysGH+nyN43jbmLi2rdggha9rInLptqlwJF3Ml8YXvscn567a/dsPsNdAMgQvxQyi3st
NnS86bup1GGYnAiTkh+esJ0znKhcW7IYqfR7RdVbeG53kcT/DZuyXniVHAv0runSr2CAYR0OLB2g
OgXO7q52hXvtobmAdjqX+v/bZ65B8MtK85/UqqFpZXIQ38OnJIVYIsRuvlUYl9WDHGNZDt9zDYvj
w9+K3ZmdcZgGtwJ8O+ZPmaPHYX3og76RghzOo5uasHe+Zj5j1heCScduPpMIoU6IYaXby/RnGSZP
8+tYBBFEtPOPhcfaEDAAAHp9ylkC5nHw64Rt+YMzG8eFna7gbKl4BSh4JxXdOBhJl59VvYa9lqGe
xSDKTMU3D9M5NubtJmYK7WBSd0VRp7nOAW/30hq/UaCdPYSruj38i51itekvExO9lwbFwjUBztDJ
dMsijrl6BuGRlFf6pUVGr+kxGZsQ58ZMDUoRz9kuxszHA2Dxigev49gjg/NrGKsOmgFWlbGnRfr9
8DiHvzhp6qp3ZO1u6EE565Zs9aRMTEMd7lRYFooIMM2YioDyJFkQ9AnB8654hfopgkuWxZqEj8gT
6uOwwHg5XtswawlxtDufJNMN5hBsfcnT42ffj01MtdFKFB/Gq3ODGftLCtU0gCDeeWXETgQLD4lk
McQRDgt/WNaqHdmDWE0/DrPY9D7uQ52XJVTwYigUsV3DbOCp+/4XkxRloN8KB4xAzOOXyupu5+v1
Hz+pXv26rhO1Ex2Pij78otE6KdY4bI/zC7YJPhqb56XfVze3OwAueHhAZ52ZAOcpHSaChVUJWTHb
OMZLXX8Imw+U4zjRK1WsnRVptDBjpKFjAN0wtFqVlOIuXO9FqOgzNRoB8q1gk5+OaIY0JlLslrw0
pumHbN1m7k52VYWzCSPA3goIO4dXcLjbsPAhc7L0D+Y22VkgPVjT3GFrioWIJ/qPRRiXm620Xl8+
hn/Pja7BlUQPQXBawnHCbrFvtuCsscsaTuVBLI9CsZor5wnhtPfOKLFinWDpqx9xQCkYjqEuP5Ly
KzslG+KF7R+cLbnVOpQC8BYESWG6pyZglS63eQHqf/xSpcYD37JW+vE8xzcjI9kw0ed+MkLy+sZu
h4QlaFNpcWRD4nLchvEXBE4IeHHvixrBbxJPcMFuj0IHOqsRhSElSyRLICOOBLg2e/3iiyM4zTBK
q/mEJG/D8ktYZsN+T0BFaoSpTsUEEivTJXB4PfsgGtOR+ciXjRYXVvpwa7djg9CygC31JamW/pkF
THZ8xoEdeg04CPdvey3+plSJAA+sNJnRBh1/jteeD/znrs4QQqstl5mXimxcbh8eplJkEURPUdrQ
RLGJVhO99nOWZWFC0+nvUncMDgkkaODnFPreaNHeIR9ei5o3bkMhhRxXysax6YMggMMOauPqFc3T
IFJvBx6Gf1wIdxIMOZhqJ5AiJTqjMZTOxGf99LLzN44Fy7XE4PBt1ZUoqDfLL4fN4OKZ/VAHirux
F+xmpuYP4ufIIs/NKRte0iBDnWgZPDsKlg/zvqyiVjsDAkhX+86GUNwIT5ktjCuy2tuBLFugs3Ie
++m79hzMukqrTw3FkrJO2RsbtjJ2pODqyLeQsKFN5FzptidECiUntcDyyA+uPV+rz05YRdBbRd2x
Q8sOOxTighHsl0hMLkRR2hf5Xk+poPv+L2ItzHwa0dq1wtqXovliEekciFhC+bp2nLd7KNRw5Qzu
jbxNKoxs5auNWzAAYKM2liWCu2OZ2REQtM7131K46KM+gRr5hF4uWQ/XOIv+nLsGytCwNx6tDfWq
zMkZAt0LAgYBj83hamngnzKARRZqwdHJS1YZu1MuWXbvtoYsGk3UWlto0NDjM2ItBm8VJcQIJi/T
mG9Tpid+lS5oP/F1j/wXAXiPDYM3tYDdGkKCVoQUDgr/DbrVtnLJBvT6nC2fTpy3qORKCeN6JCVf
vjob6ndHCbwsikkqDlW1/kUzzIqeKZnNLSrWN7NYyctBuBqSXW56zelUnVsMAISnFwdoLsA7n7OO
oujsy9MWUth7NdM/wpLySiHZsaIF+8AINdEWpQGl8XY5NKDH9knxQFE4t4fmY9AgC+ko4I9KOQ4p
wvOxM85GuK7x+dWbk1q+oqtKYlFq2YhjLKnbfKnd9Xfh3PyZPWJAz3OYxTVelibTHRi8lkEUak+I
kIk4rHYKeVoQZ+BilqgkZRISGf80tapomyRiix4INx+dLx/QqIuDs3aKJQIShjvA3u8uPVjyjppr
mGfSkqfl3a+EnN1DIbsKSKv47JnZ4LufXAuWZTKhWzc00L1qjSeHKBDmDC3mHAUAhe3DZfXg8LbZ
ekHczJXk2t06nh3JeEpA5v/l4EEtqcyFWUPj8+1q5z2iGcoF4fWh9+Ep+8FnHdrvBChDCFZPPEoL
rUyGxU/sAcFSliSganIhc4gd8ab5jhaFTqZR4zac+E53xvdmqFjSJEiricHS3dW9x3GfftwxoC88
UciHEBsED4sO7fj35qUW0E/PqpQ0Jws/g7ujgeikUN/rv51YQAvxGNtDuNMn3o3Z1Uj6ESkjk5mW
Eb0Xa3ypFNB7oMFHQKO4o2je4L1cIrhAP51uot/BMsL/X5h5XB3DAuyixUT41joyICoFD/n1BZXW
uNulHl8mRf82Ob8O2pmJuDp06MFQaWVcIv5mgScXx4B38ERFi1fOZjAvg0KC/0GVXBP8j4srlC5K
itbNtuf75LgraBLojhV5STSuCoXj0ATH5mQNmTS47CcMi5Yl+Cy17BJ7abUH78jOqtc/a9teDQ8W
ITnqcxGiGaaFYtAfVyfRQ+JNCBFP8vv5q2sa+7Hl5Ff8udQpcLAiMr6rgjO+LDQZGzVR6d6Rvz7w
xVxs3aiFzfbDOCt0EDFqBZ7Di9U8991cz1mp2ybGcvtCGknIF3jjelZUzITe8CKF+V7Qeaf90Hkc
XIF9bhRqOSlbMf8NAOlVKbkQf8Yy0ncMIgHnikMBI+cbBvqHut2cHR/WN6aiKlKZQXxhoaZpCjYI
QmHB+vffv69H5cueKCUEUNcM/N/irGq6zUWy9sffo84DsI/l1seSZfELJU/ThJR9JgXwpLuwZ7O2
oIRbBxT+EchYYNpw+791AF26Jy7pedd8kgvyToYbwgW9qPzhfgrGsqRd1iSRHiS8uryz55lVcOqb
/f1InX8M6KF6yuLGmBYz901mpGV6tjBg+OGFI9+4jrefndLmMMSfkH9BcG0duShCmWGnoADAi1+/
wVYVLZjvO4xQ+Bl6c8MnfE92jTv0NRyMPGBYOXMGGfLnCJdpBV2CksW8AWoB5GCpZzgxDD+GcOgi
ZSn7eAn76ZR2oqPEY5rA8t98cS8G6LUlZlKVFhhRYxqa4ZPJhpsZsL5WjhpeXk/heSbkPCBEYJI/
tNMkLX4/X47wRvyH3rGGYo8WJ/X7N5E2sQEx9XOel1piVbyf1ajwPI/CjB0tvhkMR+n2nhWkcTtF
nvEu2WFr1vFTqRpMIjZtexwCQ/xn3X2pgHqy/HVmo7jEjw+M/51pRsswSHq2QtHF3tDS78gtz+nd
YrcKFyjiFiiuZ10HTQ+F4x0PHymhhSyv10Cm8usKoVbhinn9qmtGYyNP/03kVZBW3VK6GyyKlC3G
0oklAIrqQCDUD+M41mm22mMJ0mXhNC/KN/XeANI8RQFgQW2Fsw14As/QxC+L3bz5yUmlk7QJcVSo
9YBUMDMdkhoTBMp6bqgCjKt9tVYE2kDQj7GpANpJIYZIS6ug01sl9kpht7U6O02Q6V/IZY+ubcpF
YBn9NSNYjr/th0k/9ulZyXA/uFz/kPjSdEltWU2KKA/XOhT9PIRX6vwZRqS4Tkz8V6f0w2Ysl0ca
e+cXylbgzOBBlTP8JakIGv5kdZcV5O6zBjMfj4F0E1HPw5sX/Rw4daBG00nbwd5QL0OFL2YFwlxn
5WTK6gJxQbXCGY3kficObhNInkxNu6ifwsC6tkHs+OF88k+p2HG0qlddtNy+bfXn30OgL2soUPvC
MWS1RR2USXdRFEw4ASis7GQ3jb29Thx/hchuH9ChzYcIbdsDvp1s7JAjoqEl0SvSepw+DoESCHoJ
iIluHL+Yt1v9jQC+zX2hhZQIMZQhd12IafKrqZujqnOa2xCH/MnrwxovbDgpOmpd+cotQVA9GKSG
jyRcu2m+o/mgBl20wsS4ba3Eb7epdmG78BKRi0KfZ0RpI8XCqqLxVL8gIB/eVZxKLdqPyT1Cgsc3
i74Tw2noTVGH1eT+q0tp12lZyDDv8ntLfzFU3JuuTKnGjwPTTLw45xjVJnZ8z2Q38qoYgSib8c0X
xkRRl1Vg0yYATXhmUc/qHeZLBdGTYu4HwcCPXWkIADkIcewb70kJXQs7yL+GdaSobRg/mAYdEise
MyDnJUdHafLVFw4IIpMQSpXRPtDBK9djsHNdhD+W7nwUZZnTCrXvikjXaJH8af8vr9KLctvzF6li
pLHPnIytp3lKRKxYi4smPP1Hf2k2jf7WN0lUwTL0RHySonGmlJ16QZK0RGroTe6B9zd0M+aH0YEE
+5CKEaVXq/tWzurUgsK88SQj5YO0ki9gHR1/6x0fc1JLc/GWzAmtyl2fXV5LYqj6YTXBbxU3/oga
1fSL/eUeUq69Dxro17HQpHMUewOGhsuaDiMPDJZ8N/y7wLQxV3fdxZvwP+mhWzeXcVhgvkDlI6+B
N1/CGP2PmlQptkCwRLglHJVWZvbZIw1WwyCw7TP5vudbmkKHnnQXWNWwnXOv46NdtODuyKrQjU5I
SrNcZj0KKWFrQNz+S7sZAPYGhW3GvJwt7rR7HTF9yfHIcM0n7CJmPVCyRGo/E4Cat/XiVLrsi231
/rNbsManKgZTefPNzbr/Fzip8bWzBNOdsaNh203ArRGnuw4Ntay+1yH3F66/r0tZH1Fv2CUsQuY4
KmO7Lf4XZUBxwFqmoFJPnIbl/SgTUcnaojxCWGDYSK6jbsuNVs8JBKfOFnoDDbl6fr9Bx+8XjrjY
mWHoSK6+5Z1HdEWrQB9/iuxajlVxiDznzJ1z5jKIefkI0oheM3SkEH4qhFONPcc2Qvt4yYVgvwiL
qHRArRyWM8vrLDGA+5HDoQyqrDUKyaGJ/0i8ULQUk/id+kUaL9v7wIGyOv41XqwK4TMIt6CIiuxh
s+MzAzdWCwd8Xs/eDZ6rRUG/PhArEt68l+FQyiluOuJ6wD6zyal2LGaZENNJL2SWLpfDtwKDvIyN
1o9tfR81iJqtNOIRJy07HBqjzGgVU0JsDVmKYx4SvaFVC6ztV6qozc9dRvatyow/MHsaHtRtI7A6
7N3cO4U+kmVMmR2B1T5PSMqmfZR2HuwLiy1BgmdiuOrgkKhbZEwjXh7Yu1AOAxdf4LQ4RV/Q4v2S
ylDkAhZiNmjqAZd261uru5wTkYN3wMRoJ+jM6rdbaSC7W+/jPHH2KKDLDG/sgPjnyRF0495wY7Mo
7qsCZMWtkRZTqDONWlZJlkAYEd64N8AwZ2dCv/gNraCd3wj8mJ/y6bgqInAGbrDMe0UwIUuLLHIX
2iPw07FDLCBcQ0Txm2S0gXRe3Zz5pAwdW5q/EUWiZiXszNhcQ35e5DQP+/lY6ykRwcZop1lYRkZn
2Gl7oXI6aT1HFcUNO0DJsm/vObr8WO+qyP2b+3pHpsU7fG+sABUS17htBqSwt4wl8mooK/nqlGur
PdtcdcRwjOObLZRM4mglFa1R+TdPREaGdOkC2BvfnXUW3Gf70ZpnzDPShMxIDRCMIa60mzqx9xJu
lrK3TlvF7h+hlBwPx6fnq+mzTjiTAvavd121rcCXhQp9119WEZKMkdMoHXIJYSkrTdvQL655lfxM
9JKv+Qy7D9/FN88UmsVMfa0RPJVBuqG5S0VhCeIdbGufvFPT9GbKJsVYt9tJdcqqKQ0TiOVI/v87
Tu2gnSzpvYW8RRQ4yiZ7fvZWrsAGyQb3dk2F32gmh9wGQx7SbacJ6cabNYpvVlDSgfQSn0pABVkd
3eP9hauvCTte2iih83XNNg65UY+e6rBDfPm5mA0A+dg4qKsa8Ejl19CKuS3pVBT23vr5QNRWVcpW
34eHRvkp6uKwDxKHLWTx6Tr/iKTWhNWONEW3kMhkCRqeb6mWlMhMiKfrdGDPPNWiTk+9x8CrIQh0
VyJ8AuFOXJcS21Uo+RwStRhzDxT5dbmwEHKnY/gED/0NvLwgwZwNHsmN2jVVkpHSooT15TJamoNs
1HJ7AjTmV616b6RA6jzkmuVUhWwLM4bS6JInqOCFqjFHbNLALjsnd5BIvoLU4Fr/xDUb5pC1h1uu
amwO2W+FSn771yV2IWEdizvZzAgd+JTCZmKAV2IxfkzrGHKAwt9oAXQ6MZ9fz1o++LsC4eVCZFbm
yInRUzIF8agikxYR9P3Ii1HVJ6leH2WSVj+YIB+qVx9Q2XCkYxJd6TTuTz8XZGRbB7TH2S4duhDS
E1djtQTqHQRWSHizJewtvtsaXeJABZxSv8EIje33J9tbStukjmpaekhGpV6E0KtJpqPBbxPRGEnQ
JRC15BNjlfFpkkc8eGbt50R56Ou8VO/nRyQdOol5dbvUF1H92YvOYNW5pMCj7038H8rFBZgdkFEn
vJmuDngW93sr79gsicU34THrp1B0xKXAKhn3EN9a+A0B6tXz+flz7jx75jryIacUBAYYM7kJ5Ff8
KgMS7zQIbE+wKEsqXHqKh+zpGgeHg1o1HtZL0qg650Ou2Cxkw2IKS+jhzFRmiyND5XTepIf4kLLv
wdOBz2wgOjvsDKhI6FV2pZvDlypG3CwSRkoumZx7K4balxIE8udEJ8Q69tlv5KhmihQ65hjbNhBS
x1Hrx2mxsvXEwa2nbUi012847b9IXF0PJhyaGV0I7qiY5yS3z5wglwiQ/qVYPFsb1Yh/P6ePw4S7
Zk14YQNRsdF90IVJX4OIX0r3/jyiYpSL3V3CNMKXbVmfXmIEEuteyhnUe6oKdsghftF60msrvjWF
Ja05yQi9szNoYGxpCcb6Mbs8pYDdq9Act42inYhJkpfGBBYCZc8MKWcYfI4Fiw6eZDGAZQ36HAh+
8WYfMA3d4k2fkYLrTjgx9/7XKpONKyQQCRinqY2Td4BfeR5LSuIPh9AMN4lUTHpOAY2uh1MiOINB
GhlUItzQT3h3YXuVnjKUZajGTKpbvHDnV5mXMMTuamCenTlw3p4QGsv6PfRYAMqoZbjWUh+9Q7qm
HqWHQLR7JJs5iWuP87z1JpsY0nMIw2ORBR0Ix+ilF8OZfLf9SkI6KeygHpm2FXoeGaktbFNMuV+P
ielh/pStg2tksjZo2abXcyoH36EayxaCHy2TcGxqyVBPCKRygKudUhZsGbYBHD+IX9vjFAIcpOVF
61GbpaDH9Vn3fdYGAa0x+1FlE35Y7CEODzLaV7kHWcpSppWiBN7Gj2mmEKVpOeFVvON4ewRGiM7H
C067OmUPEgIN/2zTm8nz2vxI2fy6xl3kpAvcBAYHd+4bJ6WhRTZXZcXQnbv4AbvDGxFkbA+XJfWb
DK45HcYQpUQocSK8whM6PBQuDPZq8LSEgt6qK2eSORuFMMq1V155cR58HzZIXqYDLU6y8x+Z0qcx
00wzq0LJ5TRU19qAdwvpO+ObMYsdjU7/MEo/SQwyqbrjRcNumEth8jeNz5kStoY6c/SjTBNbsB39
V++px6q3M5QMRGd4vEGez161Hks+q4cacXhnMu6K5eYHysei1oprcT/vxYUbUVGqF9NFnEGtw6SI
j1VIqtgWkZ/cXxhx5gxB2k/vb4WUA1BM6I/CNlegGuPaaPXeR41iukmVOeH94T8J0QlNI/EnebOU
CjgThgecW4PJ2UnL/zVehFQc1DOA2/BlQVYTfnZx6Qu441WXEiYLZoJlMOc0Nn41K2P1S06RtlSA
A4NrRTK6PE84wLAl030TWzTGHceUsdbIUKV8th3MS5b2nq50RUNh9uVe8y+vNWqvQa9K2KN7J5FE
I7cHLsjtsa7PELqGycVfFiw/TujgRJDpFjTZZdxV4sMvrtb3wtNpJZt/cLHGD0CwEgOqPJ/rZ5Im
3kf0KUm2yYoQ4N76b+XeKOmliiJyuxzpAADoO2fTmJFK7M3+f9ZvTSp+4BAEKkR6MaF7D4BAkgn7
ooljEBVKUGlg66LIDbe/7Z1cUaBczJsWgjg1H0ZbmTTl8/i3rdMp2JqcYNQdDARbv3Bhvj9yBhL1
+2cHoJYsf6WAc0w9s/a8ys3ijdx8Yn3Vhue4uTuANza2/CuSTlFzL8BNABDQZZnFpMW8RkzA9CmD
2LWqjeRPSVW/ym6pWav4sYxa4619ixLkfKrTR1YFeDkOl6rXF7Ltu38EcAPwqWtPbuvNFoIQfkPd
bYxqy6OuXa77RuWaNCqmBTDEnC6DwFwjghzdo42vCzGb2bBup/eZvWS2LSy3Y8PnA5OdZzBxyfFG
pIYBHxlYZumWDpK2Ward1JEUNXPqA5+5BvjOigjYgTK+a49wO00pn0orHeVy/fe862VRHSq2xCsC
+ce3uEJumWVO2M0di9FBqSi+CNCIH08yHl05P+fQW3Lz9UsrQG40l2QCiHtsiuUB8c4yo7KvF6kG
VMM38hH/nIkZ/PS26MC0sLAB0lgPMfPNUUPF3bDodj07Fwn9DZegIct62/Q5ud3S8JRLHywBGsJb
qZnYydjGcQCVLOMvKWGsZBLvFHIcphZ4zFoo3U7V+MIODs09Ar3VNke3IGQHVNRuXOAC5KoC7sVu
q/WBYw9dTSlRSS67Ifs6pihgZw7lFKNeToMvex2e1aOM3i/DyizWJP4N23H3bcaNbGtivscIkdJG
6kW1YKF6ev93rSZlHqs1tbbDimGJV0DM3TmzYAyzi4kmGQ0Pm7tZneFflHIzyL+og+9XNCNaG4we
t2tGT2WdZP36MhMf0Xolyp11LzAw1T7vF8qFLXqf6JBzVGJ0/aCrjOoVK/jwerISSTJw35+IROI0
ipEgADQLTuLm/una73mC1tYxBkp3H8AyWQ+9lNibKrL4GeQ4xBO4fgfa5DCLCo+QZwxLQ3/iqZX6
+UAu6oo4QUDRW2pEpNaKTfkCPu81NK3Z9REye41CWka9fTaa+Yf2srJ1hTmtlKkz7SCe7ZHt7ICl
pQfHJx9ybFteASW47P13IiHeTxcecYK72BczCumq2zzlaOEc4uZHw8nTVAYLEkGypJAWLS725fjq
LrhHdhK7JQYdI8+yUg/h0nSLmnXdHHl+Lor88MH3jbWGbMIkZAElzvTuIABKivFbZlrFbKbcy65U
Xz5inf/s2/HCME79BYmQUK6ZdzinC75iBuuGg/YLI2p63AiXvGiaSerUb9ykHjTIio0KS10CYYik
5xWtoNwBbzbRbP3rvDX074N6uxTXywNZEbncJauwrdzcoLpdwtWCLdz4rLrKr+6hxh4lWwXkdpPD
f+5en4FO1rcX72Z45w3UOu7UJBG3zHU/uoXme9HYMFA4gLEOPF1aqIDudc8hJ7lU6kPQzQTxEod4
HMjTr7VgFD3CW2H+lJXdtuLPf3CxSh81wQeBdwX3QnZeS0Exe5CrpDk8OMbsjqcsNHpeNwnsEVrV
xWSTP6PAqNSGJy/2VhJBZ77yOddLDg4q4D+ON1K7LpP3+USLteFbNjXTHOLT3P89LSCgHzHRtp4E
3Gy+nf+Vwxg/3AeDPzNFFe4kjc3M0FuoafJmmbBFm3X7HDpFwx96nz8DgWR3yxIFn83/FYHauOUr
0chc89WtKfuoqI5HKtundjd0UFEo2K2eigXmrUgWdVqvE39Hb5T8mdV/Ylw59ZOfIktPHYVFuRX5
+8193Y+hxUZ1D7h3vyMdnQFpVcGfMh+/Az+MxMfgb30fJS+oFoZ2GcbdKea2/1TZyRSL+6LHKj+R
ojODohHT2fdBNlGnHiu24w7JuE+wV1WsfAZbdnVmGeCtkCRc0XqgHnDajm26yMzbx+vSFa/lHqvA
kJR/V80ki710Qxq1cw2SLnHlJesWirzzcQlH8PsJZ3otSB/FEUK78/HPu603PUUqttEZaHzbgiix
/4oGIL0Crqgu3HbhnUUHVdlhZjwZMljS5Tg54uUnZ3d69gIuMjeWPFTcaldMDqeAUiQZPXPAb/+j
KnOOTeHiQX6Zq75AEXlhgr01PWE6rAcFu1nniz0rmg/jljQ+EnUQSjwXHtWa0asHoPYoljyRWeOP
rj00ItikeGy/Z3Bun0PhE61w0MCd/AYxpwvI0lbJXT8cjZbVENUwT1WkfK6BlTnHlrGxpJL8O3MC
4vHL7Mz8cd+kn8ON8UovC3StyZ3/l2Kj0SOrgOHgPo6WRFrHk6GRo1LbmMFFZS08vNClDAPm5cRv
SfXZVLWXtkOSy3x31lfTv8xzmmlImJmvUPbYAx43ghX85VXFWRMZC6W1xKJwhmqQ8lmxKsDMAkRV
13MpbATYIyQq1SLx/DxUvlpb96NNP5owZGOKFxJMNDdFzqdt23oANOeXrrNLfMyzUMJFuKuQIIDH
xiFrZIn9X6fMCgzUr1IBe02QFrOcmYh7c/wNowVPfBdVk1zTcWTfDem6t08YrqAbZm1HT3nQpAQ7
xC7nQ+UH0bH0v+l171Ttr/cbbtaF2g9j3G3GBqkrQpbusZ0n+ItkiQ4dAWeAtia9+VY/TfLvtCm7
cIybe8yM3O6HW9xIPHCl+DdO1KJIoAlyg1Rm0IuZ60KXR3rsoooKPbN5bvWMGn29QztJpQ6C1JDI
YsGJMCJSRpuHj8nB8STBiknIp/VY+YTZqxg0rNeyf49faYd7NTRDCY+4K17YSAzJK0YpatbbfhFh
+hZLQ3p2e+G49TKUR7QrwmDMQL4ICDuOM7PypEydhgTlHqS7h65eVoYwCbQg1md99S0yT3UFeReK
FGUwkOAM2hcQRxY8Wgw7spHFG9I+dWxuSdjg1dNVBKcnW5iITz2Nrzi/LRJikwLW2dJz63OQvg60
t3NmAXXFhjQjkh3j/aI0BxVIShmjvIcaTfgZOhAF2irjNR7MwreD3n78LHo+qIgM/Pb45r0WkgLX
4VauvianqX0fB76hn5CkDN/3FWkaIkKZLsBmo8ZuxK/l6Rb+zsmLdwn4K94F9PoscMnsT04WXYwq
Q49n3A81KNLZxOnxRv09AQfHzEht76y6D4dKrWuCyZbEwby7RSVZzXMZ6mKjI6TLfE/T61vbAYO0
52VTYGU6QeLvek5g6wUkuxMBpXkFGS0NlSZfNMjBHsK3vyIZkAW2Ht0P+mWA9qRbACNhK//7I/tY
I0TT9q+OuclyH35eZ78G/jzq5w/xaQKS/sEUo8oCF9tx2KoofbFAlEuARn9rVPYZ21ZPsHRD3bBE
rCshMaFIjEDxB9O9Nk1UcTDRg0Rd0IJFMK+kioPYq5oF2lUxSlrEZqXK1WR8bibQ3chweW2rhMPL
Ape2gDi4z1X6QMunHBFEOicPuop9i//vaXTJYILHsgEIJyLyqgkrlKl2yu5XRNxuQodOhBVduCQ8
eWteSKtnPj7ZnPpAs/drUQuMORlXrdqhvINYN0vBFZxY4cERV0eLe/ywblJz2RgZ8Z6m5nak8YCz
JFaLHAYLMt2cflCMoGVHYbvXbfVEVcUUQwdXjwXd/bom25dvVXU/jsA0loVmSQPvFumSHD5Xy3OC
RFndsrF1VDwtCjgxoaKezlj7ay16oh4i5JP8oG0HxqF92EV6sEh36XzUSjGKJb4PkBJpyPrtaE3K
sEuy8ZZ0pLwea3aMFtAjyIj94D4xVnvvkwlTYQkifsAU1Cy17mKBBQK/X1sJq/d1s1ciBSiM/olw
CZnfLu//CgUnFNIRAfLIA82Np34JQYKFfm5PNEi71jJt0ljtt/aonjDCs5todTNb9qZtjQ4iXa+b
a+oOpf0EpIUQRMJAaaEl59mhILWVAUGX21wnJqDZB2ancnCmgnWGToJx+hqeO4MOzO3mhJjdwIRw
KZf9Tj7uW7y9Vlv7J+7wkW3kJldlxXHKzrh7CVzvW4m3aZttLLdTEhG5ICxh24a31PrnhPdG/dmJ
PQ28zxkgOi2xlmdTLrdNzaPNtTalbqkMj6S340ATSAOvI51sKDf0koRC5Kwt7FET6W1DCs7zwApm
cwyWeCYqud+PthD+GBzV0WHF6Wy03hxtNwE2IxHvbe6HlmtgVhwIDZtwFM3u6HX+hWpHOCQMHUL0
FDs/KkrtEmNWhke6H/fuNIQnS3eChdPQJSrO9LPfi651F3ZEj18Or+Lk54mpW73Az8mG/fj9/CxS
A3JLMOKxWQ+0TqSb3faaYVSyoT13xlBfcGGhRXrD3kqK/6i8fTFMgidRrZ3zM5oDnbzl+aUezCJO
HvXixiluCFlHQSXsWrPaE9mWNkBd2SHWS0UrBbVrAOVfEFjTKQ0cWq6hdstz0VrxIDoMtozkxTnY
424YZAVwKdabylydogZC3oxmwvTI4wGg0ZAC5KPaRwfNn/RhEjC0qVdE+8LGj1XAlRaW71qNNEfX
duKPm57rFW+Ajp4b9+/MU+A5W6tC3q5dGnG2/RE8tR/ximvC2KT7xhahBmdSnYOeqBdBQadB44Ys
ZDOLtGEyOORIV3Bsnege4kjYQ2uce3yIMBuWJsgVkqqzIso21M4etzCzShtlGvB6Lnu6uT3AIq9P
jcdkGdcWfZfjVr+yTsV4kxRil3CBXJXZGHoahjObLi7i92LXw/j9ediqntXbIf717zE5XBi+9UJu
Kk5cxHd9nfAjuE8VgvuDvMlHauJYTmoGhRvO7hGT6jj3Nsdri9YwfHPd/fv4O1llav6md68yQepA
L7hZ6YgMh1jqLS4ndpF0ZnuVtE5Bl6865mEay2CsFFl/91c5JLHoLAzdSFId1XR32hM22mukM3kn
skEe05dJF4As22lPK2cJP/ZTBKSK86WaF/HaKsSrbYdSbS/n9FilXa6+Tv+UwWTqoSF7+BaXfCpp
PEak1cHasUX6BIx1dwKUXpnlVpR3sQZhRn4zBJZK9Memmq0isT/PH95C4iCX9KFVboQTyIyBAhpQ
m6SMvhH9L1sloB9UV4+RcSvYfbBsN3fINYHbcirit7SO5vAEB/2GykO/f6B2wJTfH2Qc+0CE2r79
Jf7ylImLLim2U/bvXr5zTeD9G5Md7uxKwuyGDGDLcFa2mw1209JiUdA57iZdMtdKsGlxulzFpCuT
a81uPqB+Am3EC+BUva2zs4hae+Zi5vg0fjzbv3sDvZ5JQNInN7B5p+ikj9ihJhzN7y+l1dcMRI80
xXm4sseh13BWZctj4rfn+6syMfeqKdoCMvDrl694DirjN4woCO31ELGoIve3r2e1VzcMnWrRPJQt
h16xVOxYFBvDneydQ9OFes7Xu674LcMYx/BgPswqZTwZ00yWwHYGxpefbwh0eGxJd7kfVDtt49rA
5n/RG/VqjejXdbV7jFPaA0rj8/tWU1TSzB/F1zw69Y6RFz2B77TUFhISv0WpiX81qH6TFCkXbANh
pgvoCV1K9r7CBNN8Nngiq7vnO/ibDemOHMyVe+USoA/squKowQw7SRn/qLHpE6NEWGvWZ0G+ks4J
sLy1aGQR784Ye/BHU48ztfG16Un00sMNvEfOrsSs/MOqKP3P0zHZCoSxiaiGAEbI7rguAtUCT5yr
YqgLNxpGilmZZkyHpe3mQWtgHFsujbFcSMn2MH7Va1NTlTeP9CWmSDm27F5jwbY7y/UiATQSfPOh
+nIVIU6lJbhbrD91cDCgvpBICX6fKa33eXkJwyRbeccmzNWmGTA9UrymM69KtFxP4mCmJnAfE9XW
5o35aHiykSQBXI3uqkRNxEZlK8aOGVi2eZrvxxTxCB1XceHNxj4J9d3YDxFFwwbL8ZsR+o2meP3g
/hVEKKOpewPN3K/2Xfogu+6d/CRcuv4cpDSMGhYiQ8c/QXqBe1oZhntoWJgdF8e/JrjjBgv/BZnt
KKhGul//3YKgwCUFsME/mEoSkwv86Zo0CKxzfFruSyjZVZ8jPyIkfONh1sRbZC3BgA9rNDiMW+MP
VqFEebx3GHk8jqiZVqJofvGVITB00dEU78+zMvPP8XbV6oyq5SrSsRD3julK5rReQl8RyTAtIkjp
iw4Nmy0hphQe4nE9WrzA/3Qy0Pbi+3I0i9o8bU+qOC5TJFebAy3K8SUtsa2ekE8xUVQqWkfUqqRo
i7u80kVfm+DDzO7Ntjp1Eac6Y5wcXjJ6WxCfd1Q8mV1ZCkaI4ZU5jedFT34OGFxVlst36azODMlU
H+WTmRYlhy+Yyfaaow5SI89HkaV8rNIgWOEemkmicg7s/2vpwFBBs39li6t1tbq0HxI50GDu1/1E
hIg+0Uxtz7ZQgB12ABznzHWpBjTsTfrt1AT0X3lKhSPCRVJzRA0Xm+ZDN73Vp+7Se8Vhdimt+7Ts
79Id5r5aSt3hu+s5Ld7xQ1Aid9xzcDABV4QrwYLefnBKaT9SjFaoDPM00arnZl86jk8O3m6UqPYx
dgBzNdlQfxztQm+aNLZvjAgaLZigqNvRSqSJyMltn2nj5/ajddbbvueKxgaZJNs9aH0OsHfSKVKL
CMb9u84AuHU4M9F6XusDlyJo3xvyhvCdG3V+lXZ9tMX2PfxkyAjtCzBobHceEc+7rd/fWfpEvJpK
2F02IMAdcDQHYvGimSAl7DdrFk2k9MKs8Zg9a7cHN6jV7WsWX4khTCntZlUzygbFtlWkRYKqs0w5
DHI0EZDjEYqkxyfp5MADeLIYyv5bAknLSErxYBEAEvRqdNdBByx6fbUvwqoLfdsxwBWI025dPav+
J7JOriGxvUsgnjVvpsdMN5eeNrPtWYlUVkw+hfS9jNrLZM5+9bQgDrzf5VG0i/sb64om+NZCsU/G
l5XzwPDffwoUZi+n2FCV/W0D1CuMYy3jjIQQO+s9yWEZsHFbeJ31ogzg+OL9rCQ/Wm294/nQiK9m
Jir2sQgx1xC9wwLJG8nWnjTSv8hu2YwkzFf9PQKHgJqdQNtoXO2n6c7xJsfI9qmh6D0bfy9cpw2J
nzeEZu0rfmoTleY+hDvXdItzuKAU6bXtY8RU+qRzQEV1EeVEDVGxx5R69qWATnPekIoUkB8ixfTp
8rzQpRvwgCkQsrSsO3EUC/UNalEU0YaTGygN8RwYuYhP/XgKVFDNfKZb8IZ5XjgudRp0Ca/a0JFj
7Sf3g4Dd+YJ8XTtjqScN/4NdosV3wB5zCVSwicUb/qyUniYIDBnWassfYijDcI35jCupGaPCSFzU
wyMgei5OLXsgEhiFvPSOQuKxmwJ44ZPs64Bjd7ZxA+EWEPaniOkb/FqeKfRgNGy0kypDPB8Rzn0D
fkIiO9LxXSYgpOO7pS1G4pEIcFt7/2C7TrTBcv8RTESyffIX6IP0j+R3tqEitIR7weObQktFv+sA
wrG6bHuDc/1iniJ939/ynAd9GEp2ROnoGsF0dCnd5ekV08SrACLcFtQcTf12xW0K14L0bX54Cb0r
exOxAKYt6c5BsrMNP1XkC1JbaLuxHKnJUxDo5DfAj1TY+iVUxwyYN50EFgiYa+zxkCVet/L1qlSB
Ntg/9ve9Se7099gaPmkIlH3gUt2/aipptB/LL32HItFdNe/3Lq8trndNgrWEwAjjs+E5sZODS8GP
ImhXwcMBaa/TT55Z0W04I0PED9OKUMVuHcsYKVxBNkL2sTaSInv8pXcBexIGhaiBhZx9YwV2f6BY
xb2Pql9D6KJeq87zxa1iiFMtLluesJ20oFJdEwRWSjLm7/ImyDVR+fvbU+RdLRFnUHTGru8JbAsN
n8y9zZXjIcFGAfsRgI41eIK2Ybf3FJrW8saA+CaK2Ue6M2ovCEp5l4hXTy+Us4CKNWzentNPw0gc
kJoUCphUoLNxMEy+WbYDs2c0iXZnXJo59ZOa10h0ARkwwCe5VVoOSLifsNc/G1sbzsbFGuwQesDq
cNlR4VR4VEK8ak39i8uKP6ObHGBhyB8bero6pZpRUC7sTyPtMWJrPReLCuMLtK3UAVv/KhVCheUA
Z9xGBG8A7wn9DKct5B+E1QyEUWYYnxYURtMCKSEW+SRP7hpVr+gkmPSEj0asiGdFEY9E4utITQn5
c39my9YSisSAY9/ch2kaeuW+aof+kdpmZeeoaYLkx5Jm34kg79uABPFyUuyo7Bn5VGeYmx+uMixJ
wSFXF+jVbdhgdZEl1k4CPkx/WZriatQDzrJgv3mw49I/2Tr0cLOlLggDSZTeSVv46/3uFTKthTpy
0uewgkyISUi5DU4FGvIR3//OJRcE6KhZpKnqBAAygiHP53t09f9VuvsOuTid68ZCwWWlCOwxJlO5
q8C8LYdTyLOvkcs7gqiZDN3F/NKLZruvUZEHEPtfu8DijWloV3zWc2nhUdiIogguCguJSwtfNrMN
+UuUCpai35XGOSY+iv37JCm8D31kDHSVMQ5ITZ360WWQrHnTpvJZdfvVpvv/i080/CkYFmlsIBxn
4dpwYS7GalsfesGShqKCBvAswE1eM5yf5/3DapyWYqyqTJ32CSamVcJmj0jhDKSNKdPPQ8g0WQ9A
yL6mrTv8P7UtBSnv7ixWZ/ksfdJl3WQ+3206G0BeMh62mIuLHyWfR6a4ULCZzYXddUXqRbAZ5D11
4bdnL4nX5HGLlKH61KSsLJAo0U1krTZcYY2JGUA771PUiylBKKGKwrcOHewQhFGL+Jn2o8pF701j
QPdoIlzdgJ8g4dBv1BQnHwKHcXmPBM7V694sYjGfijqlBEaq3rOlIVdsdw1hDo8rDDfe2UUI4Mz7
NrYX/Ron4EnpSm2sPNmhQ8XhDnF7eViFGWPqLSR8K8WlQLHnmZ+EZWKu9H6jv+/dwFComLj8iiiS
W9Tm8Zv7DksXz8nPNUFGeOpOUacZanxEkkkTKLfHB7n8gFSL4caN1JqRHlRmeex+cRTDS2AGfjTK
4j9lATpuppKNTRUBAtyXAxa194XJ3TqJFPmZncQnRlqLlbfod2eA8p0K5vuyGePTrPC8hq/m99w7
VA1SrDHO0YLLk7lLJ3k6FW5fTsrYUZUiYzx7tn1LhGcQWSrk1QdyncySPQ9m1zzK2iO/iuV47W7y
vXhA7lEErpjWe3XRgTPaf/PfB0za2+M7ufSlHH4y3hSeLtQ32zlktY1Cl0qLE7Cm1QtThVygoJjH
KTrvsm+YzKfMnoeoeMqwVLsf0zbPKKDocg/CoHkarK3fSkSdS9yyouHS+G6xTZh1nQvSrj73gZa7
KDwMllKUdBcXcN6w0GiNG6BmM1kXQvoBH9gGidRwlDOHeJHaMAvqjENOiuD3jUyow/DhA2UbDxQe
YMVCEeCxep2Fd38m/DcDZpSkY2DcNDJODAmmafwOtMfz0f2AY94VALrL/co0FBCg0TbzQh/GW/bx
bAOtYXoFDqSg/fYqKgySwSqpD99JVD4nAzUtb3zNzCT+kgM5TbAidBuGRKTxKI1syWmpLz/4aGh9
xilqIq7reUviNE/P5y7IqFJMhiQ4mlGlo2gx9l4bKKGmGZDLm1qQspDyYEu7VpKohqZW8RHjmSES
FL1GS/AgjCuZfW/bquUGRAiPUzUrQTiGhZUpl5ZLGgG/4EgZNbkXjMz/0Sj0JJpiWQSfFTv2Ke6Q
iepeYlH14h6c9mEkS2xJrFURqwZii7UH0Zi4CdEavZ1nYdQ7f23XjB6chw0vf/jlMosokKs68g3s
rEHWC8OJmyqiI+zJAYZDYB2DKTDubWjZQqfG4blcuJf3byste9iMpjPggcrZi6nIkLIgnz1ayGUz
JFEJTwr7AZwzy/hAER7x0RW2a+Ub6qdnDDiRfgO9taKoLeLjzWMJP932gMTczxu9cwlholYh6VXQ
Uw/mOJf2OLCUunPGe6XQMRIGgk4Vx5x4GN585NQb9z65mG1rAhUyoIfb4UADcT5T7yvCfO70hcFI
hrp70F/gqKMDQ9OoqijQAMwzBIu7cHciJBJAkdHX0BtZXndboH480HNaBuJfgOMl7TQJLCX2JhzN
49h+UXCcdHZ1oEZkmlV/O6dt3PS/S8vxgF6pQ6qGy/3T3Jwtu4z6JbAWFTAV57TF1Uq1UZkKNApp
w/4t5HpcxlIUlbmrOyZYtrexhNMwWBSzos8/AoF0u/V3vPu0mh+/bNaGgjJhDGPV24UxepQI+s7c
PAJ/i1uBU601vXER89GUUij3gWxiSfw9leuFCrBccsHDUYTZ1RFJEkJw3kIwpzbswDCybEIZhWRS
6rqsS+5618clGBSz8IVXhzyjAmitniNrqeqEGSVIkf6sS44Tg8b/liUNL/4eHCy8IMQUmQSIgI4h
g+0N5342lYznlxSjxSQiZSZfxWlK9f5mYwvsQ/QcopA+xx12xReKevBR4gRrkKczOmtVPj6n7iFJ
egYAoTXZu6IYK5w8cz/VmV49XleWyDYDLuwQdwGWZonOQE19P2Go9sis5/qqjdCUgLYU+Ht1Z7jR
1vQb/yaqyAe0pHjMTd7mHuteKpn56wxSVaEnzQo5unDj7Mm89r2EVzuFE5pJmyjoi7/661BNml1e
eU3vXvSiWY6erb7A8BbYG2edRJPREZ0ixncXkElpv45ZkxO1AhrzOQPdlgEg1kq8TKssQXI8Y6I+
MtKZ2fW1aV9JH0SSf4Tiojt2AiQBn4fV2L6Iqw5uCnevZn9qOzNHlRNg5jGYSlXoZMCJa5BI/HmS
1GqUYSbKvt2JywjRf3TQcndMqoEuB+IAftnuI6EBRp5DKKjd/2IBMlyUOttZ+lwcu6Vc1mBE3HR4
XbXeYEIy5+cMcPxs5IrXLFU/MvcFN8V0I6DgkmXN7EaNc9015+PhAKDj3S5Ry8QhNNA/QFHRffCx
sZr5zHZWJ6xXCsuRXsCWQzezSNxGCyQFUp/WIw+80sRD07uUUj70pBTObXIVItD3Pc2HqlJWNO+X
jD4jmSbNXsVHWTNnB6OFRCfA0yF+vKtgHKinhGuDnWo3M0aB0DNntlqhBJGukmU3lNd37Mw7i3xB
JU4dAzWXN4npPGxnbYYRXauKEys543R5sDOKpUQ6HreyZmQZktnNgmA3WCcbwKSKCX/jWUNEFr1F
a5MmTn0N83SB/XQLHRLvHaXsMN17YljxysNYOR56etf7UrJuoPoCF21MmD46NRH1aOzn3Iw/4eKJ
+XofWUp4Dd8jxcw2gsS8NP2Er3YRZZj8PYfFLNZhl7BGVtSUunDPPZe0XlwyBIye3W8CFurY/D6O
ZBJdKgbJ3ot+Onb6Rb6HCPkJn0p/RIqVfRdElXZLdOKKriIlkh5/U98BowME68KQcI88iJPXW492
1hwyGTT5+YNGv/MAgXR3KulsCLgJ+hgKhutsCyOCvA9THHfrcvvqOev/1+vjlS0SajWulHXrUxWG
yF/uvO1P16QvL1TWuJDnlwg8l4NNlyWLKwp3/xmJ6pZgPzVT6FVWPmMbVrZpYOZJjyjCM+iTE4YL
AUuiU2e6bNTcZ4lhQLSkBxF/1DEJW7gy8lHAZL6Zl/K2rQcs90jhtUE78YsbW0aEleBinzvAH7IY
0Tf5aHfbiZjT+eGyyxWAnJAUZTa5s7/ub1INpaxPB+tOpmz2OsekkImAr2TdX7Ti7zNZNW4a+jaj
qzHBc+Rvw32YSCS5EEI2dc3UTgRf+v4xezRE7cAYu8C3Hk6E+f+dZ2W7xECaOaGFayaGiBDQ+qWQ
TL6zUqKZjJ+779H4/oUSUM+qAkBopRNheJEo1LDXnnmF3hQcBIfDGw5001AHT3HYg5VtCRa3yRxH
+B6rew8sB05ym1nqlODGU61XKbJqhW20qo8Ayni4ugaH7Tnfgi0gNNE3Db++qMcRP0nkFVVUhF97
PnsdJuLM+2xkOEd1Q1oXtB6JYHxKsmn/JDQtP1hckMZFdUU7w4KjqU3RbQOoZJJFV5EQJLjXv3e4
JeBJf8jpdtiPt82FSmlkUQ7SkVN+DLA/8AgWhcXVJOQtkLHICd6ANL9VecmlDl8n6FoVXPlfRRh3
mK4vjw28wBv+siDfb55MOYi1ybftXFh89rv8x+jYKOeDDcLpdSqxuxUVAvSgkGWoCSODO3dEqMUA
iNgEfliwHtkTOQ1naP4jUjgQHITjXk67ll84SeMi/vL5ltht8eaKJFv6QxiznPNUgQkb8eBXyUSD
Q3KmM52cdDuimtBYWzTEC6jKaXILpRjKpruPe+XZ1yPcqR2/+5yN/WAvg4rVgycx+KV1K1MKW1aj
e1GUYmgg+giYztaILpyz6VsUMfc9eUW4pWpkoFL5zQf6Y4FTt4zAIEoTgHOPjsLB9F/tcF8HhTjU
JUIJlbkF7F0KDim+01fGnEnVDeG7mGaxeGfu3P1FLCLDH5WgVOGu61naMGqGcgxwNdlI7PzRa6om
CX3SecEOdWC73/cnsqM0cKH0ypqB+vXjMNNO0q1Enp0oGq4m/CWqriPXAJobQhYf0xPO8JOq94ra
x+Ar7gyVFIdqA68LS6cs9iQB4r9Qq8l/BGxktJsnnUOFc/q5dhskqXx7TJ+I3+dLyHa5S9e4eHjc
2R4Nd9U+DwPfKWkoyhYAvZKnqb9JaN3/EQ2A4WzgeXddkCsHva7yTsICfUPTyVigRjELQ4EJuImb
dp9z1UYlyipMu+KFc2t/Uwszh9YpvwjqmGr93YRFRVTQtF2WwE/eIAIktlnUxPncf2woI/B2JgvB
lzpGYDqYzOZdNxCvXLx6EujVDi6ar9feQBQmEMvUxUdKBNH59j62Vs/8e0DvDL/e/+hiU29Uhaq7
8mZrurbB/qVRKIq8deOixyt8f0/PkTPfdLtPK6TvEZneKSHErx/U/uMP6I7AbonahjktO4gyxzW/
oWlTet7SvrXwY3jlbE4tx12h5eA6dEdAfCOuIhhCueCK8WUEtf6zyZQLTksklebKAFajx3xV8y5d
/vmiU0bz4V/7Pf9REgAoUZ7WVp1oJFU3Qm4oNHbpvemO0J1G88RrP/cp3JmoJJ6RyVwR0VgSTuYT
YcmzxOwk/RMOzWzcMjBc6UYs7+qhfvfUG6I05Bi+inzLWRuaNhDlD7bA1fExHVk/OcKNCNQTXtvO
ghc6UgLHIXcOi4o0gNcbS115Q7r5PC719x091LIg45VD2ivBtJd4n6CUJ6YpL1wtgQRbQ/ZMc/yP
tmfU7GzyDg9r2SntkCXhpQT+MbsDtcv/STD6E6BAbkIejKeRBLR6u1reOuHOkuFiQUOF13aS/SxL
0EyzKnMNeh60nULQ4TOVK8iQtbdlSPh68NIxpz4457am7hFefXzMFaBZz/RUCccY5SeT5N6dQli0
XjKy38nIba1HN7Cybt/BbZtTcuhiWYrSkiALez1AVNeCWJCVr0cDotD4hFY7xE2qSq7IVNae+UFj
dD0qFEUaKy5ZcPr49fnimgptDQIX+j2DyHZPTizuYl/vE+D57LnCQlOuLPvdtrAYZWsfDBRyEepa
dm422m1IxXPc+M83mx7GKT+em5hQGC88wE586nIHAAP7HahLm7pawxyMAOJ+pTTjJfoykQU8EM7s
qGcohZTCuE+6sHlCYZ6/ZBQp19PTK0cWJof4gbl25/dQbt3w64mxXsRisNoGJo39vJWhdXwtiPmT
/KRW1e3KERdns6L7qc39AL9bYJgPGceL3ZkOInZ7ozF3rz80kxYItdoh+OlG9jJ+GuQTWGlEnfeO
OOOp//ryE6KzAsmViPXhgRT3RVH/qK+cJwgJhwGgXZnCb7hWcjitPyZ968NLQlOMKi7DBSLv4u03
yU4P4q4ynEbV9NsT5pHt8iBVM8wRd0wnckp/kR6/p4AKWYeyx21ien3ZfvD+ra74bS2gyhcgxK2L
CYkv8SQ1DYLlND1BXPbBLz8iOazdHt3bi77ccVy6tyF7hjG8sE3rtVk4bn6XZDZqsXSe9CF+C8yn
6+e8SBAsDQOAT5uXw756qdpDcqftaPEwVdcAfVUlZd+VEsRy6td28Y0Mt4RG9wPIjoxCQOG/umwn
BF5zWjc5hc/7bpkWhGkRMJ7lhlUd2HIeOtPjGOq+DG6NlGUoYw98QmOZaYNzg9GA9w4BDZMrJzxC
v4VGvzPbM26kALpfKnLQKHmYSzvOMV51C4WEbalg6CcfcZfSnhx7Jyx2o2jNkhkeB3Y+kZPcTQws
430dL9hDiAFaCT0Ka+PWB8C7enh99IZDtq/yf7hbWaJHzz+4bK+oFytAUey30b6s3zE7rZFeY1/r
VMt+JkSaMt8M35wbc6So8zcTLLGiYFfbrlANIAfz3o4omH7ncSukAYiWe6VDSU4vqZsB66/zM1t7
2s+gdk0gVbtpnMyycJbiXxdNS36BXFWhvT1+Yz5tH8uo5jqGrqbtECWN+LQGmWd3h5DvbIjUPL0E
FgkkecBJ8d/pWfYVmCmqpMdA6i30N0Rv3eYPS0+kUZdYNIuafq+dAR3PMqFW8pxRftbf3VZG6DTq
w09iAeLpnJj0uc0qEZ2IZRIcaPhC3SKlwMhSycHeJM7JuU6JrFx65kyMv3XTlab1IT91/t0cpaxe
kRn//pAviAeR4ngxw4woYbu3XLhViGb1qsNg84FAG8opS7I73mJ+ZpgBD4j7ftdg+PSk8PBC09gd
PhqrI8Vlgd3XCbgLSZ7mqnaBQMgpCmaurWYx21nSd+HfIrpsh2jszZy2HHuXGnyguScgc/aa3vtt
fgPIED5XRGZ1Y3QX8ekJD0xFeXLUZakf8YCfgtdscHVmEqk5mc8gmUQwY0ua0LqXDcylhY/gBWVi
dVuLK9PrLgDSE1lVMxThfUEfCb9GJC9wttokU6wIdzzq2uHhV2kLSHQCpDLNQqPNliQ8EYaxvVzY
FlorDba2JpZmGGaPksVkS5SAQ4THmTGREzg9busSNOY57n4ApJ5eXAlfH/HU5wz8X4fVmgV5u9WL
ku45ky3CcgnkmrMn/gqLIdxWlaqc4n30M4rYH0iFGXk6glZvNAr/DLOQ5H4LfVTlYHJD2OmCtjKA
073fV43I2xzUqF8snmSBgMpFyn51vwUAEP2y9XzhlqxlitXOfyAPBTWYurCI5+E8PXkvNI4OauUx
XPBF5A4pU41N70Mjz/t6NaVgJv5fvVqAwYmalyXszOdGB2gA7ilzc861K1i0wjAdNejZkIcDsZrS
58Ket/4icPP8QBiGpltfUiOB/cmPIpAwBb4nk0h92ux3KGVykPhyjLnZB4o45YTnAN/jHhVBxWLS
Hi0ei4RtvwUB5frw7dIJfhB2akAKva3AcS3PqasQ0aijMBD4VCETnhDDXaV8eA0Zm9bGtcTM1OqZ
DAA/iwLNt9nyuQ1lylxqVICV1b8txP6gIBoMjGZG/lZdxfztiGGiL9eFvkU2xxjiQHKBMak6wAup
msplzLdiZFKtHQcPnvMbFKteWISQaxsmFQADc8a1R+VntpYCYR3ooxk5qoJUVnOLTTGMCUwMnbjB
IyPE3VrUTEyOmP6QiL7ZxXpyN2/NBuITzimOVc0cPAOQP98PmalM+NUJXY8h/Ubuch0X05sqCK0v
wA4qIN9UHrRTCwYsiAwGbyDjP/LbIR01m16G/eX44Ve2S1XbN4EUAfGyt7ZWCFAxSfHQ7IuQdd7i
B3eQcg1dN4S98UWJahaSVugNXdSWThjmOm9fdDwrvBOaDa82ykek8H1TmLq4KDILRlF/jH2bJ641
twUPMd9m2aopiE2/z7z+qDyy+AXMVcCmAkn/iqI9WCWNcusAaVdkv9XNItJinb2/xLtvoLMDvD73
6IyXqNGu1XdQ5t3OXnapWSgf6vBzYxR7t6fT4c0BpJ01V6ii0pNUv0SnWHLpJCSahHosqEpG20SN
z9FMXUIKQl1YfQL5NzhuogZ5vplyLz+W6jQmvRdBgd2OYUP7IOIGO7M+/mvCsvUTP3LKzGVvJ7gb
1m6+kbDbWAgAyvOrBxcR0zFLoI6tc/NdgzRr1x+/SjAooXkhuw+9JbwNWeQxJkVVyeseBKRF3N12
yhVvT4MSdnaN9fRfwodb4oPUd7xaLTcFDRJXClGDOKzHFPAB/qS2lT8uPabLNJ3V/Hk7nDMPWkmB
hz+/8Dfo9RX91J6Az7y8J6zrI08fd56PQ1cvq4vUNjQfrsFxQ8q03jlGY11r6Wa+7c0t4cZNE2Oc
F1AV3amHALjdAGqX6URXS+CXnXF/CkDypy4OWGiu+DuAaRhtyodv+RYmFBiUnN3lpLBAhgk/qSaV
2o+ke+Myhs0HkM3f/xjl+D15xFbFGhaUBndoIABo4ONk6AUkv26CDjgIOmXdz3FSZVVCHRhFrTuC
9gZaTEPczZN8/acSS1c6XLxaMeSAd1ivK4E2XWMvIDmldX4gU0EhMaBG5j/FksoHS6HRWBTE9wCo
uF5A7KcWKo9TngjHlFmJGzqJL+KyB+a0UFT5M6Uf8GMv7Kegdps3LPr8NDyOg3ldByfVrNWs0rMN
b+IVi3SAW47rUaky/wzozthUde3sI1R1DLc/0rCbiRfbBXmpoMxdL8xGTkdtgXZOzONG9H+Fb/nL
pmg2EYSBO+A04B6OsW3viPYNj6W3+/NRqobrT74AlQe1pA4ExfF4/buEgrYHVD5qY8ZuQusK/F9p
w9U9iL5KhiB/X5ba26Wz/VMQ1i1s54ESOCRePWODdEpAJhpjtdVvDqcAP+bE5LJQSZTnrl+cQHPS
Ox3uFVMabVR2CvcqOVGJJp9G4C+sJyZxYLT1/wkrt29fOqK4frabwEF3R9zsjGhrALSFqTwmwNS6
AygKDvYK/yFxdDXz1nmebWoT9z5Ho5PdoQGSOBKfJCQgq1ZwZ8a12BMyyzOdtnQKfb+f3+CJpaFB
nsLmAAqWuE9ilzAJNiJ7gZWS2vz17cirm2ZD8tB1PpgjZj2oceMmX8kKIGhy9SWQSSAtJ1N20nFq
3TKvUxBIKW6dWd4EfHxIDCdDqOCMIqBpLO4Th4kplJv38gPt7fRKAgNHpQQYKS6yAydTgwdNvHWS
srMmf9bZcuDXdeIiCpAvczmHPxwfRkBw/3/y0e0G7eKbNpL0CRFlr+frQ6O8yusPEd98XBIDpKTx
mF5xx+vDUjBnd9zvN2yX8hejSxiDux34WhNpp7Fmf3nleJMhCbu3URfa/EkxIZ/uwgJiItfeK7gy
QFNcyyhS+4wjqAmhx5C7kYTseso2GA4oyL04t3pPOA/m2OtSgtkY0WnyHqozq7h1wFuu5/o+fjGB
EH+Zr5qeedIcg0eU5bhQMNB4RbVJdXMOeaQoCLd2shfL3bXg/8ibgVDSAbGSge78d1U/P8Qo9dRY
JcYpb42be/7sSVxY4dfqXCgeIk0IYDZ9eUOjKNjVReFB1q8bX9nSFJr9Ze0TSvKwMCOcs0tl4/XX
9VI21xabX5KMllCoo1suKMDZJWPtDhP/pGdpf4gLxaDKYl3Q6aMarA/USUVrJ1QnQqcvDt1Xh7l/
ZPhzg3RNP5LUqEQX3/gdi2Zib5YbZoyDqevQMsArO4U3BymJYXGzhBNeaGvqpNYXPZi/q5heHreG
OiF5DbEsGehmmho+/DRU4hODsKpLC84NZZyQYotxWKcs3FotEoZQuhAuXYd+Q++CdD++/rNZBr9L
mIZFi8zS4QOE9yiu82lsA6wwrgWiPeFPGn0UeKpwXOr9WAGRRz8i7klxDMvpylmCX7WlgRB8scGY
a1tiNsufyhEyIojNDISBn8Jic3F/gg1O7aKeVDGzvpzGWRw4y6YBfVyhl4A3NxmpBg801AkH/tOi
CN6IwgTvHtzGTkRxn0VviOaCaBYhPNfRlO9Bk3EZy7FGKIcRrWuZ1UtRwdSEkm8GDtaWl4ao7IL4
Zgdjg08SJ0WtgM5tjt1QcX9BEKuL3SeAd2w5cYk1j19+WvKxKvJDBl33HNuW7NR3sD4eDgKpuA3u
crBMWUFnkFZajMYGKBfXidODkr2IXrZHla1/HCyCW73GW3Z6voNxJNzpHqlpexLZQ8wueDuEVyTs
nlgAVJsEW4hJa3Cdg1RpxX95K3t0iBaUX8PUor7yznCmuyAio763lmRiiKFE667WxE6cqBY88WGY
EnwgzIz08Detf/KNI9yxWiJf24YoSFtee93vRPIPXki+YjQah39Xw3foZ0n8Si7mHjxts0vwCXoo
TMedLitZfvhrLTSqQ9EpmZYoY/ENoLwszpywZ6SIMlismZWETiY00H2s74n0361TunqJDi1SmMp3
YyGVpDv43MC7TmPY7jz7z7RAvM8FdgMI3+t4dOMgq3YgrWL86Em5ItEIQM3T+dlH3tzUCPDq9Zb9
JGKVa6ZHMwok0wRg4AXLEtixS1n46zSNiPvLufpGpbwu4sbvbDV/IyGMcIwNb8JP+N5hnUv2kaEy
7Z0RmLFWS6v0Wd7Uq8VGiIgz+zxOomvWARAFuPH4WCjCG/6uIWaxK3wC325yvmgyfyRCitVVdDQ5
JKzdnF+00dfz9myT/qy5/uLjhleFLqRZLXlsVIo+rsFme19z5DknxliRA/438eQXhn9JfYPu4Vi2
t3cUenSeY4KpMd8nTKVWnQ02ZUFfGGS61CLFiVpAGmHwkWNP1GdEj0nMfPXFAn5YHolD+LDURTwq
Y4sbTicjXKRErNrhjPp6vcyCUdlLagX5YCA1NW7Og3c0teaVsfX3B+LN84cYqdUe8rIavPFMqQeN
wYAuFxiVcYOs4g7KP929mIyEXIS07S9MKVhfVrrDD+LEujhpHR7v4+Lqan/gybhKye2GL3a6qbwJ
uoHKKPvaYFuWUiJlykb7sljvlEeNiqyoubK30FR2HJRW1w8o+UZoz215VR00+ykqdAtdPZVf6W3c
iiwPtQZKdnrbdb3XcdAbKV9oLfXXfJxBAb14JgQeHGpVZrEAwLHfPvwGEsMlJ9e1J+K+MKmiY5D9
cKZM1bJlTHtEwPugowWYln/ARYwVDjxmJ+veti2Hj1WDJ2ghLA0T+fN/k7m54BeaR+Ij+3NQ1m2w
JamoQiRhfwxyqbGaYTCuEHFa+dJ7aLABEyW+va3kuoMS6xr/SOr42xonqVSKMkGG8A1k51DwFdW+
xG0LlI4hE4ye565LT6Nqo7QVCcGLRlIbEWxFTkIDSf4sLwqoHLFyxXDRkp7MpsuJceeWon4AA4WO
C7MQ1e+arUjLJNvbMwAx0DQ47E3seX5ABtdVsCnZ4QaiStV7IFj3KFS7PHkLars01F3nUy6+8fgO
ObaWo5u9+PuYgADml8B21iRn/d5W4kmIu5F6lHX261nTOaCA1Fg5R5mg8yX2EBF6Nem57j5FL+kG
NoYw03aGGMjSkzCDZssSfWRhoMyDFkcPuncmxBRWrwF2zZMkEWwPISaM+HJro0aV22mAUvhYX3m5
e89YooS88mfQcRlpzOJCgfy/uWxdDIPJ7Fz++75zw4I58Diwlj+NCsCLZRLO6kmspw1vGqJCzbeS
pYttOr8Arlkin1VHKcu4YwZI+/dg0rZ5WiCJi5vL0Ws5CUpMb3BEBkSqYzvBWmSNLBIG4wJBqm6l
oYnyOV454WokCoo+6TCeQ8rW4JGHHCwdv/Otv2J7LYy65aWLEKlPjRjr8w52Yjlz9MOOnMx2PMY8
4m9AgFF+xVHoH5VSu4zUUljJLvczKick0BJXFElQXICnWrM7o/Ly5MOF/2oM0hngHJMWUqJfrFNh
i+YmgITSzIIgC2FUDHa7LbFP5Kz53YFESvZFB/CJTCzwNPlY1oFCC+lBVp++aVlF2KRyz4ZEb9TP
/dRVYeWk0wMU/aUB5RsFlFuH+KHw68sHUM5CbPp7by0TX+ahIKedNeubZsFzW9pMRfyymZo7//A+
S9dmzc4tImWIXZRVvY03Yiaj/l1OvbTCWwKoinjC3oZerOb4VN0oXQ8+51k1P6APJmchyPKVYgAr
UBpVDveXIkDCsXMlV1TR2Q7inqlhR7TbJeKOEkVn88fnMA/OKPBSzi2aZhlGLEP460y6OHVKSeLH
4dzkOQJyOKxnEQlLd1BCUiBBQPagfLFci69rLg92Hp4zsB2KMZiBGNzNrhZATvlNDYbfFaH+c5U7
/tk04HR98bqeeC8IoMk0UcYhyZZ3YEKqbiVndXD6NFqMFesfr/HylE19ENAiRxOAmKzQryEjRtXm
3CR7p5mqgvrZFll2bbPAl8ooPYjTCwjkOkKLSo0QIqET387nhIMvOzI5i5Jm3ybMNlzNIwmG007W
HIHGo2v0UUxsRtPC/HzTxdnSVZb7Z4LvSOTLuaoKscjMZ/f5muqsPZ6MjtgT95r3e+haerzSB4kp
Rn5Tmnz4qqpKusCTvGamvGiKeUR4U3nddbWwKNWb9fO4We65qdDt59zRvYBaBp0CTBOLcVlC1XKd
9HBze00NL3nf9lngOgVYMAJHs5uWzvr2PJ2EU5bCnkf1zJlblCf3Tz/v/NMFJfuN+9hEjMt6S+0D
deJ0D3QqVxeEmIHeOd6dIsUDrsYD7BKA6ikMoAz5Q0katk5RZbCOZQ2r2OdEi53sDCktz6+gXvcd
bNZy5vOEql4e6RMLLjo3Z6GJaIx7apyy9j91SbhsdtnA9AB7hTOC2KAX1iz0n0scqmoZ0xD6J8ch
RmmuhSxU+PEuFb0qdKjHkxZVLCH3JIq9qfRqrt/wzloKcs8T1xtmOIo1cFnqW/+NhQbdl1krWmFB
rvKmV8GBq58S9s191W/EO+YQg2JqtjcA7BDtMAu1BrlNJvJfIrKXYR5hrkervDaO1tA0Ew6JjZpQ
E1IvDcn5sygKL4QADfkkAwuRIC8iZjbiskaY+lo9ybaomCSRiKArKil372NtPdqfEYs9TGNY6+Wb
8ChB4/OPsFogzLRGQ6pRi9a2KSPjJOlHsGTXXtFfU2XXKaXttzxzBbvcrCHBWzcWbrMLCGK4YctU
stVz4aDXg140g2yMpLTh3RMblewrWzt7APWTrad7dsXcHBHn80gRH2UqXsqq5kzaDB6/pdf781Sf
H4t3Sc5eg5BL2UpBh/kkTkclWcB1wj4i8ZcuqIRxUW0F5Hxc8nMUdVmJAdgzZtJkcksbfpWNFpMl
9PfJqBSu498rlQmpJCE9pVkyaQu67AmCJEFawMrndZ8m7U8CCC4sN//mjzS+Mk8xUqTxSzFmD4b7
9WwcIYQ+dGlfYxF4iDfB4QHuqggSvoRPuxPR2HllRxcWQACx+r6g/ST+YxfTLF0peoYirf0SdmK3
bIcRnrXZudWPBMbjRMr4u5IbcWUbThP0w+LK8DpO+5KT38vrRsdnITcNRbOIyrySfEPi6dZgxTMX
oEfG8uEuMOSc7fKiIThDnAF9UWFBruWO5cWwhjsQ4PB8dmj0lWNP1Isv7EcexrrMxBYNTdl5FSU+
26gFMO+rHDn9XI8ZOsVoy2mQ0UorIO0Nez4/5yhOgUrjPH7PX8jRtv6Knyk2G2jcgnX8e9zddRZB
CefAjM79nmKdhjO6AszBJhfWXXIpj2I1iKaVG4Z65ihGPC43tCJZLPGGjKZxs4IN3XqIGvPs8Hat
iDvvXBzqslUQ1fv9aksp5H0R5hHd2ELqJnPM1eIYpnwWi+/x+USwaok2Ljr89EgynE3gCicsiHkn
s+IQSEhyTPUUl2whBWwdYodOIke5O/tZCONCFbpOLnjHRpXaFwPZQTmRk5OocQIufkXnE00tm+Aj
4FP67ZEt9S+UpVXJG83YIVJOzrYaxyIXqzDOVZbv56HsitkHkaF2SstKeLrB5m/dXRJ1v06xSrZF
KU6lf3303S12DIx1aKrDr02XFY11RcyjUnZB7i0Zql8M07AmtATVXy+zC3JYPgJL613JWsmQu9ZS
7VpKU7nP/bl8LqbX9eLKSZ5IP/gw6BPH3yfaymaZmRinIfY5gq8Tt0zJrYpJfxJ6/GCQalwT27oZ
c4235p6VdJoOGyfJiktKAXKieBXSSA3QKrUfnAYTYpFB9ifscrwnYlmf7HQGCHSUgz90CH73wIL/
TkLj+9ft1TAo5x1F6CpeQZBXylxjMS2IYN1xjJBX+7MWUDgzHlBxWfmn3ZE0bh8B1cW3zOMHrhIM
Gs8ta3MBHru7zlVr0fb55IqJ6ikigBSmt7v+j059zHWlT1jrBjcnEas+RkMdkCYFi9NIFsvpN1ax
zto8UVcduqlOC2g77vf86lqulQV6AT9Y8YBBL2e2yHhAyuYOJQab6B+cdFMwCUomeQ1LlLXvwCjN
mx973s2ybU2+Q7vd/qEIyg+PbGlOcJaavfy1laazXHI2Sg8sySPPbqXa8T2LF8FuzDYq7plPaIUr
AHD0DeLwjYLUndOA3ABa5CNaK4Sh28epU9kbz+zmFbhb5duJzUQq8joUNq/WzMjLMNRFVCLkQStQ
cNAv1MqLOvXVSj9IUPIIfg2pXRe188hSQ8qqDVLwOAsedZdKWobhnI8G37+4PcQwY2nXMd45Cd6k
y6szGqP7lOE1fqlq2sOi+TKbxiv3OBsIzZGB//AQuqltC+zewYpHDkrTd258BLJFSsJmYMc4o7AE
vxVSFa7OnrZt3ugnia7A/sfVD42gUBqRIU3BgbMsHRglucnAIQheMN8wVtco1szfPQfpgPFpNsnb
QUkpKtog4vxQEcHI2xCpZDPmybBtPivWip1n29Jr8WpLLgUP2shh9twUtYEi4jv6vnVfuIpEavg/
jGOHN+B6XXDlrs0J9osKC5DWNfqdKAMXnODkqrV4NdID/BuO/IjM4UfqGiZvD1zihBtOVeWuXUK4
TGDpMgQzrn7GzameWzaEvErnkEjCk0Azz6VqylQDvMSIoAIqspN8XxTUubgREbzqyhXW6HdM+blb
do5cKZZV+QcXtWgFsgEV5wLz6tpPLquOsa2PVIogVUc/wRP/In0ewrcl1HZ7eC+3uj0MzuaiuB8d
FzFW4BoDHLUdhh/Zn5X6J7RNSHBkOwayBDrsRNzAwZWUOubxxm2nDpxz+w0ZErDNMhs3EwsPiXgA
Lk6GQQVaq6VHq9HMe3efOBdEyrKZeaPsg5fj6upmrAZFXffHCeQKEuQh4rsCuI8//QXvuEMbk2p7
GlwEkyHTwAg8DWuT21UUVpEwx+X/ZbXD8tGeGjKZOLbhJNfWJ/4fw31T6qWEEhJhF0GpyKVNpwUc
1gMwzYF3f/Mm/sPV9TAIIEfh8ZpakU3U63SbY5Dm0jThi4bngMfgGSOeo+TMMm2aVsjKSodd3zNu
iXErzZ/vzZAQ22EEjFY7BvObtVx4l7quZJaci/wnYuexaF7JrSANyp/PZTw3PPrV/YcKNOLTbdOn
bqp1qvYv230K1wjs5TiI4v3OVAqxie9sKoNmF085HP8y4ch3XSRZJapuXZMXPEEeU1Hq135EGJLN
HZucM5hGbkfbA51A2QeqoHgP/nER/dmQD6h7bIE2s2AwTVhV9iSBEIOeayaMSwvy4x510lW3ZgA3
gB3SykKHiXo7P3qoq0TVa3ZLt5iPJRkGD/zuqTlaEkuX6kDdtjiSjNUTmGp7rpVbiZ8QROsjLbzr
jl8xeJXY1pntJUshRH4NnyEeylEmb8cUT5ScaG4ZfUGEwXdpjZflgHhPvWoD1RK5XyTPS9X+3WYa
AhF6MLfRwAMLR4r69b7M37Ks4A3U/n/yKCjCasGvi7USVCyT1anJVAS19/hL+Kx1GxW32lr1lIRq
u+cW18PDJjYXm/gey52Sxqi5tg44uVdWsNqYBrKnGc43kxdmvNZ1S0QsNqN7YRwMk43im+a12FEG
HXSdlP2asYAkqOQ1QTcu4OEU5Up79crfbbZdGef2OWOjoNAOwhku9wn+Xh+f+2+5aKWweeKNMepg
FZujyLVbn8OOgUgEzKJ6wnFZxZj+DbQ3a6WhB56HgyPLxrDfywYzdv06cc1PVT55H0MhNZ/N3V2T
JzHQ3BoeVmmyphlW/hoi3+VAtCoAs+XkBR8oVdBmNwe8nyONRm+yKFJG5PHs2yVW4+i3AZKH4cK6
y42jwKbJsJN9cLOR1gLye0DYYpkesQq+dpirGjshCMWaT69gPjY/815mdGnmZRJRbH7HP4ioyXLk
xE75BQEEL1rpIpI4CIjtrcIoOTXcTCWApW9/aLWab4xA5UfjtjXIEFYN//WMwyYE0lC+QuMocvCj
L4BRktMgd2akf5PeEvRYoKwR2p6zxKjmZDVMESP8AAjParW8JLc/KdlOpd3vtx0/M2XvfidOMsVl
NgOKsBSuoxia6GkxVq8jvZTKD+k+95n9O8GCKkz+ztYIrWVk/raKcuzTg51ebMZan44Ytv+TPK3X
7CICuPmWcnIUGHunSfgPJ76hS3tqVHJlRPF0PbVBK05Uc1ACY16BxpTkapYeNf98tlbfKU0qSsK2
Bq3bfw16Rq/XU24uvcQoeg7ByUoK5PezH9KqQOK7LxD2RKc5Ixk/qGhni1iCggVAuzsRT+uIPcqr
fBi53gWtMC+M2CUvvSsP+5/ulnAf5kDae3g7KhyqUuLHyQ0IjigJDmtvQW5yituIh93+PFPUnE3I
Wmyf2+qW08+/siKDfDazXtWNp1OQtefo8OJcvW5ulKHkIpvts2tcZuJANu/fqoDbSu8/CZRi78QK
uyjmF3OymdrFHQ+HjE/1/jfql2jQl5Pa37E8Sm4J8o3byd+8SmCvqYRVIlJX5ODYLHtedx55LRXp
iEZkNLQp6zYT6OqHXjB82p3DAKhnfnetZ8NKualIe6xmBzC/fg9u8281y3OKudOb37BlBUvIsV2w
lqNJ2T26TpxBNLHl+fv9y+3NF28njXC5b9GqaBSZjE3s7XJ+vyL/TLPbafVCWMN0s078E4st15vn
0v8eC2UBsn8Qbjh32OMfQwjMIfOKLhuBbMh7uhetSjo0rrgiCghXBE+Y/pGxhJOx5qERxavxNlvN
Yg3LKFa6bsVevutklOubHZz9qleJocD9FEvLTczUtDtZrsQJjj2OHsr7Tu5TokGQCPEYjtagM6oO
B171bmRnXeDF/ARjqc6UzpNp+NhtoXsdNKS8gbCAsX/pXjcs7tHqfHg8wTVgQ274m38YnvZxRrbA
sbm9mvHH9Ox0iZ5Mw0VJKs6LDvFVlOFE17CxySZJH/M5FENd3pEcWUHoSDszKINnxTCc5Pk/8hE5
mwcDhaDDY/sdmf8j664V/026XO14Oa25gRIdk0fV6Ecf0yfa2k1Ny9t6igUUsY5xCadvsLl9bxf6
NVd60QoiL6Ozo1ZfFuwokCW34LebPSAoq9cOFP8li6kp9fA7MAAhwiAaKaui+GqBnCyjv4lfpKIh
h+R7NHE8vmBX+GblhJvDSk47b7PlvDiKsomTTwoq23gGiEAE3FA9bDvVmfCCWP6dR8ammYkn7Vdz
XrQpX6GFB/PITiCccVvXtRyKgY0xG5LoTFq6PlFQviiaj+AZIXUaq/m9UpzO+T9BCICoQ45lwXLa
INkrOmxC8RzH77OR8HCO9SMJpXSdztrWD0sh0zJDB451UibTUsAFdukZP2wT9N/eMfcAEMwPZR4H
fFQC7JlEf9dWmF09craM4/c9QiVG0NPKx/Amrbo+1XqgyO9MuTpp7eILo2qX270vbXKVKdPWxaJW
PgjQVmbD8EE5te3jnyrTU0lSd0u1TMA5LHprNpKPnaTUIpHCXKdrM10omBQOiJEFnJzmZYADQJE1
EzlKYOlnO7Ef9FNeYok60qYlrINqpLIxBcdbFCoJAQ0FyexhNBQVDT2liS5WBbO3GY68DIakMJ3a
0YMMg01ooNcUYlodEZcUt2++muAzHs6kaiMJ2EInCAGMOMZg7WlsXrbpeu40U4JqwK7C5NaKZEt2
Dr+mzOwa/ZIGO1h2vmfBvl8mtabLDNCJLMgk2H7qWNzuF93ZU3bmRlnw8H9dy99zKHFcLLVwXmPO
7Nd+Sg9JujLdgFOb0GkK8UjyK64PVFcHXDhUZGFauS+9OnK6HmaQ0lC7icV5b2bk6JTE29EP0NBI
z6vV6va4NACXjq2OyHXiC9QA7xQb+UUFf2kMIIf0OIHabnbPG2L2Q6GTeqNkjQLwjnUpoYFtFYlT
vKwBktXz5iJ3YUEvFB/tjxJk1KMKa0vpH9Vm8BeM3wO+SV45qUSox1BHjt0V4H71S0DQOWx+PV2e
S+CJOgznZIdqGiWkgKbviwhEBzR5NO4WTqvnymZD2adkJcUkJju52fxW+btcIHr35eZq1dVVFkSa
jjUQr0T8CZN8vmvf12i+KrjJuc2d4kiO4GjCCBBV2zOJgj7NgHlqCat1zZPXBvhvYPK2k65RfZiO
9LYmE3N56llxQXNHNXvd7kqu5lGVjNEe4z51ekhSMkppraXTZ1i5uU6fQ+b1tXzAakfgCRwuCs7F
XEsJfYaI4Fx+2+L7nBmOqMSbSfPV1VWNPQoQTWllg7inkgXSmlvP1iRiwMPwD59MXjm94/1CMDY6
xwsrZFNySWeMwcCH/z9/OiRZxWKkCCG3NjcbRVcTlEzZYu6EIJn4AWB/RtdwUX42E/FTqmrDPv5j
7qQaB2pzWrh9aSSfritxMYrYQVNJN63wLfgyUrncopPC+WXHVR96AQ8lyIC3MO+8RIaxelURCv3B
iD2+Sx/NZTJw00D5+iWv25fKm4qo8l9T3KPHYCDDR4cgkOqzkRT/sMkETGo6RgXIa4euQsHYouh0
bBrnqtV4wuhbyqsy2HIHqLrmvGMKCU09bYJbtWGw35fp7ee2mgBjMvZAyiCyM8bu3OyNVBq9oIRx
a0ri/n0+9COlfjCDWk3GmqveAZwn46DdasjH5qshr5o5+DMt8jVDGEhd/JHcftUPJFm8pThgXlvb
oV3Xfmwk5sQJjgsQSqIPCUvV+Q5axN0U/jcnM/p6g0lIK/jFm6eb3meTI5yBS/TvYnPzaC7+6BHs
nQZQDRQmPJtJkWt+EveQLx1bpE3PrQSQur+r7Cd90e/dPRUWEatN8CKq8kKGKbfqn9lJWurc07fP
F5rJYT3KDwYu1bzkPlLLGVfQ7QB7yaoo4tHdzP/Y5vcr4lmCJBkkoqm8iutWKD89oapIvSJOiBFB
wadbr0ChTkRWh7iCGCI1vnrsvU2pkBmO8Ql0c8EiI77W+KiH1g/lNCz0oG0TpDkg6CqvjEH+Fmhv
yF5jY5fuR/sBNHnkco9hb19LXNR2u7PCKMORPYrzlsYI0XFJKBnf7Cy9h2DU1MhZYyNW2jbtzbQS
MXeVeaMhndaG0dTWk5LIiUAjCMZfEZP1e2MYfi4dgBg1zU+kTDlnHtmOS2VeG/XrC/RiYE90nEVi
9xjefAkU9P5CwVUA98hZfMumFFfsqu97YiKWPWnVofgrHZA7ajAlopea2GR2z1cALkD8uBZVnNaZ
5BKU4VmOtg5Y/dnHc26ys2oQ7HAExiyl2ITM4NOdduQwxxJ88cqX01JzhINayIt+i1gSDrpEemcO
5PbJpoStXsE0jJIIgvk0DgM5wJNnjmsQU3dUMcfuXM8GBOfgKaCuGA0LauHBjzUOFJ2QyeRTXQtW
P8c4hnCAAvZhC4oqIb65T+KF4we5n3vIkzfk9ys9Af+fEUlOWRKkUosmTn6ar4tCNKlmYtZ2im/n
la2BCT7zTURkWxbkGxXwjoOtxskkffg9H8JrKS90MT6IVB++rrU+A7kVPRAsHVYGFRYnZZwfWDsz
2BpkRaBnI6EgTrTh0GahENJAjvfdEGmYn1MwJIxlxi3scbEsLy4XJdVevt5XIPa7Q7EDt5yq97P/
bjBpbqnjRr5vmZdh3CNnPT6dYB4nxSnHcbNn3UAPRiGwgY0JQ0z4zG6V12EZfGGJ4HPgaHVjAqks
XbHlXBGfIBjwiGUUngGJ4TWtsJhhkH8mOhcl8Cd4VSBkaayU8MphxPNefetQFRiTkQB1CQm4zuGm
xIgPUCxCyHUjqL1eEIvujSGalWDg7JKt/nbk6wg0AZf3FlL+Ovix5hQbiqpRRbaFZilHa68olrPJ
ryh3hm4IqrEz2Q/NHvYS9q9rey/5xLpDIdbXC43R465CaccCtRJTAA62R/lKZ2a1khL2C0HH01NY
Mm+lHEtWDUv55UsVqQ5nOrruPvWu9fJNsHi3S0ngKnT6HFByeF5qSJLnurk+fiKYKMLcDxpTY97+
62aQKlc48FC5/4Txw/WPhQaieGqp64j3mCV/CfOMjdjOCNniixpebt7t2LJHYnEH0FafEMN5TTEi
p1kC688HVNyBZGKDpGRNjGUftueR1/IJDlaqOITY+974cpUeLHe7n3QAsLaB6Njw+cIaTjVxN4zG
hOBvl3Bog4qzglV5AqoiEt50iHeE9PVmj4rT7wIX2nIqgUAuc3KLhgCYql/nhdg+5JqL6hUE29s9
852EOxlBg6ruC8bz6IO0racPUkD1J1XWTDvQH1aRN0R3einLmoNzonpNAsdfl+EReVcqfes8Drr3
7/atCNWZIPs8D1QnDzWVY1SY9/UsVZCncL/KaZ4uaaI4obhM/Fs/1X0G6OpOHn5sltDXsftn0QCs
Z86uh2oqvctMDn4GmMxzsLKgeBrUJ1flrr4dZxH9bGDvSx3xihMY06sv5ykBx/Q8qQSV+H0B7Qwd
GXal8sJjzm0YzpjoFoTDxa605yW8YyT4khytvGqS6kt3WW10l8Oh80pwBUHvHE7lr9dA3P60/pFG
WlzueYJWYn8lbOed93nqoguQ136iovwkGGZC1JfSa4bahGfSGsp9WcqXMDqcmzx6f7+8bD/Wh5qG
YaQwefJoF563p9oxk9qXiXQ1pREAbCzMNVJMgY1NZlWkdw+01shYkqQMBEK4YJRiBUZ7Xuu/T7TU
Xg+FUrfTp5s3dK/XPDYAfdllIJSc0q3ID4btn9wu4hWWWLm2Q/zk+eJsQ70PYHpbpCwve9ffYTRk
NKtUuBtdJDkPc3kaNr2IsQoZMwyvMmjhFsy0eulVqT5plRQb0N4joaIZMcAPfarSQrOjhzL0iXj8
S9cuI43lWXg3mEFCFZVXJ+SKSBpXrN6ojrOmFW5Hk1MvpYnRjM4jbKhODOOA24zQ3LBAEhVvMBcC
NlhU/6zdVFLGjxplk1InoIHMH4K2rhH5etKCngoSE0iL01KdS5C4V8wM1zthlfnFkcLoqVYc8AWt
D54+L9/a+JT0jjjwtKbtnDK+oADfM6bCzi/aWb2j+uWy9qtsOJWxZ8VysendtP5KaJzi/dM+yp7M
aWPCHwzyMOjJqu+8hDTyaYfdmoCOOkVwHVV7yyh0NxFVZr+VwNd2z/jAN59FlbthgjUdt5BWaanK
k5j+ZJ24KLzFz2NnUMg3PkzjKKgApiXeldlkyNvMME8f4df4gzN4F8uV9H01wSmKbTBA8FZD/UFc
um6g70Le7GNQCWpAEwjqMF+Y0jPu5tnAi4+/BVkwpsLtuebQVprVtPxOwAO/QmjMBnEf59vS0ohk
j644C9cbacooOMJeg/cQi1QOpPz+bWYUHLEB9+p1PSChZaarjdkmzbpQgh4dNjDEz/aWYULtsmQm
W/TzlASZzRwqQiztKQRoBhG9j5v8YqNhtaUikzUG4BgjZi4AWFwKWSABHvGm4Y1NL91+3EY5ZGte
CpZzjtzlO4jLvY/IDDM3eZi+mRScSGQmN97N8N5gj+/TTeZmFI0Dnp0Zoq+2gb3KM+7P3GEe1p7D
YGbV73a2wmTu52Yk6kv3EfSrMyvO3hGisyEJ3pQDIec9hryvsyZDORyOBIGskh0Nv4/AGYVXrT64
e1HLew3cQjDzx0nQSektAF/6RdgZYaCWN4otV4qdroAC6Pca6NhpMvuX3ANhIqObJhhQltefo9xg
7hHJ1CF34l/8BOa6DxoL8PfMfpZRkJZCxpvey8/+XIW5paSZrfx8J9DPFUmMyEyyT7uYvAUv3xai
dvdBGFa1bhDmYAK3v79dTJjwphe8Oo4u6S94rAllGfUNhrXh26ggLgI0AwaYQVhSKTyYK8O2uVvN
JR60Zo3kGcTANbf199Ou/+hkXXrhOEbX7hap6LVfHPuLt44fTFCYBvA2lQycT3foi4yviNlvo78y
8tb/ZWJenBwqHaxAD1l6W9Lw2hqFz4Uw9SKQbJtr03BMVXhoRf7DqccYl1e4B2cPVNneDsd7Cnlm
53Z4QNLc7+sVAkElrScxlsacgVQK+mNcqqCTWr6Mqq+oWYHVBTvSSC5qWvNF5Q4n7wtd/8RHEt01
oJ95ZYqFLcIAPX6C9MoufXGkBuGXrFOyh+Tye9blkTZa4nH5yh+efZ7FwBLml+vP4jUO6eYD+ONt
oNMrccYPCCYEF0GNael7kax3gFWUpc7E4zmIN8VOt24e3NZYirn4QY7B1CiVV/rT9NjQh4b7ZAoq
7Mn2Xdadu+4gcqHnTvTQlQBOT/k2YthSMSEdb3oOe4dbEaEE+o0kZ57VqMCEJE6AZO2dgXQmJts2
BDBpGmg1VFF9G4QpkK02LcZ5AIH4kGlxt26/gnRnVJShg999DrLe16omcxNaKxv/6qZ+n52dk6mR
KdT2MSLORcrQO6qeU1LJVTGtLXB2BrEcSaFIzMCr0kGx8WwHwXiruOhnNQA8EXZuRLKMrLQuIOBk
oKwW7vLQ1N1ihBW2FwQdnYROQz3rdTbZmDiHLWcUwCqemUqZd1xEdgch/BVkn/LtjuraI320A/5d
v/8d51KRQkW+2xPT9GVezYAkpOkf6X9EfK3XBaJSaz95h2fWRAGVxfhOMc4YIV0CwAQkSUvDibXY
6wUndBK6L7kvoPecWdqFrSoQQrUDqU56JlBr4r3VCRF/4QV3D+qCsaS3p1tZEGzRSQuqUjmfagBa
tKuha5hHEKPmYsacmNSZus1wXilspRNJXaGYobO7OtxfrYSd0olaOC1YAv9z+MleTq6dghyhwuHy
Gwj5ukNhwq3+mK3XZNipfpL9t7puIsmXFl+qYO6FM3g7Y72x3wF2Rdfjn2K8+jR3sQYC2+agnY6u
viXClt6pD0e40YmWlPysmXo/35PrNkFiLHab4KL2M8XnjGp8LLVk2tELwpFVddjoubl5UiABWfrV
VpptpQpkaTkoJedfQE46lcVrDCaixortPoLYU2B1ACCGLg3t+WNKtGKn2Ns7rBk4DFWptWWJUCLZ
FOht5PfIUOnP0X97h4gzoLS+w2PSaCTJ9YJkKDvgKkEkdtjxWJXEYGlrOpk1CBbTep8HK1BXeY4A
dbSyGDtdaXGrq2Ga/JI0jqAy1El2itVn5GY1xRkmXR4Wq2iJqRHYrAqkP+IgGcOqGY+d5KOi3mjB
WOu5/V7x3KkOOZ3Is3fMv/5YGBU6YFiZ0cAlRGcKstLAlySV9JCc+4cbb/peKDbpJ8OaalQc8YiN
djH33A2arYVkfmrpmWbVnrXTW+k6DTJ7WEz4gv130UjZlbIN
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

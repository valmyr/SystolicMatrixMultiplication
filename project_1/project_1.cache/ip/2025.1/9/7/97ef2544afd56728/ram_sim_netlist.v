// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 16:39:27 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  output rsta_busy;

  wire [3:0]addra;
  wire clka;
  wire [63:0]dina;
  wire [63:0]douta;
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
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.06595 mW" *) 
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
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34064)
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

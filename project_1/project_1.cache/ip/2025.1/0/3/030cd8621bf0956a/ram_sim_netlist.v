// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 16:23:29 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  output rsta_busy;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34272)
`pragma protect data_block
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
de0x8N5IXYi77JJ31lz5
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

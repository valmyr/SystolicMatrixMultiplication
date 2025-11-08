// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 18:36:11 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  output rsta_busy;

  wire [4:0]addra;
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
        .ena(ena),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34080)
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

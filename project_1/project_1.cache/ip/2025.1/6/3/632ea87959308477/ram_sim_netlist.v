// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 19:03:32 2025
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
  (* C_READ_DEPTH_A = "30" *) 
  (* C_READ_DEPTH_B = "30" *) 
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
  (* C_WRITE_DEPTH_A = "30" *) 
  (* C_WRITE_DEPTH_B = "30" *) 
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

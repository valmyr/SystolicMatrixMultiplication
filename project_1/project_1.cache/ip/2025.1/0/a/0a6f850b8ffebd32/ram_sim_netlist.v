// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 17:10:31 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34144)
`pragma protect data_block
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
uA==
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

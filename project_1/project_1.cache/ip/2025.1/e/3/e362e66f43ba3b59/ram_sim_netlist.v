// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 17:16:19 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34144)
`pragma protect data_block
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
XA==
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

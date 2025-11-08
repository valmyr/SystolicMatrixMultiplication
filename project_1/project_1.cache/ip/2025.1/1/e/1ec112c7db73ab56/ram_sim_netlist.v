// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 16:51:19 2025
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
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
Hw==
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 20:25:49 2025
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
  (* C_INIT_FILE = "ram_single_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "127" *) 
  (* C_READ_DEPTH_B = "127" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "127" *) 
  (* C_WRITE_DEPTH_B = "127" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34224)
`pragma protect data_block
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
/B30Dpi49Kdx/bmTHwMYc2KutPAziIp+
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

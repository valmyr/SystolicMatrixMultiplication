// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 17:03:36 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
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
  wire [7:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "8" *) 
  (* C_WEB_WIDTH = "8" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34128)
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

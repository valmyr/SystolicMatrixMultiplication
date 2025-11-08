// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 14:20:45 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;
  output rsta_busy;

  wire [6:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
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
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.4011 mW" *) 
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
  (* C_READ_DEPTH_A = "127" *) 
  (* C_READ_DEPTH_B = "127" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "127" *) 
  (* C_WRITE_DEPTH_B = "127" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58512)
`pragma protect data_block
+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
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

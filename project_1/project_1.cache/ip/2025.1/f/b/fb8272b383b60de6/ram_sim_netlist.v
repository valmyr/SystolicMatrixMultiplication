// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 20:16:46 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;
  output rsta_busy;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
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
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58448)
`pragma protect data_block
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
pqG5SWqx44gGjLOu2A0z6UboUdH1xLU=
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

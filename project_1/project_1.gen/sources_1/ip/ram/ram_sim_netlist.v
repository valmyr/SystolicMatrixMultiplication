// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Nov  7 20:16:46 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.gen/sources_1/ip/ram/ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ram
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
  ram_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58160)
`pragma protect data_block
+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
kv5qyPExu0N1ccXMVVpRHmEphS8=
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

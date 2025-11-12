// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Nov 10 09:05:58 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;
  output rsta_busy;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_INIT_FILE = "ram_single_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "255" *) 
  (* C_READ_DEPTH_B = "255" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "255" *) 
  (* C_WRITE_DEPTH_B = "255" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58560)
`pragma protect data_block
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
KnpYsqU86YtEK7LAXmenaSU0s1I7
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

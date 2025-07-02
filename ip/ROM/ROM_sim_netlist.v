// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Jul  1 22:49:11 2025
// Host        : SAJE283B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ROM -prefix
//               ROM_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ROM
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [17:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [17:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7928 mW" *) 
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
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "18" *) 
  (* C_READ_DEPTH_B = "18" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
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
  (* C_WRITE_DEPTH_A = "18" *) 
  (* C_WRITE_DEPTH_B = "18" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[17:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
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

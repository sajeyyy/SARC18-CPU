// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Jul  1 22:47:32 2025
// Host        : SAJE283B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               x:/SARC18-CPU/vivado_project/vivado_project.gen/sources_1/ip/RAM/RAM_sim_netlist.v
// Design      : RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RAM
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "RAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20128)
`pragma protect data_block
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
Ko+7nAMnvw==
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

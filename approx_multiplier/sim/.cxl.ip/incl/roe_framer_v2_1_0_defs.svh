////------------------------------------------------------------------------------
////  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
////
////  This file contains confidential and proprietary information
////  of Xilinx, Inc. and is protected under U.S. and
////  international copyright and other intellectual property
////  laws.
////
////  DISCLAIMER
////  This disclaimer is not a license and does not grant any
////  rights to the materials distributed herewith. Except as
////  otherwise provided in a valid license issued to you by
////  Xilinx, and to the maximum extent permitted by applicable
////  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
////  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
////  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
////  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
////  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
////  (2) Xilinx shall not be liable (whether in contract or tort,
////  including negligence, or under any other theory of
////  liability) for any loss or damage of any kind or nature
////  related to, arising under or in connection with these
////  materials, including for any direct, or any indirect,
////  special, incidental, or consequential loss or damage
////  (including loss of data, profits, goodwill, or any type of
////  loss or damage suffered as a result of any action brought
////  by a third party) even if such damage or loss was
////  reasonably foreseeable or Xilinx had been advised of the
////  possibility of the same.
////
////  CRITICAL APPLICATIONS
////  Xilinx products are not designed or intended to be fail-
////  safe, or for use in any application requiring fail-safe
////  performance, such as life-support or safety devices or
////  systems, Class III medical devices, nuclear facilities,
////  applications related to the deployment of airbags, or any
////  other applications that could lead to death, personal
////  injury, or severe property or environmental damage
////  (individually and collectively, "Critical
////  Applications"). Customer assumes the sole risk and
////  liability of any use of Xilinx products in Critical
////  Applications, subject only to applicable laws and
////  regulations governing limitations on product liability.
////
////  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
////  PART OF THIS FILE AT ALL TIMES.
////------------------------------------------------------------------------------

`ifndef ROE_FRAMER_DEFS

// possible Ethernet_Types:
`define ETH_TYPE_ECPRI          16'hAEFE
`define ETH_TYPE_1914_3         16'hFC3D        //released on 14/11/2017
`define ETH_TYPE_IP             16'h0800

// ECPRI Message_Type table:
`define ECPRI_MESSAGE_TYPE_IQ_DATA      8'h00   //used for both time and frequency domain samples
`define ECPRI_MESSAGE_TYPE_BIT_SEQ      8'h01
`define ECPRI_MESSAGE_TYPE_RT_CTRL      8'h02
`define ECPRI_MESSAGE_TYPE_GENERIC_DT   8'h03
`define ECPRI_MESSAGE_TYPE_REMOTE_MA    8'h04
`define ECPRI_MESSAGE_TYPE_ONE_WAY_D    8'h05
`define ECPRI_MESSAGE_TYPE_REMOTE_RES   8'h06
`define ECPRI_MESSAGE_TYPE_EV_INDIC     8'h07

// default FRAMER Data Port Mapping :
// [25:24]  Ethernet Port to be used
// [23:16]  Message_Type (ECPRI) | PKT_Type (IEEE)
// [15: 0]  PC_ID (ECPRI) | [7:0]  Flow_ID (IEEE)
`define DATA_PORT_0_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0080}
`define DATA_PORT_1_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0081}
`define DATA_PORT_2_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0082}
`define DATA_PORT_3_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0083}
`define DATA_PORT_4_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0084}
`define DATA_PORT_5_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0085}
`define DATA_PORT_6_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0086}
`define DATA_PORT_7_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0087}
`define DATA_PORT_8_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0088}
`define DATA_PORT_9_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0089}
`define DATA_PORT_10_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008a}
`define DATA_PORT_11_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008b}
`define DATA_PORT_12_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008c}
`define DATA_PORT_13_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008d}
`define DATA_PORT_14_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008e}
`define DATA_PORT_15_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h008f}
`define DATA_PORT_16_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0090}
`define DATA_PORT_17_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0091}
`define DATA_PORT_18_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0092}
`define DATA_PORT_19_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0093}
`define DATA_PORT_20_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0094}
`define DATA_PORT_21_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0095}
`define DATA_PORT_22_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0096}
`define DATA_PORT_23_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0097}
`define DATA_PORT_24_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0098}
`define DATA_PORT_25_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h0099}
`define DATA_PORT_26_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009a}
`define DATA_PORT_27_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009b}
`define DATA_PORT_28_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009c}
`define DATA_PORT_29_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009d}
`define DATA_PORT_30_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009e}
`define DATA_PORT_31_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h009f}
`define DATA_PORT_32_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a0}
`define DATA_PORT_33_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a1}
`define DATA_PORT_34_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a2}
`define DATA_PORT_35_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a3}
`define DATA_PORT_36_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a4}
`define DATA_PORT_37_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a5}
`define DATA_PORT_38_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a6}
`define DATA_PORT_39_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a7}
`define DATA_PORT_40_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a8}
`define DATA_PORT_41_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00a9}
`define DATA_PORT_42_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00aa}
`define DATA_PORT_43_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ab}
`define DATA_PORT_44_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ac}
`define DATA_PORT_45_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ad}
`define DATA_PORT_46_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ae}
`define DATA_PORT_47_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00af}
`define DATA_PORT_48_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b0}
`define DATA_PORT_49_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b1}
`define DATA_PORT_50_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b2}
`define DATA_PORT_51_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b3}
`define DATA_PORT_52_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b4}
`define DATA_PORT_53_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b5}
`define DATA_PORT_54_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b6}
`define DATA_PORT_55_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b7}
`define DATA_PORT_56_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b8}
`define DATA_PORT_57_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00b9}
`define DATA_PORT_58_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ba}
`define DATA_PORT_59_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00bb}
`define DATA_PORT_60_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00bc}
`define DATA_PORT_61_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00bd}
`define DATA_PORT_62_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00be}
`define DATA_PORT_63_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00bf}
`define DATA_PORT_64_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c0}
`define DATA_PORT_65_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c1}
`define DATA_PORT_66_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c2}
`define DATA_PORT_67_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c3}
`define DATA_PORT_68_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c4}
`define DATA_PORT_69_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c5}
`define DATA_PORT_70_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c6}
`define DATA_PORT_71_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c7}
`define DATA_PORT_72_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c8}
`define DATA_PORT_73_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00c9}
`define DATA_PORT_74_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ca}
`define DATA_PORT_75_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00cb}
`define DATA_PORT_76_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00cc}
`define DATA_PORT_77_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00cd}
`define DATA_PORT_78_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ce}
`define DATA_PORT_79_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00cf}
`define DATA_PORT_80_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d0}
`define DATA_PORT_81_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d1}
`define DATA_PORT_82_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d2}
`define DATA_PORT_83_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d3}
`define DATA_PORT_84_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d4}
`define DATA_PORT_85_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d5}
`define DATA_PORT_86_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d6}
`define DATA_PORT_87_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d7}
`define DATA_PORT_88_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d8}
`define DATA_PORT_89_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00d9}
`define DATA_PORT_90_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00da}
`define DATA_PORT_91_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00db}
`define DATA_PORT_92_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00dc}
`define DATA_PORT_93_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00dd}
`define DATA_PORT_94_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00de}
`define DATA_PORT_95_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00df}
`define DATA_PORT_96_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e0}
`define DATA_PORT_97_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e1}
`define DATA_PORT_98_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e2}
`define DATA_PORT_99_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e3}
`define DATA_PORT_100_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e4}
`define DATA_PORT_101_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e5}
`define DATA_PORT_102_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e6}
`define DATA_PORT_103_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e7}
`define DATA_PORT_104_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e8}
`define DATA_PORT_105_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00e9}
`define DATA_PORT_106_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ea}
`define DATA_PORT_107_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00eb}
`define DATA_PORT_108_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ec}
`define DATA_PORT_109_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ed}
`define DATA_PORT_110_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ee}
`define DATA_PORT_111_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ef}
`define DATA_PORT_112_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f0}
`define DATA_PORT_113_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f1}
`define DATA_PORT_114_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f2}
`define DATA_PORT_115_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f3}
`define DATA_PORT_116_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f4}
`define DATA_PORT_117_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f5}
`define DATA_PORT_118_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f6}
`define DATA_PORT_119_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f7}
`define DATA_PORT_120_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f8}
`define DATA_PORT_121_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00f9}
`define DATA_PORT_122_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00fa}
`define DATA_PORT_123_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00fb}
`define DATA_PORT_124_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00fc}
`define DATA_PORT_125_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00fd}
`define DATA_PORT_126_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00fe}
`define DATA_PORT_127_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_IQ_DATA, 16'h00ff}

// default FRAMER Control Port Mapping :
// [25:24]  Ethernet Port to be used
// [23:16]  Message_Type (ECPRI) | PKT_Type (IEEE)
// [15: 0]  PC_ID (ECPRI) | [7:0]  Flow_ID (IEEE)
`define CTRL_PORT_0_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0080}
`define CTRL_PORT_1_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0081}
`define CTRL_PORT_2_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0082}
`define CTRL_PORT_3_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0083}
`define CTRL_PORT_4_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0084}
`define CTRL_PORT_5_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0085}
`define CTRL_PORT_6_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0086}
`define CTRL_PORT_7_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0087}
`define CTRL_PORT_8_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0088}
`define CTRL_PORT_9_DEFAULT_MAPPING     {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0089}
`define CTRL_PORT_10_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008a}
`define CTRL_PORT_11_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008b}
`define CTRL_PORT_12_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008c}
`define CTRL_PORT_13_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008d}
`define CTRL_PORT_14_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008e}
`define CTRL_PORT_15_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h008f}
`define CTRL_PORT_16_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0090}
`define CTRL_PORT_17_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0091}
`define CTRL_PORT_18_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0092}
`define CTRL_PORT_19_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0093}
`define CTRL_PORT_20_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0094}
`define CTRL_PORT_21_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0095}
`define CTRL_PORT_22_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0096}
`define CTRL_PORT_23_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0097}
`define CTRL_PORT_24_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0098}
`define CTRL_PORT_25_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h0099}
`define CTRL_PORT_26_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009a}
`define CTRL_PORT_27_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009b}
`define CTRL_PORT_28_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009c}
`define CTRL_PORT_29_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009d}
`define CTRL_PORT_30_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009e}
`define CTRL_PORT_31_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h009f}
`define CTRL_PORT_32_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a0}
`define CTRL_PORT_33_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a1}
`define CTRL_PORT_34_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a2}
`define CTRL_PORT_35_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a3}
`define CTRL_PORT_36_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a4}
`define CTRL_PORT_37_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a5}
`define CTRL_PORT_38_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a6}
`define CTRL_PORT_39_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a7}
`define CTRL_PORT_40_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a8}
`define CTRL_PORT_41_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00a9}
`define CTRL_PORT_42_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00aa}
`define CTRL_PORT_43_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ab}
`define CTRL_PORT_44_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ac}
`define CTRL_PORT_45_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ad}
`define CTRL_PORT_46_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ae}
`define CTRL_PORT_47_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00af}
`define CTRL_PORT_48_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b0}
`define CTRL_PORT_49_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b1}
`define CTRL_PORT_50_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b2}
`define CTRL_PORT_51_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b3}
`define CTRL_PORT_52_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b4}
`define CTRL_PORT_53_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b5}
`define CTRL_PORT_54_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b6}
`define CTRL_PORT_55_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b7}
`define CTRL_PORT_56_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b8}
`define CTRL_PORT_57_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00b9}
`define CTRL_PORT_58_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ba}
`define CTRL_PORT_59_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00bb}
`define CTRL_PORT_60_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00bc}
`define CTRL_PORT_61_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00bd}
`define CTRL_PORT_62_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00be}
`define CTRL_PORT_63_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00bf}
`define CTRL_PORT_64_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c0}
`define CTRL_PORT_65_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c1}
`define CTRL_PORT_66_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c2}
`define CTRL_PORT_67_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c3}
`define CTRL_PORT_68_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c4}
`define CTRL_PORT_69_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c5}
`define CTRL_PORT_70_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c6}
`define CTRL_PORT_71_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c7}
`define CTRL_PORT_72_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c8}
`define CTRL_PORT_73_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00c9}
`define CTRL_PORT_74_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ca}
`define CTRL_PORT_75_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00cb}
`define CTRL_PORT_76_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00cc}
`define CTRL_PORT_77_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00cd}
`define CTRL_PORT_78_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ce}
`define CTRL_PORT_79_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00cf}
`define CTRL_PORT_80_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d0}
`define CTRL_PORT_81_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d1}
`define CTRL_PORT_82_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d2}
`define CTRL_PORT_83_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d3}
`define CTRL_PORT_84_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d4}
`define CTRL_PORT_85_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d5}
`define CTRL_PORT_86_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d6}
`define CTRL_PORT_87_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d7}
`define CTRL_PORT_88_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d8}
`define CTRL_PORT_89_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00d9}
`define CTRL_PORT_90_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00da}
`define CTRL_PORT_91_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00db}
`define CTRL_PORT_92_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00dc}
`define CTRL_PORT_93_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00dd}
`define CTRL_PORT_94_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00de}
`define CTRL_PORT_95_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00df}
`define CTRL_PORT_96_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e0}
`define CTRL_PORT_97_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e1}
`define CTRL_PORT_98_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e2}
`define CTRL_PORT_99_DEFAULT_MAPPING    {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e3}
`define CTRL_PORT_100_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e4}
`define CTRL_PORT_101_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e5}
`define CTRL_PORT_102_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e6}
`define CTRL_PORT_103_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e7}
`define CTRL_PORT_104_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e8}
`define CTRL_PORT_105_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00e9}
`define CTRL_PORT_106_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ea}
`define CTRL_PORT_107_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00eb}
`define CTRL_PORT_108_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ec}
`define CTRL_PORT_109_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ed}
`define CTRL_PORT_110_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ee}
`define CTRL_PORT_111_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ef}
`define CTRL_PORT_112_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f0}
`define CTRL_PORT_113_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f1}
`define CTRL_PORT_114_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f2}
`define CTRL_PORT_115_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f3}
`define CTRL_PORT_116_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f4}
`define CTRL_PORT_117_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f5}
`define CTRL_PORT_118_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f6}
`define CTRL_PORT_119_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f7}
`define CTRL_PORT_120_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f8}
`define CTRL_PORT_121_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00f9}
`define CTRL_PORT_122_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00fa}
`define CTRL_PORT_123_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00fb}
`define CTRL_PORT_124_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00fc}
`define CTRL_PORT_125_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00fd}
`define CTRL_PORT_126_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00fe}
`define CTRL_PORT_127_DEFAULT_MAPPING   {2'b00, `ECPRI_MESSAGE_TYPE_RT_CTRL, 16'h00ff}

`endif
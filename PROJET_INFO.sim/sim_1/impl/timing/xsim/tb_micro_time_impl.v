// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 14 18:11:15 2025
// Host        : PC-PORTABLE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/chour/Documents/INSA/yadp/PROJET_INFO.sim/sim_1/impl/timing/xsim/tb_micro_time_impl.v
// Design      : micro
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module counter_heightbits
   (stall_pipeline_reg,
    Q,
    reset_sync_reg,
    D,
    \internal_counter_reg[1]_0 ,
    \internal_counter_reg[0]_0 ,
    \internal_counter_reg[0]_1 ,
    \internal_counter_reg[1]_1 ,
    \internal_counter_reg[3]_0 ,
    out,
    \dout_reg[8] ,
    SS,
    clk_led_OBUF_BUFG);
  output stall_pipeline_reg;
  output [6:0]Q;
  output reset_sync_reg;
  output [3:0]D;
  output \internal_counter_reg[1]_0 ;
  output \internal_counter_reg[0]_0 ;
  output \internal_counter_reg[0]_1 ;
  output \internal_counter_reg[1]_1 ;
  output \internal_counter_reg[3]_0 ;
  input out;
  input \dout_reg[8] ;
  input [0:0]SS;
  input clk_led_OBUF_BUFG;

  wire [3:0]D;
  wire [6:0]Q;
  wire [0:0]SS;
  wire clk_led_OBUF_BUFG;
  wire \dout[25]_i_2_n_0 ;
  wire \dout_reg[8] ;
  wire [7:0]internal_counter;
  wire \internal_counter[7]_i_2_n_0 ;
  wire \internal_counter_reg[0]_0 ;
  wire \internal_counter_reg[0]_1 ;
  wire \internal_counter_reg[1]_0 ;
  wire \internal_counter_reg[1]_1 ;
  wire \internal_counter_reg[3]_0 ;
  wire out;
  wire [7:7]program_counter;
  wire reset_sync_reg;
  wire stall_pipeline_reg;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \dout[10]_i_1 
       (.I0(Q[3]),
        .I1(\dout[25]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00082000)) 
    \dout[16]_i_1 
       (.I0(\dout[25]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00088000)) 
    \dout[17]_i_1 
       (.I0(Q[0]),
        .I1(\dout[25]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \dout[24]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\internal_counter_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00202800)) 
    \dout[25]_i_1 
       (.I0(\dout[25]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \dout[25]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(program_counter),
        .I3(Q[6]),
        .O(\dout[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0438)) 
    \dout[26]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\internal_counter_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \dout[27]_i_1 
       (.I0(\dout_reg[8] ),
        .I1(Q[6]),
        .I2(program_counter),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(reset_sync_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \dout[27]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\internal_counter_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \dout[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\internal_counter_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h10)) 
    \dout[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\internal_counter_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \internal_counter[0]_i_1 
       (.I0(Q[0]),
        .O(internal_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \internal_counter[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(internal_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \internal_counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(internal_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \internal_counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(internal_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \internal_counter[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(internal_counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \internal_counter[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(internal_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \internal_counter[6]_i_1 
       (.I0(Q[6]),
        .I1(\internal_counter[7]_i_2_n_0 ),
        .O(internal_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \internal_counter[7]_i_1 
       (.I0(program_counter),
        .I1(\internal_counter[7]_i_2_n_0 ),
        .I2(Q[6]),
        .O(internal_counter[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \internal_counter[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\internal_counter[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[2]),
        .Q(Q[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[3]),
        .Q(Q[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[4]),
        .Q(Q[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[5]),
        .Q(Q[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[6]),
        .Q(Q[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(stall_pipeline_reg),
        .D(internal_counter[7]),
        .Q(program_counter),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \rom_fetched[27]_i_1 
       (.I0(out),
        .O(stall_pipeline_reg));
endmodule

(* ECO_CHECKSUM = "72c5ebbe" *) (* keep_hierarchy = "yes" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module micro
   (clk_external,
    rst,
    leds,
    pc_leds,
    clk_led,
    seg,
    an);
  input clk_external;
  input rst;
  output [7:0]leds;
  output [6:0]pc_leds;
  output clk_led;
  output [6:0]seg;
  output [3:0]an;

  wire [7:0]\alu_inst/data0 ;
  wire [7:0]\alu_inst/data1 ;
  wire [6:0]\alu_inst/data3 ;
  wire \alu_inst/data5 ;
  wire \alu_inst/ltOp ;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clear;
  wire clk_external;
  wire clk_led;
  wire clk_led_OBUF;
  wire clk_led_OBUF_BUFG;
  wire \di_in_a_reg_n_0_[0] ;
  wire \di_in_a_reg_n_0_[1] ;
  wire [2:0]di_in_b;
  wire [0:0]di_in_c;
  wire \di_in_op_reg_n_0_[0] ;
  wire \di_in_op_reg_n_0_[1] ;
  wire \di_in_op_reg_n_0_[2] ;
  wire \di_in_op_reg_n_0_[3] ;
  wire [1:0]ex_in_a;
  wire [7:0]ex_in_b;
  wire \ex_in_b[0]_i_1_n_0 ;
  wire \ex_in_b[1]_i_1_n_0 ;
  wire \ex_in_b[2]_i_1_n_0 ;
  wire \ex_in_b[3]_i_1_n_0 ;
  wire \ex_in_b[4]_i_1_n_0 ;
  wire \ex_in_b[5]_i_1_n_0 ;
  wire \ex_in_b[6]_i_1_n_0 ;
  wire \ex_in_b[6]_i_2_n_0 ;
  wire \ex_in_b[6]_i_3_n_0 ;
  wire \ex_in_b[7]_i_3_n_0 ;
  wire \ex_in_b[7]_i_4_n_0 ;
  wire \ex_in_b_reg[7]_i_2_n_0 ;
  wire [7:0]ex_in_c;
  wire [3:0]ex_in_op;
  wire [7:0]leds;
  wire \leds[7]_i_1_n_0 ;
  wire [7:0]leds_OBUF;
  wire [1:0]mem_in_a;
  wire [7:0]mem_in_b;
  wire \mem_in_b[0]_i_10_n_0 ;
  wire \mem_in_b[0]_i_11_n_0 ;
  wire \mem_in_b[0]_i_12_n_0 ;
  wire \mem_in_b[0]_i_13_n_0 ;
  wire \mem_in_b[0]_i_14_n_0 ;
  wire \mem_in_b[0]_i_15_n_0 ;
  wire \mem_in_b[0]_i_16_n_0 ;
  wire \mem_in_b[0]_i_17_n_0 ;
  wire \mem_in_b[0]_i_18_n_0 ;
  wire \mem_in_b[0]_i_19_n_0 ;
  wire \mem_in_b[0]_i_1_n_0 ;
  wire \mem_in_b[0]_i_20_n_0 ;
  wire \mem_in_b[0]_i_21_n_0 ;
  wire \mem_in_b[0]_i_22_n_0 ;
  wire \mem_in_b[0]_i_23_n_0 ;
  wire \mem_in_b[0]_i_24_n_0 ;
  wire \mem_in_b[0]_i_25_n_0 ;
  wire \mem_in_b[0]_i_26_n_0 ;
  wire \mem_in_b[0]_i_27_n_0 ;
  wire \mem_in_b[0]_i_28_n_0 ;
  wire \mem_in_b[0]_i_29_n_0 ;
  wire \mem_in_b[0]_i_30_n_0 ;
  wire \mem_in_b[0]_i_32_n_0 ;
  wire \mem_in_b[0]_i_33_n_0 ;
  wire \mem_in_b[0]_i_34_n_0 ;
  wire \mem_in_b[0]_i_35_n_0 ;
  wire \mem_in_b[0]_i_37_n_0 ;
  wire \mem_in_b[0]_i_39_n_0 ;
  wire \mem_in_b[0]_i_3_n_0 ;
  wire \mem_in_b[0]_i_40_n_0 ;
  wire \mem_in_b[0]_i_41_n_0 ;
  wire \mem_in_b[0]_i_42_n_0 ;
  wire \mem_in_b[0]_i_43_n_0 ;
  wire \mem_in_b[0]_i_44_n_0 ;
  wire \mem_in_b[0]_i_45_n_0 ;
  wire \mem_in_b[0]_i_46_n_0 ;
  wire \mem_in_b[0]_i_4_n_0 ;
  wire \mem_in_b[0]_i_6_n_0 ;
  wire \mem_in_b[0]_i_8_n_0 ;
  wire \mem_in_b[1]_i_10_n_0 ;
  wire \mem_in_b[1]_i_11_n_0 ;
  wire \mem_in_b[1]_i_12_n_0 ;
  wire \mem_in_b[1]_i_13_n_0 ;
  wire \mem_in_b[1]_i_14_n_0 ;
  wire \mem_in_b[1]_i_15_n_0 ;
  wire \mem_in_b[1]_i_2_n_0 ;
  wire \mem_in_b[1]_i_3_n_0 ;
  wire \mem_in_b[1]_i_6_n_0 ;
  wire \mem_in_b[1]_i_7_n_0 ;
  wire \mem_in_b[1]_i_9_n_0 ;
  wire \mem_in_b[2]_i_10_n_0 ;
  wire \mem_in_b[2]_i_11_n_0 ;
  wire \mem_in_b[2]_i_12_n_0 ;
  wire \mem_in_b[2]_i_13_n_0 ;
  wire \mem_in_b[2]_i_14_n_0 ;
  wire \mem_in_b[2]_i_15_n_0 ;
  wire \mem_in_b[2]_i_17_n_0 ;
  wire \mem_in_b[2]_i_18_n_0 ;
  wire \mem_in_b[2]_i_19_n_0 ;
  wire \mem_in_b[2]_i_20_n_0 ;
  wire \mem_in_b[2]_i_21_n_0 ;
  wire \mem_in_b[2]_i_22_n_0 ;
  wire \mem_in_b[2]_i_23_n_0 ;
  wire \mem_in_b[2]_i_24_n_0 ;
  wire \mem_in_b[2]_i_2_n_0 ;
  wire \mem_in_b[2]_i_3_n_0 ;
  wire \mem_in_b[2]_i_7_n_0 ;
  wire \mem_in_b[2]_i_8_n_0 ;
  wire \mem_in_b[2]_i_9_n_0 ;
  wire \mem_in_b[3]_i_10_n_0 ;
  wire \mem_in_b[3]_i_11_n_0 ;
  wire \mem_in_b[3]_i_12_n_0 ;
  wire \mem_in_b[3]_i_13_n_0 ;
  wire \mem_in_b[3]_i_14_n_0 ;
  wire \mem_in_b[3]_i_15_n_0 ;
  wire \mem_in_b[3]_i_16_n_0 ;
  wire \mem_in_b[3]_i_17_n_0 ;
  wire \mem_in_b[3]_i_19_n_0 ;
  wire \mem_in_b[3]_i_20_n_0 ;
  wire \mem_in_b[3]_i_21_n_0 ;
  wire \mem_in_b[3]_i_22_n_0 ;
  wire \mem_in_b[3]_i_23_n_0 ;
  wire \mem_in_b[3]_i_24_n_0 ;
  wire \mem_in_b[3]_i_25_n_0 ;
  wire \mem_in_b[3]_i_2_n_0 ;
  wire \mem_in_b[3]_i_3_n_0 ;
  wire \mem_in_b[3]_i_8_n_0 ;
  wire \mem_in_b[3]_i_9_n_0 ;
  wire \mem_in_b[4]_i_10_n_0 ;
  wire \mem_in_b[4]_i_11_n_0 ;
  wire \mem_in_b[4]_i_12_n_0 ;
  wire \mem_in_b[4]_i_13_n_0 ;
  wire \mem_in_b[4]_i_14_n_0 ;
  wire \mem_in_b[4]_i_15_n_0 ;
  wire \mem_in_b[4]_i_2_n_0 ;
  wire \mem_in_b[4]_i_3_n_0 ;
  wire \mem_in_b[4]_i_6_n_0 ;
  wire \mem_in_b[4]_i_7_n_0 ;
  wire \mem_in_b[4]_i_9_n_0 ;
  wire \mem_in_b[5]_i_10_n_0 ;
  wire \mem_in_b[5]_i_11_n_0 ;
  wire \mem_in_b[5]_i_12_n_0 ;
  wire \mem_in_b[5]_i_13_n_0 ;
  wire \mem_in_b[5]_i_14_n_0 ;
  wire \mem_in_b[5]_i_15_n_0 ;
  wire \mem_in_b[5]_i_2_n_0 ;
  wire \mem_in_b[5]_i_3_n_0 ;
  wire \mem_in_b[5]_i_6_n_0 ;
  wire \mem_in_b[5]_i_7_n_0 ;
  wire \mem_in_b[5]_i_9_n_0 ;
  wire \mem_in_b[6]_i_11_n_0 ;
  wire \mem_in_b[6]_i_12_n_0 ;
  wire \mem_in_b[6]_i_13_n_0 ;
  wire \mem_in_b[6]_i_14_n_0 ;
  wire \mem_in_b[6]_i_16_n_0 ;
  wire \mem_in_b[6]_i_17_n_0 ;
  wire \mem_in_b[6]_i_18_n_0 ;
  wire \mem_in_b[6]_i_19_n_0 ;
  wire \mem_in_b[6]_i_20_n_0 ;
  wire \mem_in_b[6]_i_21_n_0 ;
  wire \mem_in_b[6]_i_22_n_0 ;
  wire \mem_in_b[6]_i_23_n_0 ;
  wire \mem_in_b[6]_i_25_n_0 ;
  wire \mem_in_b[6]_i_26_n_0 ;
  wire \mem_in_b[6]_i_27_n_0 ;
  wire \mem_in_b[6]_i_28_n_0 ;
  wire \mem_in_b[6]_i_29_n_0 ;
  wire \mem_in_b[6]_i_2_n_0 ;
  wire \mem_in_b[6]_i_30_n_0 ;
  wire \mem_in_b[6]_i_31_n_0 ;
  wire \mem_in_b[6]_i_32_n_0 ;
  wire \mem_in_b[6]_i_33_n_0 ;
  wire \mem_in_b[6]_i_34_n_0 ;
  wire \mem_in_b[6]_i_35_n_0 ;
  wire \mem_in_b[6]_i_36_n_0 ;
  wire \mem_in_b[6]_i_37_n_0 ;
  wire \mem_in_b[6]_i_38_n_0 ;
  wire \mem_in_b[6]_i_39_n_0 ;
  wire \mem_in_b[6]_i_3_n_0 ;
  wire \mem_in_b[6]_i_40_n_0 ;
  wire \mem_in_b[6]_i_41_n_0 ;
  wire \mem_in_b[6]_i_42_n_0 ;
  wire \mem_in_b[6]_i_43_n_0 ;
  wire \mem_in_b[6]_i_44_n_0 ;
  wire \mem_in_b[6]_i_45_n_0 ;
  wire \mem_in_b[6]_i_46_n_0 ;
  wire \mem_in_b[6]_i_47_n_0 ;
  wire \mem_in_b[6]_i_48_n_0 ;
  wire \mem_in_b[6]_i_49_n_0 ;
  wire \mem_in_b[6]_i_50_n_0 ;
  wire \mem_in_b[6]_i_51_n_0 ;
  wire \mem_in_b[6]_i_52_n_0 ;
  wire \mem_in_b[6]_i_53_n_0 ;
  wire \mem_in_b[6]_i_7_n_0 ;
  wire \mem_in_b[6]_i_8_n_0 ;
  wire \mem_in_b[6]_i_9_n_0 ;
  wire \mem_in_b[7]_i_11_n_0 ;
  wire \mem_in_b[7]_i_12_n_0 ;
  wire \mem_in_b[7]_i_13_n_0 ;
  wire \mem_in_b[7]_i_14_n_0 ;
  wire \mem_in_b[7]_i_15_n_0 ;
  wire \mem_in_b[7]_i_16_n_0 ;
  wire \mem_in_b[7]_i_17_n_0 ;
  wire \mem_in_b[7]_i_18_n_0 ;
  wire \mem_in_b[7]_i_19_n_0 ;
  wire \mem_in_b[7]_i_20_n_0 ;
  wire \mem_in_b[7]_i_22_n_0 ;
  wire \mem_in_b[7]_i_23_n_0 ;
  wire \mem_in_b[7]_i_24_n_0 ;
  wire \mem_in_b[7]_i_25_n_0 ;
  wire \mem_in_b[7]_i_3_n_0 ;
  wire \mem_in_b[7]_i_4_n_0 ;
  wire \mem_in_b[7]_i_5_n_0 ;
  wire \mem_in_b[7]_i_7_n_0 ;
  wire \mem_in_b[7]_i_9_n_0 ;
  wire \mem_in_b_reg[0]_i_36_n_0 ;
  wire \mem_in_b_reg[0]_i_38_n_0 ;
  wire \mem_in_b_reg[0]_i_9_n_0 ;
  wire \mem_in_b_reg[1]_i_4_n_7 ;
  wire \mem_in_b_reg[1]_i_5_n_0 ;
  wire \mem_in_b_reg[1]_i_5_n_4 ;
  wire \mem_in_b_reg[1]_i_5_n_5 ;
  wire \mem_in_b_reg[1]_i_5_n_6 ;
  wire \mem_in_b_reg[1]_i_5_n_7 ;
  wire \mem_in_b_reg[1]_i_8_n_0 ;
  wire \mem_in_b_reg[1]_i_8_n_4 ;
  wire \mem_in_b_reg[1]_i_8_n_5 ;
  wire \mem_in_b_reg[1]_i_8_n_6 ;
  wire \mem_in_b_reg[2]_i_16_n_0 ;
  wire \mem_in_b_reg[2]_i_16_n_4 ;
  wire \mem_in_b_reg[2]_i_16_n_5 ;
  wire \mem_in_b_reg[2]_i_16_n_6 ;
  wire \mem_in_b_reg[2]_i_4_n_7 ;
  wire \mem_in_b_reg[2]_i_5_n_0 ;
  wire \mem_in_b_reg[2]_i_5_n_4 ;
  wire \mem_in_b_reg[2]_i_5_n_5 ;
  wire \mem_in_b_reg[2]_i_5_n_6 ;
  wire \mem_in_b_reg[2]_i_5_n_7 ;
  wire \mem_in_b_reg[2]_i_6_n_0 ;
  wire \mem_in_b_reg[2]_i_6_n_4 ;
  wire \mem_in_b_reg[2]_i_6_n_5 ;
  wire \mem_in_b_reg[2]_i_6_n_6 ;
  wire \mem_in_b_reg[2]_i_6_n_7 ;
  wire \mem_in_b_reg[3]_i_18_n_0 ;
  wire \mem_in_b_reg[3]_i_18_n_4 ;
  wire \mem_in_b_reg[3]_i_18_n_5 ;
  wire \mem_in_b_reg[3]_i_18_n_6 ;
  wire \mem_in_b_reg[3]_i_4_n_7 ;
  wire \mem_in_b_reg[3]_i_5_n_0 ;
  wire \mem_in_b_reg[3]_i_6_n_0 ;
  wire \mem_in_b_reg[3]_i_7_n_0 ;
  wire \mem_in_b_reg[3]_i_7_n_4 ;
  wire \mem_in_b_reg[3]_i_7_n_5 ;
  wire \mem_in_b_reg[3]_i_7_n_6 ;
  wire \mem_in_b_reg[3]_i_7_n_7 ;
  wire \mem_in_b_reg[4]_i_4_n_7 ;
  wire \mem_in_b_reg[4]_i_5_n_0 ;
  wire \mem_in_b_reg[4]_i_5_n_4 ;
  wire \mem_in_b_reg[4]_i_5_n_5 ;
  wire \mem_in_b_reg[4]_i_5_n_6 ;
  wire \mem_in_b_reg[4]_i_5_n_7 ;
  wire \mem_in_b_reg[4]_i_8_n_0 ;
  wire \mem_in_b_reg[4]_i_8_n_4 ;
  wire \mem_in_b_reg[4]_i_8_n_5 ;
  wire \mem_in_b_reg[4]_i_8_n_6 ;
  wire \mem_in_b_reg[5]_i_4_n_7 ;
  wire \mem_in_b_reg[5]_i_5_n_0 ;
  wire \mem_in_b_reg[5]_i_5_n_4 ;
  wire \mem_in_b_reg[5]_i_5_n_5 ;
  wire \mem_in_b_reg[5]_i_5_n_6 ;
  wire \mem_in_b_reg[5]_i_5_n_7 ;
  wire \mem_in_b_reg[5]_i_8_n_0 ;
  wire \mem_in_b_reg[5]_i_8_n_4 ;
  wire \mem_in_b_reg[5]_i_8_n_5 ;
  wire \mem_in_b_reg[5]_i_8_n_6 ;
  wire \mem_in_b_reg[6]_i_10_n_4 ;
  wire \mem_in_b_reg[6]_i_10_n_5 ;
  wire \mem_in_b_reg[6]_i_10_n_6 ;
  wire \mem_in_b_reg[6]_i_10_n_7 ;
  wire \mem_in_b_reg[6]_i_15_n_0 ;
  wire \mem_in_b_reg[6]_i_15_n_4 ;
  wire \mem_in_b_reg[6]_i_15_n_5 ;
  wire \mem_in_b_reg[6]_i_15_n_6 ;
  wire \mem_in_b_reg[6]_i_15_n_7 ;
  wire \mem_in_b_reg[6]_i_24_n_0 ;
  wire \mem_in_b_reg[6]_i_24_n_4 ;
  wire \mem_in_b_reg[6]_i_24_n_5 ;
  wire \mem_in_b_reg[6]_i_24_n_6 ;
  wire \mem_in_b_reg[6]_i_24_n_7 ;
  wire \mem_in_b_reg[6]_i_5_n_0 ;
  wire \mem_in_b_reg[6]_i_5_n_4 ;
  wire \mem_in_b_reg[6]_i_5_n_5 ;
  wire \mem_in_b_reg[6]_i_5_n_6 ;
  wire \mem_in_b_reg[6]_i_5_n_7 ;
  wire \mem_in_b_reg[6]_i_6_n_0 ;
  wire \mem_in_b_reg[6]_i_6_n_4 ;
  wire \mem_in_b_reg[6]_i_6_n_5 ;
  wire \mem_in_b_reg[6]_i_6_n_6 ;
  wire \mem_in_b_reg[6]_i_6_n_7 ;
  wire \mem_in_b_reg[7]_i_21_n_7 ;
  wire \mem_in_b_reg[7]_i_6_n_7 ;
  wire [3:0]mem_in_op;
  wire ns;
  wire [27:0]p_1_in__0;
  wire pc_inst_n_0;
  wire pc_inst_n_10;
  wire pc_inst_n_11;
  wire pc_inst_n_12;
  wire pc_inst_n_13;
  wire pc_inst_n_14;
  wire pc_inst_n_15;
  wire pc_inst_n_16;
  wire pc_inst_n_17;
  wire pc_inst_n_8;
  wire pc_inst_n_9;
  wire [6:0]pc_leds;
  wire [6:0]pc_leds_OBUF;
  wire [1:0]reg_w_a;
  wire reg_w_a0;
  wire [7:0]reg_w_c;
  wire \reg_w_c[0]_i_1_n_0 ;
  wire \reg_w_c[1]_i_1_n_0 ;
  wire \reg_w_c[2]_i_1_n_0 ;
  wire \reg_w_c[3]_i_1_n_0 ;
  wire \reg_w_c[4]_i_1_n_0 ;
  wire \reg_w_c[5]_i_1_n_0 ;
  wire \reg_w_c[6]_i_1_n_0 ;
  wire \reg_w_c[7]_i_1_n_0 ;
  wire \reg_w_c[7]_i_2_n_0 ;
  wire [3:0]reg_w_op;
  (* RTL_KEEP = "true" *) wire [7:0]register_a;
  (* RTL_KEEP = "true" *) wire [7:0]register_b;
  (* RTL_KEEP = "true" *) wire [7:0]register_data;
  wire registers_inst_n_2;
  (* async_reg = "true" *) wire reset_sync;
  wire reset_sync_i_1_n_0;
  (* RTL_KEEP = "true" *) wire [27:0]rom_fetched;
  wire rom_inst_n_1;
  wire rom_inst_n_13;
  wire rom_inst_n_14;
  wire [27:8]rom_output;
  (* RTL_KEEP = "true" *) wire [27:0]rom_stall_fetched;
  wire rom_stall_fetched_reg0;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  (* RTL_KEEP = "true" *) wire stall_pipeline;
  (* RTL_KEEP = "true" *) wire stall_pipeline_delayed;
  wire [3:1]\NLW_mem_in_b_reg[0]_i_31_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_31_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[0]_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[0]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_38_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[0]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[1]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[1]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[1]_i_8_CO_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[1]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[2]_i_16_CO_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[2]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[2]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[2]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[2]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[3]_i_18_CO_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[3]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[3]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[3]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[3]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[3]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[4]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[4]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[4]_i_8_CO_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[4]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[5]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[5]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[5]_i_8_CO_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[5]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[6]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[6]_i_15_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[6]_i_24_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[6]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[6]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[6]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_mem_in_b_reg[6]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_21_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[7]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[7]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED ;
  wire NLW_ram_inst_clk_led_OBUF_BUFG_UNCONNECTED;
  wire \NLW_ram_inst_dout_reg[0]_0_UNCONNECTED ;
  wire NLW_ram_inst_mem_base_pointer_way_UNCONNECTED;
  wire \NLW_ram_inst_regs_reg[14][0]_0_UNCONNECTED ;
  wire [7:0]NLW_ram_inst_D_UNCONNECTED;
  wire [0:0]NLW_ram_inst_E_UNCONNECTED;
  wire [7:0]\NLW_ram_inst_base_pointer_reg[7]_0_UNCONNECTED ;
  wire [7:0]\NLW_ram_inst_regs_reg[170][7]_0_UNCONNECTED ;
  wire [7:0]\NLW_ram_inst_regs_reg[254][7]_0_UNCONNECTED ;
  wire [7:0]\NLW_ram_inst_regs_reg[255][0]_0_UNCONNECTED ;
  wire \NLW_registers_inst_reg_w_op_reg[4]_UNCONNECTED ;
  wire \NLW_registers_inst_reg_w_op_reg[4]_0_UNCONNECTED ;
  wire [7:4]NLW_registers_inst_Q_UNCONNECTED;
  wire [3:3]NLW_registers_inst_di_in_b_UNCONNECTED;
  wire [3:1]NLW_registers_inst_di_in_c_UNCONNECTED;
  wire [3:2]\NLW_registers_inst_regs_reg[0][0]_0_UNCONNECTED ;
  wire \NLW_rom_inst_mem_in_op_reg[3]_UNCONNECTED ;
  wire \NLW_rom_inst_mem_in_op_reg[4]_UNCONNECTED ;
  wire NLW_rom_inst_stall_pipeline_i_15_0_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_0_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_1_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_2_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_3_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_6_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_37_7_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_i_3_0_UNCONNECTED;
  wire NLW_rom_inst_stall_pipeline_reg_UNCONNECTED;
  wire [2:1]NLW_rom_inst_D_UNCONNECTED;
  wire [7:4]NLW_rom_inst_Q_UNCONNECTED;
  wire [7:4]\NLW_rom_inst_mem_in_b_reg[0]_rep__0_UNCONNECTED ;
  wire [31:1]NLW_rom_inst_out_UNCONNECTED;
  wire [23:1]\NLW_rom_inst_rom_fetched_reg[27]_UNCONNECTED ;
  wire [7:2]NLW_rom_inst_stall_pipeline_i_33_0_UNCONNECTED;
  wire [7:2]NLW_rom_inst_stall_pipeline_i_4_0_UNCONNECTED;
  wire [7:2]NLW_rom_inst_stall_pipeline_i_5_0_UNCONNECTED;
  wire [7:4]NLW_seven_seg_inst_out_UNCONNECTED;

initial begin
 $sdf_annotate("tb_micro_time_impl.sdf",,,,"tool_control");
end
  (* OPT_MODIFIED = "PROPCONST" *) 
  GND GND_1
       (.G(rom_stall_fetched[7]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF clk_external_IBUF_inst
       (.I(clk_external),
        .O(clk_led_OBUF));
  BUFG clk_led_OBUF_BUFG_inst
       (.I(clk_led_OBUF),
        .O(clk_led_OBUF_BUFG));
  OBUF clk_led_OBUF_inst
       (.I(clk_led_OBUF_BUFG),
        .O(clk_led));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[16]),
        .Q(\di_in_a_reg_n_0_[0] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[17]),
        .Q(\di_in_a_reg_n_0_[1] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[8]),
        .Q(di_in_b[0]),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_b_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[9]),
        .Q(di_in_b[1]),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_b_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[10]),
        .Q(di_in_b[2]),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_c_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[0]),
        .Q(di_in_c),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[24]),
        .Q(\di_in_op_reg_n_0_[0] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[25]),
        .Q(\di_in_op_reg_n_0_[1] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[26]),
        .Q(\di_in_op_reg_n_0_[2] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_fetched[27]),
        .Q(\di_in_op_reg_n_0_[3] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_a_reg_n_0_[0] ),
        .Q(ex_in_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_a_reg_n_0_[1] ),
        .Q(ex_in_a[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_in_b[0]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[0]),
        .I2(\ex_in_b[6]_i_3_n_0 ),
        .I3(di_in_b[0]),
        .O(\ex_in_b[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_in_b[1]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[1]),
        .I2(\ex_in_b[6]_i_3_n_0 ),
        .I3(di_in_b[1]),
        .O(\ex_in_b[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_in_b[2]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[2]),
        .I2(\ex_in_b[6]_i_3_n_0 ),
        .I3(di_in_b[2]),
        .O(\ex_in_b[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ex_in_b[3]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[3]),
        .O(\ex_in_b[3]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ex_in_b[4]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[4]),
        .O(\ex_in_b[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ex_in_b[5]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[5]),
        .O(\ex_in_b[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ex_in_b[6]_i_1 
       (.I0(\ex_in_b[6]_i_2_n_0 ),
        .I1(register_a[6]),
        .O(\ex_in_b[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h4889)) 
    \ex_in_b[6]_i_2 
       (.I0(\di_in_op_reg_n_0_[1] ),
        .I1(\di_in_op_reg_n_0_[2] ),
        .I2(\di_in_op_reg_n_0_[3] ),
        .I3(\di_in_op_reg_n_0_[0] ),
        .O(\ex_in_b[6]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h93FF)) 
    \ex_in_b[6]_i_3 
       (.I0(\di_in_op_reg_n_0_[0] ),
        .I1(\di_in_op_reg_n_0_[1] ),
        .I2(\di_in_op_reg_n_0_[3] ),
        .I3(\di_in_op_reg_n_0_[2] ),
        .O(\ex_in_b[6]_i_3_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h7E00)) 
    \ex_in_b[7]_i_3 
       (.I0(\di_in_op_reg_n_0_[2] ),
        .I1(\di_in_op_reg_n_0_[3] ),
        .I2(\di_in_op_reg_n_0_[0] ),
        .I3(register_a[7]),
        .O(\ex_in_b[7]_i_3_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \ex_in_b[7]_i_4 
       (.I0(register_a[7]),
        .I1(\di_in_op_reg_n_0_[2] ),
        .I2(\di_in_op_reg_n_0_[0] ),
        .I3(\di_in_op_reg_n_0_[3] ),
        .O(\ex_in_b[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[0]_i_1_n_0 ),
        .Q(ex_in_b[0]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[1]_i_1_n_0 ),
        .Q(ex_in_b[1]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[2]_i_1_n_0 ),
        .Q(ex_in_b[2]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[3]_i_1_n_0 ),
        .Q(ex_in_b[3]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[4]_i_1_n_0 ),
        .Q(ex_in_b[4]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[5]_i_1_n_0 ),
        .Q(ex_in_b[5]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b[6]_i_1_n_0 ),
        .Q(ex_in_b[6]),
        .R(rom_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\ex_in_b_reg[7]_i_2_n_0 ),
        .Q(ex_in_b[7]),
        .R(rom_inst_n_13));
  MUXF7 \ex_in_b_reg[7]_i_2 
       (.I0(\ex_in_b[7]_i_3_n_0 ),
        .I1(\ex_in_b[7]_i_4_n_0 ),
        .O(\ex_in_b_reg[7]_i_2_n_0 ),
        .S(\di_in_op_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[0]),
        .Q(ex_in_c[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[1]),
        .Q(ex_in_c[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[2]),
        .Q(ex_in_c[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[3]),
        .Q(ex_in_c[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[4]),
        .Q(ex_in_c[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[5]),
        .Q(ex_in_c[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[6]),
        .Q(ex_in_c[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_c_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(register_b[7]),
        .Q(ex_in_c[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_op_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_op_reg_n_0_[0] ),
        .Q(ex_in_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_op_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_op_reg_n_0_[1] ),
        .Q(ex_in_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_op_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_op_reg_n_0_[2] ),
        .Q(ex_in_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_op_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\di_in_op_reg_n_0_[3] ),
        .Q(ex_in_op[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \leds[7]_i_1 
       (.I0(ex_in_op[1]),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\leds[7]_i_1_n_0 ));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[0]),
        .Q(leds_OBUF[0]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[1]),
        .Q(leds_OBUF[1]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[2]),
        .Q(leds_OBUF[2]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[3]),
        .Q(leds_OBUF[3]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[4]),
        .Q(leds_OBUF[4]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[5]),
        .Q(leds_OBUF[5]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[6]),
        .Q(leds_OBUF[6]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[7]),
        .Q(leds_OBUF[7]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_a[0]),
        .Q(mem_in_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_a[1]),
        .Q(mem_in_a[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \mem_in_b[0]_i_1 
       (.I0(\mem_in_b[0]_i_3_n_0 ),
        .I1(\mem_in_b[0]_i_4_n_0 ),
        .I2(ex_in_b[0]),
        .O(\mem_in_b[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE03)) 
    \mem_in_b[0]_i_10 
       (.I0(ex_in_op[3]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[0]),
        .I3(ex_in_op[2]),
        .O(\mem_in_b[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_11 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_12 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_b[5]),
        .I3(ex_in_c[5]),
        .O(\mem_in_b[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_13 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_b[3]),
        .I3(ex_in_c[3]),
        .O(\mem_in_b[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_14 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .O(\mem_in_b[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_15 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_16 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_17 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_18 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_19 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_20 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_21 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_22 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_23 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_24 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_25 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_26 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \mem_in_b[0]_i_27 
       (.I0(ex_in_op[1]),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .I4(\mem_in_b[0]_i_29_n_0 ),
        .I5(\mem_in_b[0]_i_30_n_0 ),
        .O(\mem_in_b[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[0]_i_28 
       (.I0(\alu_inst/data3 [0]),
        .I1(\mem_in_b_reg[2]_i_5_n_7 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [0]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [0]),
        .O(\mem_in_b[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFEFFFFFFFF)) 
    \mem_in_b[0]_i_29 
       (.I0(\mem_in_b[0]_i_32_n_0 ),
        .I1(\mem_in_b[0]_i_33_n_0 ),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[2]),
        .I4(\mem_in_b[0]_i_34_n_0 ),
        .I5(\mem_in_b[0]_i_35_n_0 ),
        .O(\mem_in_b[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \mem_in_b[0]_i_3 
       (.I0(\alu_inst/ltOp ),
        .I1(\mem_in_b[0]_i_6_n_0 ),
        .I2(\alu_inst/data5 ),
        .I3(\mem_in_b[0]_i_8_n_0 ),
        .I4(\mem_in_b_reg[0]_i_9_n_0 ),
        .I5(\mem_in_b[0]_i_10_n_0 ),
        .O(\mem_in_b[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_30 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_32 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_33 
       (.I0(ex_in_b[1]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_34 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_35 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_37 
       (.I0(\alu_inst/data3 [1]),
        .I1(\mem_in_b_reg[1]_i_4_n_7 ),
        .O(\mem_in_b[0]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_39 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[1]_i_5_n_4 ),
        .O(\mem_in_b[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_in_b[0]_i_4 
       (.I0(ex_in_op[2]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[0]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_40 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[1]_i_5_n_5 ),
        .O(\mem_in_b[0]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_41 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[1]_i_5_n_6 ),
        .O(\mem_in_b[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_42 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[1]_i_5_n_7 ),
        .O(\mem_in_b[0]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_43 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[1]_i_8_n_4 ),
        .O(\mem_in_b[0]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_44 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[1]_i_8_n_5 ),
        .O(\mem_in_b[0]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_45 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[1]_i_8_n_6 ),
        .O(\mem_in_b[0]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_46 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[0]),
        .O(\mem_in_b[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h041E)) 
    \mem_in_b[0]_i_6 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF9FF)) 
    \mem_in_b[0]_i_8 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_10 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[2]_i_6_n_6 ),
        .O(\mem_in_b[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_11 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[2]_i_6_n_7 ),
        .O(\mem_in_b[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_12 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[2]_i_16_n_4 ),
        .O(\mem_in_b[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_13 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[2]_i_16_n_5 ),
        .O(\mem_in_b[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_14 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[2]_i_16_n_6 ),
        .O(\mem_in_b[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_15 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[1]),
        .O(\mem_in_b[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[1]_i_2 
       (.I0(\mem_in_b[1]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[1]),
        .O(\mem_in_b[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[1]_i_3 
       (.I0(\alu_inst/data3 [1]),
        .I1(\mem_in_b_reg[2]_i_5_n_6 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [1]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [1]),
        .O(\mem_in_b[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[1]_i_6 
       (.I0(\alu_inst/data3 [2]),
        .I1(\mem_in_b_reg[2]_i_4_n_7 ),
        .O(\mem_in_b[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_7 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[2]_i_6_n_4 ),
        .O(\mem_in_b[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_9 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[2]_i_6_n_5 ),
        .O(\mem_in_b[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[2]_i_10 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[2]_i_11 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \mem_in_b[2]_i_12 
       (.I0(ex_in_b[2]),
        .I1(\mem_in_b[2]_i_21_n_0 ),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .I4(ex_in_b[0]),
        .I5(ex_in_c[2]),
        .O(\mem_in_b[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[2]_i_13 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[2]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[2]_i_14 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[2]_i_15 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[2]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_17 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[3]_i_7_n_5 ),
        .O(\mem_in_b[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_18 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[3]_i_7_n_6 ),
        .O(\mem_in_b[2]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_19 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[3]_i_7_n_7 ),
        .O(\mem_in_b[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[2]_i_2 
       (.I0(\mem_in_b[2]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_20 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[3]_i_18_n_4 ),
        .O(\mem_in_b[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[2]_i_21 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[2]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_22 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[3]_i_18_n_5 ),
        .O(\mem_in_b[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_23 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[3]_i_18_n_6 ),
        .O(\mem_in_b[2]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_24 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[2]),
        .O(\mem_in_b[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[2]_i_3 
       (.I0(\alu_inst/data3 [2]),
        .I1(\mem_in_b_reg[2]_i_5_n_5 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [2]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [2]),
        .O(\mem_in_b[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[2]_i_7 
       (.I0(\alu_inst/data3 [3]),
        .I1(\mem_in_b_reg[3]_i_4_n_7 ),
        .O(\mem_in_b[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_8 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[3]_i_7_n_4 ),
        .O(\mem_in_b[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[2]_i_9 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[1]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_10 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[3]),
        .O(\mem_in_b[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_11 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .O(\mem_in_b[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_12 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_13 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .O(\mem_in_b[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_14 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_15 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_16 
       (.I0(ex_in_b[1]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_17 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_19 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[4]_i_5_n_5 ),
        .O(\mem_in_b[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[3]_i_2 
       (.I0(\mem_in_b[3]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[3]),
        .O(\mem_in_b[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_20 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[4]_i_5_n_6 ),
        .O(\mem_in_b[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_21 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[4]_i_5_n_7 ),
        .O(\mem_in_b[3]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_22 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[4]_i_8_n_4 ),
        .O(\mem_in_b[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_23 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[4]_i_8_n_5 ),
        .O(\mem_in_b[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_24 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[4]_i_8_n_6 ),
        .O(\mem_in_b[3]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_25 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[3]),
        .O(\mem_in_b[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[3]_i_3 
       (.I0(\alu_inst/data3 [3]),
        .I1(\mem_in_b_reg[6]_i_5_n_7 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [3]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [3]),
        .O(\mem_in_b[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_8 
       (.I0(\alu_inst/data3 [4]),
        .I1(\mem_in_b_reg[4]_i_4_n_7 ),
        .O(\mem_in_b[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_9 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[4]_i_5_n_4 ),
        .O(\mem_in_b[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_10 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[5]_i_5_n_6 ),
        .O(\mem_in_b[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_11 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[5]_i_5_n_7 ),
        .O(\mem_in_b[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_12 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[5]_i_8_n_4 ),
        .O(\mem_in_b[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_13 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[5]_i_8_n_5 ),
        .O(\mem_in_b[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_14 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[5]_i_8_n_6 ),
        .O(\mem_in_b[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_15 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[4]),
        .O(\mem_in_b[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[4]_i_2 
       (.I0(\mem_in_b[4]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[4]),
        .O(\mem_in_b[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[4]_i_3 
       (.I0(\alu_inst/data3 [4]),
        .I1(\mem_in_b_reg[6]_i_5_n_6 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [4]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [4]),
        .O(\mem_in_b[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[4]_i_6 
       (.I0(\alu_inst/data3 [5]),
        .I1(\mem_in_b_reg[5]_i_4_n_7 ),
        .O(\mem_in_b[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_7 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[5]_i_5_n_4 ),
        .O(\mem_in_b[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_9 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[5]_i_5_n_5 ),
        .O(\mem_in_b[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_10 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[6]_i_6_n_7 ),
        .O(\mem_in_b[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_11 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[6]_i_15_n_4 ),
        .O(\mem_in_b[5]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_12 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[6]_i_15_n_5 ),
        .O(\mem_in_b[5]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_13 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[6]_i_15_n_6 ),
        .O(\mem_in_b[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_14 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[6]_i_15_n_7 ),
        .O(\mem_in_b[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_15 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[5]),
        .O(\mem_in_b[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[5]_i_2 
       (.I0(\mem_in_b[5]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[5]),
        .O(\mem_in_b[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[5]_i_3 
       (.I0(\alu_inst/data3 [5]),
        .I1(\mem_in_b_reg[6]_i_5_n_5 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [5]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [5]),
        .O(\mem_in_b[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[5]_i_6 
       (.I0(\alu_inst/data3 [6]),
        .I1(\mem_in_b_reg[6]_i_6_n_4 ),
        .O(\mem_in_b[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_7 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[6]_i_6_n_5 ),
        .O(\mem_in_b[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_9 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[6]_i_6_n_6 ),
        .O(\mem_in_b[5]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \mem_in_b[6]_i_11 
       (.I0(\mem_in_b_reg[6]_i_24_n_4 ),
        .I1(\mem_in_b_reg[6]_i_10_n_5 ),
        .I2(ex_in_c[6]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_12 
       (.I0(\mem_in_b_reg[6]_i_10_n_6 ),
        .I1(\mem_in_b_reg[6]_i_24_n_5 ),
        .O(\mem_in_b[6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_13 
       (.I0(\mem_in_b_reg[6]_i_10_n_7 ),
        .I1(\mem_in_b_reg[6]_i_24_n_6 ),
        .O(\mem_in_b[6]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_14 
       (.I0(\mem_in_b_reg[2]_i_5_n_4 ),
        .I1(\mem_in_b_reg[6]_i_24_n_7 ),
        .O(\mem_in_b[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_16 
       (.I0(ex_in_c[7]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_17 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_18 
       (.I0(ex_in_c[5]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_19 
       (.I0(ex_in_c[4]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[6]_i_2 
       (.I0(\mem_in_b[6]_i_3_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[6]),
        .O(\mem_in_b[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9979)) 
    \mem_in_b[6]_i_20 
       (.I0(ex_in_c[7]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b[7]_i_11_n_0 ),
        .I3(ex_in_c[5]),
        .O(\mem_in_b[6]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h5BA5)) 
    \mem_in_b[6]_i_21 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[7]),
        .I2(ex_in_c[5]),
        .I3(\mem_in_b[7]_i_11_n_0 ),
        .O(\mem_in_b[6]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h33CDCC33)) 
    \mem_in_b[6]_i_22 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[5]),
        .I2(ex_in_c[7]),
        .I3(ex_in_c[4]),
        .I4(\mem_in_b[6]_i_39_n_0 ),
        .O(\mem_in_b[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCCDCCCC3333)) 
    \mem_in_b[6]_i_23 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .I4(ex_in_c[3]),
        .I5(\mem_in_b[6]_i_40_n_0 ),
        .O(\mem_in_b[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_25 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[3]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[4]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[5]),
        .O(\mem_in_b[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_26 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[3]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[4]),
        .O(\mem_in_b[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_27 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[2]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[3]),
        .O(\mem_in_b[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8F08080870F7F7F7)) 
    \mem_in_b[6]_i_28 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[0]),
        .I2(\mem_in_b[6]_i_48_n_0 ),
        .I3(ex_in_b[4]),
        .I4(ex_in_c[2]),
        .I5(\mem_in_b[6]_i_49_n_0 ),
        .O(\mem_in_b[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_29 
       (.I0(\mem_in_b[6]_i_25_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[5]),
        .I3(\mem_in_b[6]_i_50_n_0 ),
        .I4(ex_in_b[6]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[6]_i_3 
       (.I0(\alu_inst/data3 [6]),
        .I1(\mem_in_b_reg[6]_i_5_n_4 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [6]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [6]),
        .O(\mem_in_b[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_30 
       (.I0(\mem_in_b[6]_i_26_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[4]),
        .I3(\mem_in_b[6]_i_51_n_0 ),
        .I4(ex_in_b[5]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_31 
       (.I0(\mem_in_b[6]_i_27_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[3]),
        .I3(\mem_in_b[6]_i_52_n_0 ),
        .I4(ex_in_b[4]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_32 
       (.I0(ex_in_c[3]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_33 
       (.I0(ex_in_c[2]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_34 
       (.I0(ex_in_c[1]),
        .I1(\mem_in_b[7]_i_5_n_0 ),
        .O(\mem_in_b[6]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6969696996966996)) 
    \mem_in_b[6]_i_35 
       (.I0(\mem_in_b[7]_i_5_n_0 ),
        .I1(ex_in_c[3]),
        .I2(ex_in_c[2]),
        .I3(ex_in_c[0]),
        .I4(ex_in_b[7]),
        .I5(ex_in_c[1]),
        .O(\mem_in_b[6]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \mem_in_b[6]_i_36 
       (.I0(\mem_in_b[7]_i_5_n_0 ),
        .I1(ex_in_c[2]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[7]),
        .I4(ex_in_c[0]),
        .O(\mem_in_b[6]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \mem_in_b[6]_i_37 
       (.I0(\mem_in_b[7]_i_5_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[0]),
        .O(\mem_in_b[6]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[6]_i_38 
       (.I0(\mem_in_b[7]_i_5_n_0 ),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[6]),
        .O(\mem_in_b[6]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000051)) 
    \mem_in_b[6]_i_39 
       (.I0(ex_in_c[2]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[1]),
        .I4(ex_in_c[3]),
        .O(\mem_in_b[6]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0045)) 
    \mem_in_b[6]_i_40 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[7]),
        .I2(ex_in_c[0]),
        .I3(ex_in_c[2]),
        .O(\mem_in_b[6]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[6]_i_41 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[1]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[3]),
        .O(\mem_in_b[6]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[6]_i_42 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[6]_i_43 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \mem_in_b[6]_i_44 
       (.I0(ex_in_b[2]),
        .I1(\mem_in_b[6]_i_53_n_0 ),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[4]),
        .I4(ex_in_b[0]),
        .I5(ex_in_c[5]),
        .O(\mem_in_b[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[6]_i_45 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[5]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[4]),
        .I4(ex_in_c[3]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[6]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[6]_i_46 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[4]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[6]_i_47 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[6]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_48 
       (.I0(ex_in_b[5]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[6]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \mem_in_b[6]_i_49 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[7]),
        .I2(ex_in_b[5]),
        .I3(ex_in_c[2]),
        .I4(ex_in_b[6]),
        .I5(ex_in_c[1]),
        .O(\mem_in_b[6]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_50 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_51 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_52 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_53 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[6]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_in_b[6]_i_7 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_11_n_0 ),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5575)) 
    \mem_in_b[6]_i_8 
       (.I0(ex_in_c[7]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b[7]_i_11_n_0 ),
        .I3(ex_in_c[6]),
        .O(\mem_in_b[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_9 
       (.I0(\mem_in_b_reg[6]_i_10_n_5 ),
        .I1(\mem_in_b_reg[6]_i_24_n_4 ),
        .O(\mem_in_b[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \mem_in_b[7]_i_11 
       (.I0(ex_in_c[3]),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[0]),
        .I4(ex_in_c[2]),
        .I5(ex_in_c[4]),
        .O(\mem_in_b[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \mem_in_b[7]_i_12 
       (.I0(\mem_in_b_reg[6]_i_10_n_4 ),
        .I1(\mem_in_b_reg[7]_i_21_n_7 ),
        .I2(ex_in_b[0]),
        .I3(ex_in_c[7]),
        .I4(\mem_in_b[7]_i_22_n_0 ),
        .O(\mem_in_b[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_13 
       (.I0(ex_in_c[7]),
        .I1(ex_in_b[7]),
        .O(\mem_in_b[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_14 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .O(\mem_in_b[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_15 
       (.I0(ex_in_c[5]),
        .I1(ex_in_b[5]),
        .O(\mem_in_b[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_16 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .O(\mem_in_b[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_17 
       (.I0(ex_in_b[7]),
        .I1(ex_in_c[7]),
        .O(\mem_in_b[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_18 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[6]),
        .O(\mem_in_b[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_19 
       (.I0(ex_in_b[5]),
        .I1(ex_in_c[5]),
        .O(\mem_in_b[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_20 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[4]),
        .O(\mem_in_b[7]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \mem_in_b[7]_i_22 
       (.I0(\mem_in_b_reg[6]_i_10_n_5 ),
        .I1(\mem_in_b_reg[6]_i_24_n_4 ),
        .I2(ex_in_c[6]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8F08080870F7F7F7)) 
    \mem_in_b[7]_i_23 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b[7]_i_24_n_0 ),
        .I3(ex_in_b[1]),
        .I4(ex_in_c[5]),
        .I5(\mem_in_b[7]_i_25_n_0 ),
        .O(\mem_in_b[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[7]_i_24 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[4]),
        .O(\mem_in_b[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \mem_in_b[7]_i_25 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[4]),
        .I2(ex_in_b[2]),
        .I3(ex_in_c[5]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[4]),
        .O(\mem_in_b[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFEEE800002228)) 
    \mem_in_b[7]_i_3 
       (.I0(\mem_in_b[7]_i_4_n_0 ),
        .I1(ex_in_op[2]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[0]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[7]),
        .O(\mem_in_b[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[7]_i_4 
       (.I0(\mem_in_b[7]_i_5_n_0 ),
        .I1(\mem_in_b_reg[7]_i_6_n_7 ),
        .I2(\mem_in_b[7]_i_7_n_0 ),
        .I3(\alu_inst/data1 [7]),
        .I4(\mem_in_b[7]_i_9_n_0 ),
        .I5(\alu_inst/data0 [7]),
        .O(\mem_in_b[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_in_b[7]_i_5 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_11_n_0 ),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEABF)) 
    \mem_in_b[7]_i_7 
       (.I0(ex_in_op[2]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[3]),
        .I3(ex_in_op[0]),
        .O(\mem_in_b[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0418)) 
    \mem_in_b[7]_i_9 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[7]_i_9_n_0 ));
  (* ORIG_CELL_NAME = "mem_in_b_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[0]_i_1_n_0 ),
        .Q(mem_in_b[0]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[0]_i_31 
       (.CI(\mem_in_b_reg[0]_i_36_n_0 ),
        .CO({\NLW_mem_in_b_reg[0]_i_31_CO_UNCONNECTED [3:1],\alu_inst/data3 [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\alu_inst/data3 [1]}),
        .O(\NLW_mem_in_b_reg[0]_i_31_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\mem_in_b[0]_i_37_n_0 }));
  CARRY4 \mem_in_b_reg[0]_i_36 
       (.CI(\mem_in_b_reg[0]_i_38_n_0 ),
        .CO({\mem_in_b_reg[0]_i_36_n_0 ,\NLW_mem_in_b_reg[0]_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[1]_i_5_n_4 ,\mem_in_b_reg[1]_i_5_n_5 ,\mem_in_b_reg[1]_i_5_n_6 ,\mem_in_b_reg[1]_i_5_n_7 }),
        .O(\NLW_mem_in_b_reg[0]_i_36_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_39_n_0 ,\mem_in_b[0]_i_40_n_0 ,\mem_in_b[0]_i_41_n_0 ,\mem_in_b[0]_i_42_n_0 }));
  CARRY4 \mem_in_b_reg[0]_i_38 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[0]_i_38_n_0 ,\NLW_mem_in_b_reg[0]_i_38_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [1]),
        .DI({\mem_in_b_reg[1]_i_8_n_4 ,\mem_in_b_reg[1]_i_8_n_5 ,\mem_in_b_reg[1]_i_8_n_6 ,ex_in_b[0]}),
        .O(\NLW_mem_in_b_reg[0]_i_38_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_43_n_0 ,\mem_in_b[0]_i_44_n_0 ,\mem_in_b[0]_i_45_n_0 ,\mem_in_b[0]_i_46_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mem_in_b_reg[0]_i_5 
       (.CI(1'b0),
        .CO({\alu_inst/ltOp ,\NLW_mem_in_b_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[0]_i_11_n_0 ,\mem_in_b[0]_i_12_n_0 ,\mem_in_b[0]_i_13_n_0 ,\mem_in_b[0]_i_14_n_0 }),
        .O(\NLW_mem_in_b_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_15_n_0 ,\mem_in_b[0]_i_16_n_0 ,\mem_in_b[0]_i_17_n_0 ,\mem_in_b[0]_i_18_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mem_in_b_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\alu_inst/data5 ,\NLW_mem_in_b_reg[0]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[0]_i_19_n_0 ,\mem_in_b[0]_i_20_n_0 ,\mem_in_b[0]_i_21_n_0 ,\mem_in_b[0]_i_22_n_0 }),
        .O(\NLW_mem_in_b_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_23_n_0 ,\mem_in_b[0]_i_24_n_0 ,\mem_in_b[0]_i_25_n_0 ,\mem_in_b[0]_i_26_n_0 }));
  MUXF7 \mem_in_b_reg[0]_i_9 
       (.I0(\mem_in_b[0]_i_27_n_0 ),
        .I1(\mem_in_b[0]_i_28_n_0 ),
        .O(\mem_in_b_reg[0]_i_9_n_0 ),
        .S(\mem_in_b[0]_i_6_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[1]_i_2_n_0 ),
        .Q(mem_in_b[1]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[1]_i_4 
       (.CI(\mem_in_b_reg[1]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED [3:2],\alu_inst/data3 [1],\NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [2],\mem_in_b_reg[2]_i_6_n_4 }),
        .O({\NLW_mem_in_b_reg[1]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[1]_i_4_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[1]_i_6_n_0 ,\mem_in_b[1]_i_7_n_0 }));
  CARRY4 \mem_in_b_reg[1]_i_5 
       (.CI(\mem_in_b_reg[1]_i_8_n_0 ),
        .CO({\mem_in_b_reg[1]_i_5_n_0 ,\NLW_mem_in_b_reg[1]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[2]_i_6_n_5 ,\mem_in_b_reg[2]_i_6_n_6 ,\mem_in_b_reg[2]_i_6_n_7 ,\mem_in_b_reg[2]_i_16_n_4 }),
        .O({\mem_in_b_reg[1]_i_5_n_4 ,\mem_in_b_reg[1]_i_5_n_5 ,\mem_in_b_reg[1]_i_5_n_6 ,\mem_in_b_reg[1]_i_5_n_7 }),
        .S({\mem_in_b[1]_i_9_n_0 ,\mem_in_b[1]_i_10_n_0 ,\mem_in_b[1]_i_11_n_0 ,\mem_in_b[1]_i_12_n_0 }));
  CARRY4 \mem_in_b_reg[1]_i_8 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[1]_i_8_n_0 ,\NLW_mem_in_b_reg[1]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [2]),
        .DI({\mem_in_b_reg[2]_i_16_n_5 ,\mem_in_b_reg[2]_i_16_n_6 ,ex_in_b[1],1'b0}),
        .O({\mem_in_b_reg[1]_i_8_n_4 ,\mem_in_b_reg[1]_i_8_n_5 ,\mem_in_b_reg[1]_i_8_n_6 ,\NLW_mem_in_b_reg[1]_i_8_O_UNCONNECTED [0]}),
        .S({\mem_in_b[1]_i_13_n_0 ,\mem_in_b[1]_i_14_n_0 ,\mem_in_b[1]_i_15_n_0 ,1'b1}));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[2]_i_2_n_0 ),
        .Q(mem_in_b[2]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[2]_i_16 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[2]_i_16_n_0 ,\NLW_mem_in_b_reg[2]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [3]),
        .DI({\mem_in_b_reg[3]_i_18_n_5 ,\mem_in_b_reg[3]_i_18_n_6 ,ex_in_b[2],1'b0}),
        .O({\mem_in_b_reg[2]_i_16_n_4 ,\mem_in_b_reg[2]_i_16_n_5 ,\mem_in_b_reg[2]_i_16_n_6 ,\NLW_mem_in_b_reg[2]_i_16_O_UNCONNECTED [0]}),
        .S({\mem_in_b[2]_i_22_n_0 ,\mem_in_b[2]_i_23_n_0 ,\mem_in_b[2]_i_24_n_0 ,1'b1}));
  CARRY4 \mem_in_b_reg[2]_i_4 
       (.CI(\mem_in_b_reg[2]_i_6_n_0 ),
        .CO({\NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED [3:2],\alu_inst/data3 [2],\NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [3],\mem_in_b_reg[3]_i_7_n_4 }),
        .O({\NLW_mem_in_b_reg[2]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[2]_i_4_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[2]_i_7_n_0 ,\mem_in_b[2]_i_8_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \mem_in_b_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[2]_i_5_n_0 ,\NLW_mem_in_b_reg[2]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[2]_i_9_n_0 ,\mem_in_b[2]_i_10_n_0 ,\mem_in_b[2]_i_11_n_0 ,1'b0}),
        .O({\mem_in_b_reg[2]_i_5_n_4 ,\mem_in_b_reg[2]_i_5_n_5 ,\mem_in_b_reg[2]_i_5_n_6 ,\mem_in_b_reg[2]_i_5_n_7 }),
        .S({\mem_in_b[2]_i_12_n_0 ,\mem_in_b[2]_i_13_n_0 ,\mem_in_b[2]_i_14_n_0 ,\mem_in_b[2]_i_15_n_0 }));
  CARRY4 \mem_in_b_reg[2]_i_6 
       (.CI(\mem_in_b_reg[2]_i_16_n_0 ),
        .CO({\mem_in_b_reg[2]_i_6_n_0 ,\NLW_mem_in_b_reg[2]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[3]_i_7_n_5 ,\mem_in_b_reg[3]_i_7_n_6 ,\mem_in_b_reg[3]_i_7_n_7 ,\mem_in_b_reg[3]_i_18_n_4 }),
        .O({\mem_in_b_reg[2]_i_6_n_4 ,\mem_in_b_reg[2]_i_6_n_5 ,\mem_in_b_reg[2]_i_6_n_6 ,\mem_in_b_reg[2]_i_6_n_7 }),
        .S({\mem_in_b[2]_i_17_n_0 ,\mem_in_b[2]_i_18_n_0 ,\mem_in_b[2]_i_19_n_0 ,\mem_in_b[2]_i_20_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[3]_i_2_n_0 ),
        .Q(mem_in_b[3]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[3]_i_18 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_18_n_0 ,\NLW_mem_in_b_reg[3]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [4]),
        .DI({\mem_in_b_reg[4]_i_8_n_5 ,\mem_in_b_reg[4]_i_8_n_6 ,ex_in_b[3],1'b0}),
        .O({\mem_in_b_reg[3]_i_18_n_4 ,\mem_in_b_reg[3]_i_18_n_5 ,\mem_in_b_reg[3]_i_18_n_6 ,\NLW_mem_in_b_reg[3]_i_18_O_UNCONNECTED [0]}),
        .S({\mem_in_b[3]_i_23_n_0 ,\mem_in_b[3]_i_24_n_0 ,\mem_in_b[3]_i_25_n_0 ,1'b1}));
  CARRY4 \mem_in_b_reg[3]_i_4 
       (.CI(\mem_in_b_reg[3]_i_7_n_0 ),
        .CO({\NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED [3:2],\alu_inst/data3 [3],\NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [4],\mem_in_b_reg[4]_i_5_n_4 }),
        .O({\NLW_mem_in_b_reg[3]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[3]_i_4_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[3]_i_8_n_0 ,\mem_in_b[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_5_n_0 ,\NLW_mem_in_b_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(ex_in_b[3:0]),
        .O(\alu_inst/data1 [3:0]),
        .S({\mem_in_b[3]_i_10_n_0 ,\mem_in_b[3]_i_11_n_0 ,\mem_in_b[3]_i_12_n_0 ,\mem_in_b[3]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_6_n_0 ,\NLW_mem_in_b_reg[3]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(ex_in_b[3:0]),
        .O(\alu_inst/data0 [3:0]),
        .S({\mem_in_b[3]_i_14_n_0 ,\mem_in_b[3]_i_15_n_0 ,\mem_in_b[3]_i_16_n_0 ,\mem_in_b[3]_i_17_n_0 }));
  CARRY4 \mem_in_b_reg[3]_i_7 
       (.CI(\mem_in_b_reg[3]_i_18_n_0 ),
        .CO({\mem_in_b_reg[3]_i_7_n_0 ,\NLW_mem_in_b_reg[3]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[4]_i_5_n_5 ,\mem_in_b_reg[4]_i_5_n_6 ,\mem_in_b_reg[4]_i_5_n_7 ,\mem_in_b_reg[4]_i_8_n_4 }),
        .O({\mem_in_b_reg[3]_i_7_n_4 ,\mem_in_b_reg[3]_i_7_n_5 ,\mem_in_b_reg[3]_i_7_n_6 ,\mem_in_b_reg[3]_i_7_n_7 }),
        .S({\mem_in_b[3]_i_19_n_0 ,\mem_in_b[3]_i_20_n_0 ,\mem_in_b[3]_i_21_n_0 ,\mem_in_b[3]_i_22_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[4]_i_2_n_0 ),
        .Q(mem_in_b[4]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[4]_i_4 
       (.CI(\mem_in_b_reg[4]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED [3:2],\alu_inst/data3 [4],\NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [5],\mem_in_b_reg[5]_i_5_n_4 }),
        .O({\NLW_mem_in_b_reg[4]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[4]_i_4_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[4]_i_6_n_0 ,\mem_in_b[4]_i_7_n_0 }));
  CARRY4 \mem_in_b_reg[4]_i_5 
       (.CI(\mem_in_b_reg[4]_i_8_n_0 ),
        .CO({\mem_in_b_reg[4]_i_5_n_0 ,\NLW_mem_in_b_reg[4]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[5]_i_5_n_5 ,\mem_in_b_reg[5]_i_5_n_6 ,\mem_in_b_reg[5]_i_5_n_7 ,\mem_in_b_reg[5]_i_8_n_4 }),
        .O({\mem_in_b_reg[4]_i_5_n_4 ,\mem_in_b_reg[4]_i_5_n_5 ,\mem_in_b_reg[4]_i_5_n_6 ,\mem_in_b_reg[4]_i_5_n_7 }),
        .S({\mem_in_b[4]_i_9_n_0 ,\mem_in_b[4]_i_10_n_0 ,\mem_in_b[4]_i_11_n_0 ,\mem_in_b[4]_i_12_n_0 }));
  CARRY4 \mem_in_b_reg[4]_i_8 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[4]_i_8_n_0 ,\NLW_mem_in_b_reg[4]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [5]),
        .DI({\mem_in_b_reg[5]_i_8_n_5 ,\mem_in_b_reg[5]_i_8_n_6 ,ex_in_b[4],1'b0}),
        .O({\mem_in_b_reg[4]_i_8_n_4 ,\mem_in_b_reg[4]_i_8_n_5 ,\mem_in_b_reg[4]_i_8_n_6 ,\NLW_mem_in_b_reg[4]_i_8_O_UNCONNECTED [0]}),
        .S({\mem_in_b[4]_i_13_n_0 ,\mem_in_b[4]_i_14_n_0 ,\mem_in_b[4]_i_15_n_0 ,1'b1}));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[5]_i_2_n_0 ),
        .Q(mem_in_b[5]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[5]_i_4 
       (.CI(\mem_in_b_reg[5]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED [3:2],\alu_inst/data3 [5],\NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [6],\mem_in_b_reg[6]_i_6_n_5 }),
        .O({\NLW_mem_in_b_reg[5]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[5]_i_4_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[5]_i_6_n_0 ,\mem_in_b[5]_i_7_n_0 }));
  CARRY4 \mem_in_b_reg[5]_i_5 
       (.CI(\mem_in_b_reg[5]_i_8_n_0 ),
        .CO({\mem_in_b_reg[5]_i_5_n_0 ,\NLW_mem_in_b_reg[5]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[6]_i_6_n_6 ,\mem_in_b_reg[6]_i_6_n_7 ,\mem_in_b_reg[6]_i_15_n_4 ,\mem_in_b_reg[6]_i_15_n_5 }),
        .O({\mem_in_b_reg[5]_i_5_n_4 ,\mem_in_b_reg[5]_i_5_n_5 ,\mem_in_b_reg[5]_i_5_n_6 ,\mem_in_b_reg[5]_i_5_n_7 }),
        .S({\mem_in_b[5]_i_9_n_0 ,\mem_in_b[5]_i_10_n_0 ,\mem_in_b[5]_i_11_n_0 ,\mem_in_b[5]_i_12_n_0 }));
  CARRY4 \mem_in_b_reg[5]_i_8 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[5]_i_8_n_0 ,\NLW_mem_in_b_reg[5]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(\alu_inst/data3 [6]),
        .DI({\mem_in_b_reg[6]_i_15_n_6 ,\mem_in_b_reg[6]_i_15_n_7 ,ex_in_b[5],1'b0}),
        .O({\mem_in_b_reg[5]_i_8_n_4 ,\mem_in_b_reg[5]_i_8_n_5 ,\mem_in_b_reg[5]_i_8_n_6 ,\NLW_mem_in_b_reg[5]_i_8_O_UNCONNECTED [0]}),
        .S({\mem_in_b[5]_i_13_n_0 ,\mem_in_b[5]_i_14_n_0 ,\mem_in_b[5]_i_15_n_0 ,1'b1}));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[6]_i_2_n_0 ),
        .Q(mem_in_b[6]),
        .R(rom_inst_n_14));
  CARRY4 \mem_in_b_reg[6]_i_10 
       (.CI(\mem_in_b_reg[2]_i_5_n_0 ),
        .CO(\NLW_mem_in_b_reg[6]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_in_b[6]_i_25_n_0 ,\mem_in_b[6]_i_26_n_0 ,\mem_in_b[6]_i_27_n_0 }),
        .O({\mem_in_b_reg[6]_i_10_n_4 ,\mem_in_b_reg[6]_i_10_n_5 ,\mem_in_b_reg[6]_i_10_n_6 ,\mem_in_b_reg[6]_i_10_n_7 }),
        .S({\mem_in_b[6]_i_28_n_0 ,\mem_in_b[6]_i_29_n_0 ,\mem_in_b[6]_i_30_n_0 ,\mem_in_b[6]_i_31_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_15 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_15_n_0 ,\NLW_mem_in_b_reg[6]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(\mem_in_b[7]_i_5_n_0 ),
        .DI({\mem_in_b[6]_i_32_n_0 ,\mem_in_b[6]_i_33_n_0 ,\mem_in_b[6]_i_34_n_0 ,ex_in_b[6]}),
        .O({\mem_in_b_reg[6]_i_15_n_4 ,\mem_in_b_reg[6]_i_15_n_5 ,\mem_in_b_reg[6]_i_15_n_6 ,\mem_in_b_reg[6]_i_15_n_7 }),
        .S({\mem_in_b[6]_i_35_n_0 ,\mem_in_b[6]_i_36_n_0 ,\mem_in_b[6]_i_37_n_0 ,\mem_in_b[6]_i_38_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \mem_in_b_reg[6]_i_24 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_24_n_0 ,\NLW_mem_in_b_reg[6]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_41_n_0 ,\mem_in_b[6]_i_42_n_0 ,\mem_in_b[6]_i_43_n_0 ,1'b0}),
        .O({\mem_in_b_reg[6]_i_24_n_4 ,\mem_in_b_reg[6]_i_24_n_5 ,\mem_in_b_reg[6]_i_24_n_6 ,\mem_in_b_reg[6]_i_24_n_7 }),
        .S({\mem_in_b[6]_i_44_n_0 ,\mem_in_b[6]_i_45_n_0 ,\mem_in_b[6]_i_46_n_0 ,\mem_in_b[6]_i_47_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_4 
       (.CI(\mem_in_b_reg[6]_i_6_n_0 ),
        .CO({\NLW_mem_in_b_reg[6]_i_4_CO_UNCONNECTED [3:1],\alu_inst/data3 [6]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_in_b[6]_i_7_n_0 }),
        .O(\NLW_mem_in_b_reg[6]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\mem_in_b[6]_i_8_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_5 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_5_n_0 ,\NLW_mem_in_b_reg[6]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_9_n_0 ,\mem_in_b_reg[6]_i_10_n_6 ,\mem_in_b_reg[6]_i_10_n_7 ,\mem_in_b_reg[2]_i_5_n_4 }),
        .O({\mem_in_b_reg[6]_i_5_n_4 ,\mem_in_b_reg[6]_i_5_n_5 ,\mem_in_b_reg[6]_i_5_n_6 ,\mem_in_b_reg[6]_i_5_n_7 }),
        .S({\mem_in_b[6]_i_11_n_0 ,\mem_in_b[6]_i_12_n_0 ,\mem_in_b[6]_i_13_n_0 ,\mem_in_b[6]_i_14_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_6 
       (.CI(\mem_in_b_reg[6]_i_15_n_0 ),
        .CO({\mem_in_b_reg[6]_i_6_n_0 ,\NLW_mem_in_b_reg[6]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_16_n_0 ,\mem_in_b[6]_i_17_n_0 ,\mem_in_b[6]_i_18_n_0 ,\mem_in_b[6]_i_19_n_0 }),
        .O({\mem_in_b_reg[6]_i_6_n_4 ,\mem_in_b_reg[6]_i_6_n_5 ,\mem_in_b_reg[6]_i_6_n_6 ,\mem_in_b_reg[6]_i_6_n_7 }),
        .S({\mem_in_b[6]_i_20_n_0 ,\mem_in_b[6]_i_21_n_0 ,\mem_in_b[6]_i_22_n_0 ,\mem_in_b[6]_i_23_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* ORIG_CELL_NAME = "mem_in_b_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[7]_i_3_n_0 ),
        .Q(mem_in_b[7]),
        .R(rom_inst_n_14));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[7]_i_10 
       (.CI(\mem_in_b_reg[3]_i_6_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,ex_in_b[6:4]}),
        .O(\alu_inst/data0 [7:4]),
        .S({\mem_in_b[7]_i_17_n_0 ,\mem_in_b[7]_i_18_n_0 ,\mem_in_b[7]_i_19_n_0 ,\mem_in_b[7]_i_20_n_0 }));
  CARRY4 \mem_in_b_reg[7]_i_21 
       (.CI(\mem_in_b_reg[6]_i_24_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_21_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_in_b_reg[7]_i_21_O_UNCONNECTED [3:1],\mem_in_b_reg[7]_i_21_n_7 }),
        .S({1'b0,1'b0,1'b0,\mem_in_b[7]_i_23_n_0 }));
  CARRY4 \mem_in_b_reg[7]_i_6 
       (.CI(\mem_in_b_reg[6]_i_5_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_in_b_reg[7]_i_6_O_UNCONNECTED [3:1],\mem_in_b_reg[7]_i_6_n_7 }),
        .S({1'b0,1'b0,1'b0,\mem_in_b[7]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[7]_i_8 
       (.CI(\mem_in_b_reg[3]_i_5_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,ex_in_b[6:4]}),
        .O(\alu_inst/data1 [7:4]),
        .S({\mem_in_b[7]_i_13_n_0 ,\mem_in_b[7]_i_14_n_0 ,\mem_in_b[7]_i_15_n_0 ,\mem_in_b[7]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_op_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_op[0]),
        .Q(mem_in_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_op_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_op[1]),
        .Q(mem_in_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_op_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_op[2]),
        .Q(mem_in_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_op_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ex_in_op[3]),
        .Q(mem_in_op[3]),
        .R(1'b0));
  counter_heightbits pc_inst
       (.D({pc_inst_n_9,pc_inst_n_10,pc_inst_n_11,pc_inst_n_12}),
        .Q(pc_leds_OBUF),
        .SS(clear),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .\dout_reg[8] (reset_sync),
        .\internal_counter_reg[0]_0 (pc_inst_n_14),
        .\internal_counter_reg[0]_1 (pc_inst_n_15),
        .\internal_counter_reg[1]_0 (pc_inst_n_13),
        .\internal_counter_reg[1]_1 (pc_inst_n_16),
        .\internal_counter_reg[3]_0 (pc_inst_n_17),
        .out(stall_pipeline),
        .reset_sync_reg(pc_inst_n_8),
        .stall_pipeline_reg(pc_inst_n_0));
  OBUF \pc_leds_OBUF[0]_inst 
       (.I(pc_leds_OBUF[0]),
        .O(pc_leds[0]));
  OBUF \pc_leds_OBUF[1]_inst 
       (.I(pc_leds_OBUF[1]),
        .O(pc_leds[1]));
  OBUF \pc_leds_OBUF[2]_inst 
       (.I(pc_leds_OBUF[2]),
        .O(pc_leds[2]));
  OBUF \pc_leds_OBUF[3]_inst 
       (.I(pc_leds_OBUF[3]),
        .O(pc_leds[3]));
  OBUF \pc_leds_OBUF[4]_inst 
       (.I(pc_leds_OBUF[4]),
        .O(pc_leds[4]));
  OBUF \pc_leds_OBUF[5]_inst 
       (.I(pc_leds_OBUF[5]),
        .O(pc_leds[5]));
  OBUF \pc_leds_OBUF[6]_inst 
       (.I(pc_leds_OBUF[6]),
        .O(pc_leds[6]));
  ram ram_inst
       (.D(NLW_ram_inst_D_UNCONNECTED[7:0]),
        .E(NLW_ram_inst_E_UNCONNECTED[0]),
        .Q(reg_w_c),
        .SS(clear),
        .\base_pointer_reg[7]_0 (\NLW_ram_inst_base_pointer_reg[7]_0_UNCONNECTED [7:0]),
        .clk_led_OBUF_BUFG(NLW_ram_inst_clk_led_OBUF_BUFG_UNCONNECTED),
        .\dout_reg[0]_0 (\NLW_ram_inst_dout_reg[0]_0_UNCONNECTED ),
        .in0(register_data),
        .mem_base_pointer_way(NLW_ram_inst_mem_base_pointer_way_UNCONNECTED),
        .out(reset_sync),
        .\regs_reg[14][0]_0 (\NLW_ram_inst_regs_reg[14][0]_0_UNCONNECTED ),
        .\regs_reg[170][7]_0 (\NLW_ram_inst_regs_reg[170][7]_0_UNCONNECTED [7:0]),
        .\regs_reg[254][7]_0 (\NLW_ram_inst_regs_reg[254][7]_0_UNCONNECTED [7:0]),
        .\regs_reg[255][0]_0 (\NLW_ram_inst_regs_reg[255][0]_0_UNCONNECTED [7:0]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h3774)) 
    \reg_w_a[7]_i_1 
       (.I0(mem_in_op[3]),
        .I1(mem_in_op[2]),
        .I2(mem_in_op[1]),
        .I3(mem_in_op[0]),
        .O(reg_w_a0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(reg_w_a0),
        .D(mem_in_a[0]),
        .Q(reg_w_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(reg_w_a0),
        .D(mem_in_a[1]),
        .Q(reg_w_a[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[0]_i_1 
       (.I0(mem_in_b[0]),
        .I1(reg_w_a0),
        .I2(register_data[0]),
        .O(\reg_w_c[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[1]_i_1 
       (.I0(mem_in_b[1]),
        .I1(reg_w_a0),
        .I2(register_data[1]),
        .O(\reg_w_c[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[2]_i_1 
       (.I0(mem_in_b[2]),
        .I1(reg_w_a0),
        .I2(register_data[2]),
        .O(\reg_w_c[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[3]_i_1 
       (.I0(mem_in_b[3]),
        .I1(reg_w_a0),
        .I2(register_data[3]),
        .O(\reg_w_c[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[4]_i_1 
       (.I0(mem_in_b[4]),
        .I1(reg_w_a0),
        .I2(register_data[4]),
        .O(\reg_w_c[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[5]_i_1 
       (.I0(mem_in_b[5]),
        .I1(reg_w_a0),
        .I2(register_data[5]),
        .O(\reg_w_c[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[6]_i_1 
       (.I0(mem_in_b[6]),
        .I1(reg_w_a0),
        .I2(register_data[6]),
        .O(\reg_w_c[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h547F)) 
    \reg_w_c[7]_i_1 
       (.I0(mem_in_op[2]),
        .I1(mem_in_op[1]),
        .I2(mem_in_op[0]),
        .I3(mem_in_op[3]),
        .O(\reg_w_c[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_w_c[7]_i_2 
       (.I0(mem_in_b[7]),
        .I1(reg_w_a0),
        .I2(register_data[7]),
        .O(\reg_w_c[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[0]_i_1_n_0 ),
        .Q(reg_w_c[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[1]_i_1_n_0 ),
        .Q(reg_w_c[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[2]_i_1_n_0 ),
        .Q(reg_w_c[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[3]_i_1_n_0 ),
        .Q(reg_w_c[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[4]_i_1_n_0 ),
        .Q(reg_w_c[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[5]_i_1_n_0 ),
        .Q(reg_w_c[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[6]_i_1_n_0 ),
        .Q(reg_w_c[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_c_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\reg_w_c[7]_i_1_n_0 ),
        .D(\reg_w_c[7]_i_2_n_0 ),
        .Q(reg_w_c[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_op_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(mem_in_op[0]),
        .Q(reg_w_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_op_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(mem_in_op[1]),
        .Q(reg_w_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_op_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(mem_in_op[2]),
        .Q(reg_w_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_op_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(mem_in_op[3]),
        .Q(reg_w_op[3]),
        .R(1'b0));
  registers registers_inst
       (.Q({NLW_registers_inst_Q_UNCONNECTED[7:4],reg_w_op}),
        .SS(clear),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .di_in_b({NLW_registers_inst_di_in_b_UNCONNECTED[3],di_in_b}),
        .di_in_c({NLW_registers_inst_di_in_c_UNCONNECTED[3],rom_stall_fetched[7],NLW_registers_inst_di_in_c_UNCONNECTED[1],di_in_c}),
        .in0(register_a),
        .out(register_data),
        .\reg_w_op_reg[2] (registers_inst_n_2),
        .\reg_w_op_reg[4] (\NLW_registers_inst_reg_w_op_reg[4]_UNCONNECTED ),
        .\reg_w_op_reg[4]_0 (\NLW_registers_inst_reg_w_op_reg[4]_0_UNCONNECTED ),
        .register_b(register_b),
        .\regs_reg[0][0]_0 ({\NLW_registers_inst_regs_reg[0][0]_0_UNCONNECTED [3:2],reg_w_a}));
  LUT1 #(
    .INIT(2'h1)) 
    reset_sync_i_1
       (.I0(rst_IBUF),
        .O(reset_sync_i_1_n_0));
  initial assign reset_sync_reg.notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    reset_sync_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_sync_i_1_n_0),
        .D(1'b1),
        .Q(reset_sync));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[0]),
        .Q(rom_fetched[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[10] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[10]),
        .Q(rom_fetched[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[16]),
        .Q(rom_fetched[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[17]),
        .Q(rom_fetched[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[24] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[24]),
        .Q(rom_fetched[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[25] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[25]),
        .Q(rom_fetched[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[26] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[26]),
        .Q(rom_fetched[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[27] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[27]),
        .Q(rom_fetched[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[8]),
        .Q(rom_fetched[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[9] 
       (.C(clk_led_OBUF_BUFG),
        .CE(pc_inst_n_0),
        .D(p_1_in__0[9]),
        .Q(rom_fetched[9]),
        .R(1'b0));
  rom rom_inst
       (.D({NLW_rom_inst_D_UNCONNECTED[2:1],rom_stall_fetched[7]}),
        .Q({NLW_rom_inst_Q_UNCONNECTED[7:4],mem_in_op}),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .\di_in_op_reg[7] (rom_inst_n_13),
        .\dout_reg[24]_0 (pc_inst_n_17),
        .\dout_reg[25]_0 ({pc_inst_n_9,pc_inst_n_10,pc_inst_n_11,pc_inst_n_12}),
        .\dout_reg[26]_0 (pc_inst_n_15),
        .\dout_reg[27]_0 (pc_inst_n_14),
        .\dout_reg[8]_0 (reset_sync),
        .\dout_reg[8]_1 (pc_inst_n_8),
        .\dout_reg[8]_2 (pc_inst_n_16),
        .\dout_reg[9]_0 (pc_inst_n_13),
        .\ex_in_op_reg[7] (rom_inst_n_14),
        .\mem_in_b_reg[0]_rep__0 ({\NLW_rom_inst_mem_in_b_reg[0]_rep__0_UNCONNECTED [7:6],rom_stall_fetched[7],\NLW_rom_inst_mem_in_b_reg[0]_rep__0_UNCONNECTED [4],ex_in_op}),
        .\mem_in_op_reg[3] (\NLW_rom_inst_mem_in_op_reg[3]_UNCONNECTED ),
        .\mem_in_op_reg[4] (\NLW_rom_inst_mem_in_op_reg[4]_UNCONNECTED ),
        .ns(ns),
        .out({NLW_rom_inst_out_UNCONNECTED[31:28],rom_fetched[27:24],NLW_rom_inst_out_UNCONNECTED[23:18],rom_fetched[17:16],NLW_rom_inst_out_UNCONNECTED[15:11],rom_fetched[10:8],NLW_rom_inst_out_UNCONNECTED[7:1],rom_fetched[0]}),
        .reset_sync_reg(rom_inst_n_1),
        .\rom_fetched_reg[27] ({rom_stall_fetched[27:24],\NLW_rom_inst_rom_fetched_reg[27]_UNCONNECTED [23:18],rom_stall_fetched[17:16],\NLW_rom_inst_rom_fetched_reg[27]_UNCONNECTED [15:11],rom_stall_fetched[10:8],\NLW_rom_inst_rom_fetched_reg[27]_UNCONNECTED [7:1],rom_stall_fetched[0]}),
        .\rom_fetched_reg[27]_0 (stall_pipeline_delayed),
        .rom_output({rom_output[27:24],rom_output[17:16],rom_output[10:8]}),
        .\rom_stall_fetched_reg[27] ({p_1_in__0[27:24],p_1_in__0[17:16],p_1_in__0[10:8],p_1_in__0[0]}),
        .stall_pipeline_delayed_reg(stall_pipeline),
        .stall_pipeline_i_15_0(NLW_rom_inst_stall_pipeline_i_15_0_UNCONNECTED),
        .stall_pipeline_i_15_1(\di_in_op_reg_n_0_[2] ),
        .stall_pipeline_i_15_2(\di_in_op_reg_n_0_[0] ),
        .stall_pipeline_i_15_3(\di_in_op_reg_n_0_[3] ),
        .stall_pipeline_i_15_4(\di_in_op_reg_n_0_[1] ),
        .stall_pipeline_i_33_0({NLW_rom_inst_stall_pipeline_i_33_0_UNCONNECTED[7:2],reg_w_a}),
        .stall_pipeline_i_37_0(NLW_rom_inst_stall_pipeline_i_37_0_UNCONNECTED),
        .stall_pipeline_i_37_1(NLW_rom_inst_stall_pipeline_i_37_1_UNCONNECTED),
        .stall_pipeline_i_37_2(NLW_rom_inst_stall_pipeline_i_37_2_UNCONNECTED),
        .stall_pipeline_i_37_3(NLW_rom_inst_stall_pipeline_i_37_3_UNCONNECTED),
        .stall_pipeline_i_37_4(\di_in_a_reg_n_0_[0] ),
        .stall_pipeline_i_37_5(\di_in_a_reg_n_0_[1] ),
        .stall_pipeline_i_37_6(NLW_rom_inst_stall_pipeline_i_37_6_UNCONNECTED),
        .stall_pipeline_i_37_7(NLW_rom_inst_stall_pipeline_i_37_7_UNCONNECTED),
        .stall_pipeline_i_3_0(NLW_rom_inst_stall_pipeline_i_3_0_UNCONNECTED),
        .stall_pipeline_i_3_1(reg_w_op),
        .stall_pipeline_i_4_0({NLW_rom_inst_stall_pipeline_i_4_0_UNCONNECTED[7:2],mem_in_a}),
        .stall_pipeline_i_5_0({NLW_rom_inst_stall_pipeline_i_5_0_UNCONNECTED[7:2],ex_in_a}),
        .stall_pipeline_reg(NLW_rom_inst_stall_pipeline_reg_UNCONNECTED),
        .stall_pipeline_reg_0(registers_inst_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    \rom_stall_fetched[31]_i_1 
       (.I0(stall_pipeline),
        .I1(stall_pipeline_delayed),
        .O(rom_stall_fetched_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[24]),
        .Q(rom_stall_fetched[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[10] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[10]),
        .Q(rom_stall_fetched[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[16]),
        .Q(rom_stall_fetched[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[17]),
        .Q(rom_stall_fetched[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[24] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[24]),
        .Q(rom_stall_fetched[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[25] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[25]),
        .Q(rom_stall_fetched[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[26] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[26]),
        .Q(rom_stall_fetched[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[27] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[27]),
        .Q(rom_stall_fetched[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[8]),
        .Q(rom_stall_fetched[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rom_stall_fetched_reg[9] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_stall_fetched_reg0),
        .D(rom_output[9]),
        .Q(rom_stall_fetched[9]),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  seven_seg_controller seven_seg_inst
       (.D(rom_output[27:24]),
        .an_OBUF(an_OBUF),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .out({NLW_seven_seg_inst_out_UNCONNECTED[7:4],rom_fetched[27:24]}),
        .seg_OBUF(seg_OBUF));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    stall_pipeline_delayed_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_inst_n_1),
        .Q(stall_pipeline_delayed),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    stall_pipeline_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ns),
        .Q(stall_pipeline),
        .R(1'b0));
endmodule

module ram
   (SS,
    in0,
    out,
    \regs_reg[14][0]_0 ,
    Q,
    \regs_reg[255][0]_0 ,
    \dout_reg[0]_0 ,
    D,
    clk_led_OBUF_BUFG,
    \regs_reg[254][7]_0 ,
    \regs_reg[170][7]_0 ,
    E,
    mem_base_pointer_way,
    \base_pointer_reg[7]_0 );
  output [0:0]SS;
  output [7:0]in0;
  input out;
  input \regs_reg[14][0]_0 ;
  input [7:0]Q;
  input [7:0]\regs_reg[255][0]_0 ;
  input \dout_reg[0]_0 ;
  input [7:0]D;
  input clk_led_OBUF_BUFG;
  input [7:0]\regs_reg[254][7]_0 ;
  input [7:0]\regs_reg[170][7]_0 ;
  input [0:0]E;
  input mem_base_pointer_way;
  input [7:0]\base_pointer_reg[7]_0 ;

  wire [7:0]Q;
  wire [0:0]SS;
  wire out;

  assign in0[7:0] = Q;
  LUT1 #(
    .INIT(2'h1)) 
    \regs[0][7]_i_1 
       (.I0(out),
        .O(SS));
endmodule

module registers
   (\reg_w_op_reg[4] ,
    \reg_w_op_reg[4]_0 ,
    \reg_w_op_reg[2] ,
    in0,
    register_b,
    Q,
    \regs_reg[0][0]_0 ,
    di_in_b,
    out,
    di_in_c,
    SS,
    clk_led_OBUF_BUFG);
  output \reg_w_op_reg[4] ;
  output \reg_w_op_reg[4]_0 ;
  output \reg_w_op_reg[2] ;
  output [7:0]in0;
  output [7:0]register_b;
  input [7:0]Q;
  input [3:0]\regs_reg[0][0]_0 ;
  input [3:0]di_in_b;
  input [7:0]out;
  input [3:0]di_in_c;
  input [0:0]SS;
  input clk_led_OBUF_BUFG;

  wire [7:0]Q;
  wire [0:0]SS;
  wire clk_led_OBUF_BUFG;
  wire [3:0]di_in_b;
  wire [3:0]di_in_c;
  wire [7:0]in0;
  wire [7:0]out;
  wire \reg_w_op_reg[2] ;
  wire register_a_inferred_i_11_n_0;
  wire register_a_inferred_i_13_n_0;
  wire register_a_inferred_i_15_n_0;
  wire register_a_inferred_i_17_n_0;
  wire register_a_inferred_i_19_n_0;
  wire register_a_inferred_i_21_n_0;
  wire register_a_inferred_i_23_n_0;
  wire register_a_inferred_i_25_n_0;
  wire register_a_inferred_i_28_n_0;
  wire register_a_inferred_i_32_n_0;
  wire register_a_inferred_i_36_n_0;
  wire register_a_inferred_i_40_n_0;
  wire register_a_inferred_i_44_n_0;
  wire register_a_inferred_i_48_n_0;
  wire register_a_inferred_i_52_n_0;
  wire register_a_inferred_i_56_n_0;
  wire register_a_inferred_i_9_n_0;
  wire [7:0]register_b;
  wire register_b_inferred_i_11_n_0;
  wire register_b_inferred_i_13_n_0;
  wire register_b_inferred_i_15_n_0;
  wire register_b_inferred_i_17_n_0;
  wire register_b_inferred_i_19_n_0;
  wire register_b_inferred_i_21_n_0;
  wire register_b_inferred_i_23_n_0;
  wire register_b_inferred_i_25_n_0;
  wire register_b_inferred_i_28_n_0;
  wire register_b_inferred_i_32_n_0;
  wire register_b_inferred_i_36_n_0;
  wire register_b_inferred_i_40_n_0;
  wire register_b_inferred_i_44_n_0;
  wire register_b_inferred_i_48_n_0;
  wire register_b_inferred_i_52_n_0;
  wire register_b_inferred_i_56_n_0;
  wire register_b_inferred_i_9_n_0;
  wire \regs[0][7]_i_2_n_0 ;
  wire \regs[0][7]_i_3__0_n_0 ;
  wire \regs[1]_16 ;
  wire \regs[2]_17 ;
  wire \regs[3]_18 ;
  wire [3:0]\regs_reg[0][0]_0 ;
  wire [7:0]\regs_reg[0]_0 ;
  wire [7:0]\regs_reg[1]_1 ;
  wire [7:0]\regs_reg[2]_2 ;
  wire [7:0]\regs_reg[3]_3 ;

  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_1
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[7]),
        .I2(register_a_inferred_i_11_n_0),
        .O(in0[7]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_11
       (.I0(register_a_inferred_i_28_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_11_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_13
       (.I0(register_a_inferred_i_32_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_13_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_15
       (.I0(register_a_inferred_i_36_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_15_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_17
       (.I0(register_a_inferred_i_40_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_17_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_19
       (.I0(register_a_inferred_i_44_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_19_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_2
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[6]),
        .I2(register_a_inferred_i_13_n_0),
        .O(in0[6]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_21
       (.I0(register_a_inferred_i_48_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_21_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_23
       (.I0(register_a_inferred_i_52_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_23_n_0),
        .S(di_in_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_a_inferred_i_25
       (.I0(register_a_inferred_i_56_n_0),
        .I1(1'b0),
        .O(register_a_inferred_i_25_n_0),
        .S(di_in_b[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_28
       (.I0(\regs_reg[3]_3 [7]),
        .I1(\regs_reg[2]_2 [7]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [7]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [7]),
        .O(register_a_inferred_i_28_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_3
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[5]),
        .I2(register_a_inferred_i_15_n_0),
        .O(in0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_32
       (.I0(\regs_reg[3]_3 [6]),
        .I1(\regs_reg[2]_2 [6]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [6]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [6]),
        .O(register_a_inferred_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_36
       (.I0(\regs_reg[3]_3 [5]),
        .I1(\regs_reg[2]_2 [5]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [5]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [5]),
        .O(register_a_inferred_i_36_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_4
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[4]),
        .I2(register_a_inferred_i_17_n_0),
        .O(in0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_40
       (.I0(\regs_reg[3]_3 [4]),
        .I1(\regs_reg[2]_2 [4]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [4]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [4]),
        .O(register_a_inferred_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_44
       (.I0(\regs_reg[3]_3 [3]),
        .I1(\regs_reg[2]_2 [3]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [3]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [3]),
        .O(register_a_inferred_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_48
       (.I0(\regs_reg[3]_3 [2]),
        .I1(\regs_reg[2]_2 [2]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [2]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [2]),
        .O(register_a_inferred_i_48_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_5
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[3]),
        .I2(register_a_inferred_i_19_n_0),
        .O(in0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_52
       (.I0(\regs_reg[3]_3 [1]),
        .I1(\regs_reg[2]_2 [1]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [1]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [1]),
        .O(register_a_inferred_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    register_a_inferred_i_56
       (.I0(\regs_reg[3]_3 [0]),
        .I1(\regs_reg[2]_2 [0]),
        .I2(di_in_b[1]),
        .I3(\regs_reg[1]_1 [0]),
        .I4(di_in_b[0]),
        .I5(\regs_reg[0]_0 [0]),
        .O(register_a_inferred_i_56_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_6
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[2]),
        .I2(register_a_inferred_i_21_n_0),
        .O(in0[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_7
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[1]),
        .I2(register_a_inferred_i_23_n_0),
        .O(in0[1]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_a_inferred_i_8
       (.I0(register_a_inferred_i_9_n_0),
        .I1(out[0]),
        .I2(register_a_inferred_i_25_n_0),
        .O(in0[0]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h09000009)) 
    register_a_inferred_i_9
       (.I0(\regs_reg[0][0]_0 [0]),
        .I1(di_in_b[0]),
        .I2(di_in_b[2]),
        .I3(di_in_b[1]),
        .I4(\regs_reg[0][0]_0 [1]),
        .O(register_a_inferred_i_9_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_1
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[7]),
        .I2(register_b_inferred_i_11_n_0),
        .O(register_b[7]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_11
       (.I0(register_b_inferred_i_28_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_11_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_13
       (.I0(register_b_inferred_i_32_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_13_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_15
       (.I0(register_b_inferred_i_36_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_15_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_17
       (.I0(register_b_inferred_i_40_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_17_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_19
       (.I0(register_b_inferred_i_44_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_19_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_2
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[6]),
        .I2(register_b_inferred_i_13_n_0),
        .O(register_b[6]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_21
       (.I0(register_b_inferred_i_48_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_21_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_23
       (.I0(register_b_inferred_i_52_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_23_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  MUXF7 register_b_inferred_i_25
       (.I0(register_b_inferred_i_56_n_0),
        .I1(1'b0),
        .O(register_b_inferred_i_25_n_0),
        .S(di_in_c[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_28
       (.I0(\regs_reg[1]_1 [7]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [7]),
        .O(register_b_inferred_i_28_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_3
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[5]),
        .I2(register_b_inferred_i_15_n_0),
        .O(register_b[5]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_32
       (.I0(\regs_reg[1]_1 [6]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [6]),
        .O(register_b_inferred_i_32_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_36
       (.I0(\regs_reg[1]_1 [5]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [5]),
        .O(register_b_inferred_i_36_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_4
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[4]),
        .I2(register_b_inferred_i_17_n_0),
        .O(register_b[4]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_40
       (.I0(\regs_reg[1]_1 [4]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [4]),
        .O(register_b_inferred_i_40_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_44
       (.I0(\regs_reg[1]_1 [3]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [3]),
        .O(register_b_inferred_i_44_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_48
       (.I0(\regs_reg[1]_1 [2]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [2]),
        .O(register_b_inferred_i_48_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_5
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[3]),
        .I2(register_b_inferred_i_19_n_0),
        .O(register_b[3]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_52
       (.I0(\regs_reg[1]_1 [1]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [1]),
        .O(register_b_inferred_i_52_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    register_b_inferred_i_56
       (.I0(\regs_reg[1]_1 [0]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0]_0 [0]),
        .O(register_b_inferred_i_56_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_6
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[2]),
        .I2(register_b_inferred_i_21_n_0),
        .O(register_b[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_7
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[1]),
        .I2(register_b_inferred_i_23_n_0),
        .O(register_b[1]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    register_b_inferred_i_8
       (.I0(register_b_inferred_i_9_n_0),
        .I1(out[0]),
        .I2(register_b_inferred_i_25_n_0),
        .O(register_b[0]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h09)) 
    register_b_inferred_i_9
       (.I0(\regs_reg[0][0]_0 [0]),
        .I1(di_in_c[0]),
        .I2(\regs_reg[0][0]_0 [1]),
        .O(register_b_inferred_i_9_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    register_data_inferred_i_10
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\reg_w_op_reg[2] ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \regs[0][7]_i_2 
       (.I0(\regs[0][7]_i_3__0_n_0 ),
        .I1(\regs_reg[0][0]_0 [0]),
        .I2(\regs_reg[0][0]_0 [1]),
        .O(\regs[0][7]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h547E)) 
    \regs[0][7]_i_3__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\regs[0][7]_i_3__0_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \regs[1][7]_i_1 
       (.I0(\regs[0][7]_i_3__0_n_0 ),
        .I1(\regs_reg[0][0]_0 [1]),
        .I2(\regs_reg[0][0]_0 [0]),
        .O(\regs[1]_16 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \regs[2][7]_i_1 
       (.I0(\regs[0][7]_i_3__0_n_0 ),
        .I1(\regs_reg[0][0]_0 [0]),
        .I2(\regs_reg[0][0]_0 [1]),
        .O(\regs[2]_17 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \regs[3][7]_i_1 
       (.I0(\regs[0][7]_i_3__0_n_0 ),
        .I1(\regs_reg[0][0]_0 [0]),
        .I2(\regs_reg[0][0]_0 [1]),
        .O(\regs[3]_18 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[0]),
        .Q(\regs_reg[0]_0 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[1]),
        .Q(\regs_reg[0]_0 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[2]),
        .Q(\regs_reg[0]_0 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[3]),
        .Q(\regs_reg[0]_0 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[4]),
        .Q(\regs_reg[0]_0 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[5]),
        .Q(\regs_reg[0]_0 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[6]),
        .Q(\regs_reg[0]_0 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(out[7]),
        .Q(\regs_reg[0]_0 [7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[0]),
        .Q(\regs_reg[1]_1 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[1]),
        .Q(\regs_reg[1]_1 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[2]),
        .Q(\regs_reg[1]_1 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[3]),
        .Q(\regs_reg[1]_1 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[4]),
        .Q(\regs_reg[1]_1 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[5]),
        .Q(\regs_reg[1]_1 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[6]),
        .Q(\regs_reg[1]_1 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1]_16 ),
        .D(out[7]),
        .Q(\regs_reg[1]_1 [7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[0]),
        .Q(\regs_reg[2]_2 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[1]),
        .Q(\regs_reg[2]_2 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[2]),
        .Q(\regs_reg[2]_2 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[3]),
        .Q(\regs_reg[2]_2 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[4]),
        .Q(\regs_reg[2]_2 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[5]),
        .Q(\regs_reg[2]_2 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[6]),
        .Q(\regs_reg[2]_2 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[2]_17 ),
        .D(out[7]),
        .Q(\regs_reg[2]_2 [7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[0]),
        .Q(\regs_reg[3]_3 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[1]),
        .Q(\regs_reg[3]_3 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[2]),
        .Q(\regs_reg[3]_3 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[3]),
        .Q(\regs_reg[3]_3 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[4]),
        .Q(\regs_reg[3]_3 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[5]),
        .Q(\regs_reg[3]_3 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[6]),
        .Q(\regs_reg[3]_3 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[3]_18 ),
        .D(out[7]),
        .Q(\regs_reg[3]_3 [7]),
        .R(SS));
endmodule

module rom
   (ns,
    reset_sync_reg,
    \mem_in_op_reg[4] ,
    \mem_in_op_reg[3] ,
    rom_output,
    \di_in_op_reg[7] ,
    \ex_in_op_reg[7] ,
    \rom_stall_fetched_reg[27] ,
    out,
    \dout_reg[8]_0 ,
    stall_pipeline_delayed_reg,
    Q,
    stall_pipeline_i_3_0,
    stall_pipeline_reg,
    stall_pipeline_i_3_1,
    stall_pipeline_reg_0,
    \rom_fetched_reg[27] ,
    stall_pipeline_i_33_0,
    stall_pipeline_i_15_0,
    stall_pipeline_i_15_1,
    stall_pipeline_i_15_2,
    stall_pipeline_i_15_3,
    stall_pipeline_i_15_4,
    D,
    stall_pipeline_i_37_0,
    stall_pipeline_i_37_1,
    stall_pipeline_i_37_2,
    stall_pipeline_i_37_3,
    stall_pipeline_i_37_4,
    stall_pipeline_i_37_5,
    stall_pipeline_i_37_6,
    stall_pipeline_i_37_7,
    \mem_in_b_reg[0]_rep__0 ,
    stall_pipeline_i_5_0,
    stall_pipeline_i_4_0,
    \rom_fetched_reg[27]_0 ,
    \dout_reg[25]_0 ,
    clk_led_OBUF_BUFG,
    \dout_reg[8]_1 ,
    \dout_reg[27]_0 ,
    \dout_reg[26]_0 ,
    \dout_reg[24]_0 ,
    \dout_reg[9]_0 ,
    \dout_reg[8]_2 );
  output ns;
  output reset_sync_reg;
  output \mem_in_op_reg[4] ;
  output \mem_in_op_reg[3] ;
  output [8:0]rom_output;
  output \di_in_op_reg[7] ;
  output \ex_in_op_reg[7] ;
  output [9:0]\rom_stall_fetched_reg[27] ;
  input [31:0]out;
  input \dout_reg[8]_0 ;
  input stall_pipeline_delayed_reg;
  input [7:0]Q;
  input stall_pipeline_i_3_0;
  input stall_pipeline_reg;
  input [3:0]stall_pipeline_i_3_1;
  input stall_pipeline_reg_0;
  input [27:0]\rom_fetched_reg[27] ;
  input [7:0]stall_pipeline_i_33_0;
  input stall_pipeline_i_15_0;
  input stall_pipeline_i_15_1;
  input stall_pipeline_i_15_2;
  input stall_pipeline_i_15_3;
  input stall_pipeline_i_15_4;
  input [2:0]D;
  input stall_pipeline_i_37_0;
  input stall_pipeline_i_37_1;
  input stall_pipeline_i_37_2;
  input stall_pipeline_i_37_3;
  input stall_pipeline_i_37_4;
  input stall_pipeline_i_37_5;
  input stall_pipeline_i_37_6;
  input stall_pipeline_i_37_7;
  input [7:0]\mem_in_b_reg[0]_rep__0 ;
  input [7:0]stall_pipeline_i_5_0;
  input [7:0]stall_pipeline_i_4_0;
  input \rom_fetched_reg[27]_0 ;
  input [3:0]\dout_reg[25]_0 ;
  input clk_led_OBUF_BUFG;
  input \dout_reg[8]_1 ;
  input \dout_reg[27]_0 ;
  input \dout_reg[26]_0 ;
  input \dout_reg[24]_0 ;
  input \dout_reg[9]_0 ;
  input \dout_reg[8]_2 ;

  wire [7:0]Q;
  wire clk_led_OBUF_BUFG;
  wire \di_in_op_reg[7] ;
  wire \dout_reg[24]_0 ;
  wire [3:0]\dout_reg[25]_0 ;
  wire \dout_reg[26]_0 ;
  wire \dout_reg[27]_0 ;
  wire \dout_reg[8]_0 ;
  wire \dout_reg[8]_1 ;
  wire \dout_reg[8]_2 ;
  wire \dout_reg[9]_0 ;
  wire \ex_in_op_reg[7] ;
  wire [7:0]\^mem_in_b_reg[0]_rep__0 ;
  wire ns;
  wire [31:0]out;
  wire reset_sync_reg;
  wire [27:0]\rom_fetched_reg[27] ;
  wire \rom_fetched_reg[27]_0 ;
  wire [8:0]rom_output;
  wire [9:0]\rom_stall_fetched_reg[27] ;
  wire stall_pipeline_delayed_reg;
  wire stall_pipeline_i_102_n_0;
  wire stall_pipeline_i_104_n_0;
  wire stall_pipeline_i_106_n_0;
  wire stall_pipeline_i_110_n_0;
  wire stall_pipeline_i_112_n_0;
  wire stall_pipeline_i_114_n_0;
  wire stall_pipeline_i_116_n_0;
  wire stall_pipeline_i_118_n_0;
  wire stall_pipeline_i_120_n_0;
  wire stall_pipeline_i_122_n_0;
  wire stall_pipeline_i_124_n_0;
  wire stall_pipeline_i_12_n_0;
  wire stall_pipeline_i_13_n_0;
  wire stall_pipeline_i_14_n_0;
  wire stall_pipeline_i_15_1;
  wire stall_pipeline_i_15_2;
  wire stall_pipeline_i_15_3;
  wire stall_pipeline_i_15_4;
  wire stall_pipeline_i_16_n_0;
  wire stall_pipeline_i_17_n_0;
  wire stall_pipeline_i_18_n_0;
  wire stall_pipeline_i_21_n_0;
  wire stall_pipeline_i_28_n_0;
  wire stall_pipeline_i_29_n_0;
  wire stall_pipeline_i_2_n_0;
  wire stall_pipeline_i_32_n_0;
  wire [7:0]stall_pipeline_i_33_0;
  wire stall_pipeline_i_33_n_0;
  wire stall_pipeline_i_36_n_0;
  wire stall_pipeline_i_37_4;
  wire stall_pipeline_i_37_5;
  wire stall_pipeline_i_37_n_0;
  wire stall_pipeline_i_38_n_0;
  wire [3:0]stall_pipeline_i_3_1;
  wire stall_pipeline_i_3_n_0;
  wire stall_pipeline_i_40_n_0;
  wire stall_pipeline_i_42_n_0;
  wire stall_pipeline_i_43_n_0;
  wire stall_pipeline_i_44_n_0;
  wire stall_pipeline_i_45_n_0;
  wire stall_pipeline_i_46_n_0;
  wire stall_pipeline_i_47_n_0;
  wire stall_pipeline_i_49_n_0;
  wire [7:0]stall_pipeline_i_4_0;
  wire stall_pipeline_i_4_n_0;
  wire stall_pipeline_i_50_n_0;
  wire stall_pipeline_i_51_n_0;
  wire stall_pipeline_i_53_n_0;
  wire stall_pipeline_i_54_n_0;
  wire stall_pipeline_i_55_n_0;
  wire stall_pipeline_i_58_n_0;
  wire [7:0]stall_pipeline_i_5_0;
  wire stall_pipeline_i_5_n_0;
  wire stall_pipeline_i_60_n_0;
  wire stall_pipeline_i_62_n_0;
  wire stall_pipeline_i_64_n_0;
  wire stall_pipeline_i_66_n_0;
  wire stall_pipeline_i_68_n_0;
  wire stall_pipeline_i_6_n_0;
  wire stall_pipeline_i_70_n_0;
  wire stall_pipeline_i_72_n_0;
  wire stall_pipeline_i_74_n_0;
  wire stall_pipeline_i_76_n_0;
  wire stall_pipeline_i_78_n_0;
  wire stall_pipeline_i_7_n_0;
  wire stall_pipeline_i_80_n_0;
  wire stall_pipeline_i_84_n_0;
  wire stall_pipeline_i_86_n_0;
  wire stall_pipeline_i_87_n_0;
  wire stall_pipeline_i_90_n_0;
  wire stall_pipeline_i_92_n_0;
  wire stall_pipeline_i_98_n_0;
  wire stall_pipeline_i_99_n_0;
  wire stall_pipeline_reg_0;

  assign \^mem_in_b_reg[0]_rep__0 [3:0] = \mem_in_b_reg[0]_rep__0 [3:0];
  assign \di_in_op_reg[7]  = D[0];
  assign \ex_in_op_reg[7]  = \mem_in_b_reg[0]_rep__0 [5];
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[10] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[25]_0 [0]),
        .Q(rom_output[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[25]_0 [1]),
        .Q(rom_output[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[25]_0 [2]),
        .Q(rom_output[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[24] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[24]_0 ),
        .Q(rom_output[5]),
        .R(\dout_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[25] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[25]_0 [3]),
        .Q(rom_output[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[26]_0 ),
        .Q(rom_output[7]),
        .R(\dout_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[27]_0 ),
        .Q(rom_output[8]),
        .R(\dout_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[8]_2 ),
        .Q(rom_output[0]),
        .R(\dout_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\dout_reg[8]_0 ),
        .D(\dout_reg[9]_0 ),
        .Q(rom_output[1]),
        .R(\dout_reg[8]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[0]_i_1 
       (.I0(\rom_fetched_reg[27] [0]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[5]),
        .O(\rom_stall_fetched_reg[27] [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[10]_i_1 
       (.I0(\rom_fetched_reg[27] [10]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[2]),
        .O(\rom_stall_fetched_reg[27] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[16]_i_1 
       (.I0(\rom_fetched_reg[27] [16]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[3]),
        .O(\rom_stall_fetched_reg[27] [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[17]_i_1 
       (.I0(\rom_fetched_reg[27] [17]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[4]),
        .O(\rom_stall_fetched_reg[27] [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[24]_i_1 
       (.I0(\rom_fetched_reg[27] [24]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[5]),
        .O(\rom_stall_fetched_reg[27] [6]));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[25]_i_1 
       (.I0(\rom_fetched_reg[27] [25]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[6]),
        .O(\rom_stall_fetched_reg[27] [7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[26]_i_1 
       (.I0(\rom_fetched_reg[27] [26]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[7]),
        .O(\rom_stall_fetched_reg[27] [8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[27]_i_2 
       (.I0(\rom_fetched_reg[27] [27]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[8]),
        .O(\rom_stall_fetched_reg[27] [9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[8]_i_1 
       (.I0(\rom_fetched_reg[27] [8]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[0]),
        .O(\rom_stall_fetched_reg[27] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_fetched[9]_i_1 
       (.I0(\rom_fetched_reg[27] [9]),
        .I1(\rom_fetched_reg[27]_0 ),
        .I2(rom_output[1]),
        .O(\rom_stall_fetched_reg[27] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    stall_pipeline_delayed_i_1
       (.I0(\dout_reg[8]_0 ),
        .I1(stall_pipeline_delayed_reg),
        .O(reset_sync_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    stall_pipeline_i_1
       (.I0(stall_pipeline_i_2_n_0),
        .I1(stall_pipeline_i_3_n_0),
        .I2(stall_pipeline_i_4_n_0),
        .I3(stall_pipeline_i_5_n_0),
        .I4(stall_pipeline_i_6_n_0),
        .I5(stall_pipeline_i_7_n_0),
        .O(ns));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_102
       (.I0(stall_pipeline_i_4_0[0]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(stall_pipeline_i_4_0[1]),
        .O(stall_pipeline_i_102_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_104
       (.I0(stall_pipeline_i_4_0[1]),
        .I1(out[9]),
        .I2(out[10]),
        .O(stall_pipeline_i_104_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_106
       (.I0(stall_pipeline_i_5_0[0]),
        .I1(\rom_fetched_reg[27] [16]),
        .I2(\rom_fetched_reg[27] [17]),
        .I3(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_106_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    stall_pipeline_i_110
       (.I0(stall_pipeline_i_33_0[1]),
        .I1(stall_pipeline_i_33_0[0]),
        .I2(\rom_fetched_reg[27] [0]),
        .O(stall_pipeline_i_110_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_112
       (.I0(stall_pipeline_i_33_0[0]),
        .I1(out[0]),
        .I2(stall_pipeline_i_33_0[1]),
        .O(stall_pipeline_i_112_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h6)) 
    stall_pipeline_i_114
       (.I0(stall_pipeline_i_33_0[1]),
        .I1(\rom_fetched_reg[27] [17]),
        .O(stall_pipeline_i_114_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    stall_pipeline_i_116
       (.I0(stall_pipeline_i_33_0[0]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(stall_pipeline_i_33_0[1]),
        .I4(out[10]),
        .O(stall_pipeline_i_116_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_118
       (.I0(stall_pipeline_i_37_5),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[8]),
        .I4(stall_pipeline_i_37_4),
        .O(stall_pipeline_i_118_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    stall_pipeline_i_12
       (.I0(reset_sync_reg),
        .I1(stall_pipeline_i_45_n_0),
        .I2(out[25]),
        .I3(out[26]),
        .O(stall_pipeline_i_12_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_120
       (.I0(out[16]),
        .I1(stall_pipeline_i_37_4),
        .I2(stall_pipeline_i_37_5),
        .I3(out[17]),
        .O(stall_pipeline_i_120_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_122
       (.I0(stall_pipeline_i_37_4),
        .I1(out[0]),
        .I2(stall_pipeline_i_37_5),
        .O(stall_pipeline_i_122_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_124
       (.I0(\rom_fetched_reg[27] [0]),
        .I1(stall_pipeline_i_37_4),
        .I2(stall_pipeline_i_37_5),
        .O(stall_pipeline_i_124_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFFE804)) 
    stall_pipeline_i_13
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(stall_pipeline_i_46_n_0),
        .O(stall_pipeline_i_13_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFEEAAAAE)) 
    stall_pipeline_i_14
       (.I0(stall_pipeline_i_47_n_0),
        .I1(stall_pipeline_i_3_1[3]),
        .I2(stall_pipeline_i_3_1[1]),
        .I3(stall_pipeline_i_3_1[0]),
        .I4(stall_pipeline_i_3_1[2]),
        .O(stall_pipeline_i_14_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    stall_pipeline_i_16
       (.I0(stall_pipeline_i_50_n_0),
        .I1(stall_pipeline_i_51_n_0),
        .I2(\^mem_in_b_reg[0]_rep__0 [2]),
        .I3(\^mem_in_b_reg[0]_rep__0 [3]),
        .I4(stall_pipeline_i_53_n_0),
        .O(stall_pipeline_i_16_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    stall_pipeline_i_17
       (.I0(stall_pipeline_i_54_n_0),
        .I1(stall_pipeline_i_55_n_0),
        .I2(stall_pipeline_i_18_n_0),
        .O(stall_pipeline_i_17_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    stall_pipeline_i_18
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(stall_pipeline_i_18_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    stall_pipeline_i_2
       (.I0(stall_pipeline_i_40_n_0),
        .I1(stall_pipeline_i_42_n_0),
        .I2(stall_pipeline_i_43_n_0),
        .I3(stall_pipeline_i_44_n_0),
        .I4(stall_pipeline_i_12_n_0),
        .O(stall_pipeline_i_2_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h7)) 
    stall_pipeline_i_21
       (.I0(stall_pipeline_i_102_n_0),
        .I1(stall_pipeline_i_62_n_0),
        .O(stall_pipeline_i_21_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h7)) 
    stall_pipeline_i_28
       (.I0(stall_pipeline_i_106_n_0),
        .I1(stall_pipeline_i_76_n_0),
        .O(stall_pipeline_i_28_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    stall_pipeline_i_29
       (.I0(\^mem_in_b_reg[0]_rep__0 [2]),
        .I1(\^mem_in_b_reg[0]_rep__0 [3]),
        .I2(\^mem_in_b_reg[0]_rep__0 [1]),
        .I3(\^mem_in_b_reg[0]_rep__0 [0]),
        .O(stall_pipeline_i_29_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    stall_pipeline_i_3
       (.I0(stall_pipeline_i_13_n_0),
        .I1(stall_pipeline_i_14_n_0),
        .I2(stall_pipeline_i_49_n_0),
        .I3(stall_pipeline_i_16_n_0),
        .I4(stall_pipeline_i_17_n_0),
        .O(stall_pipeline_i_3_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    stall_pipeline_i_32
       (.I0(stall_pipeline_i_110_n_0),
        .I1(stall_pipeline_i_112_n_0),
        .I2(stall_pipeline_i_84_n_0),
        .I3(stall_pipeline_i_116_n_0),
        .O(stall_pipeline_i_32_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'hE)) 
    stall_pipeline_i_33
       (.I0(stall_pipeline_i_86_n_0),
        .I1(stall_pipeline_i_87_n_0),
        .O(stall_pipeline_i_33_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    stall_pipeline_i_36
       (.I0(stall_pipeline_i_118_n_0),
        .I1(stall_pipeline_i_120_n_0),
        .I2(stall_pipeline_i_122_n_0),
        .I3(stall_pipeline_i_124_n_0),
        .O(stall_pipeline_i_36_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'hE)) 
    stall_pipeline_i_37
       (.I0(stall_pipeline_i_98_n_0),
        .I1(stall_pipeline_i_99_n_0),
        .O(stall_pipeline_i_37_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    stall_pipeline_i_38
       (.I0(stall_pipeline_i_15_3),
        .I1(stall_pipeline_i_15_1),
        .I2(stall_pipeline_i_15_4),
        .I3(stall_pipeline_i_15_2),
        .O(stall_pipeline_i_38_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT6 #(
    .INIT(64'h5515555555555555)) 
    stall_pipeline_i_4
       (.I0(stall_pipeline_i_18_n_0),
        .I1(stall_pipeline_i_58_n_0),
        .I2(stall_pipeline_i_60_n_0),
        .I3(stall_pipeline_i_21_n_0),
        .I4(stall_pipeline_i_64_n_0),
        .I5(stall_pipeline_i_66_n_0),
        .O(stall_pipeline_i_4_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_40
       (.I0(\rom_fetched_reg[27] [16]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(\rom_fetched_reg[27] [17]),
        .O(stall_pipeline_i_40_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_42
       (.I0(\rom_fetched_reg[27] [16]),
        .I1(out[8]),
        .I2(out[10]),
        .I3(out[9]),
        .I4(\rom_fetched_reg[27] [17]),
        .O(stall_pipeline_i_42_n_0));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_43
       (.I0(out[9]),
        .I1(rom_output[4]),
        .I2(out[10]),
        .I3(rom_output[3]),
        .I4(out[8]),
        .O(stall_pipeline_i_43_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_44
       (.I0(out[17]),
        .I1(rom_output[4]),
        .I2(rom_output[3]),
        .I3(out[16]),
        .O(stall_pipeline_i_44_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'hE)) 
    stall_pipeline_i_45
       (.I0(out[24]),
        .I1(out[27]),
        .O(stall_pipeline_i_45_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    stall_pipeline_i_46
       (.I0(stall_pipeline_i_15_1),
        .I1(stall_pipeline_i_15_2),
        .I2(stall_pipeline_i_15_3),
        .I3(stall_pipeline_i_15_4),
        .O(stall_pipeline_i_46_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hA980)) 
    stall_pipeline_i_47
       (.I0(\^mem_in_b_reg[0]_rep__0 [2]),
        .I1(\^mem_in_b_reg[0]_rep__0 [0]),
        .I2(\^mem_in_b_reg[0]_rep__0 [1]),
        .I3(\^mem_in_b_reg[0]_rep__0 [3]),
        .O(stall_pipeline_i_47_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    stall_pipeline_i_49
       (.I0(stall_pipeline_i_15_4),
        .I1(stall_pipeline_i_15_1),
        .I2(stall_pipeline_i_15_2),
        .I3(stall_pipeline_i_15_3),
        .O(stall_pipeline_i_49_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    stall_pipeline_i_5
       (.I0(stall_pipeline_i_68_n_0),
        .I1(stall_pipeline_i_70_n_0),
        .I2(stall_pipeline_i_72_n_0),
        .I3(stall_pipeline_i_74_n_0),
        .I4(stall_pipeline_i_28_n_0),
        .I5(stall_pipeline_i_29_n_0),
        .O(stall_pipeline_i_5_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h41000041)) 
    stall_pipeline_i_50
       (.I0(rom_output[2]),
        .I1(rom_output[1]),
        .I2(stall_pipeline_i_5_0[1]),
        .I3(rom_output[0]),
        .I4(stall_pipeline_i_5_0[0]),
        .O(stall_pipeline_i_50_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hC9390D0B)) 
    stall_pipeline_i_51
       (.I0(rom_output[5]),
        .I1(stall_pipeline_i_5_0[0]),
        .I2(stall_pipeline_i_5_0[1]),
        .I3(rom_output[3]),
        .I4(rom_output[4]),
        .O(stall_pipeline_i_51_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'hE)) 
    stall_pipeline_i_53
       (.I0(\^mem_in_b_reg[0]_rep__0 [0]),
        .I1(\^mem_in_b_reg[0]_rep__0 [1]),
        .O(stall_pipeline_i_53_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h41000041)) 
    stall_pipeline_i_54
       (.I0(rom_output[2]),
        .I1(rom_output[1]),
        .I2(stall_pipeline_i_4_0[1]),
        .I3(rom_output[0]),
        .I4(stall_pipeline_i_4_0[0]),
        .O(stall_pipeline_i_54_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hC9390D0B)) 
    stall_pipeline_i_55
       (.I0(rom_output[5]),
        .I1(stall_pipeline_i_4_0[0]),
        .I2(stall_pipeline_i_4_0[1]),
        .I3(rom_output[3]),
        .I4(rom_output[4]),
        .O(stall_pipeline_i_55_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_58
       (.I0(stall_pipeline_i_4_0[0]),
        .I1(\rom_fetched_reg[27] [8]),
        .I2(\rom_fetched_reg[27] [10]),
        .I3(\rom_fetched_reg[27] [9]),
        .I4(stall_pipeline_i_4_0[1]),
        .O(stall_pipeline_i_58_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    stall_pipeline_i_6
       (.I0(stall_pipeline_i_78_n_0),
        .I1(stall_pipeline_i_80_n_0),
        .I2(stall_pipeline_i_32_n_0),
        .I3(stall_pipeline_i_33_n_0),
        .I4(stall_pipeline_reg_0),
        .O(stall_pipeline_i_6_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_60
       (.I0(stall_pipeline_i_4_0[0]),
        .I1(\rom_fetched_reg[27] [16]),
        .I2(\rom_fetched_reg[27] [17]),
        .I3(stall_pipeline_i_4_0[1]),
        .O(stall_pipeline_i_60_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_62
       (.I0(out[8]),
        .I1(stall_pipeline_i_4_0[0]),
        .I2(stall_pipeline_i_104_n_0),
        .O(stall_pipeline_i_62_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_64
       (.I0(stall_pipeline_i_4_0[0]),
        .I1(out[0]),
        .I2(stall_pipeline_i_4_0[1]),
        .O(stall_pipeline_i_64_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_66
       (.I0(stall_pipeline_i_4_0[0]),
        .I1(\rom_fetched_reg[27] [0]),
        .I2(stall_pipeline_i_4_0[1]),
        .O(stall_pipeline_i_66_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_68
       (.I0(stall_pipeline_i_5_0[0]),
        .I1(\rom_fetched_reg[27] [8]),
        .I2(\rom_fetched_reg[27] [10]),
        .I3(\rom_fetched_reg[27] [9]),
        .I4(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_68_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    stall_pipeline_i_7
       (.I0(stall_pipeline_i_90_n_0),
        .I1(stall_pipeline_i_92_n_0),
        .I2(stall_pipeline_i_36_n_0),
        .I3(stall_pipeline_i_37_n_0),
        .I4(stall_pipeline_i_38_n_0),
        .O(stall_pipeline_i_7_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_70
       (.I0(stall_pipeline_i_5_0[0]),
        .I1(\rom_fetched_reg[27] [0]),
        .I2(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_70_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_72
       (.I0(stall_pipeline_i_5_0[0]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_72_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    stall_pipeline_i_74
       (.I0(stall_pipeline_i_5_0[0]),
        .I1(out[8]),
        .I2(out[10]),
        .I3(out[9]),
        .I4(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_74_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_76
       (.I0(out[0]),
        .I1(stall_pipeline_i_5_0[0]),
        .I2(stall_pipeline_i_5_0[1]),
        .O(stall_pipeline_i_76_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_78
       (.I0(stall_pipeline_i_33_0[0]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(stall_pipeline_i_33_0[1]),
        .O(stall_pipeline_i_78_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    stall_pipeline_i_80
       (.I0(stall_pipeline_i_33_0[0]),
        .I1(\rom_fetched_reg[27] [8]),
        .I2(\rom_fetched_reg[27] [9]),
        .I3(stall_pipeline_i_33_0[1]),
        .I4(\rom_fetched_reg[27] [10]),
        .O(stall_pipeline_i_80_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    stall_pipeline_i_84
       (.I0(\rom_fetched_reg[27] [16]),
        .I1(stall_pipeline_i_33_0[0]),
        .I2(stall_pipeline_i_114_n_0),
        .O(stall_pipeline_i_84_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h41000041)) 
    stall_pipeline_i_86
       (.I0(rom_output[2]),
        .I1(rom_output[1]),
        .I2(stall_pipeline_i_33_0[1]),
        .I3(stall_pipeline_i_33_0[0]),
        .I4(rom_output[0]),
        .O(stall_pipeline_i_86_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h9A0B950D)) 
    stall_pipeline_i_87
       (.I0(stall_pipeline_i_33_0[0]),
        .I1(rom_output[3]),
        .I2(stall_pipeline_i_33_0[1]),
        .I3(rom_output[4]),
        .I4(rom_output[5]),
        .O(stall_pipeline_i_87_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    stall_pipeline_i_90
       (.I0(\rom_fetched_reg[27] [16]),
        .I1(stall_pipeline_i_37_4),
        .I2(stall_pipeline_i_37_5),
        .I3(\rom_fetched_reg[27] [17]),
        .O(stall_pipeline_i_90_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    stall_pipeline_i_92
       (.I0(\rom_fetched_reg[27] [8]),
        .I1(stall_pipeline_i_37_4),
        .I2(stall_pipeline_i_37_5),
        .I3(\rom_fetched_reg[27] [9]),
        .I4(\rom_fetched_reg[27] [10]),
        .O(stall_pipeline_i_92_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h09000009)) 
    stall_pipeline_i_98
       (.I0(stall_pipeline_i_37_4),
        .I1(rom_output[0]),
        .I2(rom_output[2]),
        .I3(rom_output[1]),
        .I4(stall_pipeline_i_37_5),
        .O(stall_pipeline_i_98_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hE14B5145)) 
    stall_pipeline_i_99
       (.I0(stall_pipeline_i_37_5),
        .I1(rom_output[5]),
        .I2(stall_pipeline_i_37_4),
        .I3(rom_output[3]),
        .I4(rom_output[4]),
        .O(stall_pipeline_i_99_n_0));
endmodule

module seven_seg_controller
   (an_OBUF,
    seg_OBUF,
    clk_led_OBUF_BUFG,
    D,
    out);
  output [3:0]an_OBUF;
  output [6:0]seg_OBUF;
  input clk_led_OBUF_BUFG;
  input [3:0]D;
  input [7:0]out;

  wire [3:0]D;
  wire [3:0]an_OBUF;
  wire clk_led_OBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire [19:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [1:0]digit_sel;
  wire \digit_sel[0]_i_1_n_0 ;
  wire \digit_sel[1]_i_1_n_0 ;
  wire \digit_sel[1]_i_3_n_0 ;
  wire \digit_sel[1]_i_4_n_0 ;
  wire \digit_sel[1]_i_5_n_0 ;
  wire [7:0]out;
  wire p_0_in;
  wire [6:0]seg_OBUF;
  wire [3:0]sel0;
  wire [2:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(digit_sel[0]),
        .I1(digit_sel[1]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_sel[0]_i_1 
       (.I0(p_0_in),
        .I1(digit_sel[0]),
        .O(\digit_sel[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit_sel[1]_i_1 
       (.I0(digit_sel[0]),
        .I1(p_0_in),
        .I2(digit_sel[1]),
        .O(\digit_sel[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \digit_sel[1]_i_2 
       (.I0(\digit_sel[1]_i_3_n_0 ),
        .I1(\digit_sel[1]_i_4_n_0 ),
        .I2(\digit_sel[1]_i_5_n_0 ),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \digit_sel[1]_i_3 
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(counter_reg[19]),
        .I5(counter_reg[18]),
        .O(\digit_sel[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \digit_sel[1]_i_4 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(counter_reg[7]),
        .I5(counter_reg[6]),
        .O(\digit_sel[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \digit_sel[1]_i_5 
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(\digit_sel[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_sel_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\digit_sel[0]_i_1_n_0 ),
        .Q(digit_sel[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_sel_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\digit_sel[1]_i_1_n_0 ),
        .Q(digit_sel[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'h5390)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC014)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[6]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hCA00)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(D[3]),
        .I1(out[3]),
        .I2(digit_sel[1]),
        .I3(digit_sel[0]),
        .O(sel0[3]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hCA00)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(D[2]),
        .I1(out[2]),
        .I2(digit_sel[1]),
        .I3(digit_sel[0]),
        .O(sel0[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hCA00)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(D[0]),
        .I1(out[0]),
        .I2(digit_sel[1]),
        .I3(digit_sel[0]),
        .O(sel0[0]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'hCA00)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(D[1]),
        .I1(out[1]),
        .I2(digit_sel[1]),
        .I3(digit_sel[0]),
        .O(sel0[1]));
endmodule
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

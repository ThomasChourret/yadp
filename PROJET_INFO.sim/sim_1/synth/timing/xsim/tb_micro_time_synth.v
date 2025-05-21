// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 14 15:42:22 2025
// Host        : PC-PORTABLE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/chour/Documents/INSA/yadp/PROJET_INFO.sim/sim_1/synth/timing/xsim/tb_micro_time_synth.v
// Design      : micro
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_divider
   (clk_led_OBUF,
    clk_external_IBUF_BUFG);
  output clk_led_OBUF;
  input clk_external_IBUF_BUFG;

  wire clk_external_IBUF_BUFG;
  wire clk_i_1_n_0;
  wire clk_led_OBUF;
  wire [2:0]internal;
  wire \internal[0]_i_1_n_0 ;
  wire \internal[1]_i_1_n_0 ;
  wire \internal[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAB8)) 
    clk_i_1
       (.I0(clk_led_OBUF),
        .I1(internal[2]),
        .I2(internal[1]),
        .I3(internal[0]),
        .O(clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_reg
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_i_1_n_0),
        .Q(clk_led_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \internal[0]_i_1 
       (.I0(internal[1]),
        .I1(internal[2]),
        .I2(internal[0]),
        .O(\internal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \internal[1]_i_1 
       (.I0(internal[1]),
        .I1(internal[0]),
        .O(\internal[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \internal[2]_i_1 
       (.I0(internal[1]),
        .I1(internal[2]),
        .I2(internal[0]),
        .O(\internal[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg[0] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\internal[0]_i_1_n_0 ),
        .Q(internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg[1] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\internal[1]_i_1_n_0 ),
        .Q(internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg[2] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\internal[2]_i_1_n_0 ),
        .Q(internal[2]),
        .R(1'b0));
endmodule

module counter_heightbits
   (\internal_counter_reg[5]_0 ,
    Q,
    \internal_counter_reg[2]_0 ,
    \internal_counter_reg[3]_0 ,
    \internal_counter_reg[1]_0 ,
    \internal_counter_reg[1]_1 ,
    \internal_counter_reg[1]_2 ,
    \internal_counter_reg[0]_0 ,
    \internal_counter_reg[0]_1 ,
    \dout_reg[27] ,
    rom_output,
    pc_load,
    stall_pipeline,
    \internal_counter_reg[7]_0 ,
    SR,
    clk_led_OBUF_BUFG);
  output \internal_counter_reg[5]_0 ;
  output [7:0]Q;
  output \internal_counter_reg[2]_0 ;
  output \internal_counter_reg[3]_0 ;
  output \internal_counter_reg[1]_0 ;
  output \internal_counter_reg[1]_1 ;
  output \internal_counter_reg[1]_2 ;
  output \internal_counter_reg[0]_0 ;
  output \internal_counter_reg[0]_1 ;
  input \dout_reg[27] ;
  input [1:0]rom_output;
  input pc_load;
  input stall_pipeline;
  input [7:0]\internal_counter_reg[7]_0 ;
  input [0:0]SR;
  input clk_led_OBUF_BUFG;

  wire [7:0]Q;
  wire [0:0]SR;
  wire clk_led_OBUF_BUFG;
  wire \dout[17]_i_2_n_0 ;
  wire \dout[25]_i_2_n_0 ;
  wire \dout[25]_i_3_n_0 ;
  wire \dout_reg[27] ;
  wire \internal_counter[4]_i_2_n_0 ;
  wire \internal_counter[5]_i_2_n_0 ;
  wire \internal_counter[7]_i_1_n_0 ;
  wire \internal_counter[7]_i_3_n_0 ;
  wire \internal_counter_reg[0]_0 ;
  wire \internal_counter_reg[0]_1 ;
  wire \internal_counter_reg[1]_0 ;
  wire \internal_counter_reg[1]_1 ;
  wire \internal_counter_reg[1]_2 ;
  wire \internal_counter_reg[2]_0 ;
  wire \internal_counter_reg[3]_0 ;
  wire \internal_counter_reg[5]_0 ;
  wire [7:0]\internal_counter_reg[7]_0 ;
  wire [7:0]p_0_in__0;
  wire pc_load;
  wire [1:0]rom_output;
  wire stall_pipeline;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \dout[16]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\internal_counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4001FFFF40010000)) 
    \dout[17]_i_1 
       (.I0(\dout[17]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\dout_reg[27] ),
        .I5(rom_output[0]),
        .O(\internal_counter_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF9)) 
    \dout[17]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\dout[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \dout[24]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\internal_counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \dout[25]_i_1 
       (.I0(Q[3]),
        .I1(\dout[25]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\dout[25]_i_3_n_0 ),
        .I4(\dout_reg[27] ),
        .I5(rom_output[1]),
        .O(\internal_counter_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dout[25]_i_2 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\dout[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dout[25]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dout[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0160)) 
    \dout[26]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\internal_counter_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \dout[27]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\dout_reg[27] ),
        .O(\internal_counter_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \dout[27]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\internal_counter_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \dout[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\internal_counter_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \internal_counter[0]_i_1 
       (.I0(\internal_counter_reg[7]_0 [0]),
        .I1(Q[0]),
        .I2(pc_load),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \internal_counter[1]_i_1 
       (.I0(\internal_counter_reg[7]_0 [1]),
        .I1(pc_load),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \internal_counter[2]_i_1 
       (.I0(\internal_counter_reg[7]_0 [2]),
        .I1(pc_load),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \internal_counter[3]_i_1 
       (.I0(\internal_counter_reg[7]_0 [3]),
        .I1(pc_load),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \internal_counter[4]_i_1 
       (.I0(\internal_counter_reg[7]_0 [4]),
        .I1(pc_load),
        .I2(Q[4]),
        .I3(\internal_counter[4]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \internal_counter[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\internal_counter[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \internal_counter[5]_i_1 
       (.I0(\internal_counter_reg[7]_0 [5]),
        .I1(pc_load),
        .I2(Q[5]),
        .I3(\internal_counter[5]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \internal_counter[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\internal_counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \internal_counter[6]_i_1 
       (.I0(\internal_counter_reg[7]_0 [6]),
        .I1(pc_load),
        .I2(\internal_counter[7]_i_3_n_0 ),
        .I3(Q[6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \internal_counter[7]_i_1 
       (.I0(pc_load),
        .I1(stall_pipeline),
        .O(\internal_counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \internal_counter[7]_i_2 
       (.I0(\internal_counter_reg[7]_0 [7]),
        .I1(pc_load),
        .I2(Q[7]),
        .I3(\internal_counter[7]_i_3_n_0 ),
        .I4(Q[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \internal_counter[7]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\internal_counter[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_counter_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\internal_counter[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* keep_hierarchy = "yes" *) 
(* NotValidForBitStream *)
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

  wire [0:0]R13_in;
  wire [1:0]R15_in;
  wire [7:0]\alu_inst/data0 ;
  wire [7:0]\alu_inst/data1 ;
  wire [6:0]\alu_inst/data3 ;
  wire \alu_inst/data5 ;
  wire \alu_inst/ltOp ;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk_external;
  wire clk_external_IBUF;
  wire clk_external_IBUF_BUFG;
  wire clk_led;
  wire clk_led_OBUF;
  wire clk_led_OBUF_BUFG;
  wire [1:0]di_in_a;
  wire [0:0]di_in_b;
  wire [3:0]di_in_op;
  wire \di_in_op_reg_n_0_[0] ;
  wire \di_in_op_reg_n_0_[1] ;
  wire \di_in_op_reg_n_0_[2] ;
  wire \di_in_op_reg_n_0_[3] ;
  wire [1:0]ex_in_a;
  wire [7:0]ex_in_b;
  wire \ex_in_b[7]_i_1_n_0 ;
  wire [7:0]ex_in_c;
  wire [3:0]ex_in_op;
  wire [0:0]ex_s;
  wire ft;
  wire ft0;
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
  wire \mem_in_b[0]_i_29_n_0 ;
  wire \mem_in_b[0]_i_30_n_0 ;
  wire \mem_in_b[0]_i_31_n_0 ;
  wire \mem_in_b[0]_i_32_n_0 ;
  wire \mem_in_b[0]_i_33_n_0 ;
  wire \mem_in_b[0]_i_35_n_0 ;
  wire \mem_in_b[0]_i_36_n_0 ;
  wire \mem_in_b[0]_i_37_n_0 ;
  wire \mem_in_b[0]_i_38_n_0 ;
  wire \mem_in_b[0]_i_39_n_0 ;
  wire \mem_in_b[0]_i_3_n_0 ;
  wire \mem_in_b[0]_i_40_n_0 ;
  wire \mem_in_b[0]_i_41_n_0 ;
  wire \mem_in_b[0]_i_42_n_0 ;
  wire \mem_in_b[0]_i_4_n_0 ;
  wire \mem_in_b[0]_i_5_n_0 ;
  wire \mem_in_b[0]_i_7_n_0 ;
  wire \mem_in_b[1]_i_10_n_0 ;
  wire \mem_in_b[1]_i_11_n_0 ;
  wire \mem_in_b[1]_i_12_n_0 ;
  wire \mem_in_b[1]_i_13_n_0 ;
  wire \mem_in_b[1]_i_14_n_0 ;
  wire \mem_in_b[1]_i_1_n_0 ;
  wire \mem_in_b[1]_i_2_n_0 ;
  wire \mem_in_b[1]_i_5_n_0 ;
  wire \mem_in_b[1]_i_6_n_0 ;
  wire \mem_in_b[1]_i_8_n_0 ;
  wire \mem_in_b[1]_i_9_n_0 ;
  wire \mem_in_b[2]_i_10_n_0 ;
  wire \mem_in_b[2]_i_11_n_0 ;
  wire \mem_in_b[2]_i_12_n_0 ;
  wire \mem_in_b[2]_i_13_n_0 ;
  wire \mem_in_b[2]_i_14_n_0 ;
  wire \mem_in_b[2]_i_16_n_0 ;
  wire \mem_in_b[2]_i_17_n_0 ;
  wire \mem_in_b[2]_i_18_n_0 ;
  wire \mem_in_b[2]_i_19_n_0 ;
  wire \mem_in_b[2]_i_1_n_0 ;
  wire \mem_in_b[2]_i_20_n_0 ;
  wire \mem_in_b[2]_i_21_n_0 ;
  wire \mem_in_b[2]_i_22_n_0 ;
  wire \mem_in_b[2]_i_23_n_0 ;
  wire \mem_in_b[2]_i_2_n_0 ;
  wire \mem_in_b[2]_i_6_n_0 ;
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
  wire \mem_in_b[3]_i_18_n_0 ;
  wire \mem_in_b[3]_i_19_n_0 ;
  wire \mem_in_b[3]_i_1_n_0 ;
  wire \mem_in_b[3]_i_20_n_0 ;
  wire \mem_in_b[3]_i_21_n_0 ;
  wire \mem_in_b[3]_i_22_n_0 ;
  wire \mem_in_b[3]_i_23_n_0 ;
  wire \mem_in_b[3]_i_24_n_0 ;
  wire \mem_in_b[3]_i_2_n_0 ;
  wire \mem_in_b[3]_i_7_n_0 ;
  wire \mem_in_b[3]_i_8_n_0 ;
  wire \mem_in_b[3]_i_9_n_0 ;
  wire \mem_in_b[4]_i_10_n_0 ;
  wire \mem_in_b[4]_i_11_n_0 ;
  wire \mem_in_b[4]_i_12_n_0 ;
  wire \mem_in_b[4]_i_13_n_0 ;
  wire \mem_in_b[4]_i_14_n_0 ;
  wire \mem_in_b[4]_i_1_n_0 ;
  wire \mem_in_b[4]_i_2_n_0 ;
  wire \mem_in_b[4]_i_5_n_0 ;
  wire \mem_in_b[4]_i_6_n_0 ;
  wire \mem_in_b[4]_i_8_n_0 ;
  wire \mem_in_b[4]_i_9_n_0 ;
  wire \mem_in_b[5]_i_10_n_0 ;
  wire \mem_in_b[5]_i_11_n_0 ;
  wire \mem_in_b[5]_i_12_n_0 ;
  wire \mem_in_b[5]_i_13_n_0 ;
  wire \mem_in_b[5]_i_14_n_0 ;
  wire \mem_in_b[5]_i_1_n_0 ;
  wire \mem_in_b[5]_i_2_n_0 ;
  wire \mem_in_b[5]_i_5_n_0 ;
  wire \mem_in_b[5]_i_6_n_0 ;
  wire \mem_in_b[5]_i_8_n_0 ;
  wire \mem_in_b[5]_i_9_n_0 ;
  wire \mem_in_b[6]_i_10_n_0 ;
  wire \mem_in_b[6]_i_11_n_0 ;
  wire \mem_in_b[6]_i_12_n_0 ;
  wire \mem_in_b[6]_i_13_n_0 ;
  wire \mem_in_b[6]_i_15_n_0 ;
  wire \mem_in_b[6]_i_16_n_0 ;
  wire \mem_in_b[6]_i_17_n_0 ;
  wire \mem_in_b[6]_i_18_n_0 ;
  wire \mem_in_b[6]_i_19_n_0 ;
  wire \mem_in_b[6]_i_1_n_0 ;
  wire \mem_in_b[6]_i_20_n_0 ;
  wire \mem_in_b[6]_i_21_n_0 ;
  wire \mem_in_b[6]_i_22_n_0 ;
  wire \mem_in_b[6]_i_24_n_0 ;
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
  wire \mem_in_b[6]_i_6_n_0 ;
  wire \mem_in_b[6]_i_7_n_0 ;
  wire \mem_in_b[6]_i_8_n_0 ;
  wire \mem_in_b[7]_i_10_n_0 ;
  wire \mem_in_b[7]_i_11_n_0 ;
  wire \mem_in_b[7]_i_12_n_0 ;
  wire \mem_in_b[7]_i_13_n_0 ;
  wire \mem_in_b[7]_i_14_n_0 ;
  wire \mem_in_b[7]_i_15_n_0 ;
  wire \mem_in_b[7]_i_16_n_0 ;
  wire \mem_in_b[7]_i_17_n_0 ;
  wire \mem_in_b[7]_i_18_n_0 ;
  wire \mem_in_b[7]_i_1_n_0 ;
  wire \mem_in_b[7]_i_20_n_0 ;
  wire \mem_in_b[7]_i_21_n_0 ;
  wire \mem_in_b[7]_i_22_n_0 ;
  wire \mem_in_b[7]_i_23_n_0 ;
  wire \mem_in_b[7]_i_2_n_0 ;
  wire \mem_in_b[7]_i_3_n_0 ;
  wire \mem_in_b[7]_i_5_n_0 ;
  wire \mem_in_b[7]_i_7_n_0 ;
  wire \mem_in_b[7]_i_9_n_0 ;
  wire \mem_in_b_reg[0]_i_28_n_0 ;
  wire \mem_in_b_reg[0]_i_28_n_1 ;
  wire \mem_in_b_reg[0]_i_28_n_2 ;
  wire \mem_in_b_reg[0]_i_28_n_3 ;
  wire \mem_in_b_reg[0]_i_34_n_0 ;
  wire \mem_in_b_reg[0]_i_34_n_1 ;
  wire \mem_in_b_reg[0]_i_34_n_2 ;
  wire \mem_in_b_reg[0]_i_34_n_3 ;
  wire \mem_in_b_reg[0]_i_6_n_1 ;
  wire \mem_in_b_reg[0]_i_6_n_2 ;
  wire \mem_in_b_reg[0]_i_6_n_3 ;
  wire \mem_in_b_reg[0]_i_8_n_1 ;
  wire \mem_in_b_reg[0]_i_8_n_2 ;
  wire \mem_in_b_reg[0]_i_8_n_3 ;
  wire \mem_in_b_reg[1]_i_3_n_3 ;
  wire \mem_in_b_reg[1]_i_3_n_7 ;
  wire \mem_in_b_reg[1]_i_4_n_0 ;
  wire \mem_in_b_reg[1]_i_4_n_1 ;
  wire \mem_in_b_reg[1]_i_4_n_2 ;
  wire \mem_in_b_reg[1]_i_4_n_3 ;
  wire \mem_in_b_reg[1]_i_4_n_4 ;
  wire \mem_in_b_reg[1]_i_4_n_5 ;
  wire \mem_in_b_reg[1]_i_4_n_6 ;
  wire \mem_in_b_reg[1]_i_4_n_7 ;
  wire \mem_in_b_reg[1]_i_7_n_0 ;
  wire \mem_in_b_reg[1]_i_7_n_1 ;
  wire \mem_in_b_reg[1]_i_7_n_2 ;
  wire \mem_in_b_reg[1]_i_7_n_3 ;
  wire \mem_in_b_reg[1]_i_7_n_4 ;
  wire \mem_in_b_reg[1]_i_7_n_5 ;
  wire \mem_in_b_reg[1]_i_7_n_6 ;
  wire \mem_in_b_reg[2]_i_15_n_0 ;
  wire \mem_in_b_reg[2]_i_15_n_1 ;
  wire \mem_in_b_reg[2]_i_15_n_2 ;
  wire \mem_in_b_reg[2]_i_15_n_3 ;
  wire \mem_in_b_reg[2]_i_15_n_4 ;
  wire \mem_in_b_reg[2]_i_15_n_5 ;
  wire \mem_in_b_reg[2]_i_15_n_6 ;
  wire \mem_in_b_reg[2]_i_3_n_3 ;
  wire \mem_in_b_reg[2]_i_3_n_7 ;
  wire \mem_in_b_reg[2]_i_4_n_0 ;
  wire \mem_in_b_reg[2]_i_4_n_1 ;
  wire \mem_in_b_reg[2]_i_4_n_2 ;
  wire \mem_in_b_reg[2]_i_4_n_3 ;
  wire \mem_in_b_reg[2]_i_4_n_4 ;
  wire \mem_in_b_reg[2]_i_4_n_5 ;
  wire \mem_in_b_reg[2]_i_4_n_6 ;
  wire \mem_in_b_reg[2]_i_4_n_7 ;
  wire \mem_in_b_reg[2]_i_5_n_0 ;
  wire \mem_in_b_reg[2]_i_5_n_1 ;
  wire \mem_in_b_reg[2]_i_5_n_2 ;
  wire \mem_in_b_reg[2]_i_5_n_3 ;
  wire \mem_in_b_reg[2]_i_5_n_4 ;
  wire \mem_in_b_reg[2]_i_5_n_5 ;
  wire \mem_in_b_reg[2]_i_5_n_6 ;
  wire \mem_in_b_reg[2]_i_5_n_7 ;
  wire \mem_in_b_reg[3]_i_17_n_0 ;
  wire \mem_in_b_reg[3]_i_17_n_1 ;
  wire \mem_in_b_reg[3]_i_17_n_2 ;
  wire \mem_in_b_reg[3]_i_17_n_3 ;
  wire \mem_in_b_reg[3]_i_17_n_4 ;
  wire \mem_in_b_reg[3]_i_17_n_5 ;
  wire \mem_in_b_reg[3]_i_17_n_6 ;
  wire \mem_in_b_reg[3]_i_3_n_3 ;
  wire \mem_in_b_reg[3]_i_3_n_7 ;
  wire \mem_in_b_reg[3]_i_4_n_0 ;
  wire \mem_in_b_reg[3]_i_4_n_1 ;
  wire \mem_in_b_reg[3]_i_4_n_2 ;
  wire \mem_in_b_reg[3]_i_4_n_3 ;
  wire \mem_in_b_reg[3]_i_5_n_0 ;
  wire \mem_in_b_reg[3]_i_5_n_1 ;
  wire \mem_in_b_reg[3]_i_5_n_2 ;
  wire \mem_in_b_reg[3]_i_5_n_3 ;
  wire \mem_in_b_reg[3]_i_6_n_0 ;
  wire \mem_in_b_reg[3]_i_6_n_1 ;
  wire \mem_in_b_reg[3]_i_6_n_2 ;
  wire \mem_in_b_reg[3]_i_6_n_3 ;
  wire \mem_in_b_reg[3]_i_6_n_4 ;
  wire \mem_in_b_reg[3]_i_6_n_5 ;
  wire \mem_in_b_reg[3]_i_6_n_6 ;
  wire \mem_in_b_reg[3]_i_6_n_7 ;
  wire \mem_in_b_reg[4]_i_3_n_3 ;
  wire \mem_in_b_reg[4]_i_3_n_7 ;
  wire \mem_in_b_reg[4]_i_4_n_0 ;
  wire \mem_in_b_reg[4]_i_4_n_1 ;
  wire \mem_in_b_reg[4]_i_4_n_2 ;
  wire \mem_in_b_reg[4]_i_4_n_3 ;
  wire \mem_in_b_reg[4]_i_4_n_4 ;
  wire \mem_in_b_reg[4]_i_4_n_5 ;
  wire \mem_in_b_reg[4]_i_4_n_6 ;
  wire \mem_in_b_reg[4]_i_4_n_7 ;
  wire \mem_in_b_reg[4]_i_7_n_0 ;
  wire \mem_in_b_reg[4]_i_7_n_1 ;
  wire \mem_in_b_reg[4]_i_7_n_2 ;
  wire \mem_in_b_reg[4]_i_7_n_3 ;
  wire \mem_in_b_reg[4]_i_7_n_4 ;
  wire \mem_in_b_reg[4]_i_7_n_5 ;
  wire \mem_in_b_reg[4]_i_7_n_6 ;
  wire \mem_in_b_reg[5]_i_3_n_3 ;
  wire \mem_in_b_reg[5]_i_3_n_7 ;
  wire \mem_in_b_reg[5]_i_4_n_0 ;
  wire \mem_in_b_reg[5]_i_4_n_1 ;
  wire \mem_in_b_reg[5]_i_4_n_2 ;
  wire \mem_in_b_reg[5]_i_4_n_3 ;
  wire \mem_in_b_reg[5]_i_4_n_4 ;
  wire \mem_in_b_reg[5]_i_4_n_5 ;
  wire \mem_in_b_reg[5]_i_4_n_6 ;
  wire \mem_in_b_reg[5]_i_4_n_7 ;
  wire \mem_in_b_reg[5]_i_7_n_0 ;
  wire \mem_in_b_reg[5]_i_7_n_1 ;
  wire \mem_in_b_reg[5]_i_7_n_2 ;
  wire \mem_in_b_reg[5]_i_7_n_3 ;
  wire \mem_in_b_reg[5]_i_7_n_4 ;
  wire \mem_in_b_reg[5]_i_7_n_5 ;
  wire \mem_in_b_reg[5]_i_7_n_6 ;
  wire \mem_in_b_reg[6]_i_14_n_0 ;
  wire \mem_in_b_reg[6]_i_14_n_1 ;
  wire \mem_in_b_reg[6]_i_14_n_2 ;
  wire \mem_in_b_reg[6]_i_14_n_3 ;
  wire \mem_in_b_reg[6]_i_14_n_4 ;
  wire \mem_in_b_reg[6]_i_14_n_5 ;
  wire \mem_in_b_reg[6]_i_14_n_6 ;
  wire \mem_in_b_reg[6]_i_14_n_7 ;
  wire \mem_in_b_reg[6]_i_23_n_0 ;
  wire \mem_in_b_reg[6]_i_23_n_1 ;
  wire \mem_in_b_reg[6]_i_23_n_2 ;
  wire \mem_in_b_reg[6]_i_23_n_3 ;
  wire \mem_in_b_reg[6]_i_23_n_4 ;
  wire \mem_in_b_reg[6]_i_23_n_5 ;
  wire \mem_in_b_reg[6]_i_23_n_6 ;
  wire \mem_in_b_reg[6]_i_23_n_7 ;
  wire \mem_in_b_reg[6]_i_4_n_0 ;
  wire \mem_in_b_reg[6]_i_4_n_1 ;
  wire \mem_in_b_reg[6]_i_4_n_2 ;
  wire \mem_in_b_reg[6]_i_4_n_3 ;
  wire \mem_in_b_reg[6]_i_4_n_4 ;
  wire \mem_in_b_reg[6]_i_4_n_5 ;
  wire \mem_in_b_reg[6]_i_4_n_6 ;
  wire \mem_in_b_reg[6]_i_4_n_7 ;
  wire \mem_in_b_reg[6]_i_5_n_0 ;
  wire \mem_in_b_reg[6]_i_5_n_1 ;
  wire \mem_in_b_reg[6]_i_5_n_2 ;
  wire \mem_in_b_reg[6]_i_5_n_3 ;
  wire \mem_in_b_reg[6]_i_5_n_4 ;
  wire \mem_in_b_reg[6]_i_5_n_5 ;
  wire \mem_in_b_reg[6]_i_5_n_6 ;
  wire \mem_in_b_reg[6]_i_5_n_7 ;
  wire \mem_in_b_reg[6]_i_9_n_1 ;
  wire \mem_in_b_reg[6]_i_9_n_2 ;
  wire \mem_in_b_reg[6]_i_9_n_3 ;
  wire \mem_in_b_reg[6]_i_9_n_4 ;
  wire \mem_in_b_reg[6]_i_9_n_5 ;
  wire \mem_in_b_reg[6]_i_9_n_6 ;
  wire \mem_in_b_reg[6]_i_9_n_7 ;
  wire \mem_in_b_reg[7]_i_19_n_7 ;
  wire \mem_in_b_reg[7]_i_4_n_7 ;
  wire \mem_in_b_reg[7]_i_6_n_1 ;
  wire \mem_in_b_reg[7]_i_6_n_2 ;
  wire \mem_in_b_reg[7]_i_6_n_3 ;
  wire \mem_in_b_reg[7]_i_8_n_1 ;
  wire \mem_in_b_reg[7]_i_8_n_2 ;
  wire \mem_in_b_reg[7]_i_8_n_3 ;
  wire [3:0]mem_in_op;
  wire ns;
  wire p_0_in;
  wire [7:0]pc_in;
  wire pc_inst_n_0;
  wire pc_inst_n_10;
  wire pc_inst_n_11;
  wire pc_inst_n_12;
  wire pc_inst_n_13;
  wire pc_inst_n_14;
  wire pc_inst_n_15;
  wire pc_inst_n_9;
  wire [6:0]pc_leds;
  wire [6:0]pc_leds_OBUF;
  wire pc_load;
  wire [7:7]program_counter;
  wire [1:0]reg_w_a;
  wire \reg_w_a[0]_i_1_n_0 ;
  wire \reg_w_a[1]_i_1_n_0 ;
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
  wire [7:0]register_b;
  wire registers_inst_n_0;
  wire registers_inst_n_1;
  wire registers_inst_n_2;
  wire registers_inst_n_3;
  wire registers_inst_n_4;
  wire registers_inst_n_5;
  wire registers_inst_n_6;
  wire registers_inst_n_7;
  wire reset_sync;
  wire reset_sync_i_1_n_0;
  wire \rom_fetched[27]_i_1_n_0 ;
  wire rom_inst_n_10;
  wire rom_inst_n_9;
  wire [27:8]rom_output;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire stall_pipeline;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_in_b_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[1]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[1]_i_7_O_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[2]_i_15_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_in_b_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[2]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[3]_i_17_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_in_b_reg[3]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[3]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_in_b_reg[4]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[4]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[4]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_in_b_reg[5]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[5]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_mem_in_b_reg[5]_i_7_O_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[6]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[6]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_mem_in_b_reg[6]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_19_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[7]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_in_b_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem_in_b_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_micro_time_synth.sdf",,,,"tool_control");
end
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
  clock_divider clk_div_inst
       (.clk_external_IBUF_BUFG(clk_external_IBUF_BUFG),
        .clk_led_OBUF(clk_led_OBUF));
  BUFG clk_external_IBUF_BUFG_inst
       (.I(clk_external_IBUF),
        .O(clk_external_IBUF_BUFG));
  IBUF clk_external_IBUF_inst
       (.I(clk_external),
        .O(clk_external_IBUF));
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
        .D(R15_in[0]),
        .Q(di_in_a[0]),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(R15_in[1]),
        .Q(di_in_a[1]),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(R13_in),
        .Q(di_in_b),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_op[0]),
        .Q(\di_in_op_reg_n_0_[0] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_op[1]),
        .Q(\di_in_op_reg_n_0_[1] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_op[2]),
        .Q(\di_in_op_reg_n_0_[2] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \di_in_op_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_op[3]),
        .Q(\di_in_op_reg_n_0_[3] ),
        .R(stall_pipeline));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_a[0]),
        .Q(ex_in_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(di_in_a[1]),
        .Q(ex_in_a[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4001)) 
    \ex_in_b[7]_i_1 
       (.I0(\di_in_op_reg_n_0_[1] ),
        .I1(\di_in_op_reg_n_0_[2] ),
        .I2(\di_in_op_reg_n_0_[3] ),
        .I3(\di_in_op_reg_n_0_[0] ),
        .O(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_1),
        .Q(ex_in_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_2),
        .Q(ex_in_b[1]),
        .R(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_0),
        .Q(ex_in_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_3),
        .Q(ex_in_b[3]),
        .R(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_4),
        .Q(ex_in_b[4]),
        .R(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_5),
        .Q(ex_in_b[5]),
        .R(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_6),
        .Q(ex_in_b[6]),
        .R(\ex_in_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_in_b_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(registers_inst_n_7),
        .Q(ex_in_b[7]),
        .R(\ex_in_b[7]_i_1_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \hazzard_detction.ft_reg 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(rom_inst_n_9),
        .Q(ft),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \leds[7]_i_1 
       (.I0(ex_in_op[1]),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[3]),
        .I3(ex_in_op[2]),
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
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[1]),
        .Q(leds_OBUF[1]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[2]),
        .Q(leds_OBUF[2]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[3]),
        .Q(leds_OBUF[3]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[4]),
        .Q(leds_OBUF[4]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[5]),
        .Q(leds_OBUF[5]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[6]),
        .Q(leds_OBUF[6]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\leds[7]_i_1_n_0 ),
        .D(ex_in_b[7]),
        .Q(leds_OBUF[7]),
        .S(p_0_in));
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
  LUT6 #(
    .INIT(64'hFFFEFE1001EE0000)) 
    \mem_in_b[0]_i_1 
       (.I0(ex_in_op[1]),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[3]),
        .I3(ex_in_op[2]),
        .I4(ex_s),
        .I5(ex_in_b[0]),
        .O(\mem_in_b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFEFFFFFFFF)) 
    \mem_in_b[0]_i_10 
       (.I0(\mem_in_b[0]_i_30_n_0 ),
        .I1(\mem_in_b[0]_i_31_n_0 ),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[2]),
        .I4(\mem_in_b[0]_i_32_n_0 ),
        .I5(\mem_in_b[0]_i_33_n_0 ),
        .O(\mem_in_b[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_11 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_12 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_13 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_14 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_15 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_16 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_17 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_18 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_19 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[0]_i_2 
       (.I0(\mem_in_b[0]_i_3_n_0 ),
        .I1(\mem_in_b[0]_i_4_n_0 ),
        .I2(\mem_in_b[0]_i_5_n_0 ),
        .I3(\alu_inst/data5 ),
        .I4(\mem_in_b[0]_i_7_n_0 ),
        .I5(\alu_inst/ltOp ),
        .O(ex_s));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_20 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_21 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_b[5]),
        .I3(ex_in_c[5]),
        .O(\mem_in_b[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_22 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_b[3]),
        .I3(ex_in_c[3]),
        .O(\mem_in_b[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_in_b[0]_i_23 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .O(\mem_in_b[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_24 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .I2(ex_in_c[7]),
        .I3(ex_in_b[7]),
        .O(\mem_in_b[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_25 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_26 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[3]),
        .I3(ex_in_b[3]),
        .O(\mem_in_b[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_27 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_29 
       (.I0(\alu_inst/data3 [1]),
        .I1(\mem_in_b_reg[1]_i_3_n_7 ),
        .O(\mem_in_b[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[0]_i_3 
       (.I0(\alu_inst/data3 [0]),
        .I1(\mem_in_b_reg[2]_i_4_n_7 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [0]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [0]),
        .O(\mem_in_b[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_30 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[0]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_31 
       (.I0(ex_in_b[1]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[0]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[0]_i_32 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[0]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_in_b[0]_i_33 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[5]),
        .O(\mem_in_b[0]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_35 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[1]_i_4_n_4 ),
        .O(\mem_in_b[0]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_36 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[1]_i_4_n_5 ),
        .O(\mem_in_b[0]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_37 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[1]_i_4_n_6 ),
        .O(\mem_in_b[0]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_38 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[1]_i_4_n_7 ),
        .O(\mem_in_b[0]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_39 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[1]_i_7_n_4 ),
        .O(\mem_in_b[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \mem_in_b[0]_i_4 
       (.I0(ex_in_op[1]),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .I4(\mem_in_b[0]_i_10_n_0 ),
        .I5(\mem_in_b[0]_i_11_n_0 ),
        .O(\mem_in_b[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_40 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[1]_i_7_n_5 ),
        .O(\mem_in_b[0]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_41 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[1]_i_7_n_6 ),
        .O(\mem_in_b[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[0]_i_42 
       (.I0(\alu_inst/data3 [1]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[0]),
        .O(\mem_in_b[0]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \mem_in_b[0]_i_5 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h041E)) 
    \mem_in_b[0]_i_7 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[1]_i_1 
       (.I0(\mem_in_b[1]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[1]),
        .O(\mem_in_b[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_10 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[2]_i_5_n_7 ),
        .O(\mem_in_b[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_11 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[2]_i_15_n_4 ),
        .O(\mem_in_b[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_12 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[2]_i_15_n_5 ),
        .O(\mem_in_b[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_13 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[2]_i_15_n_6 ),
        .O(\mem_in_b[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_14 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[1]),
        .O(\mem_in_b[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[1]_i_2 
       (.I0(\alu_inst/data3 [1]),
        .I1(\mem_in_b_reg[2]_i_4_n_6 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [1]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [1]),
        .O(\mem_in_b[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[1]_i_5 
       (.I0(\alu_inst/data3 [2]),
        .I1(\mem_in_b_reg[2]_i_3_n_7 ),
        .O(\mem_in_b[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_6 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[2]_i_5_n_4 ),
        .O(\mem_in_b[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_8 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[2]_i_5_n_5 ),
        .O(\mem_in_b[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[1]_i_9 
       (.I0(\alu_inst/data3 [2]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[2]_i_5_n_6 ),
        .O(\mem_in_b[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[2]_i_1 
       (.I0(\mem_in_b[2]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[2]_i_10 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \mem_in_b[2]_i_11 
       (.I0(ex_in_b[2]),
        .I1(\mem_in_b[2]_i_20_n_0 ),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .I4(ex_in_b[0]),
        .I5(ex_in_c[2]),
        .O(\mem_in_b[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[2]_i_12 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[2]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[1]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[2]_i_13 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[2]_i_14 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[2]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_16 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[3]_i_6_n_5 ),
        .O(\mem_in_b[2]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_17 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[3]_i_6_n_6 ),
        .O(\mem_in_b[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_18 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[3]_i_6_n_7 ),
        .O(\mem_in_b[2]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_19 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[3]_i_17_n_4 ),
        .O(\mem_in_b[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[2]_i_2 
       (.I0(\alu_inst/data3 [2]),
        .I1(\mem_in_b_reg[2]_i_4_n_5 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [2]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [2]),
        .O(\mem_in_b[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[2]_i_20 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_21 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[3]_i_17_n_5 ),
        .O(\mem_in_b[2]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_22 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[3]_i_17_n_6 ),
        .O(\mem_in_b[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_23 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[2]),
        .O(\mem_in_b[2]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[2]_i_6 
       (.I0(\alu_inst/data3 [3]),
        .I1(\mem_in_b_reg[3]_i_3_n_7 ),
        .O(\mem_in_b[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[2]_i_7 
       (.I0(\alu_inst/data3 [3]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[3]_i_6_n_4 ),
        .O(\mem_in_b[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[2]_i_8 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[1]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[2]_i_9 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[2]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[3]_i_1 
       (.I0(\mem_in_b[3]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[3]),
        .O(\mem_in_b[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_10 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .O(\mem_in_b[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_11 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_12 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[0]),
        .O(\mem_in_b[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_13 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_14 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_15 
       (.I0(ex_in_b[1]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_16 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[0]),
        .O(\mem_in_b[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_18 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[4]_i_4_n_5 ),
        .O(\mem_in_b[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_19 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[4]_i_4_n_6 ),
        .O(\mem_in_b[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[3]_i_2 
       (.I0(\alu_inst/data3 [3]),
        .I1(\mem_in_b_reg[6]_i_4_n_7 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [3]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [3]),
        .O(\mem_in_b[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_20 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[4]_i_4_n_7 ),
        .O(\mem_in_b[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_21 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[4]_i_7_n_4 ),
        .O(\mem_in_b[3]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_22 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[4]_i_7_n_5 ),
        .O(\mem_in_b[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_23 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[4]_i_7_n_6 ),
        .O(\mem_in_b[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_24 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[3]),
        .O(\mem_in_b[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[3]_i_7 
       (.I0(\alu_inst/data3 [4]),
        .I1(\mem_in_b_reg[4]_i_3_n_7 ),
        .O(\mem_in_b[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[3]_i_8 
       (.I0(\alu_inst/data3 [4]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[4]_i_4_n_4 ),
        .O(\mem_in_b[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[3]_i_9 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[3]),
        .O(\mem_in_b[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[4]_i_1 
       (.I0(\mem_in_b[4]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[4]),
        .O(\mem_in_b[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_10 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[5]_i_4_n_7 ),
        .O(\mem_in_b[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_11 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[5]_i_7_n_4 ),
        .O(\mem_in_b[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_12 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[5]_i_7_n_5 ),
        .O(\mem_in_b[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_13 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[5]_i_7_n_6 ),
        .O(\mem_in_b[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_14 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[4]),
        .O(\mem_in_b[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[4]_i_2 
       (.I0(\alu_inst/data3 [4]),
        .I1(\mem_in_b_reg[6]_i_4_n_6 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [4]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [4]),
        .O(\mem_in_b[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[4]_i_5 
       (.I0(\alu_inst/data3 [5]),
        .I1(\mem_in_b_reg[5]_i_3_n_7 ),
        .O(\mem_in_b[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_6 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[5]_i_4_n_4 ),
        .O(\mem_in_b[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_8 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[5]_i_4_n_5 ),
        .O(\mem_in_b[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[4]_i_9 
       (.I0(\alu_inst/data3 [5]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[5]_i_4_n_6 ),
        .O(\mem_in_b[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[5]_i_1 
       (.I0(\mem_in_b[5]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[5]),
        .O(\mem_in_b[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_10 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[4]),
        .I2(\mem_in_b_reg[6]_i_14_n_4 ),
        .O(\mem_in_b[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_11 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b_reg[6]_i_14_n_5 ),
        .O(\mem_in_b[5]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_12 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[2]),
        .I2(\mem_in_b_reg[6]_i_14_n_6 ),
        .O(\mem_in_b[5]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_13 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[1]),
        .I2(\mem_in_b_reg[6]_i_14_n_7 ),
        .O(\mem_in_b[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_14 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[5]),
        .O(\mem_in_b[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[5]_i_2 
       (.I0(\alu_inst/data3 [5]),
        .I1(\mem_in_b_reg[6]_i_4_n_5 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [5]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [5]),
        .O(\mem_in_b[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[5]_i_5 
       (.I0(\alu_inst/data3 [6]),
        .I1(\mem_in_b_reg[6]_i_5_n_4 ),
        .O(\mem_in_b[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_6 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[7]),
        .I2(\mem_in_b_reg[6]_i_5_n_5 ),
        .O(\mem_in_b[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_8 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b_reg[6]_i_5_n_6 ),
        .O(\mem_in_b[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[5]_i_9 
       (.I0(\alu_inst/data3 [6]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b_reg[6]_i_5_n_7 ),
        .O(\mem_in_b[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[6]_i_1 
       (.I0(\mem_in_b[6]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[6]),
        .O(\mem_in_b[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \mem_in_b[6]_i_10 
       (.I0(\mem_in_b_reg[6]_i_23_n_4 ),
        .I1(\mem_in_b_reg[6]_i_9_n_5 ),
        .I2(ex_in_c[6]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_11 
       (.I0(\mem_in_b_reg[6]_i_9_n_6 ),
        .I1(\mem_in_b_reg[6]_i_23_n_5 ),
        .O(\mem_in_b[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_12 
       (.I0(\mem_in_b_reg[6]_i_9_n_7 ),
        .I1(\mem_in_b_reg[6]_i_23_n_6 ),
        .O(\mem_in_b[6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_13 
       (.I0(\mem_in_b_reg[2]_i_4_n_4 ),
        .I1(\mem_in_b_reg[6]_i_23_n_7 ),
        .O(\mem_in_b[6]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_15 
       (.I0(ex_in_c[7]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_16 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_17 
       (.I0(ex_in_c[5]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_18 
       (.I0(ex_in_c[4]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9979)) 
    \mem_in_b[6]_i_19 
       (.I0(ex_in_c[7]),
        .I1(ex_in_c[6]),
        .I2(\mem_in_b[7]_i_9_n_0 ),
        .I3(ex_in_c[5]),
        .O(\mem_in_b[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[6]_i_2 
       (.I0(\alu_inst/data3 [6]),
        .I1(\mem_in_b_reg[6]_i_4_n_4 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [6]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [6]),
        .O(\mem_in_b[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5BA5)) 
    \mem_in_b[6]_i_20 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[7]),
        .I2(ex_in_c[5]),
        .I3(\mem_in_b[7]_i_9_n_0 ),
        .O(\mem_in_b[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h33CDCC33)) 
    \mem_in_b[6]_i_21 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[5]),
        .I2(ex_in_c[7]),
        .I3(ex_in_c[4]),
        .I4(\mem_in_b[6]_i_38_n_0 ),
        .O(\mem_in_b[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCCDCCCC3333)) 
    \mem_in_b[6]_i_22 
       (.I0(ex_in_c[6]),
        .I1(ex_in_c[4]),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .I4(ex_in_c[3]),
        .I5(\mem_in_b[6]_i_39_n_0 ),
        .O(\mem_in_b[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_24 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[3]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[4]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[5]),
        .O(\mem_in_b[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_25 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[3]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[4]),
        .O(\mem_in_b[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \mem_in_b[6]_i_26 
       (.I0(ex_in_c[2]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[2]),
        .I4(ex_in_c[0]),
        .I5(ex_in_b[3]),
        .O(\mem_in_b[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8F08080870F7F7F7)) 
    \mem_in_b[6]_i_27 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[0]),
        .I2(\mem_in_b[6]_i_47_n_0 ),
        .I3(ex_in_b[4]),
        .I4(ex_in_c[2]),
        .I5(\mem_in_b[6]_i_48_n_0 ),
        .O(\mem_in_b[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_28 
       (.I0(\mem_in_b[6]_i_24_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[5]),
        .I3(\mem_in_b[6]_i_49_n_0 ),
        .I4(ex_in_b[6]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_29 
       (.I0(\mem_in_b[6]_i_25_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[4]),
        .I3(\mem_in_b[6]_i_50_n_0 ),
        .I4(ex_in_b[5]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \mem_in_b[6]_i_30 
       (.I0(\mem_in_b[6]_i_26_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[3]),
        .I3(\mem_in_b[6]_i_51_n_0 ),
        .I4(ex_in_b[4]),
        .I5(ex_in_c[0]),
        .O(\mem_in_b[6]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_31 
       (.I0(ex_in_c[3]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_32 
       (.I0(ex_in_c[2]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_33 
       (.I0(ex_in_c[1]),
        .I1(\mem_in_b[7]_i_3_n_0 ),
        .O(\mem_in_b[6]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6969696996966996)) 
    \mem_in_b[6]_i_34 
       (.I0(\mem_in_b[7]_i_3_n_0 ),
        .I1(ex_in_c[3]),
        .I2(ex_in_c[2]),
        .I3(ex_in_c[0]),
        .I4(ex_in_b[7]),
        .I5(ex_in_c[1]),
        .O(\mem_in_b[6]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \mem_in_b[6]_i_35 
       (.I0(\mem_in_b[7]_i_3_n_0 ),
        .I1(ex_in_c[2]),
        .I2(ex_in_c[1]),
        .I3(ex_in_b[7]),
        .I4(ex_in_c[0]),
        .O(\mem_in_b[6]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \mem_in_b[6]_i_36 
       (.I0(\mem_in_b[7]_i_3_n_0 ),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[0]),
        .O(\mem_in_b[6]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mem_in_b[6]_i_37 
       (.I0(\mem_in_b[7]_i_3_n_0 ),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[6]),
        .O(\mem_in_b[6]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000051)) 
    \mem_in_b[6]_i_38 
       (.I0(ex_in_c[2]),
        .I1(ex_in_c[0]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[1]),
        .I4(ex_in_c[3]),
        .O(\mem_in_b[6]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \mem_in_b[6]_i_39 
       (.I0(ex_in_c[1]),
        .I1(ex_in_b[7]),
        .I2(ex_in_c[0]),
        .I3(ex_in_c[2]),
        .O(\mem_in_b[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[6]_i_40 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[2]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[1]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[3]),
        .O(\mem_in_b[6]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[6]_i_41 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[5]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[6]_i_42 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[1]),
        .O(\mem_in_b[6]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \mem_in_b[6]_i_43 
       (.I0(ex_in_b[2]),
        .I1(\mem_in_b[6]_i_52_n_0 ),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[4]),
        .I4(ex_in_b[0]),
        .I5(ex_in_c[5]),
        .O(\mem_in_b[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \mem_in_b[6]_i_44 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[5]),
        .I2(ex_in_b[1]),
        .I3(ex_in_c[4]),
        .I4(ex_in_c[3]),
        .I5(ex_in_b[2]),
        .O(\mem_in_b[6]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mem_in_b[6]_i_45 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[1]),
        .I2(ex_in_c[4]),
        .I3(ex_in_b[0]),
        .O(\mem_in_b[6]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_in_b[6]_i_46 
       (.I0(ex_in_b[0]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[6]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_47 
       (.I0(ex_in_b[5]),
        .I1(ex_in_c[1]),
        .O(\mem_in_b[6]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \mem_in_b[6]_i_48 
       (.I0(ex_in_c[0]),
        .I1(ex_in_b[7]),
        .I2(ex_in_b[5]),
        .I3(ex_in_c[2]),
        .I4(ex_in_b[6]),
        .I5(ex_in_c[1]),
        .O(\mem_in_b[6]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_49 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_50 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_51 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[2]),
        .O(\mem_in_b[6]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[6]_i_52 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .O(\mem_in_b[6]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_in_b[6]_i_6 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_9_n_0 ),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5575)) 
    \mem_in_b[6]_i_7 
       (.I0(ex_in_c[7]),
        .I1(ex_in_c[5]),
        .I2(\mem_in_b[7]_i_9_n_0 ),
        .I3(ex_in_c[6]),
        .O(\mem_in_b[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[6]_i_8 
       (.I0(\mem_in_b_reg[6]_i_9_n_5 ),
        .I1(\mem_in_b_reg[6]_i_23_n_4 ),
        .O(\mem_in_b[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF03FEA8000002A8)) 
    \mem_in_b[7]_i_1 
       (.I0(\mem_in_b[7]_i_2_n_0 ),
        .I1(ex_in_op[0]),
        .I2(ex_in_op[1]),
        .I3(ex_in_op[2]),
        .I4(ex_in_op[3]),
        .I5(ex_in_b[7]),
        .O(\mem_in_b[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \mem_in_b[7]_i_10 
       (.I0(\mem_in_b_reg[6]_i_9_n_4 ),
        .I1(\mem_in_b_reg[7]_i_19_n_7 ),
        .I2(ex_in_b[0]),
        .I3(ex_in_c[7]),
        .I4(\mem_in_b[7]_i_20_n_0 ),
        .O(\mem_in_b[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_11 
       (.I0(ex_in_c[7]),
        .I1(ex_in_b[7]),
        .O(\mem_in_b[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_12 
       (.I0(ex_in_c[6]),
        .I1(ex_in_b[6]),
        .O(\mem_in_b[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_13 
       (.I0(ex_in_c[5]),
        .I1(ex_in_b[5]),
        .O(\mem_in_b[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_in_b[7]_i_14 
       (.I0(ex_in_c[4]),
        .I1(ex_in_b[4]),
        .O(\mem_in_b[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_15 
       (.I0(ex_in_b[7]),
        .I1(ex_in_c[7]),
        .O(\mem_in_b[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_16 
       (.I0(ex_in_b[6]),
        .I1(ex_in_c[6]),
        .O(\mem_in_b[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_17 
       (.I0(ex_in_b[5]),
        .I1(ex_in_c[5]),
        .O(\mem_in_b[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_in_b[7]_i_18 
       (.I0(ex_in_b[4]),
        .I1(ex_in_c[4]),
        .O(\mem_in_b[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_in_b[7]_i_2 
       (.I0(\mem_in_b[7]_i_3_n_0 ),
        .I1(\mem_in_b_reg[7]_i_4_n_7 ),
        .I2(\mem_in_b[7]_i_5_n_0 ),
        .I3(\alu_inst/data1 [7]),
        .I4(\mem_in_b[7]_i_7_n_0 ),
        .I5(\alu_inst/data0 [7]),
        .O(\mem_in_b[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8777)) 
    \mem_in_b[7]_i_20 
       (.I0(\mem_in_b_reg[6]_i_9_n_5 ),
        .I1(\mem_in_b_reg[6]_i_23_n_4 ),
        .I2(ex_in_c[6]),
        .I3(ex_in_b[1]),
        .O(\mem_in_b[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8F08080870F7F7F7)) 
    \mem_in_b[7]_i_21 
       (.I0(ex_in_b[3]),
        .I1(ex_in_c[3]),
        .I2(\mem_in_b[7]_i_22_n_0 ),
        .I3(ex_in_b[1]),
        .I4(ex_in_c[5]),
        .I5(\mem_in_b[7]_i_23_n_0 ),
        .O(\mem_in_b[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_in_b[7]_i_22 
       (.I0(ex_in_b[2]),
        .I1(ex_in_c[4]),
        .O(\mem_in_b[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \mem_in_b[7]_i_23 
       (.I0(ex_in_c[3]),
        .I1(ex_in_b[4]),
        .I2(ex_in_b[2]),
        .I3(ex_in_c[5]),
        .I4(ex_in_b[3]),
        .I5(ex_in_c[4]),
        .O(\mem_in_b[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_in_b[7]_i_3 
       (.I0(ex_in_c[6]),
        .I1(\mem_in_b[7]_i_9_n_0 ),
        .I2(ex_in_c[5]),
        .I3(ex_in_c[7]),
        .O(\mem_in_b[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEABF)) 
    \mem_in_b[7]_i_5 
       (.I0(ex_in_op[2]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[3]),
        .I3(ex_in_op[0]),
        .O(\mem_in_b[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0418)) 
    \mem_in_b[7]_i_7 
       (.I0(ex_in_op[0]),
        .I1(ex_in_op[1]),
        .I2(ex_in_op[2]),
        .I3(ex_in_op[3]),
        .O(\mem_in_b[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \mem_in_b[7]_i_9 
       (.I0(ex_in_c[3]),
        .I1(ex_in_c[1]),
        .I2(ex_in_b[7]),
        .I3(ex_in_c[0]),
        .I4(ex_in_c[2]),
        .I5(ex_in_c[4]),
        .O(\mem_in_b[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[0]_i_1_n_0 ),
        .Q(mem_in_b[0]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[0]_i_28 
       (.CI(\mem_in_b_reg[0]_i_34_n_0 ),
        .CO({\mem_in_b_reg[0]_i_28_n_0 ,\mem_in_b_reg[0]_i_28_n_1 ,\mem_in_b_reg[0]_i_28_n_2 ,\mem_in_b_reg[0]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[1]_i_4_n_4 ,\mem_in_b_reg[1]_i_4_n_5 ,\mem_in_b_reg[1]_i_4_n_6 ,\mem_in_b_reg[1]_i_4_n_7 }),
        .O(\NLW_mem_in_b_reg[0]_i_28_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_35_n_0 ,\mem_in_b[0]_i_36_n_0 ,\mem_in_b[0]_i_37_n_0 ,\mem_in_b[0]_i_38_n_0 }));
  CARRY4 \mem_in_b_reg[0]_i_34 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[0]_i_34_n_0 ,\mem_in_b_reg[0]_i_34_n_1 ,\mem_in_b_reg[0]_i_34_n_2 ,\mem_in_b_reg[0]_i_34_n_3 }),
        .CYINIT(\alu_inst/data3 [1]),
        .DI({\mem_in_b_reg[1]_i_7_n_4 ,\mem_in_b_reg[1]_i_7_n_5 ,\mem_in_b_reg[1]_i_7_n_6 ,ex_in_b[0]}),
        .O(\NLW_mem_in_b_reg[0]_i_34_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_39_n_0 ,\mem_in_b[0]_i_40_n_0 ,\mem_in_b[0]_i_41_n_0 ,\mem_in_b[0]_i_42_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mem_in_b_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\alu_inst/data5 ,\mem_in_b_reg[0]_i_6_n_1 ,\mem_in_b_reg[0]_i_6_n_2 ,\mem_in_b_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[0]_i_12_n_0 ,\mem_in_b[0]_i_13_n_0 ,\mem_in_b[0]_i_14_n_0 ,\mem_in_b[0]_i_15_n_0 }),
        .O(\NLW_mem_in_b_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_16_n_0 ,\mem_in_b[0]_i_17_n_0 ,\mem_in_b[0]_i_18_n_0 ,\mem_in_b[0]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mem_in_b_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\alu_inst/ltOp ,\mem_in_b_reg[0]_i_8_n_1 ,\mem_in_b_reg[0]_i_8_n_2 ,\mem_in_b_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[0]_i_20_n_0 ,\mem_in_b[0]_i_21_n_0 ,\mem_in_b[0]_i_22_n_0 ,\mem_in_b[0]_i_23_n_0 }),
        .O(\NLW_mem_in_b_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\mem_in_b[0]_i_24_n_0 ,\mem_in_b[0]_i_25_n_0 ,\mem_in_b[0]_i_26_n_0 ,\mem_in_b[0]_i_27_n_0 }));
  CARRY4 \mem_in_b_reg[0]_i_9 
       (.CI(\mem_in_b_reg[0]_i_28_n_0 ),
        .CO({\NLW_mem_in_b_reg[0]_i_9_CO_UNCONNECTED [3:1],\alu_inst/data3 [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\alu_inst/data3 [1]}),
        .O(\NLW_mem_in_b_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\mem_in_b[0]_i_29_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[1]_i_1_n_0 ),
        .Q(mem_in_b[1]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[1]_i_3 
       (.CI(\mem_in_b_reg[1]_i_4_n_0 ),
        .CO({\NLW_mem_in_b_reg[1]_i_3_CO_UNCONNECTED [3:2],\alu_inst/data3 [1],\mem_in_b_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [2],\mem_in_b_reg[2]_i_5_n_4 }),
        .O({\NLW_mem_in_b_reg[1]_i_3_O_UNCONNECTED [3:1],\mem_in_b_reg[1]_i_3_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[1]_i_5_n_0 ,\mem_in_b[1]_i_6_n_0 }));
  CARRY4 \mem_in_b_reg[1]_i_4 
       (.CI(\mem_in_b_reg[1]_i_7_n_0 ),
        .CO({\mem_in_b_reg[1]_i_4_n_0 ,\mem_in_b_reg[1]_i_4_n_1 ,\mem_in_b_reg[1]_i_4_n_2 ,\mem_in_b_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[2]_i_5_n_5 ,\mem_in_b_reg[2]_i_5_n_6 ,\mem_in_b_reg[2]_i_5_n_7 ,\mem_in_b_reg[2]_i_15_n_4 }),
        .O({\mem_in_b_reg[1]_i_4_n_4 ,\mem_in_b_reg[1]_i_4_n_5 ,\mem_in_b_reg[1]_i_4_n_6 ,\mem_in_b_reg[1]_i_4_n_7 }),
        .S({\mem_in_b[1]_i_8_n_0 ,\mem_in_b[1]_i_9_n_0 ,\mem_in_b[1]_i_10_n_0 ,\mem_in_b[1]_i_11_n_0 }));
  CARRY4 \mem_in_b_reg[1]_i_7 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[1]_i_7_n_0 ,\mem_in_b_reg[1]_i_7_n_1 ,\mem_in_b_reg[1]_i_7_n_2 ,\mem_in_b_reg[1]_i_7_n_3 }),
        .CYINIT(\alu_inst/data3 [2]),
        .DI({\mem_in_b_reg[2]_i_15_n_5 ,\mem_in_b_reg[2]_i_15_n_6 ,ex_in_b[1],1'b0}),
        .O({\mem_in_b_reg[1]_i_7_n_4 ,\mem_in_b_reg[1]_i_7_n_5 ,\mem_in_b_reg[1]_i_7_n_6 ,\NLW_mem_in_b_reg[1]_i_7_O_UNCONNECTED [0]}),
        .S({\mem_in_b[1]_i_12_n_0 ,\mem_in_b[1]_i_13_n_0 ,\mem_in_b[1]_i_14_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[2]_i_1_n_0 ),
        .Q(mem_in_b[2]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[2]_i_15 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[2]_i_15_n_0 ,\mem_in_b_reg[2]_i_15_n_1 ,\mem_in_b_reg[2]_i_15_n_2 ,\mem_in_b_reg[2]_i_15_n_3 }),
        .CYINIT(\alu_inst/data3 [3]),
        .DI({\mem_in_b_reg[3]_i_17_n_5 ,\mem_in_b_reg[3]_i_17_n_6 ,ex_in_b[2],1'b0}),
        .O({\mem_in_b_reg[2]_i_15_n_4 ,\mem_in_b_reg[2]_i_15_n_5 ,\mem_in_b_reg[2]_i_15_n_6 ,\NLW_mem_in_b_reg[2]_i_15_O_UNCONNECTED [0]}),
        .S({\mem_in_b[2]_i_21_n_0 ,\mem_in_b[2]_i_22_n_0 ,\mem_in_b[2]_i_23_n_0 ,1'b1}));
  CARRY4 \mem_in_b_reg[2]_i_3 
       (.CI(\mem_in_b_reg[2]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[2]_i_3_CO_UNCONNECTED [3:2],\alu_inst/data3 [2],\mem_in_b_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [3],\mem_in_b_reg[3]_i_6_n_4 }),
        .O({\NLW_mem_in_b_reg[2]_i_3_O_UNCONNECTED [3:1],\mem_in_b_reg[2]_i_3_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[2]_i_6_n_0 ,\mem_in_b[2]_i_7_n_0 }));
  CARRY4 \mem_in_b_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[2]_i_4_n_0 ,\mem_in_b_reg[2]_i_4_n_1 ,\mem_in_b_reg[2]_i_4_n_2 ,\mem_in_b_reg[2]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[2]_i_8_n_0 ,\mem_in_b[2]_i_9_n_0 ,\mem_in_b[2]_i_10_n_0 ,1'b0}),
        .O({\mem_in_b_reg[2]_i_4_n_4 ,\mem_in_b_reg[2]_i_4_n_5 ,\mem_in_b_reg[2]_i_4_n_6 ,\mem_in_b_reg[2]_i_4_n_7 }),
        .S({\mem_in_b[2]_i_11_n_0 ,\mem_in_b[2]_i_12_n_0 ,\mem_in_b[2]_i_13_n_0 ,\mem_in_b[2]_i_14_n_0 }));
  CARRY4 \mem_in_b_reg[2]_i_5 
       (.CI(\mem_in_b_reg[2]_i_15_n_0 ),
        .CO({\mem_in_b_reg[2]_i_5_n_0 ,\mem_in_b_reg[2]_i_5_n_1 ,\mem_in_b_reg[2]_i_5_n_2 ,\mem_in_b_reg[2]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[3]_i_6_n_5 ,\mem_in_b_reg[3]_i_6_n_6 ,\mem_in_b_reg[3]_i_6_n_7 ,\mem_in_b_reg[3]_i_17_n_4 }),
        .O({\mem_in_b_reg[2]_i_5_n_4 ,\mem_in_b_reg[2]_i_5_n_5 ,\mem_in_b_reg[2]_i_5_n_6 ,\mem_in_b_reg[2]_i_5_n_7 }),
        .S({\mem_in_b[2]_i_16_n_0 ,\mem_in_b[2]_i_17_n_0 ,\mem_in_b[2]_i_18_n_0 ,\mem_in_b[2]_i_19_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[3]_i_1_n_0 ),
        .Q(mem_in_b[3]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[3]_i_17 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_17_n_0 ,\mem_in_b_reg[3]_i_17_n_1 ,\mem_in_b_reg[3]_i_17_n_2 ,\mem_in_b_reg[3]_i_17_n_3 }),
        .CYINIT(\alu_inst/data3 [4]),
        .DI({\mem_in_b_reg[4]_i_7_n_5 ,\mem_in_b_reg[4]_i_7_n_6 ,ex_in_b[3],1'b0}),
        .O({\mem_in_b_reg[3]_i_17_n_4 ,\mem_in_b_reg[3]_i_17_n_5 ,\mem_in_b_reg[3]_i_17_n_6 ,\NLW_mem_in_b_reg[3]_i_17_O_UNCONNECTED [0]}),
        .S({\mem_in_b[3]_i_22_n_0 ,\mem_in_b[3]_i_23_n_0 ,\mem_in_b[3]_i_24_n_0 ,1'b1}));
  CARRY4 \mem_in_b_reg[3]_i_3 
       (.CI(\mem_in_b_reg[3]_i_6_n_0 ),
        .CO({\NLW_mem_in_b_reg[3]_i_3_CO_UNCONNECTED [3:2],\alu_inst/data3 [3],\mem_in_b_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [4],\mem_in_b_reg[4]_i_4_n_4 }),
        .O({\NLW_mem_in_b_reg[3]_i_3_O_UNCONNECTED [3:1],\mem_in_b_reg[3]_i_3_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[3]_i_7_n_0 ,\mem_in_b[3]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_4_n_0 ,\mem_in_b_reg[3]_i_4_n_1 ,\mem_in_b_reg[3]_i_4_n_2 ,\mem_in_b_reg[3]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI(ex_in_b[3:0]),
        .O(\alu_inst/data1 [3:0]),
        .S({\mem_in_b[3]_i_9_n_0 ,\mem_in_b[3]_i_10_n_0 ,\mem_in_b[3]_i_11_n_0 ,\mem_in_b[3]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[3]_i_5_n_0 ,\mem_in_b_reg[3]_i_5_n_1 ,\mem_in_b_reg[3]_i_5_n_2 ,\mem_in_b_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(ex_in_b[3:0]),
        .O(\alu_inst/data0 [3:0]),
        .S({\mem_in_b[3]_i_13_n_0 ,\mem_in_b[3]_i_14_n_0 ,\mem_in_b[3]_i_15_n_0 ,\mem_in_b[3]_i_16_n_0 }));
  CARRY4 \mem_in_b_reg[3]_i_6 
       (.CI(\mem_in_b_reg[3]_i_17_n_0 ),
        .CO({\mem_in_b_reg[3]_i_6_n_0 ,\mem_in_b_reg[3]_i_6_n_1 ,\mem_in_b_reg[3]_i_6_n_2 ,\mem_in_b_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[4]_i_4_n_5 ,\mem_in_b_reg[4]_i_4_n_6 ,\mem_in_b_reg[4]_i_4_n_7 ,\mem_in_b_reg[4]_i_7_n_4 }),
        .O({\mem_in_b_reg[3]_i_6_n_4 ,\mem_in_b_reg[3]_i_6_n_5 ,\mem_in_b_reg[3]_i_6_n_6 ,\mem_in_b_reg[3]_i_6_n_7 }),
        .S({\mem_in_b[3]_i_18_n_0 ,\mem_in_b[3]_i_19_n_0 ,\mem_in_b[3]_i_20_n_0 ,\mem_in_b[3]_i_21_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[4]_i_1_n_0 ),
        .Q(mem_in_b[4]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[4]_i_3 
       (.CI(\mem_in_b_reg[4]_i_4_n_0 ),
        .CO({\NLW_mem_in_b_reg[4]_i_3_CO_UNCONNECTED [3:2],\alu_inst/data3 [4],\mem_in_b_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [5],\mem_in_b_reg[5]_i_4_n_4 }),
        .O({\NLW_mem_in_b_reg[4]_i_3_O_UNCONNECTED [3:1],\mem_in_b_reg[4]_i_3_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[4]_i_5_n_0 ,\mem_in_b[4]_i_6_n_0 }));
  CARRY4 \mem_in_b_reg[4]_i_4 
       (.CI(\mem_in_b_reg[4]_i_7_n_0 ),
        .CO({\mem_in_b_reg[4]_i_4_n_0 ,\mem_in_b_reg[4]_i_4_n_1 ,\mem_in_b_reg[4]_i_4_n_2 ,\mem_in_b_reg[4]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[5]_i_4_n_5 ,\mem_in_b_reg[5]_i_4_n_6 ,\mem_in_b_reg[5]_i_4_n_7 ,\mem_in_b_reg[5]_i_7_n_4 }),
        .O({\mem_in_b_reg[4]_i_4_n_4 ,\mem_in_b_reg[4]_i_4_n_5 ,\mem_in_b_reg[4]_i_4_n_6 ,\mem_in_b_reg[4]_i_4_n_7 }),
        .S({\mem_in_b[4]_i_8_n_0 ,\mem_in_b[4]_i_9_n_0 ,\mem_in_b[4]_i_10_n_0 ,\mem_in_b[4]_i_11_n_0 }));
  CARRY4 \mem_in_b_reg[4]_i_7 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[4]_i_7_n_0 ,\mem_in_b_reg[4]_i_7_n_1 ,\mem_in_b_reg[4]_i_7_n_2 ,\mem_in_b_reg[4]_i_7_n_3 }),
        .CYINIT(\alu_inst/data3 [5]),
        .DI({\mem_in_b_reg[5]_i_7_n_5 ,\mem_in_b_reg[5]_i_7_n_6 ,ex_in_b[4],1'b0}),
        .O({\mem_in_b_reg[4]_i_7_n_4 ,\mem_in_b_reg[4]_i_7_n_5 ,\mem_in_b_reg[4]_i_7_n_6 ,\NLW_mem_in_b_reg[4]_i_7_O_UNCONNECTED [0]}),
        .S({\mem_in_b[4]_i_12_n_0 ,\mem_in_b[4]_i_13_n_0 ,\mem_in_b[4]_i_14_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[5]_i_1_n_0 ),
        .Q(mem_in_b[5]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[5]_i_3 
       (.CI(\mem_in_b_reg[5]_i_4_n_0 ),
        .CO({\NLW_mem_in_b_reg[5]_i_3_CO_UNCONNECTED [3:2],\alu_inst/data3 [5],\mem_in_b_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\alu_inst/data3 [6],\mem_in_b_reg[6]_i_5_n_5 }),
        .O({\NLW_mem_in_b_reg[5]_i_3_O_UNCONNECTED [3:1],\mem_in_b_reg[5]_i_3_n_7 }),
        .S({1'b0,1'b0,\mem_in_b[5]_i_5_n_0 ,\mem_in_b[5]_i_6_n_0 }));
  CARRY4 \mem_in_b_reg[5]_i_4 
       (.CI(\mem_in_b_reg[5]_i_7_n_0 ),
        .CO({\mem_in_b_reg[5]_i_4_n_0 ,\mem_in_b_reg[5]_i_4_n_1 ,\mem_in_b_reg[5]_i_4_n_2 ,\mem_in_b_reg[5]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b_reg[6]_i_5_n_6 ,\mem_in_b_reg[6]_i_5_n_7 ,\mem_in_b_reg[6]_i_14_n_4 ,\mem_in_b_reg[6]_i_14_n_5 }),
        .O({\mem_in_b_reg[5]_i_4_n_4 ,\mem_in_b_reg[5]_i_4_n_5 ,\mem_in_b_reg[5]_i_4_n_6 ,\mem_in_b_reg[5]_i_4_n_7 }),
        .S({\mem_in_b[5]_i_8_n_0 ,\mem_in_b[5]_i_9_n_0 ,\mem_in_b[5]_i_10_n_0 ,\mem_in_b[5]_i_11_n_0 }));
  CARRY4 \mem_in_b_reg[5]_i_7 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[5]_i_7_n_0 ,\mem_in_b_reg[5]_i_7_n_1 ,\mem_in_b_reg[5]_i_7_n_2 ,\mem_in_b_reg[5]_i_7_n_3 }),
        .CYINIT(\alu_inst/data3 [6]),
        .DI({\mem_in_b_reg[6]_i_14_n_6 ,\mem_in_b_reg[6]_i_14_n_7 ,ex_in_b[5],1'b0}),
        .O({\mem_in_b_reg[5]_i_7_n_4 ,\mem_in_b_reg[5]_i_7_n_5 ,\mem_in_b_reg[5]_i_7_n_6 ,\NLW_mem_in_b_reg[5]_i_7_O_UNCONNECTED [0]}),
        .S({\mem_in_b[5]_i_12_n_0 ,\mem_in_b[5]_i_13_n_0 ,\mem_in_b[5]_i_14_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[6]_i_1_n_0 ),
        .Q(mem_in_b[6]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[6]_i_14 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_14_n_0 ,\mem_in_b_reg[6]_i_14_n_1 ,\mem_in_b_reg[6]_i_14_n_2 ,\mem_in_b_reg[6]_i_14_n_3 }),
        .CYINIT(\mem_in_b[7]_i_3_n_0 ),
        .DI({\mem_in_b[6]_i_31_n_0 ,\mem_in_b[6]_i_32_n_0 ,\mem_in_b[6]_i_33_n_0 ,ex_in_b[6]}),
        .O({\mem_in_b_reg[6]_i_14_n_4 ,\mem_in_b_reg[6]_i_14_n_5 ,\mem_in_b_reg[6]_i_14_n_6 ,\mem_in_b_reg[6]_i_14_n_7 }),
        .S({\mem_in_b[6]_i_34_n_0 ,\mem_in_b[6]_i_35_n_0 ,\mem_in_b[6]_i_36_n_0 ,\mem_in_b[6]_i_37_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_23 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_23_n_0 ,\mem_in_b_reg[6]_i_23_n_1 ,\mem_in_b_reg[6]_i_23_n_2 ,\mem_in_b_reg[6]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_40_n_0 ,\mem_in_b[6]_i_41_n_0 ,\mem_in_b[6]_i_42_n_0 ,1'b0}),
        .O({\mem_in_b_reg[6]_i_23_n_4 ,\mem_in_b_reg[6]_i_23_n_5 ,\mem_in_b_reg[6]_i_23_n_6 ,\mem_in_b_reg[6]_i_23_n_7 }),
        .S({\mem_in_b[6]_i_43_n_0 ,\mem_in_b[6]_i_44_n_0 ,\mem_in_b[6]_i_45_n_0 ,\mem_in_b[6]_i_46_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_3 
       (.CI(\mem_in_b_reg[6]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[6]_i_3_CO_UNCONNECTED [3:1],\alu_inst/data3 [6]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_in_b[6]_i_6_n_0 }),
        .O(\NLW_mem_in_b_reg[6]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\mem_in_b[6]_i_7_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_4 
       (.CI(1'b0),
        .CO({\mem_in_b_reg[6]_i_4_n_0 ,\mem_in_b_reg[6]_i_4_n_1 ,\mem_in_b_reg[6]_i_4_n_2 ,\mem_in_b_reg[6]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_8_n_0 ,\mem_in_b_reg[6]_i_9_n_6 ,\mem_in_b_reg[6]_i_9_n_7 ,\mem_in_b_reg[2]_i_4_n_4 }),
        .O({\mem_in_b_reg[6]_i_4_n_4 ,\mem_in_b_reg[6]_i_4_n_5 ,\mem_in_b_reg[6]_i_4_n_6 ,\mem_in_b_reg[6]_i_4_n_7 }),
        .S({\mem_in_b[6]_i_10_n_0 ,\mem_in_b[6]_i_11_n_0 ,\mem_in_b[6]_i_12_n_0 ,\mem_in_b[6]_i_13_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_5 
       (.CI(\mem_in_b_reg[6]_i_14_n_0 ),
        .CO({\mem_in_b_reg[6]_i_5_n_0 ,\mem_in_b_reg[6]_i_5_n_1 ,\mem_in_b_reg[6]_i_5_n_2 ,\mem_in_b_reg[6]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_in_b[6]_i_15_n_0 ,\mem_in_b[6]_i_16_n_0 ,\mem_in_b[6]_i_17_n_0 ,\mem_in_b[6]_i_18_n_0 }),
        .O({\mem_in_b_reg[6]_i_5_n_4 ,\mem_in_b_reg[6]_i_5_n_5 ,\mem_in_b_reg[6]_i_5_n_6 ,\mem_in_b_reg[6]_i_5_n_7 }),
        .S({\mem_in_b[6]_i_19_n_0 ,\mem_in_b[6]_i_20_n_0 ,\mem_in_b[6]_i_21_n_0 ,\mem_in_b[6]_i_22_n_0 }));
  CARRY4 \mem_in_b_reg[6]_i_9 
       (.CI(\mem_in_b_reg[2]_i_4_n_0 ),
        .CO({\NLW_mem_in_b_reg[6]_i_9_CO_UNCONNECTED [3],\mem_in_b_reg[6]_i_9_n_1 ,\mem_in_b_reg[6]_i_9_n_2 ,\mem_in_b_reg[6]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_in_b[6]_i_24_n_0 ,\mem_in_b[6]_i_25_n_0 ,\mem_in_b[6]_i_26_n_0 }),
        .O({\mem_in_b_reg[6]_i_9_n_4 ,\mem_in_b_reg[6]_i_9_n_5 ,\mem_in_b_reg[6]_i_9_n_6 ,\mem_in_b_reg[6]_i_9_n_7 }),
        .S({\mem_in_b[6]_i_27_n_0 ,\mem_in_b[6]_i_28_n_0 ,\mem_in_b[6]_i_29_n_0 ,\mem_in_b[6]_i_30_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_in_b_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\mem_in_b[7]_i_1_n_0 ),
        .Q(mem_in_b[7]),
        .R(1'b0));
  CARRY4 \mem_in_b_reg[7]_i_19 
       (.CI(\mem_in_b_reg[6]_i_23_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_19_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_in_b_reg[7]_i_19_O_UNCONNECTED [3:1],\mem_in_b_reg[7]_i_19_n_7 }),
        .S({1'b0,1'b0,1'b0,\mem_in_b[7]_i_21_n_0 }));
  CARRY4 \mem_in_b_reg[7]_i_4 
       (.CI(\mem_in_b_reg[6]_i_4_n_0 ),
        .CO(\NLW_mem_in_b_reg[7]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_in_b_reg[7]_i_4_O_UNCONNECTED [3:1],\mem_in_b_reg[7]_i_4_n_7 }),
        .S({1'b0,1'b0,1'b0,\mem_in_b[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[7]_i_6 
       (.CI(\mem_in_b_reg[3]_i_4_n_0 ),
        .CO({\NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED [3],\mem_in_b_reg[7]_i_6_n_1 ,\mem_in_b_reg[7]_i_6_n_2 ,\mem_in_b_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ex_in_b[6:4]}),
        .O(\alu_inst/data1 [7:4]),
        .S({\mem_in_b[7]_i_11_n_0 ,\mem_in_b[7]_i_12_n_0 ,\mem_in_b[7]_i_13_n_0 ,\mem_in_b[7]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mem_in_b_reg[7]_i_8 
       (.CI(\mem_in_b_reg[3]_i_5_n_0 ),
        .CO({\NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED [3],\mem_in_b_reg[7]_i_8_n_1 ,\mem_in_b_reg[7]_i_8_n_2 ,\mem_in_b_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ex_in_b[6:4]}),
        .O(\alu_inst/data0 [7:4]),
        .S({\mem_in_b[7]_i_15_n_0 ,\mem_in_b[7]_i_16_n_0 ,\mem_in_b[7]_i_17_n_0 ,\mem_in_b[7]_i_18_n_0 }));
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
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[0]),
        .Q(pc_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[1]),
        .Q(pc_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[2]),
        .Q(pc_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[3]),
        .Q(pc_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[4]),
        .Q(pc_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[5]),
        .Q(pc_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(pc_leds_OBUF[6]),
        .Q(pc_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_in_reg[7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(rom_inst_n_10),
        .D(program_counter),
        .Q(pc_in[7]),
        .R(1'b0));
  counter_heightbits pc_inst
       (.Q({program_counter,pc_leds_OBUF}),
        .SR(p_0_in),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .\dout_reg[27] (reset_sync),
        .\internal_counter_reg[0]_0 (pc_inst_n_14),
        .\internal_counter_reg[0]_1 (pc_inst_n_15),
        .\internal_counter_reg[1]_0 (pc_inst_n_11),
        .\internal_counter_reg[1]_1 (pc_inst_n_12),
        .\internal_counter_reg[1]_2 (pc_inst_n_13),
        .\internal_counter_reg[2]_0 (pc_inst_n_9),
        .\internal_counter_reg[3]_0 (pc_inst_n_10),
        .\internal_counter_reg[5]_0 (pc_inst_n_0),
        .\internal_counter_reg[7]_0 (pc_in),
        .pc_load(pc_load),
        .rom_output({rom_output[25],rom_output[17]}),
        .stall_pipeline(stall_pipeline));
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
  FDRE #(
    .INIT(1'b0)) 
    pc_load_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ft0),
        .Q(pc_load),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFABEAAB00A82AA8)) 
    \reg_w_a[0]_i_1 
       (.I0(mem_in_a[0]),
        .I1(mem_in_op[1]),
        .I2(mem_in_op[0]),
        .I3(mem_in_op[2]),
        .I4(mem_in_op[3]),
        .I5(reg_w_a[0]),
        .O(\reg_w_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFABEAAB00A82AA8)) 
    \reg_w_a[1]_i_1 
       (.I0(mem_in_a[1]),
        .I1(mem_in_op[1]),
        .I2(mem_in_op[0]),
        .I3(mem_in_op[2]),
        .I4(mem_in_op[3]),
        .I5(reg_w_a[1]),
        .O(\reg_w_a[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_a_reg[0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\reg_w_a[0]_i_1_n_0 ),
        .Q(reg_w_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_w_a_reg[1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\reg_w_a[1]_i_1_n_0 ),
        .Q(reg_w_a[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[0]_i_1 
       (.I0(reg_w_c[0]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[0]),
        .O(\reg_w_c[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[1]_i_1 
       (.I0(reg_w_c[1]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[1]),
        .O(\reg_w_c[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[2]_i_1 
       (.I0(reg_w_c[2]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[2]),
        .O(\reg_w_c[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[3]_i_1 
       (.I0(reg_w_c[3]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[3]),
        .O(\reg_w_c[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[4]_i_1 
       (.I0(reg_w_c[4]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[4]),
        .O(\reg_w_c[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[5]_i_1 
       (.I0(reg_w_c[5]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[5]),
        .O(\reg_w_c[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[6]_i_1 
       (.I0(reg_w_c[6]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[6]),
        .O(\reg_w_c[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0E7F)) 
    \reg_w_c[7]_i_1 
       (.I0(mem_in_op[1]),
        .I1(mem_in_op[0]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[3]),
        .O(\reg_w_c[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFBFBAA080808A)) 
    \reg_w_c[7]_i_2 
       (.I0(reg_w_c[7]),
        .I1(mem_in_op[3]),
        .I2(mem_in_op[2]),
        .I3(mem_in_op[0]),
        .I4(mem_in_op[1]),
        .I5(mem_in_b[7]),
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
       (.D({registers_inst_n_0,registers_inst_n_1}),
        .Q({\di_in_op_reg_n_0_[3] ,\di_in_op_reg_n_0_[2] }),
        .SR(p_0_in),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .di_in_b(di_in_b),
        .\di_in_op_reg[1] (registers_inst_n_2),
        .\di_in_op_reg[1]_0 (registers_inst_n_3),
        .\di_in_op_reg[1]_1 (registers_inst_n_4),
        .\di_in_op_reg[1]_2 (registers_inst_n_5),
        .\di_in_op_reg[1]_3 (registers_inst_n_6),
        .\di_in_op_reg[1]_4 (registers_inst_n_7),
        .\ex_in_b_reg[0] (\di_in_op_reg_n_0_[0] ),
        .\ex_in_b_reg[0]_0 (\di_in_op_reg_n_0_[1] ),
        .reg_w_a(reg_w_a),
        .\reg_w_c_reg[7] (register_b),
        .\regs_reg[0][7]_0 (reg_w_op),
        .\regs_reg[0][7]_1 (reg_w_c),
        .\regs_reg[1][0]_0 (reset_sync));
  LUT1 #(
    .INIT(2'h1)) 
    reset_sync_i_1
       (.I0(rst_IBUF),
        .O(reset_sync_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    reset_sync_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_sync_i_1_n_0),
        .D(1'b1),
        .Q(reset_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \rom_fetched[27]_i_1 
       (.I0(stall_pipeline),
        .O(\rom_fetched[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[16]),
        .Q(R15_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[17]),
        .Q(R15_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[24] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[24]),
        .Q(di_in_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[25] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[25]),
        .Q(di_in_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[26] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[26]),
        .Q(di_in_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[27] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[27]),
        .Q(di_in_op[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_fetched_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\rom_fetched[27]_i_1_n_0 ),
        .D(rom_output[8]),
        .Q(R13_in),
        .R(1'b0));
  rom rom_inst
       (.D({rom_output[27:24],rom_output[17:16],rom_output[8]}),
        .E(rom_inst_n_10),
        .Q(reset_sync),
        .clk_led_OBUF_BUFG(clk_led_OBUF_BUFG),
        .\di_in_op_reg[1] (rom_inst_n_9),
        .\dout_reg[16]_0 (pc_inst_n_14),
        .\dout_reg[17]_0 (pc_inst_n_9),
        .\dout_reg[24]_0 (pc_inst_n_15),
        .\dout_reg[25]_0 (pc_inst_n_10),
        .\dout_reg[26]_0 (pc_inst_n_11),
        .\dout_reg[27]_0 (pc_inst_n_0),
        .\dout_reg[27]_1 (pc_inst_n_12),
        .\dout_reg[8]_0 (pc_inst_n_13),
        .ft(ft),
        .ft0(ft0),
        .\hazzard_detction.ft_reg (ex_in_op),
        .\hazzard_detction.ft_reg_0 (\di_in_op_reg_n_0_[1] ),
        .\hazzard_detction.ft_reg_1 (\di_in_op_reg_n_0_[0] ),
        .\hazzard_detction.ft_reg_2 ({\di_in_op_reg_n_0_[3] ,\di_in_op_reg_n_0_[2] }),
        .ns(ns),
        .\pc_in_reg[0] (mem_in_a),
        .reg_w_a(reg_w_a),
        .stall_pipeline(stall_pipeline),
        .stall_pipeline_i_13_0(reg_w_op),
        .stall_pipeline_i_20_0(di_in_a),
        .stall_pipeline_i_7_0({di_in_op,R15_in,R13_in}),
        .stall_pipeline_reg(ex_in_a),
        .stall_pipeline_reg_0(mem_in_op));
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
        .Q(di_in_op),
        .an_OBUF(an_OBUF),
        .clk_external_IBUF_BUFG(clk_external_IBUF_BUFG),
        .seg_OBUF(seg_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    stall_pipeline_reg
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(ns),
        .Q(stall_pipeline),
        .R(1'b0));
endmodule

module registers
   (D,
    \di_in_op_reg[1] ,
    \di_in_op_reg[1]_0 ,
    \di_in_op_reg[1]_1 ,
    \di_in_op_reg[1]_2 ,
    \di_in_op_reg[1]_3 ,
    \di_in_op_reg[1]_4 ,
    SR,
    \reg_w_c_reg[7] ,
    di_in_b,
    \ex_in_b_reg[0] ,
    Q,
    \ex_in_b_reg[0]_0 ,
    \regs_reg[0][7]_0 ,
    reg_w_a,
    \regs_reg[0][7]_1 ,
    clk_led_OBUF_BUFG,
    \regs_reg[1][0]_0 );
  output [1:0]D;
  output \di_in_op_reg[1] ;
  output \di_in_op_reg[1]_0 ;
  output \di_in_op_reg[1]_1 ;
  output \di_in_op_reg[1]_2 ;
  output \di_in_op_reg[1]_3 ;
  output \di_in_op_reg[1]_4 ;
  output [0:0]SR;
  output [7:0]\reg_w_c_reg[7] ;
  input [0:0]di_in_b;
  input \ex_in_b_reg[0] ;
  input [1:0]Q;
  input \ex_in_b_reg[0]_0 ;
  input [3:0]\regs_reg[0][7]_0 ;
  input [1:0]reg_w_a;
  input [7:0]\regs_reg[0][7]_1 ;
  input clk_led_OBUF_BUFG;
  input \regs_reg[1][0]_0 ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire a1;
  wire clk_led_OBUF_BUFG;
  wire [0:0]di_in_b;
  wire \di_in_op_reg[1] ;
  wire \di_in_op_reg[1]_0 ;
  wire \di_in_op_reg[1]_1 ;
  wire \di_in_op_reg[1]_2 ;
  wire \di_in_op_reg[1]_3 ;
  wire \di_in_op_reg[1]_4 ;
  wire \ex_in_b_reg[0] ;
  wire \ex_in_b_reg[0]_0 ;
  wire [1:0]reg_w_a;
  wire [7:0]\reg_w_c_reg[7] ;
  wire [7:0]register_a;
  wire \regs[0][7]_i_2_n_0 ;
  wire \regs[1][7]_i_1_n_0 ;
  wire [3:0]\regs_reg[0][7]_0 ;
  wire [7:0]\regs_reg[0][7]_1 ;
  wire [7:0]\regs_reg[0]_0 ;
  wire \regs_reg[1][0]_0 ;
  wire [7:0]\regs_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hEAFFBFFC2A008000)) 
    \ex_in_b[0]_i_1 
       (.I0(di_in_b),
        .I1(\ex_in_b_reg[0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(register_a[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[0]_i_2 
       (.I0(\regs_reg[0][7]_1 [0]),
        .I1(\regs_reg[0]_0 [0]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [0]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[0]));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[1]_i_1 
       (.I0(register_a[1]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[1]_i_2 
       (.I0(\regs_reg[0][7]_1 [1]),
        .I1(\regs_reg[0]_0 [1]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [1]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[1]));
  LUT5 #(
    .INIT(32'hBFFE20A0)) 
    \ex_in_b[2]_i_1 
       (.I0(\ex_in_b_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\ex_in_b_reg[0] ),
        .I4(register_a[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[2]_i_2 
       (.I0(\regs_reg[0][7]_1 [2]),
        .I1(\regs_reg[0]_0 [2]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [2]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[2]));
  LUT4 #(
    .INIT(16'h0009)) 
    \ex_in_b[2]_i_3 
       (.I0(reg_w_a[0]),
        .I1(di_in_b),
        .I2(\ex_in_b_reg[0]_0 ),
        .I3(reg_w_a[1]),
        .O(a1));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[3]_i_1 
       (.I0(register_a[3]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[3]_i_2 
       (.I0(\regs_reg[0][7]_1 [3]),
        .I1(\regs_reg[0]_0 [3]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [3]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[3]));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[4]_i_1 
       (.I0(register_a[4]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[4]_i_2 
       (.I0(\regs_reg[0][7]_1 [4]),
        .I1(\regs_reg[0]_0 [4]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [4]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[4]));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[5]_i_1 
       (.I0(register_a[5]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[5]_i_2 
       (.I0(\regs_reg[0][7]_1 [5]),
        .I1(\regs_reg[0]_0 [5]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [5]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[5]));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[6]_i_1 
       (.I0(register_a[6]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[6]_i_2 
       (.I0(\regs_reg[0][7]_1 [6]),
        .I1(\regs_reg[0]_0 [6]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [6]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[6]));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \ex_in_b[7]_i_2 
       (.I0(register_a[7]),
        .I1(\ex_in_b_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ex_in_b_reg[0] ),
        .O(\di_in_op_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FC0C)) 
    \ex_in_b[7]_i_3 
       (.I0(\regs_reg[0][7]_1 [7]),
        .I1(\regs_reg[0]_0 [7]),
        .I2(di_in_b),
        .I3(\regs_reg[1]_1 [7]),
        .I4(\ex_in_b_reg[0]_0 ),
        .I5(a1),
        .O(register_a[7]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[0]_i_1 
       (.I0(\regs_reg[0][7]_1 [0]),
        .I1(\regs_reg[1]_1 [0]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [0]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [0]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[1]_i_1 
       (.I0(\regs_reg[0][7]_1 [1]),
        .I1(\regs_reg[1]_1 [1]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [1]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [1]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[2]_i_1 
       (.I0(\regs_reg[0][7]_1 [2]),
        .I1(\regs_reg[1]_1 [2]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [2]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [2]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[3]_i_1 
       (.I0(\regs_reg[0][7]_1 [3]),
        .I1(\regs_reg[1]_1 [3]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [3]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [3]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[4]_i_1 
       (.I0(\regs_reg[0][7]_1 [4]),
        .I1(\regs_reg[1]_1 [4]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [4]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [4]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[5]_i_1 
       (.I0(\regs_reg[0][7]_1 [5]),
        .I1(\regs_reg[1]_1 [5]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [5]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [5]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[6]_i_1 
       (.I0(\regs_reg[0][7]_1 [6]),
        .I1(\regs_reg[1]_1 [6]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [6]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [6]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AFA0CACA)) 
    \ex_in_c[7]_i_1 
       (.I0(\regs_reg[0][7]_1 [7]),
        .I1(\regs_reg[1]_1 [7]),
        .I2(\ex_in_b_reg[0] ),
        .I3(\regs_reg[0]_0 [7]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\reg_w_c_reg[7] [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \regs[0][7]_i_1 
       (.I0(\regs_reg[1][0]_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000000E7E)) 
    \regs[0][7]_i_2 
       (.I0(\regs_reg[0][7]_0 [1]),
        .I1(\regs_reg[0][7]_0 [0]),
        .I2(\regs_reg[0][7]_0 [2]),
        .I3(\regs_reg[0][7]_0 [3]),
        .I4(reg_w_a[1]),
        .I5(reg_w_a[0]),
        .O(\regs[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E7E0000)) 
    \regs[1][7]_i_1 
       (.I0(\regs_reg[0][7]_0 [1]),
        .I1(\regs_reg[0][7]_0 [0]),
        .I2(\regs_reg[0][7]_0 [2]),
        .I3(\regs_reg[0][7]_0 [3]),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(\regs[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [0]),
        .Q(\regs_reg[0]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [1]),
        .Q(\regs_reg[0]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [2]),
        .Q(\regs_reg[0]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [3]),
        .Q(\regs_reg[0]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [4]),
        .Q(\regs_reg[0]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [5]),
        .Q(\regs_reg[0]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [6]),
        .Q(\regs_reg[0]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[0][7]_i_2_n_0 ),
        .D(\regs_reg[0][7]_1 [7]),
        .Q(\regs_reg[0]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][0] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [0]),
        .Q(\regs_reg[1]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][1] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [1]),
        .Q(\regs_reg[1]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][2] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [2]),
        .Q(\regs_reg[1]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][3] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [3]),
        .Q(\regs_reg[1]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][4] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [4]),
        .Q(\regs_reg[1]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][5] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [5]),
        .Q(\regs_reg[1]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][6] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [6]),
        .Q(\regs_reg[1]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[1][7] 
       (.C(clk_led_OBUF_BUFG),
        .CE(\regs[1][7]_i_1_n_0 ),
        .D(\regs_reg[0][7]_1 [7]),
        .Q(\regs_reg[1]_1 [7]),
        .R(SR));
endmodule

module rom
   (D,
    ft0,
    ns,
    \di_in_op_reg[1] ,
    E,
    \dout_reg[27]_0 ,
    Q,
    \dout_reg[27]_1 ,
    clk_led_OBUF_BUFG,
    \dout_reg[26]_0 ,
    \dout_reg[24]_0 ,
    \dout_reg[16]_0 ,
    \dout_reg[8]_0 ,
    \dout_reg[25]_0 ,
    \dout_reg[17]_0 ,
    ft,
    \hazzard_detction.ft_reg ,
    stall_pipeline_reg,
    \hazzard_detction.ft_reg_0 ,
    \hazzard_detction.ft_reg_1 ,
    \hazzard_detction.ft_reg_2 ,
    stall_pipeline_i_13_0,
    reg_w_a,
    stall_pipeline_i_20_0,
    \pc_in_reg[0] ,
    stall_pipeline_i_7_0,
    stall_pipeline_reg_0,
    stall_pipeline);
  output [6:0]D;
  output ft0;
  output ns;
  output \di_in_op_reg[1] ;
  output [0:0]E;
  input \dout_reg[27]_0 ;
  input Q;
  input \dout_reg[27]_1 ;
  input clk_led_OBUF_BUFG;
  input \dout_reg[26]_0 ;
  input \dout_reg[24]_0 ;
  input \dout_reg[16]_0 ;
  input \dout_reg[8]_0 ;
  input \dout_reg[25]_0 ;
  input \dout_reg[17]_0 ;
  input ft;
  input [3:0]\hazzard_detction.ft_reg ;
  input [1:0]stall_pipeline_reg;
  input \hazzard_detction.ft_reg_0 ;
  input \hazzard_detction.ft_reg_1 ;
  input [1:0]\hazzard_detction.ft_reg_2 ;
  input [3:0]stall_pipeline_i_13_0;
  input [1:0]reg_w_a;
  input [1:0]stall_pipeline_i_20_0;
  input [1:0]\pc_in_reg[0] ;
  input [6:0]stall_pipeline_i_7_0;
  input [3:0]stall_pipeline_reg_0;
  input stall_pipeline;

  wire [6:0]D;
  wire [0:0]E;
  wire Q;
  wire clk_led_OBUF_BUFG;
  wire \di_in_op_reg[1] ;
  wire \dout_reg[16]_0 ;
  wire \dout_reg[17]_0 ;
  wire \dout_reg[24]_0 ;
  wire \dout_reg[25]_0 ;
  wire \dout_reg[26]_0 ;
  wire \dout_reg[27]_0 ;
  wire \dout_reg[27]_1 ;
  wire \dout_reg[8]_0 ;
  wire ft;
  wire ft0;
  wire [3:0]\hazzard_detction.ft_reg ;
  wire \hazzard_detction.ft_reg_0 ;
  wire \hazzard_detction.ft_reg_1 ;
  wire [1:0]\hazzard_detction.ft_reg_2 ;
  wire ns;
  wire \pc_in[7]_i_2_n_0 ;
  wire \pc_in[7]_i_3_n_0 ;
  wire [1:0]\pc_in_reg[0] ;
  wire pc_load_i_2_n_0;
  wire pc_load_i_3_n_0;
  wire [1:0]reg_w_a;
  wire stall_pipeline;
  wire stall_pipeline_i_10_n_0;
  wire stall_pipeline_i_11_n_0;
  wire stall_pipeline_i_12_n_0;
  wire [3:0]stall_pipeline_i_13_0;
  wire stall_pipeline_i_13_n_0;
  wire stall_pipeline_i_14_n_0;
  wire stall_pipeline_i_15_n_0;
  wire stall_pipeline_i_16_n_0;
  wire stall_pipeline_i_17_n_0;
  wire stall_pipeline_i_18_n_0;
  wire stall_pipeline_i_19_n_0;
  wire [1:0]stall_pipeline_i_20_0;
  wire stall_pipeline_i_20_n_0;
  wire stall_pipeline_i_21_n_0;
  wire stall_pipeline_i_22_n_0;
  wire stall_pipeline_i_23_n_0;
  wire stall_pipeline_i_24_n_0;
  wire stall_pipeline_i_25_n_0;
  wire stall_pipeline_i_26_n_0;
  wire stall_pipeline_i_27_n_0;
  wire stall_pipeline_i_28_n_0;
  wire stall_pipeline_i_29_n_0;
  wire stall_pipeline_i_2_n_0;
  wire stall_pipeline_i_30_n_0;
  wire stall_pipeline_i_3_n_0;
  wire stall_pipeline_i_4_n_0;
  wire stall_pipeline_i_5_n_0;
  wire stall_pipeline_i_6_n_0;
  wire [6:0]stall_pipeline_i_7_0;
  wire stall_pipeline_i_7_n_0;
  wire stall_pipeline_i_8_n_0;
  wire stall_pipeline_i_9_n_0;
  wire [1:0]stall_pipeline_reg;
  wire [3:0]stall_pipeline_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[16] 
       (.C(clk_led_OBUF_BUFG),
        .CE(Q),
        .D(\dout_reg[16]_0 ),
        .Q(D[1]),
        .R(\dout_reg[27]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\dout_reg[17]_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[24] 
       (.C(clk_led_OBUF_BUFG),
        .CE(Q),
        .D(\dout_reg[24]_0 ),
        .Q(D[3]),
        .R(\dout_reg[27]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[25] 
       (.C(clk_led_OBUF_BUFG),
        .CE(1'b1),
        .D(\dout_reg[25]_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk_led_OBUF_BUFG),
        .CE(Q),
        .D(\dout_reg[26]_0 ),
        .Q(D[5]),
        .R(\dout_reg[27]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk_led_OBUF_BUFG),
        .CE(Q),
        .D(\dout_reg[27]_1 ),
        .Q(D[6]),
        .R(\dout_reg[27]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk_led_OBUF_BUFG),
        .CE(Q),
        .D(\dout_reg[8]_0 ),
        .Q(D[0]),
        .R(\dout_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \hazzard_detction.ft_i_1 
       (.I0(stall_pipeline_i_2_n_0),
        .I1(pc_load_i_2_n_0),
        .I2(stall_pipeline_i_7_n_0),
        .O(\di_in_op_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFFFDDFD)) 
    \pc_in[7]_i_1 
       (.I0(stall_pipeline_i_7_n_0),
        .I1(\pc_in[7]_i_2_n_0 ),
        .I2(stall_pipeline_i_4_n_0),
        .I3(stall_pipeline_i_3_n_0),
        .I4(stall_pipeline_i_2_n_0),
        .I5(stall_pipeline),
        .O(E));
  LUT6 #(
    .INIT(64'hA88A88888888A88A)) 
    \pc_in[7]_i_2 
       (.I0(stall_pipeline_i_6_n_0),
        .I1(\pc_in[7]_i_3_n_0 ),
        .I2(D[2]),
        .I3(\pc_in_reg[0] [1]),
        .I4(D[1]),
        .I5(\pc_in_reg[0] [0]),
        .O(\pc_in[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000F41F)) 
    \pc_in[7]_i_3 
       (.I0(D[4]),
        .I1(D[0]),
        .I2(D[3]),
        .I3(\pc_in_reg[0] [0]),
        .I4(\pc_in_reg[0] [1]),
        .O(\pc_in[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00FDFDFD)) 
    pc_load_i_1
       (.I0(stall_pipeline_i_7_n_0),
        .I1(pc_load_i_2_n_0),
        .I2(stall_pipeline_i_2_n_0),
        .I3(ft),
        .I4(Q),
        .O(ft0));
  LUT6 #(
    .INIT(64'h5551FFFF55515551)) 
    pc_load_i_2
       (.I0(stall_pipeline_i_3_n_0),
        .I1(pc_load_i_3_n_0),
        .I2(\hazzard_detction.ft_reg [3]),
        .I3(\hazzard_detction.ft_reg [2]),
        .I4(stall_pipeline_i_5_n_0),
        .I5(stall_pipeline_i_6_n_0),
        .O(pc_load_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pc_load_i_3
       (.I0(\hazzard_detction.ft_reg [0]),
        .I1(\hazzard_detction.ft_reg [1]),
        .O(pc_load_i_3_n_0));
  LUT6 #(
    .INIT(64'hBAFFBABAFFFFFFFF)) 
    stall_pipeline_i_1
       (.I0(stall_pipeline_i_2_n_0),
        .I1(stall_pipeline_i_3_n_0),
        .I2(stall_pipeline_i_4_n_0),
        .I3(stall_pipeline_i_5_n_0),
        .I4(stall_pipeline_i_6_n_0),
        .I5(stall_pipeline_i_7_n_0),
        .O(ns));
  LUT3 #(
    .INIT(8'hBA)) 
    stall_pipeline_i_10
       (.I0(D[3]),
        .I1(D[4]),
        .I2(D[0]),
        .O(stall_pipeline_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    stall_pipeline_i_11
       (.I0(D[3]),
        .I1(D[0]),
        .I2(D[4]),
        .O(stall_pipeline_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEABA)) 
    stall_pipeline_i_12
       (.I0(stall_pipeline_i_21_n_0),
        .I1(stall_pipeline_reg_0[2]),
        .I2(stall_pipeline_reg_0[3]),
        .I3(stall_pipeline_reg_0[0]),
        .I4(stall_pipeline_reg_0[1]),
        .I5(stall_pipeline_i_22_n_0),
        .O(stall_pipeline_i_12_n_0));
  LUT6 #(
    .INIT(64'hFEEEEEEFFEEEEEEE)) 
    stall_pipeline_i_13
       (.I0(stall_pipeline_i_23_n_0),
        .I1(stall_pipeline_i_24_n_0),
        .I2(\hazzard_detction.ft_reg [0]),
        .I3(\hazzard_detction.ft_reg [1]),
        .I4(\hazzard_detction.ft_reg [2]),
        .I5(\hazzard_detction.ft_reg [3]),
        .O(stall_pipeline_i_13_n_0));
  LUT6 #(
    .INIT(64'h888888888888888F)) 
    stall_pipeline_i_14
       (.I0(Q),
        .I1(stall_pipeline),
        .I2(stall_pipeline_i_7_0[4]),
        .I3(stall_pipeline_i_7_0[5]),
        .I4(stall_pipeline_i_7_0[3]),
        .I5(stall_pipeline_i_7_0[6]),
        .O(stall_pipeline_i_14_n_0));
  LUT6 #(
    .INIT(64'h882F88224411441F)) 
    stall_pipeline_i_15
       (.I0(stall_pipeline_i_7_0[1]),
        .I1(stall_pipeline_i_7_0[2]),
        .I2(stall_pipeline_i_7_0[4]),
        .I3(D[2]),
        .I4(stall_pipeline_i_7_0[0]),
        .I5(D[1]),
        .O(stall_pipeline_i_15_n_0));
  LUT6 #(
    .INIT(64'hA88A88888888A88A)) 
    stall_pipeline_i_16
       (.I0(stall_pipeline_i_6_n_0),
        .I1(stall_pipeline_i_25_n_0),
        .I2(\pc_in_reg[0] [0]),
        .I3(stall_pipeline_i_7_0[1]),
        .I4(stall_pipeline_i_7_0[2]),
        .I5(\pc_in_reg[0] [1]),
        .O(stall_pipeline_i_16_n_0));
  LUT6 #(
    .INIT(64'h888A88888888888A)) 
    stall_pipeline_i_17
       (.I0(stall_pipeline_i_4_n_0),
        .I1(stall_pipeline_i_26_n_0),
        .I2(stall_pipeline_i_7_0[4]),
        .I3(stall_pipeline_reg[1]),
        .I4(stall_pipeline_reg[0]),
        .I5(stall_pipeline_i_7_0[0]),
        .O(stall_pipeline_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000000EEEEFF0F)) 
    stall_pipeline_i_18
       (.I0(stall_pipeline_i_27_n_0),
        .I1(stall_pipeline_i_10_n_0),
        .I2(stall_pipeline_i_11_n_0),
        .I3(stall_pipeline_i_28_n_0),
        .I4(reg_w_a[0]),
        .I5(reg_w_a[1]),
        .O(stall_pipeline_i_18_n_0));
  LUT6 #(
    .INIT(64'hF28F82824141F14F)) 
    stall_pipeline_i_19
       (.I0(D[1]),
        .I1(D[2]),
        .I2(reg_w_a[1]),
        .I3(stall_pipeline_i_7_0[2]),
        .I4(stall_pipeline_i_7_0[1]),
        .I5(reg_w_a[0]),
        .O(stall_pipeline_i_19_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBA)) 
    stall_pipeline_i_2
       (.I0(stall_pipeline_i_8_n_0),
        .I1(stall_pipeline_i_9_n_0),
        .I2(\hazzard_detction.ft_reg_0 ),
        .I3(\hazzard_detction.ft_reg_1 ),
        .I4(\hazzard_detction.ft_reg_2 [1]),
        .I5(\hazzard_detction.ft_reg_2 [0]),
        .O(stall_pipeline_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF45441115)) 
    stall_pipeline_i_20
       (.I0(stall_pipeline_i_20_0[1]),
        .I1(stall_pipeline_i_7_0[3]),
        .I2(stall_pipeline_i_7_0[4]),
        .I3(stall_pipeline_i_7_0[0]),
        .I4(stall_pipeline_i_20_0[0]),
        .I5(stall_pipeline_i_29_n_0),
        .O(stall_pipeline_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    stall_pipeline_i_21
       (.I0(\hazzard_detction.ft_reg_0 ),
        .I1(\hazzard_detction.ft_reg_2 [0]),
        .I2(\hazzard_detction.ft_reg_2 [1]),
        .I3(\hazzard_detction.ft_reg_1 ),
        .O(stall_pipeline_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF8890)) 
    stall_pipeline_i_22
       (.I0(\hazzard_detction.ft_reg_0 ),
        .I1(\hazzard_detction.ft_reg_2 [0]),
        .I2(\hazzard_detction.ft_reg_2 [1]),
        .I3(\hazzard_detction.ft_reg_1 ),
        .I4(stall_pipeline_i_30_n_0),
        .O(stall_pipeline_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    stall_pipeline_i_23
       (.I0(stall_pipeline_i_13_0[3]),
        .I1(stall_pipeline_i_13_0[0]),
        .I2(stall_pipeline_i_13_0[1]),
        .I3(stall_pipeline_i_13_0[2]),
        .O(stall_pipeline_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    stall_pipeline_i_24
       (.I0(stall_pipeline_i_13_0[1]),
        .I1(stall_pipeline_i_13_0[0]),
        .I2(stall_pipeline_i_13_0[2]),
        .I3(stall_pipeline_i_13_0[3]),
        .O(stall_pipeline_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000F21F)) 
    stall_pipeline_i_25
       (.I0(stall_pipeline_i_7_0[0]),
        .I1(stall_pipeline_i_7_0[4]),
        .I2(stall_pipeline_i_7_0[3]),
        .I3(\pc_in_reg[0] [0]),
        .I4(\pc_in_reg[0] [1]),
        .O(stall_pipeline_i_25_n_0));
  LUT5 #(
    .INIT(32'h8822F41F)) 
    stall_pipeline_i_26
       (.I0(stall_pipeline_i_7_0[2]),
        .I1(stall_pipeline_i_7_0[1]),
        .I2(stall_pipeline_i_7_0[3]),
        .I3(stall_pipeline_reg[0]),
        .I4(stall_pipeline_reg[1]),
        .O(stall_pipeline_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    stall_pipeline_i_27
       (.I0(stall_pipeline_i_7_0[3]),
        .I1(stall_pipeline_i_7_0[4]),
        .I2(stall_pipeline_i_7_0[0]),
        .O(stall_pipeline_i_27_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    stall_pipeline_i_28
       (.I0(stall_pipeline_i_7_0[3]),
        .I1(stall_pipeline_i_7_0[0]),
        .I2(stall_pipeline_i_7_0[4]),
        .O(stall_pipeline_i_28_n_0));
  LUT6 #(
    .INIT(64'hF48F21218484F12F)) 
    stall_pipeline_i_29
       (.I0(stall_pipeline_i_7_0[1]),
        .I1(stall_pipeline_i_7_0[2]),
        .I2(stall_pipeline_i_20_0[0]),
        .I3(D[1]),
        .I4(stall_pipeline_i_20_0[1]),
        .I5(D[2]),
        .O(stall_pipeline_i_29_n_0));
  LUT6 #(
    .INIT(64'h707DBEBE707DB0B0)) 
    stall_pipeline_i_3
       (.I0(D[1]),
        .I1(D[2]),
        .I2(stall_pipeline_reg[1]),
        .I3(stall_pipeline_i_10_n_0),
        .I4(stall_pipeline_reg[0]),
        .I5(stall_pipeline_i_11_n_0),
        .O(stall_pipeline_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    stall_pipeline_i_30
       (.I0(\hazzard_detction.ft_reg [2]),
        .I1(\hazzard_detction.ft_reg [3]),
        .I2(\hazzard_detction.ft_reg [0]),
        .I3(\hazzard_detction.ft_reg [1]),
        .O(stall_pipeline_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    stall_pipeline_i_4
       (.I0(\hazzard_detction.ft_reg [1]),
        .I1(\hazzard_detction.ft_reg [0]),
        .I2(\hazzard_detction.ft_reg [3]),
        .I3(\hazzard_detction.ft_reg [2]),
        .O(stall_pipeline_i_4_n_0));
  LUT6 #(
    .INIT(64'h70BE70B07DBE7DB0)) 
    stall_pipeline_i_5
       (.I0(D[1]),
        .I1(D[2]),
        .I2(\pc_in_reg[0] [1]),
        .I3(\pc_in_reg[0] [0]),
        .I4(stall_pipeline_i_11_n_0),
        .I5(stall_pipeline_i_10_n_0),
        .O(stall_pipeline_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    stall_pipeline_i_6
       (.I0(stall_pipeline_reg_0[1]),
        .I1(stall_pipeline_reg_0[0]),
        .I2(stall_pipeline_reg_0[3]),
        .I3(stall_pipeline_reg_0[2]),
        .O(stall_pipeline_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    stall_pipeline_i_7
       (.I0(stall_pipeline_i_12_n_0),
        .I1(stall_pipeline_i_13_n_0),
        .I2(stall_pipeline_i_14_n_0),
        .I3(stall_pipeline_i_15_n_0),
        .I4(stall_pipeline_i_16_n_0),
        .I5(stall_pipeline_i_17_n_0),
        .O(stall_pipeline_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    stall_pipeline_i_8
       (.I0(stall_pipeline_i_18_n_0),
        .I1(stall_pipeline_i_19_n_0),
        .I2(stall_pipeline_i_13_0[2]),
        .I3(stall_pipeline_i_13_0[3]),
        .I4(stall_pipeline_i_13_0[0]),
        .I5(stall_pipeline_i_13_0[1]),
        .O(stall_pipeline_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000BEBEBAAE)) 
    stall_pipeline_i_9
       (.I0(stall_pipeline_i_20_0[1]),
        .I1(stall_pipeline_i_20_0[0]),
        .I2(D[3]),
        .I3(D[0]),
        .I4(D[4]),
        .I5(stall_pipeline_i_20_n_0),
        .O(stall_pipeline_i_9_n_0));
endmodule

module seven_seg_controller
   (an_OBUF,
    seg_OBUF,
    clk_external_IBUF_BUFG,
    D,
    Q);
  output [3:0]an_OBUF;
  output [6:0]seg_OBUF;
  input clk_external_IBUF_BUFG;
  input [3:0]D;
  input [3:0]Q;

  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]an_OBUF;
  wire clk_external_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire [19:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
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
  wire p_0_in;
  wire [6:0]seg_OBUF;
  wire [3:0]sel0;
  wire [3:3]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(digit_sel[0]),
        .I1(digit_sel[1]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3],\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_sel[0]_i_1 
       (.I0(p_0_in),
        .I1(digit_sel[0]),
        .O(\digit_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\digit_sel[0]_i_1_n_0 ),
        .Q(digit_sel[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_sel_reg[1] 
       (.C(clk_external_IBUF_BUFG),
        .CE(1'b1),
        .D(\digit_sel[1]_i_1_n_0 ),
        .Q(digit_sel[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5390)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(D[3]),
        .I1(digit_sel[0]),
        .I2(digit_sel[1]),
        .I3(Q[3]),
        .O(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(D[2]),
        .I1(digit_sel[0]),
        .I2(digit_sel[1]),
        .I3(Q[2]),
        .O(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(D[0]),
        .I1(digit_sel[0]),
        .I2(digit_sel[1]),
        .I3(Q[0]),
        .O(sel0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(D[1]),
        .I1(digit_sel[0]),
        .I2(digit_sel[1]),
        .I3(Q[1]),
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

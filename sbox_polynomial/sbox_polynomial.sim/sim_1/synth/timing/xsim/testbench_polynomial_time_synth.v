// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Aug 30 19:18:02 2020
// Host        : Utkarsh running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Utkarsh/Documents/sbox_polynomial/sbox_polynomial.sim/sim_1/synth/timing/xsim/testbench_polynomial_time_synth.v
// Design      : mul_x_inv
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k410tffv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module mul_x_inv
   (dataout,
    ind);
  output [7:0]dataout;
  input [7:0]ind;

  wire [7:0]dataout;
  wire [7:0]dataout_OBUF;
  wire \dataout_OBUF[0]_inst_i_10_n_0 ;
  wire \dataout_OBUF[0]_inst_i_11_n_0 ;
  wire \dataout_OBUF[0]_inst_i_2_n_0 ;
  wire \dataout_OBUF[0]_inst_i_3_n_0 ;
  wire \dataout_OBUF[0]_inst_i_4_n_0 ;
  wire \dataout_OBUF[0]_inst_i_5_n_0 ;
  wire \dataout_OBUF[0]_inst_i_6_n_0 ;
  wire \dataout_OBUF[0]_inst_i_7_n_0 ;
  wire \dataout_OBUF[0]_inst_i_8_n_0 ;
  wire \dataout_OBUF[0]_inst_i_9_n_0 ;
  wire \dataout_OBUF[1]_inst_i_10_n_0 ;
  wire \dataout_OBUF[1]_inst_i_2_n_0 ;
  wire \dataout_OBUF[1]_inst_i_3_n_0 ;
  wire \dataout_OBUF[1]_inst_i_4_n_0 ;
  wire \dataout_OBUF[1]_inst_i_5_n_0 ;
  wire \dataout_OBUF[1]_inst_i_6_n_0 ;
  wire \dataout_OBUF[1]_inst_i_7_n_0 ;
  wire \dataout_OBUF[1]_inst_i_8_n_0 ;
  wire \dataout_OBUF[1]_inst_i_9_n_0 ;
  wire \dataout_OBUF[2]_inst_i_10_n_0 ;
  wire \dataout_OBUF[2]_inst_i_11_n_0 ;
  wire \dataout_OBUF[2]_inst_i_2_n_0 ;
  wire \dataout_OBUF[2]_inst_i_3_n_0 ;
  wire \dataout_OBUF[2]_inst_i_4_n_0 ;
  wire \dataout_OBUF[2]_inst_i_5_n_0 ;
  wire \dataout_OBUF[2]_inst_i_6_n_0 ;
  wire \dataout_OBUF[2]_inst_i_7_n_0 ;
  wire \dataout_OBUF[2]_inst_i_8_n_0 ;
  wire \dataout_OBUF[2]_inst_i_9_n_0 ;
  wire \dataout_OBUF[3]_inst_i_10_n_0 ;
  wire \dataout_OBUF[3]_inst_i_2_n_0 ;
  wire \dataout_OBUF[3]_inst_i_3_n_0 ;
  wire \dataout_OBUF[3]_inst_i_4_n_0 ;
  wire \dataout_OBUF[3]_inst_i_5_n_0 ;
  wire \dataout_OBUF[3]_inst_i_6_n_0 ;
  wire \dataout_OBUF[3]_inst_i_7_n_0 ;
  wire \dataout_OBUF[3]_inst_i_8_n_0 ;
  wire \dataout_OBUF[3]_inst_i_9_n_0 ;
  wire \dataout_OBUF[4]_inst_i_10_n_0 ;
  wire \dataout_OBUF[4]_inst_i_11_n_0 ;
  wire \dataout_OBUF[4]_inst_i_2_n_0 ;
  wire \dataout_OBUF[4]_inst_i_3_n_0 ;
  wire \dataout_OBUF[4]_inst_i_4_n_0 ;
  wire \dataout_OBUF[4]_inst_i_5_n_0 ;
  wire \dataout_OBUF[4]_inst_i_6_n_0 ;
  wire \dataout_OBUF[4]_inst_i_7_n_0 ;
  wire \dataout_OBUF[4]_inst_i_8_n_0 ;
  wire \dataout_OBUF[4]_inst_i_9_n_0 ;
  wire \dataout_OBUF[5]_inst_i_10_n_0 ;
  wire \dataout_OBUF[5]_inst_i_11_n_0 ;
  wire \dataout_OBUF[5]_inst_i_2_n_0 ;
  wire \dataout_OBUF[5]_inst_i_3_n_0 ;
  wire \dataout_OBUF[5]_inst_i_4_n_0 ;
  wire \dataout_OBUF[5]_inst_i_5_n_0 ;
  wire \dataout_OBUF[5]_inst_i_6_n_0 ;
  wire \dataout_OBUF[5]_inst_i_7_n_0 ;
  wire \dataout_OBUF[5]_inst_i_8_n_0 ;
  wire \dataout_OBUF[5]_inst_i_9_n_0 ;
  wire \dataout_OBUF[6]_inst_i_10_n_0 ;
  wire \dataout_OBUF[6]_inst_i_2_n_0 ;
  wire \dataout_OBUF[6]_inst_i_3_n_0 ;
  wire \dataout_OBUF[6]_inst_i_4_n_0 ;
  wire \dataout_OBUF[6]_inst_i_5_n_0 ;
  wire \dataout_OBUF[6]_inst_i_6_n_0 ;
  wire \dataout_OBUF[6]_inst_i_7_n_0 ;
  wire \dataout_OBUF[6]_inst_i_8_n_0 ;
  wire \dataout_OBUF[6]_inst_i_9_n_0 ;
  wire \dataout_OBUF[7]_inst_i_2_n_0 ;
  wire \dataout_OBUF[7]_inst_i_3_n_0 ;
  wire \dataout_OBUF[7]_inst_i_4_n_0 ;
  wire \dataout_OBUF[7]_inst_i_5_n_0 ;
  wire \dataout_OBUF[7]_inst_i_6_n_0 ;
  wire \dataout_OBUF[7]_inst_i_7_n_0 ;
  wire \dataout_OBUF[7]_inst_i_8_n_0 ;
  wire \dataout_OBUF[7]_inst_i_9_n_0 ;
  wire [7:0]ind;
  wire [7:0]ind_IBUF;

initial begin
 $sdf_annotate("testbench_polynomial_time_synth.sdf",,,,"tool_control");
end
  OBUF \dataout_OBUF[0]_inst 
       (.I(dataout_OBUF[0]),
        .O(dataout[0]));
  LUT6 #(
    .INIT(64'hFFACFFACFFFFACAC)) 
    \dataout_OBUF[0]_inst_i_1 
       (.I0(\dataout_OBUF[0]_inst_i_2_n_0 ),
        .I1(\dataout_OBUF[0]_inst_i_3_n_0 ),
        .I2(ind_IBUF[4]),
        .I3(\dataout_OBUF[0]_inst_i_4_n_0 ),
        .I4(\dataout_OBUF[0]_inst_i_5_n_0 ),
        .I5(ind_IBUF[5]),
        .O(dataout_OBUF[0]));
  LUT6 #(
    .INIT(64'hE3646B64F001028F)) 
    \dataout_OBUF[0]_inst_i_10 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \dataout_OBUF[0]_inst_i_11 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .O(\dataout_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000008080)) 
    \dataout_OBUF[0]_inst_i_2 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0500000040010000)) 
    \dataout_OBUF[0]_inst_i_3 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[0]_inst_i_4 
       (.I0(\dataout_OBUF[0]_inst_i_6_n_0 ),
        .I1(\dataout_OBUF[0]_inst_i_7_n_0 ),
        .I2(ind_IBUF[0]),
        .I3(\dataout_OBUF[0]_inst_i_8_n_0 ),
        .O(\dataout_OBUF[0]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[0]_inst_i_5 
       (.I0(\dataout_OBUF[0]_inst_i_9_n_0 ),
        .I1(\dataout_OBUF[0]_inst_i_10_n_0 ),
        .I2(ind_IBUF[0]),
        .I3(\dataout_OBUF[0]_inst_i_11_n_0 ),
        .O(\dataout_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2EF00F708122AE5C)) 
    \dataout_OBUF[0]_inst_i_6 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA4B2389826942764)) 
    \dataout_OBUF[0]_inst_i_7 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \dataout_OBUF[0]_inst_i_8 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .O(\dataout_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD15FF89B66FC94EC)) 
    \dataout_OBUF[0]_inst_i_9 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[0]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[1]_inst 
       (.I(dataout_OBUF[1]),
        .O(dataout[1]));
  LUT5 #(
    .INIT(32'hF2F2FF22)) 
    \dataout_OBUF[1]_inst_i_1 
       (.I0(\dataout_OBUF[1]_inst_i_2_n_0 ),
        .I1(ind_IBUF[1]),
        .I2(\dataout_OBUF[1]_inst_i_3_n_0 ),
        .I3(\dataout_OBUF[1]_inst_i_4_n_0 ),
        .I4(ind_IBUF[0]),
        .O(dataout_OBUF[1]));
  LUT6 #(
    .INIT(64'h000322A000000000)) 
    \dataout_OBUF[1]_inst_i_10 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0D00180A81009000)) 
    \dataout_OBUF[1]_inst_i_2 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[1]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[1]_inst_i_3 
       (.I0(\dataout_OBUF[1]_inst_i_5_n_0 ),
        .I1(\dataout_OBUF[1]_inst_i_6_n_0 ),
        .I2(ind_IBUF[2]),
        .I3(\dataout_OBUF[1]_inst_i_7_n_0 ),
        .O(\dataout_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[1]_inst_i_4 
       (.I0(\dataout_OBUF[1]_inst_i_8_n_0 ),
        .I1(\dataout_OBUF[1]_inst_i_9_n_0 ),
        .I2(ind_IBUF[1]),
        .I3(\dataout_OBUF[1]_inst_i_10_n_0 ),
        .O(\dataout_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB370A00A3D34151D)) 
    \dataout_OBUF[1]_inst_i_5 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[5]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101D577570D23EC2)) 
    \dataout_OBUF[1]_inst_i_6 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[5]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30000000348004C0)) 
    \dataout_OBUF[1]_inst_i_7 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[5]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD4CA0400F7444D67)) 
    \dataout_OBUF[1]_inst_i_8 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h40806AEE88D8809B)) 
    \dataout_OBUF[1]_inst_i_9 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[1]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[2]_inst 
       (.I(dataout_OBUF[2]),
        .O(dataout[2]));
  LUT6 #(
    .INIT(64'hFFACFFACFFFFACAC)) 
    \dataout_OBUF[2]_inst_i_1 
       (.I0(\dataout_OBUF[2]_inst_i_2_n_0 ),
        .I1(\dataout_OBUF[2]_inst_i_3_n_0 ),
        .I2(ind_IBUF[5]),
        .I3(\dataout_OBUF[2]_inst_i_4_n_0 ),
        .I4(\dataout_OBUF[2]_inst_i_5_n_0 ),
        .I5(ind_IBUF[4]),
        .O(dataout_OBUF[2]));
  LUT6 #(
    .INIT(64'h13F211A9CBAF8886)) 
    \dataout_OBUF[2]_inst_i_10 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h030201A000000010)) 
    \dataout_OBUF[2]_inst_i_11 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3C0000000C500000)) 
    \dataout_OBUF[2]_inst_i_2 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0066100030110000)) 
    \dataout_OBUF[2]_inst_i_3 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[2]_inst_i_4 
       (.I0(\dataout_OBUF[2]_inst_i_6_n_0 ),
        .I1(\dataout_OBUF[2]_inst_i_7_n_0 ),
        .I2(ind_IBUF[5]),
        .I3(\dataout_OBUF[2]_inst_i_8_n_0 ),
        .O(\dataout_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[2]_inst_i_5 
       (.I0(\dataout_OBUF[2]_inst_i_9_n_0 ),
        .I1(\dataout_OBUF[2]_inst_i_10_n_0 ),
        .I2(ind_IBUF[6]),
        .I3(\dataout_OBUF[2]_inst_i_11_n_0 ),
        .O(\dataout_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA0948C6AB21F08E)) 
    \dataout_OBUF[2]_inst_i_6 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCF44800050D08E78)) 
    \dataout_OBUF[2]_inst_i_7 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008500000)) 
    \dataout_OBUF[2]_inst_i_8 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFB54C0406BDC921A)) 
    \dataout_OBUF[2]_inst_i_9 
       (.I0(ind_IBUF[0]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[2]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[3]_inst 
       (.I(dataout_OBUF[3]),
        .O(dataout[3]));
  LUT5 #(
    .INIT(32'hF2F2FF22)) 
    \dataout_OBUF[3]_inst_i_1 
       (.I0(\dataout_OBUF[3]_inst_i_2_n_0 ),
        .I1(ind_IBUF[0]),
        .I2(\dataout_OBUF[3]_inst_i_3_n_0 ),
        .I3(\dataout_OBUF[3]_inst_i_4_n_0 ),
        .I4(ind_IBUF[3]),
        .O(dataout_OBUF[3]));
  LUT6 #(
    .INIT(64'h0004101000040000)) 
    \dataout_OBUF[3]_inst_i_10 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000CA00C20)) 
    \dataout_OBUF[3]_inst_i_2 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[3]_inst_i_3 
       (.I0(\dataout_OBUF[3]_inst_i_5_n_0 ),
        .I1(\dataout_OBUF[3]_inst_i_6_n_0 ),
        .I2(ind_IBUF[7]),
        .I3(\dataout_OBUF[3]_inst_i_7_n_0 ),
        .O(\dataout_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[3]_inst_i_4 
       (.I0(\dataout_OBUF[3]_inst_i_8_n_0 ),
        .I1(\dataout_OBUF[3]_inst_i_9_n_0 ),
        .I2(ind_IBUF[5]),
        .I3(\dataout_OBUF[3]_inst_i_10_n_0 ),
        .O(\dataout_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7835DBAF2DF083B8)) 
    \dataout_OBUF[3]_inst_i_5 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h82EA7057C2AC0023)) 
    \dataout_OBUF[3]_inst_i_6 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \dataout_OBUF[3]_inst_i_7 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2A074FA4A3E05A6)) 
    \dataout_OBUF[3]_inst_i_8 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8C46950E1DD57B22)) 
    \dataout_OBUF[3]_inst_i_9 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[3]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[4]_inst 
       (.I(dataout_OBUF[4]),
        .O(dataout[4]));
  LUT6 #(
    .INIT(64'hFFACFFACFFFFACAC)) 
    \dataout_OBUF[4]_inst_i_1 
       (.I0(\dataout_OBUF[4]_inst_i_2_n_0 ),
        .I1(\dataout_OBUF[4]_inst_i_3_n_0 ),
        .I2(ind_IBUF[5]),
        .I3(\dataout_OBUF[4]_inst_i_4_n_0 ),
        .I4(\dataout_OBUF[4]_inst_i_5_n_0 ),
        .I5(ind_IBUF[0]),
        .O(dataout_OBUF[4]));
  LUT6 #(
    .INIT(64'hA7130B13C4044C18)) 
    \dataout_OBUF[4]_inst_i_10 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0388030000000000)) 
    \dataout_OBUF[4]_inst_i_11 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A0000001100C044)) 
    \dataout_OBUF[4]_inst_i_2 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10230000)) 
    \dataout_OBUF[4]_inst_i_3 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[3]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[4]_inst_i_4 
       (.I0(\dataout_OBUF[4]_inst_i_6_n_0 ),
        .I1(\dataout_OBUF[4]_inst_i_7_n_0 ),
        .I2(ind_IBUF[3]),
        .I3(\dataout_OBUF[4]_inst_i_8_n_0 ),
        .O(\dataout_OBUF[4]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[4]_inst_i_5 
       (.I0(\dataout_OBUF[4]_inst_i_9_n_0 ),
        .I1(\dataout_OBUF[4]_inst_i_10_n_0 ),
        .I2(ind_IBUF[6]),
        .I3(\dataout_OBUF[4]_inst_i_11_n_0 ),
        .O(\dataout_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA44C0437B7FAF0E0)) 
    \dataout_OBUF[4]_inst_i_6 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBE0FCA0438845AA4)) 
    \dataout_OBUF[4]_inst_i_7 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000084110000C4)) 
    \dataout_OBUF[4]_inst_i_8 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[6]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCA056B8C8857A3A2)) 
    \dataout_OBUF[4]_inst_i_9 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[2]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[4]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[5]_inst 
       (.I(dataout_OBUF[5]),
        .O(dataout[5]));
  LUT6 #(
    .INIT(64'hFFACFFACFFFFACAC)) 
    \dataout_OBUF[5]_inst_i_1 
       (.I0(\dataout_OBUF[5]_inst_i_2_n_0 ),
        .I1(\dataout_OBUF[5]_inst_i_3_n_0 ),
        .I2(ind_IBUF[3]),
        .I3(\dataout_OBUF[5]_inst_i_4_n_0 ),
        .I4(\dataout_OBUF[5]_inst_i_5_n_0 ),
        .I5(ind_IBUF[7]),
        .O(dataout_OBUF[5]));
  LUT6 #(
    .INIT(64'hD56D11ADDD4514E1)) 
    \dataout_OBUF[5]_inst_i_10 
       (.I0(ind_IBUF[3]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA000000000002020)) 
    \dataout_OBUF[5]_inst_i_11 
       (.I0(ind_IBUF[3]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000030320002050)) 
    \dataout_OBUF[5]_inst_i_2 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010C8180000C0000)) 
    \dataout_OBUF[5]_inst_i_3 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[5]_inst_i_4 
       (.I0(\dataout_OBUF[5]_inst_i_6_n_0 ),
        .I1(\dataout_OBUF[5]_inst_i_7_n_0 ),
        .I2(ind_IBUF[3]),
        .I3(\dataout_OBUF[5]_inst_i_8_n_0 ),
        .O(\dataout_OBUF[5]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[5]_inst_i_5 
       (.I0(\dataout_OBUF[5]_inst_i_9_n_0 ),
        .I1(\dataout_OBUF[5]_inst_i_10_n_0 ),
        .I2(ind_IBUF[2]),
        .I3(\dataout_OBUF[5]_inst_i_11_n_0 ),
        .O(\dataout_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4C5A9900484ABF00)) 
    \dataout_OBUF[5]_inst_i_6 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA03CF50D80F48024)) 
    \dataout_OBUF[5]_inst_i_7 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00100810)) 
    \dataout_OBUF[5]_inst_i_8 
       (.I0(ind_IBUF[6]),
        .I1(ind_IBUF[4]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE2507672FC2C3239)) 
    \dataout_OBUF[5]_inst_i_9 
       (.I0(ind_IBUF[3]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[0]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[5]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[6]_inst 
       (.I(dataout_OBUF[6]),
        .O(dataout[6]));
  LUT5 #(
    .INIT(32'hF8F8FF88)) 
    \dataout_OBUF[6]_inst_i_1 
       (.I0(\dataout_OBUF[6]_inst_i_2_n_0 ),
        .I1(ind_IBUF[2]),
        .I2(\dataout_OBUF[6]_inst_i_3_n_0 ),
        .I3(\dataout_OBUF[6]_inst_i_4_n_0 ),
        .I4(ind_IBUF[1]),
        .O(dataout_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000040000C00400)) 
    \dataout_OBUF[6]_inst_i_10 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[3]),
        .I5(ind_IBUF[6]),
        .O(\dataout_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h04000800AE000800)) 
    \dataout_OBUF[6]_inst_i_2 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[3]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[6]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[6]_inst_i_3 
       (.I0(\dataout_OBUF[6]_inst_i_5_n_0 ),
        .I1(\dataout_OBUF[6]_inst_i_6_n_0 ),
        .I2(ind_IBUF[3]),
        .I3(\dataout_OBUF[6]_inst_i_7_n_0 ),
        .O(\dataout_OBUF[6]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[6]_inst_i_4 
       (.I0(\dataout_OBUF[6]_inst_i_8_n_0 ),
        .I1(\dataout_OBUF[6]_inst_i_9_n_0 ),
        .I2(ind_IBUF[7]),
        .I3(\dataout_OBUF[6]_inst_i_10_n_0 ),
        .O(\dataout_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44007850A6F0F9A0)) 
    \dataout_OBUF[6]_inst_i_5 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA1EF0D7FC780CBE5)) 
    \dataout_OBUF[6]_inst_i_6 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001080880808080)) 
    \dataout_OBUF[6]_inst_i_7 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[6]),
        .I5(ind_IBUF[7]),
        .O(\dataout_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFA50E504AC051F5B)) 
    \dataout_OBUF[6]_inst_i_8 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[3]),
        .I5(ind_IBUF[6]),
        .O(\dataout_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB1CD125B12D82567)) 
    \dataout_OBUF[6]_inst_i_9 
       (.I0(ind_IBUF[4]),
        .I1(ind_IBUF[0]),
        .I2(ind_IBUF[2]),
        .I3(ind_IBUF[5]),
        .I4(ind_IBUF[3]),
        .I5(ind_IBUF[6]),
        .O(\dataout_OBUF[6]_inst_i_9_n_0 ));
  OBUF \dataout_OBUF[7]_inst 
       (.I(dataout_OBUF[7]),
        .O(dataout[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFACACFF00)) 
    \dataout_OBUF[7]_inst_i_1 
       (.I0(\dataout_OBUF[7]_inst_i_2_n_0 ),
        .I1(\dataout_OBUF[7]_inst_i_3_n_0 ),
        .I2(ind_IBUF[5]),
        .I3(\dataout_OBUF[7]_inst_i_4_n_0 ),
        .I4(ind_IBUF[3]),
        .I5(\dataout_OBUF[7]_inst_i_5_n_0 ),
        .O(dataout_OBUF[7]));
  LUT6 #(
    .INIT(64'h0DA711F90B8C1550)) 
    \dataout_OBUF[7]_inst_i_2 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF831E457C4D35A33)) 
    \dataout_OBUF[7]_inst_i_3 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[4]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[7]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \dataout_OBUF[7]_inst_i_4 
       (.I0(\dataout_OBUF[7]_inst_i_6_n_0 ),
        .I1(\dataout_OBUF[7]_inst_i_7_n_0 ),
        .I2(ind_IBUF[4]),
        .I3(\dataout_OBUF[7]_inst_i_8_n_0 ),
        .O(\dataout_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dataout_OBUF[7]_inst_i_5 
       (.I0(\dataout_OBUF[7]_inst_i_9_n_0 ),
        .I1(ind_IBUF[6]),
        .O(\dataout_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD80F8700F050D73F)) 
    \dataout_OBUF[7]_inst_i_6 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2B986AF80A356670)) 
    \dataout_OBUF[7]_inst_i_7 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[7]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000018)) 
    \dataout_OBUF[7]_inst_i_8 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[6]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .O(\dataout_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003000300008000)) 
    \dataout_OBUF[7]_inst_i_9 
       (.I0(ind_IBUF[2]),
        .I1(ind_IBUF[4]),
        .I2(ind_IBUF[5]),
        .I3(ind_IBUF[0]),
        .I4(ind_IBUF[7]),
        .I5(ind_IBUF[1]),
        .O(\dataout_OBUF[7]_inst_i_9_n_0 ));
  IBUF \ind_IBUF[0]_inst 
       (.I(ind[0]),
        .O(ind_IBUF[0]));
  IBUF \ind_IBUF[1]_inst 
       (.I(ind[1]),
        .O(ind_IBUF[1]));
  IBUF \ind_IBUF[2]_inst 
       (.I(ind[2]),
        .O(ind_IBUF[2]));
  IBUF \ind_IBUF[3]_inst 
       (.I(ind[3]),
        .O(ind_IBUF[3]));
  IBUF \ind_IBUF[4]_inst 
       (.I(ind[4]),
        .O(ind_IBUF[4]));
  IBUF \ind_IBUF[5]_inst 
       (.I(ind[5]),
        .O(ind_IBUF[5]));
  IBUF \ind_IBUF[6]_inst 
       (.I(ind[6]),
        .O(ind_IBUF[6]));
  IBUF \ind_IBUF[7]_inst 
       (.I(ind[7]),
        .O(ind_IBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

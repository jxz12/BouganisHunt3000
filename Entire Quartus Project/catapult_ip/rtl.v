// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   rad09@EE-RAD09-02
//  Generated date: Sat Mar 09 15:32:53 2013
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    mean_vga_core
// ------------------------------------------------------------------


module mean_vga_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [149:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  reg [9:0] regs_regs_slc_regs_regs_4_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_1_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_2_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_3_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_4_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_5_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_6_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_7_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_8_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_9_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_10_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_11_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_12_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_13_itm;
  reg [9:0] regs_regs_slc_regs_regs_4_14_itm;
  reg [149:0] reg_regs_regs_3_sva_1_cse;
  reg [149:0] reg_regs_regs_0_sva_cse;
  reg [149:0] reg_regs_regs_2_sva_1_cse;
  reg [9:0] reg_vout_rsc_mgc_out_stdreg_d_tmp;
  wire [11:0] nl_reg_vout_rsc_mgc_out_stdreg_d_tmp;
  reg [3:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_1;
  reg [5:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_2;
  reg [9:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_3;
  wire [14:0] ACC2_5_acc_1_psp_sva;
  wire [15:0] nl_ACC2_5_acc_1_psp_sva;
  wire [6:0] acc_imod_sva;
  wire [8:0] nl_acc_imod_sva;
  wire [3:0] FRAME_acc_53_sdt;
  wire [4:0] nl_FRAME_acc_53_sdt;
  wire [10:0] FRAME_acc_3_psp_1_sva;
  wire [12:0] nl_FRAME_acc_3_psp_1_sva;
  wire [10:0] FRAME_acc_4_psp_1_sva;
  wire [12:0] nl_FRAME_acc_4_psp_1_sva;
  wire [14:0] ACC2_5_acc_3_psp_sva;
  wire [15:0] nl_ACC2_5_acc_3_psp_sva;
  wire [6:0] acc_imod_4_sva;
  wire [8:0] nl_acc_imod_4_sva;
  wire [3:0] FRAME_acc_44_sdt;
  wire [4:0] nl_FRAME_acc_44_sdt;
  wire [14:0] ACC2_5_acc_2_psp_sva;
  wire [15:0] nl_ACC2_5_acc_2_psp_sva;
  wire [6:0] acc_imod_2_sva;
  wire [8:0] nl_acc_imod_2_sva;
  wire [3:0] FRAME_acc_28_sdt;
  wire [4:0] nl_FRAME_acc_28_sdt;


  // Interconnect Declarations for Component Instantiations 
  assign vout_rsc_mgc_out_stdreg_d = {reg_vout_rsc_mgc_out_stdreg_d_tmp , reg_vout_rsc_mgc_out_stdreg_d_tmp_1
      , reg_vout_rsc_mgc_out_stdreg_d_tmp_2 , reg_vout_rsc_mgc_out_stdreg_d_tmp_3};
  assign nl_ACC2_5_acc_1_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[59:50])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[89:80])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[119:110])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[149:140]))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[29:20])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[59:50])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[89:80])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[119:110])))) + conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[149:140])
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_itm)) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_1_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_2_itm))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_3_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_4_itm)) + conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[29:20])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[89:80]))))) + conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[119:110])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[149:140])) + conv_u2u_10_12(vin_rsc_mgc_in_wire_d[59:50]))
      + conv_u2u_11_13(conv_u2u_10_11(reg_regs_regs_0_sva_cse[29:20]) + conv_u2u_10_11(reg_regs_regs_0_sva_cse[59:50])))
      + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[89:80])
      + conv_u2u_10_11(reg_regs_regs_0_sva_cse[119:110])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[149:140])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[29:20]))));
  assign ACC2_5_acc_1_psp_sva = nl_ACC2_5_acc_1_psp_sva[14:0];
  assign nl_acc_imod_sva = conv_s2s_6_7(6'b10011 + (conv_u2u_5_6(conv_u2u_4_5({(~
      (ACC2_5_acc_1_psp_sva[4])) , 2'b11 , (~ (ACC2_5_acc_1_psp_sva[4]))}) + conv_u2u_4_5({(ACC2_5_acc_1_psp_sva[5])
      , (ACC2_5_acc_1_psp_sva[9:7])})) + conv_u2u_5_6(conv_u2u_4_5({(ACC2_5_acc_1_psp_sva[14])
      , 2'b0 , (ACC2_5_acc_1_psp_sva[14])}) + conv_u2u_4_5({3'b111 , (~ (ACC2_5_acc_1_psp_sva[5]))}))))
      + (conv_s2s_5_7(({(ACC2_5_acc_1_psp_sva[6]) , 1'b0 , (ACC2_5_acc_1_psp_sva[6])
      , 1'b0 , (ACC2_5_acc_1_psp_sva[6])}) + conv_u2s_4_5(ACC2_5_acc_1_psp_sva[3:0]))
      + conv_u2s_5_7({(conv_u2u_3_4(~ (ACC2_5_acc_1_psp_sva[13:11])) + conv_u2u_3_4(ACC2_5_acc_1_psp_sva[9:7]))
      , (~ (ACC2_5_acc_1_psp_sva[10]))}));
  assign acc_imod_sva = nl_acc_imod_sva[6:0];
  assign nl_FRAME_acc_53_sdt = ({(~ (acc_imod_sva[4])) , 2'b11 , (~ (acc_imod_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_sva[6:5]));
  assign FRAME_acc_53_sdt = nl_FRAME_acc_53_sdt[3:0];
  assign nl_FRAME_acc_3_psp_1_sva = (conv_u2s_10_12(conv_u2s_20_11(conv_u2u_4_10(ACC2_5_acc_2_psp_sva[13:10])
      * 10'b101001)) + conv_s2s_7_11((conv_u2s_5_7({(ACC2_5_acc_2_psp_sva[9:6]) ,
      (ACC2_5_acc_2_psp_sva[4])}) + conv_s2s_3_7(conv_u2s_2_3(conv_u2u_1_2(ACC2_5_acc_2_psp_sva[6])
      + conv_u2u_1_2(acc_imod_2_sva[4])) + conv_s2s_2_3(acc_imod_2_sva[6:5]))) +
      conv_s2s_5_7(conv_u2s_3_5(ACC2_5_acc_2_psp_sva[9:7]) + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((({(conv_s2u_4_5({(acc_imod_2_sva[6:5])
      , 2'b1}) + conv_u2u_3_5(FRAME_acc_28_sdt[3:1])) , (FRAME_acc_28_sdt[0])}) +
      conv_s2s_5_6({1'b1 , (acc_imod_2_sva[3:0])})))) + conv_u2s_1_2(ACC2_5_acc_2_psp_sva[5])))))
      + conv_u2u_10_11({(ACC2_5_acc_2_psp_sva[14]) , 1'b0 , (ACC2_5_acc_2_psp_sva[14])
      , 3'b0 , (signext_4_1(ACC2_5_acc_2_psp_sva[14]))});
  assign FRAME_acc_3_psp_1_sva = nl_FRAME_acc_3_psp_1_sva[10:0];
  assign nl_FRAME_acc_4_psp_1_sva = (conv_u2s_10_12(conv_u2s_20_11(conv_u2u_4_10(ACC2_5_acc_3_psp_sva[13:10])
      * 10'b101001)) + conv_s2s_7_11((conv_u2s_5_7({(ACC2_5_acc_3_psp_sva[9:6]) ,
      (ACC2_5_acc_3_psp_sva[4])}) + conv_s2s_3_7(conv_u2s_2_3(conv_u2u_1_2(ACC2_5_acc_3_psp_sva[6])
      + conv_u2u_1_2(acc_imod_4_sva[4])) + conv_s2s_2_3(acc_imod_4_sva[6:5]))) +
      conv_s2s_5_7(conv_u2s_3_5(ACC2_5_acc_3_psp_sva[9:7]) + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((({(conv_s2u_4_5({(acc_imod_4_sva[6:5])
      , 2'b1}) + conv_u2u_3_5(FRAME_acc_44_sdt[3:1])) , (FRAME_acc_44_sdt[0])}) +
      conv_s2s_5_6({1'b1 , (acc_imod_4_sva[3:0])})))) + conv_u2s_1_2(ACC2_5_acc_3_psp_sva[5])))))
      + conv_u2u_10_11({(ACC2_5_acc_3_psp_sva[14]) , 1'b0 , (ACC2_5_acc_3_psp_sva[14])
      , 3'b0 , (signext_4_1(ACC2_5_acc_3_psp_sva[14]))});
  assign FRAME_acc_4_psp_1_sva = nl_FRAME_acc_4_psp_1_sva[10:0];
  assign nl_ACC2_5_acc_3_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[39:30])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[69:60])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[99:90])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[129:120]))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[9:0])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[39:30])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[69:60])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[99:90])))) + conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[129:120])
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_10_itm)) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_11_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_12_itm))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_13_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_14_itm)) + conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[9:0])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[69:60]))))) + conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[99:90])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[129:120])) + conv_u2u_10_12(vin_rsc_mgc_in_wire_d[39:30]))
      + conv_u2u_11_13(conv_u2u_10_11(reg_regs_regs_0_sva_cse[9:0]) + conv_u2u_10_11(reg_regs_regs_0_sva_cse[39:30])))
      + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[69:60])
      + conv_u2u_10_11(reg_regs_regs_0_sva_cse[99:90])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[129:120])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[9:0]))));
  assign ACC2_5_acc_3_psp_sva = nl_ACC2_5_acc_3_psp_sva[14:0];
  assign nl_acc_imod_4_sva = conv_s2s_6_7(6'b10011 + (conv_u2u_5_6(conv_u2u_4_5({(~
      (ACC2_5_acc_3_psp_sva[4])) , 2'b11 , (~ (ACC2_5_acc_3_psp_sva[4]))}) + conv_u2u_4_5({(ACC2_5_acc_3_psp_sva[5])
      , (ACC2_5_acc_3_psp_sva[9:7])})) + conv_u2u_5_6(conv_u2u_4_5({(ACC2_5_acc_3_psp_sva[14])
      , 2'b0 , (ACC2_5_acc_3_psp_sva[14])}) + conv_u2u_4_5({3'b111 , (~ (ACC2_5_acc_3_psp_sva[5]))}))))
      + (conv_s2s_5_7(({(ACC2_5_acc_3_psp_sva[6]) , 1'b0 , (ACC2_5_acc_3_psp_sva[6])
      , 1'b0 , (ACC2_5_acc_3_psp_sva[6])}) + conv_u2s_4_5(ACC2_5_acc_3_psp_sva[3:0]))
      + conv_u2s_5_7({(conv_u2u_3_4(~ (ACC2_5_acc_3_psp_sva[13:11])) + conv_u2u_3_4(ACC2_5_acc_3_psp_sva[9:7]))
      , (~ (ACC2_5_acc_3_psp_sva[10]))}));
  assign acc_imod_4_sva = nl_acc_imod_4_sva[6:0];
  assign nl_FRAME_acc_44_sdt = ({(~ (acc_imod_4_sva[4])) , 2'b11 , (~ (acc_imod_4_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_4_sva[6:5]));
  assign FRAME_acc_44_sdt = nl_FRAME_acc_44_sdt[3:0];
  assign nl_ACC2_5_acc_2_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[49:40])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[79:70])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[109:100])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[139:130]))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[19:10])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[49:40])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[79:70])
      + conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[109:100])))) + conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_3_sva_1_cse[139:130])
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_5_itm)) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_6_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_7_itm))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_4_8_itm)
      + conv_u2u_10_11(regs_regs_slc_regs_regs_4_9_itm)) + conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[19:10])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[79:70]))))) + conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[109:100])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[139:130])) + conv_u2u_10_12(vin_rsc_mgc_in_wire_d[49:40]))
      + conv_u2u_11_13(conv_u2u_10_11(reg_regs_regs_0_sva_cse[19:10]) + conv_u2u_10_11(reg_regs_regs_0_sva_cse[49:40])))
      + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[79:70])
      + conv_u2u_10_11(reg_regs_regs_0_sva_cse[109:100])) + conv_u2u_11_12(conv_u2u_10_11(reg_regs_regs_0_sva_cse[139:130])
      + conv_u2u_10_11(reg_regs_regs_2_sva_1_cse[19:10]))));
  assign ACC2_5_acc_2_psp_sva = nl_ACC2_5_acc_2_psp_sva[14:0];
  assign nl_acc_imod_2_sva = conv_s2s_6_7(6'b10011 + (conv_u2u_5_6(conv_u2u_4_5({(~
      (ACC2_5_acc_2_psp_sva[4])) , 2'b11 , (~ (ACC2_5_acc_2_psp_sva[4]))}) + conv_u2u_4_5({(ACC2_5_acc_2_psp_sva[5])
      , (ACC2_5_acc_2_psp_sva[9:7])})) + conv_u2u_5_6(conv_u2u_4_5({(ACC2_5_acc_2_psp_sva[14])
      , 2'b0 , (ACC2_5_acc_2_psp_sva[14])}) + conv_u2u_4_5({3'b111 , (~ (ACC2_5_acc_2_psp_sva[5]))}))))
      + (conv_s2s_5_7(({(ACC2_5_acc_2_psp_sva[6]) , 1'b0 , (ACC2_5_acc_2_psp_sva[6])
      , 1'b0 , (ACC2_5_acc_2_psp_sva[6])}) + conv_u2s_4_5(ACC2_5_acc_2_psp_sva[3:0]))
      + conv_u2s_5_7({(conv_u2u_3_4(~ (ACC2_5_acc_2_psp_sva[13:11])) + conv_u2u_3_4(ACC2_5_acc_2_psp_sva[9:7]))
      , (~ (ACC2_5_acc_2_psp_sva[10]))}));
  assign acc_imod_2_sva = nl_acc_imod_2_sva[6:0];
  assign nl_FRAME_acc_28_sdt = ({(~ (acc_imod_2_sva[4])) , 2'b11 , (~ (acc_imod_2_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_2_sva[6:5]));
  assign FRAME_acc_28_sdt = nl_FRAME_acc_28_sdt[3:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_regs_regs_2_sva_1_cse <= 150'b0;
      reg_regs_regs_3_sva_1_cse <= 150'b0;
      regs_regs_slc_regs_regs_4_10_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_11_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_12_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_13_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_14_itm <= 10'b0;
      reg_regs_regs_0_sva_cse <= 150'b0;
      regs_regs_slc_regs_regs_4_5_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_6_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_7_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_8_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_9_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_1_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_2_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_3_itm <= 10'b0;
      regs_regs_slc_regs_regs_4_4_itm <= 10'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp <= 10'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_1 <= 4'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= 6'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_3 <= 10'b0;
    end
    else begin
      if ( en ) begin
        reg_regs_regs_2_sva_1_cse <= reg_regs_regs_0_sva_cse;
        reg_regs_regs_3_sva_1_cse <= reg_regs_regs_2_sva_1_cse;
        regs_regs_slc_regs_regs_4_10_itm <= reg_regs_regs_3_sva_1_cse[9:0];
        regs_regs_slc_regs_regs_4_11_itm <= reg_regs_regs_3_sva_1_cse[39:30];
        regs_regs_slc_regs_regs_4_12_itm <= reg_regs_regs_3_sva_1_cse[69:60];
        regs_regs_slc_regs_regs_4_13_itm <= reg_regs_regs_3_sva_1_cse[99:90];
        regs_regs_slc_regs_regs_4_14_itm <= reg_regs_regs_3_sva_1_cse[129:120];
        reg_regs_regs_0_sva_cse <= vin_rsc_mgc_in_wire_d;
        regs_regs_slc_regs_regs_4_5_itm <= reg_regs_regs_3_sva_1_cse[19:10];
        regs_regs_slc_regs_regs_4_6_itm <= reg_regs_regs_3_sva_1_cse[49:40];
        regs_regs_slc_regs_regs_4_7_itm <= reg_regs_regs_3_sva_1_cse[79:70];
        regs_regs_slc_regs_regs_4_8_itm <= reg_regs_regs_3_sva_1_cse[109:100];
        regs_regs_slc_regs_regs_4_9_itm <= reg_regs_regs_3_sva_1_cse[139:130];
        regs_regs_slc_regs_regs_4_itm <= reg_regs_regs_3_sva_1_cse[29:20];
        regs_regs_slc_regs_regs_4_1_itm <= reg_regs_regs_3_sva_1_cse[59:50];
        regs_regs_slc_regs_regs_4_2_itm <= reg_regs_regs_3_sva_1_cse[89:80];
        regs_regs_slc_regs_regs_4_3_itm <= reg_regs_regs_3_sva_1_cse[119:110];
        regs_regs_slc_regs_regs_4_4_itm <= reg_regs_regs_3_sva_1_cse[149:140];
        reg_vout_rsc_mgc_out_stdreg_d_tmp <= ((conv_u2s_20_10(conv_u2u_4_10(ACC2_5_acc_1_psp_sva[13:10])
            * 10'b101001) + conv_s2s_7_10((conv_u2s_5_7({(ACC2_5_acc_1_psp_sva[9:6])
            , (ACC2_5_acc_1_psp_sva[4])}) + conv_s2s_3_7(conv_u2s_2_3(conv_u2u_1_2(ACC2_5_acc_1_psp_sva[6])
            + conv_u2u_1_2(acc_imod_sva[4])) + conv_s2s_2_3(acc_imod_sva[6:5])))
            + conv_s2s_5_7(conv_u2s_3_5(ACC2_5_acc_1_psp_sva[9:7]) + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((({(conv_s2u_4_5({(acc_imod_sva[6:5])
            , 2'b1}) + conv_u2u_3_5(FRAME_acc_53_sdt[3:1])) , (FRAME_acc_53_sdt[0])})
            + conv_s2s_5_6({1'b1 , (acc_imod_sva[3:0])})))) + conv_u2s_1_2(ACC2_5_acc_1_psp_sva[5])))))
            + ({(ACC2_5_acc_1_psp_sva[14]) , 1'b0 , (ACC2_5_acc_1_psp_sva[14]) ,
            3'b0 , (signext_4_1(ACC2_5_acc_1_psp_sva[14]))})) | ({9'b0 , (FRAME_acc_3_psp_1_sva[10])});
        reg_vout_rsc_mgc_out_stdreg_d_tmp_1 <= FRAME_acc_3_psp_1_sva[9:6];
        reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= (FRAME_acc_3_psp_1_sva[5:0]) | ({5'b0
            , (FRAME_acc_4_psp_1_sva[10])});
        reg_vout_rsc_mgc_out_stdreg_d_tmp_3 <= FRAME_acc_4_psp_1_sva[9:0];
      end
    end
  end

  function [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function [3:0] signext_4_1;
    input [0:0] vector;
  begin
    signext_4_1= {{3{vector[0]}}, vector};
  end
  endfunction


  function  [14:0] conv_u2u_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_15 = {1'b0, vector};
  end
  endfunction


  function  [13:0] conv_u2u_13_14 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_14 = {1'b0, vector};
  end
  endfunction


  function  [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [12:0] conv_u2u_11_13 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_13 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [13:0] conv_u2u_12_14 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_14 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_7 = {vector[5], vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_5_7 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_7 = {{2{vector[4]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_u2s_5_7 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_7 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_s2u_2_4 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_4 = {{2{vector[1]}}, vector};
  end
  endfunction


  function signed [11:0] conv_u2s_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_20_11 ;
    input [19:0]  vector ;
  begin
    conv_u2s_20_11 = vector[10:0];
  end
  endfunction


  function  [9:0] conv_u2u_4_10 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_10 = {{6{1'b0}}, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_7_11 ;
    input signed [6:0]  vector ;
  begin
    conv_s2s_7_11 = {{4{vector[6]}}, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_3_7 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_7 = {{4{vector[2]}}, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [2:0] conv_s2s_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_3 = {vector[1], vector};
  end
  endfunction


  function signed [4:0] conv_u2s_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_s2s_2_5 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_5 = {{3{vector[1]}}, vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function  [4:0] conv_s2u_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2u_4_5 = {vector[3], vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_20_10 ;
    input [19:0]  vector ;
  begin
    conv_u2s_20_10 = vector[9:0];
  end
  endfunction


  function signed [9:0] conv_s2s_7_10 ;
    input signed [6:0]  vector ;
  begin
    conv_s2s_7_10 = {{3{vector[6]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    mean_vga
//  Generated from file(s):
//   12) $PROJECT_HOME/blur_filter/blur.c
// ------------------------------------------------------------------


module mean_vga (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [149:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [149:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(150)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mean_vga_core mean_vga_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule




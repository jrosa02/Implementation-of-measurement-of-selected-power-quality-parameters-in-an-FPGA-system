
/*-- ----------------------------------------------
-- File Name: Subsystem1_wrapper.v
-- Created:   19-Dec-2024 13:17:18
-- Copyright  2024 MathWorks, Inc.
-- ----------------------------------------------*/

module Subsystem1_wrapper (
      clk,
      enb,
      reset,
      din,
      dout
);


      input     clk;
      input     enb;
      input     reset;
      input    [31 : 0] din;
      output   [95 : 0] dout;

  wire[15 : 0] Buffer_rsvd; // std16
  wire[15 : 0] Buffer_rsvd_tmp; // std16
  wire data_valid; // boolean
  wire data_valid_tmp; // boolean
  wire user_reset; // boolean
  wire user_reset_tmp; // boolean
  wire[15 : 0] FFT_Dat; // std16
  wire[15 : 0] FFT_Dat_tmp; // std16
  wire FFT_Val; // boolean
  wire FFT_Val_tmp; // boolean
  wire[6 : 0] zero0; // std7
  wire[15 : 0] MAX_rsvd; // std16
  wire[15 : 0] MAX_rsvd_tmp; // std16
  wire[15 : 0] MIN_rsvd; // std16
  wire[15 : 0] MIN_rsvd_tmp; // std16
  wire[15 : 0] THD; // std16
  wire[15 : 0] THD_tmp; // std16
  wire[15 : 0] RMS; // std16
  wire[15 : 0] RMS_tmp; // std16
  wire VAL_OUT; // boolean
  wire VAL_OUT_tmp; // boolean
  wire[6 : 0] zero1; // std7
  wire[95 : 0] tmpconcat; // std96
Subsystem1 u_Subsystem1 (
        .RMS                  (RMS),
        .reset                (reset),
        .MIN_rsvd             (MIN_rsvd),
        .clk                  (clk),
        .user_reset           (user_reset),
        .MAX_rsvd             (MAX_rsvd),
        .clk_enable           (enb),
        .data_valid           (data_valid),
        .FFT_Val              (FFT_Val),
        .Buffer_rsvd          (Buffer_rsvd),
        .VAL_OUT              (VAL_OUT),
        .THD                  (THD),
        .FFT_Dat              (FFT_Dat)
);

assign Buffer_rsvd = Buffer_rsvd_tmp;
assign Buffer_rsvd_tmp = din[15 : 0];
assign data_valid = data_valid_tmp;

assign data_valid_tmp = din[16];
assign user_reset = user_reset_tmp;

assign user_reset_tmp = din[24];
assign FFT_Dat_tmp = FFT_Dat;
assign FFT_Dat_tmp = FFT_Dat;
assign FFT_Val_tmp = FFT_Val;

assign FFT_Val_tmp = FFT_Val;

assign zero0 = 7'b0000000;
assign MAX_rsvd_tmp = MAX_rsvd;
assign MAX_rsvd_tmp = MAX_rsvd;
assign MIN_rsvd_tmp = MIN_rsvd;
assign MIN_rsvd_tmp = MIN_rsvd;
assign THD_tmp = THD;
assign THD_tmp = THD;
assign RMS_tmp = RMS;
assign RMS_tmp = RMS;
assign VAL_OUT_tmp = VAL_OUT;

assign VAL_OUT_tmp = VAL_OUT;

assign zero1 = 7'b0000000;
assign dout = {zero1,VAL_OUT_tmp,RMS_tmp,THD_tmp,MIN_rsvd_tmp,MAX_rsvd_tmp,zero0,FFT_Val_tmp,FFT_Dat_tmp};

endmodule

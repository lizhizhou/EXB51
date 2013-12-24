//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2011 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module H00_SEM51Host_m0_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_granted_S00_ChipID_idout,
                                      H00_SEM51Host_granted_S01_Reset_reset,
                                      H00_SEM51Host_granted_S02_OptKey_optkey,
                                      H00_SEM51Host_granted_S03_IntrqKey_intkey,
                                      H00_SEM51Host_granted_S10_PNLCtrl_addr,
                                      H00_SEM51Host_granted_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_granted_S10_PNLCtrl_key0,
                                      H00_SEM51Host_granted_S10_PNLCtrl_key1,
                                      H00_SEM51Host_granted_S10_PNLCtrl_key2,
                                      H00_SEM51Host_granted_S10_PNLCtrl_key3,
                                      H00_SEM51Host_granted_S11_T6963_LCD_lcd,
                                      H00_SEM51Host_granted_S20_ATA8_Interface_ata,
                                      H00_SEM51Host_m0_address,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      H00_SEM51Host_qualified_request_S00_ChipID_idout,
                                      H00_SEM51Host_qualified_request_S01_Reset_reset,
                                      H00_SEM51Host_qualified_request_S02_OptKey_optkey,
                                      H00_SEM51Host_qualified_request_S03_IntrqKey_intkey,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_addr,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key0,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key1,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key2,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key3,
                                      H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd,
                                      H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata,
                                      H00_SEM51Host_read_data_valid_S00_ChipID_idout,
                                      H00_SEM51Host_read_data_valid_S01_Reset_reset,
                                      H00_SEM51Host_read_data_valid_S02_OptKey_optkey,
                                      H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3,
                                      H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd,
                                      H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata,
                                      H00_SEM51Host_requests_S00_ChipID_idout,
                                      H00_SEM51Host_requests_S01_Reset_reset,
                                      H00_SEM51Host_requests_S02_OptKey_optkey,
                                      H00_SEM51Host_requests_S03_IntrqKey_intkey,
                                      H00_SEM51Host_requests_S10_PNLCtrl_addr,
                                      H00_SEM51Host_requests_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key0,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key1,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key2,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key3,
                                      H00_SEM51Host_requests_S11_T6963_LCD_lcd,
                                      H00_SEM51Host_requests_S20_ATA8_Interface_ata,
                                      S00_ChipID_idout_readdata_from_sa,
                                      S00_ChipID_idout_waitrequest_n_from_sa,
                                      S01_Reset_reset_readdata_from_sa,
                                      S01_Reset_reset_waitrequest_n_from_sa,
                                      S02_OptKey_optkey_readdata_from_sa,
                                      S02_OptKey_optkey_waitrequest_n_from_sa,
                                      S03_IntrqKey_intkey_irq_from_sa,
                                      S03_IntrqKey_intkey_readdata_from_sa,
                                      S03_IntrqKey_intkey_waitrequest_n_from_sa,
                                      S10_PNLCtrl_addr_irq_from_sa,
                                      S10_PNLCtrl_addr_readdata_from_sa,
                                      S10_PNLCtrl_addr_waitrequest_n_from_sa,
                                      S10_PNLCtrl_ctrl_readdata_from_sa,
                                      S10_PNLCtrl_ctrl_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key0_readdata_from_sa,
                                      S10_PNLCtrl_key0_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key1_readdata_from_sa,
                                      S10_PNLCtrl_key1_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key2_readdata_from_sa,
                                      S10_PNLCtrl_key2_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key3_readdata_from_sa,
                                      S10_PNLCtrl_key3_waitrequest_n_from_sa,
                                      S11_T6963_LCD_lcd_readdata_from_sa,
                                      S11_T6963_LCD_lcd_waitrequest_n_from_sa,
                                      S20_ATA8_Interface_ata_irq_from_sa,
                                      S20_ATA8_Interface_ata_readdata_from_sa,
                                      S20_ATA8_Interface_ata_waitrequest_n_from_sa,
                                      clk,
                                      d1_S00_ChipID_idout_end_xfer,
                                      d1_S01_Reset_reset_end_xfer,
                                      d1_S02_OptKey_optkey_end_xfer,
                                      d1_S03_IntrqKey_intkey_end_xfer,
                                      d1_S10_PNLCtrl_addr_end_xfer,
                                      d1_S10_PNLCtrl_ctrl_end_xfer,
                                      d1_S10_PNLCtrl_key0_end_xfer,
                                      d1_S10_PNLCtrl_key1_end_xfer,
                                      d1_S10_PNLCtrl_key2_end_xfer,
                                      d1_S10_PNLCtrl_key3_end_xfer,
                                      d1_S11_T6963_LCD_lcd_end_xfer,
                                      d1_S20_ATA8_Interface_ata_end_xfer,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_irq,
                                      H00_SEM51Host_m0_readdata,
                                      H00_SEM51Host_m0_reset_n,
                                      H00_SEM51Host_m0_waitrequest_n
                                   )
;

  output  [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  output  [  6: 0] H00_SEM51Host_m0_irq;
  output  [  7: 0] H00_SEM51Host_m0_readdata;
  output           H00_SEM51Host_m0_reset_n;
  output           H00_SEM51Host_m0_waitrequest_n;
  input            H00_SEM51Host_granted_S00_ChipID_idout;
  input            H00_SEM51Host_granted_S01_Reset_reset;
  input            H00_SEM51Host_granted_S02_OptKey_optkey;
  input            H00_SEM51Host_granted_S03_IntrqKey_intkey;
  input            H00_SEM51Host_granted_S10_PNLCtrl_addr;
  input            H00_SEM51Host_granted_S10_PNLCtrl_ctrl;
  input            H00_SEM51Host_granted_S10_PNLCtrl_key0;
  input            H00_SEM51Host_granted_S10_PNLCtrl_key1;
  input            H00_SEM51Host_granted_S10_PNLCtrl_key2;
  input            H00_SEM51Host_granted_S10_PNLCtrl_key3;
  input            H00_SEM51Host_granted_S11_T6963_LCD_lcd;
  input            H00_SEM51Host_granted_S20_ATA8_Interface_ata;
  input   [ 12: 0] H00_SEM51Host_m0_address;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input            H00_SEM51Host_qualified_request_S00_ChipID_idout;
  input            H00_SEM51Host_qualified_request_S01_Reset_reset;
  input            H00_SEM51Host_qualified_request_S02_OptKey_optkey;
  input            H00_SEM51Host_qualified_request_S03_IntrqKey_intkey;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_addr;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_key0;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_key1;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_key2;
  input            H00_SEM51Host_qualified_request_S10_PNLCtrl_key3;
  input            H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd;
  input            H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata;
  input            H00_SEM51Host_read_data_valid_S00_ChipID_idout;
  input            H00_SEM51Host_read_data_valid_S01_Reset_reset;
  input            H00_SEM51Host_read_data_valid_S02_OptKey_optkey;
  input            H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2;
  input            H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3;
  input            H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd;
  input            H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata;
  input            H00_SEM51Host_requests_S00_ChipID_idout;
  input            H00_SEM51Host_requests_S01_Reset_reset;
  input            H00_SEM51Host_requests_S02_OptKey_optkey;
  input            H00_SEM51Host_requests_S03_IntrqKey_intkey;
  input            H00_SEM51Host_requests_S10_PNLCtrl_addr;
  input            H00_SEM51Host_requests_S10_PNLCtrl_ctrl;
  input            H00_SEM51Host_requests_S10_PNLCtrl_key0;
  input            H00_SEM51Host_requests_S10_PNLCtrl_key1;
  input            H00_SEM51Host_requests_S10_PNLCtrl_key2;
  input            H00_SEM51Host_requests_S10_PNLCtrl_key3;
  input            H00_SEM51Host_requests_S11_T6963_LCD_lcd;
  input            H00_SEM51Host_requests_S20_ATA8_Interface_ata;
  input   [  7: 0] S00_ChipID_idout_readdata_from_sa;
  input            S00_ChipID_idout_waitrequest_n_from_sa;
  input   [  7: 0] S01_Reset_reset_readdata_from_sa;
  input            S01_Reset_reset_waitrequest_n_from_sa;
  input   [  7: 0] S02_OptKey_optkey_readdata_from_sa;
  input            S02_OptKey_optkey_waitrequest_n_from_sa;
  input            S03_IntrqKey_intkey_irq_from_sa;
  input   [  7: 0] S03_IntrqKey_intkey_readdata_from_sa;
  input            S03_IntrqKey_intkey_waitrequest_n_from_sa;
  input            S10_PNLCtrl_addr_irq_from_sa;
  input   [  7: 0] S10_PNLCtrl_addr_readdata_from_sa;
  input            S10_PNLCtrl_addr_waitrequest_n_from_sa;
  input   [  7: 0] S10_PNLCtrl_ctrl_readdata_from_sa;
  input            S10_PNLCtrl_ctrl_waitrequest_n_from_sa;
  input   [  7: 0] S10_PNLCtrl_key0_readdata_from_sa;
  input            S10_PNLCtrl_key0_waitrequest_n_from_sa;
  input   [  7: 0] S10_PNLCtrl_key1_readdata_from_sa;
  input            S10_PNLCtrl_key1_waitrequest_n_from_sa;
  input   [  7: 0] S10_PNLCtrl_key2_readdata_from_sa;
  input            S10_PNLCtrl_key2_waitrequest_n_from_sa;
  input   [  7: 0] S10_PNLCtrl_key3_readdata_from_sa;
  input            S10_PNLCtrl_key3_waitrequest_n_from_sa;
  input   [  7: 0] S11_T6963_LCD_lcd_readdata_from_sa;
  input            S11_T6963_LCD_lcd_waitrequest_n_from_sa;
  input            S20_ATA8_Interface_ata_irq_from_sa;
  input   [  7: 0] S20_ATA8_Interface_ata_readdata_from_sa;
  input            S20_ATA8_Interface_ata_waitrequest_n_from_sa;
  input            clk;
  input            d1_S00_ChipID_idout_end_xfer;
  input            d1_S01_Reset_reset_end_xfer;
  input            d1_S02_OptKey_optkey_end_xfer;
  input            d1_S03_IntrqKey_intkey_end_xfer;
  input            d1_S10_PNLCtrl_addr_end_xfer;
  input            d1_S10_PNLCtrl_ctrl_end_xfer;
  input            d1_S10_PNLCtrl_key0_end_xfer;
  input            d1_S10_PNLCtrl_key1_end_xfer;
  input            d1_S10_PNLCtrl_key2_end_xfer;
  input            d1_S10_PNLCtrl_key3_end_xfer;
  input            d1_S11_T6963_LCD_lcd_end_xfer;
  input            d1_S20_ATA8_Interface_ata_end_xfer;
  input            reset_n;

  reg     [ 12: 0] H00_SEM51Host_m0_address_last_time;
  wire    [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  reg              H00_SEM51Host_m0_chipselect_n_last_time;
  wire    [  6: 0] H00_SEM51Host_m0_irq;
  reg              H00_SEM51Host_m0_read_n_last_time;
  wire    [  7: 0] H00_SEM51Host_m0_readdata;
  wire             H00_SEM51Host_m0_reset_n;
  wire             H00_SEM51Host_m0_run;
  wire             H00_SEM51Host_m0_waitrequest_n;
  reg              H00_SEM51Host_m0_write_n_last_time;
  reg     [  7: 0] H00_SEM51Host_m0_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & ((~H00_SEM51Host_qualified_request_S00_ChipID_idout | H00_SEM51Host_m0_chipselect_n | (1 & S00_ChipID_idout_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S00_ChipID_idout | H00_SEM51Host_m0_chipselect_n | (1 & S00_ChipID_idout_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S01_Reset_reset | H00_SEM51Host_m0_chipselect_n | (1 & S01_Reset_reset_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S01_Reset_reset | H00_SEM51Host_m0_chipselect_n | (1 & S01_Reset_reset_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S02_OptKey_optkey | H00_SEM51Host_m0_chipselect_n | (1 & S02_OptKey_optkey_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S02_OptKey_optkey | H00_SEM51Host_m0_chipselect_n | (1 & S02_OptKey_optkey_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S03_IntrqKey_intkey | H00_SEM51Host_m0_chipselect_n | (1 & S03_IntrqKey_intkey_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S03_IntrqKey_intkey | H00_SEM51Host_m0_chipselect_n | (1 & S03_IntrqKey_intkey_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_addr | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_addr_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_addr | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_addr_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_ctrl_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_ctrl_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key0 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key0_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n)));

  //cascaded wait assignment, which is an e_assign
  assign H00_SEM51Host_m0_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key0 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key0_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key1 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key1_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key1 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key1_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key2 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key2_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key2 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key2_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key3 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key3_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S10_PNLCtrl_key3 | H00_SEM51Host_m0_chipselect_n | (1 & S10_PNLCtrl_key3_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd | H00_SEM51Host_m0_chipselect_n | (1 & S11_T6963_LCD_lcd_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd | H00_SEM51Host_m0_chipselect_n | (1 & S11_T6963_LCD_lcd_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & 1 & ((~H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata | H00_SEM51Host_m0_chipselect_n | (1 & S20_ATA8_Interface_ata_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n))) & ((~H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata | H00_SEM51Host_m0_chipselect_n | (1 & S20_ATA8_Interface_ata_waitrequest_n_from_sa & ~H00_SEM51Host_m0_chipselect_n)));

  //optimize select-logic by passing only those address bits which matter.
  assign H00_SEM51Host_m0_address_to_slave = {6'b0,
    H00_SEM51Host_m0_address[6 : 0]};

  //H00_SEM51Host/m0 readdata mux, which is an e_mux
  assign H00_SEM51Host_m0_readdata = ({8 {~H00_SEM51Host_requests_S00_ChipID_idout}} | S00_ChipID_idout_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S01_Reset_reset}} | S01_Reset_reset_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S02_OptKey_optkey}} | S02_OptKey_optkey_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S03_IntrqKey_intkey}} | S03_IntrqKey_intkey_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_addr}} | S10_PNLCtrl_addr_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_ctrl}} | S10_PNLCtrl_ctrl_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_key0}} | S10_PNLCtrl_key0_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_key1}} | S10_PNLCtrl_key1_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_key2}} | S10_PNLCtrl_key2_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S10_PNLCtrl_key3}} | S10_PNLCtrl_key3_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S11_T6963_LCD_lcd}} | S11_T6963_LCD_lcd_readdata_from_sa) &
    ({8 {~H00_SEM51Host_requests_S20_ATA8_Interface_ata}} | S20_ATA8_Interface_ata_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign H00_SEM51Host_m0_waitrequest_n = H00_SEM51Host_m0_run;

  //H00_SEM51Host_m0_reset_n assignment, which is an e_assign
  assign H00_SEM51Host_m0_reset_n = reset_n;

  //irq assign, which is an e_assign
  assign H00_SEM51Host_m0_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    S20_ATA8_Interface_ata_irq_from_sa,
    S03_IntrqKey_intkey_irq_from_sa,
    S10_PNLCtrl_addr_irq_from_sa};


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //H00_SEM51Host_m0_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          H00_SEM51Host_m0_address_last_time <= 0;
      else 
        H00_SEM51Host_m0_address_last_time <= H00_SEM51Host_m0_address;
    end


  //H00_SEM51Host/m0 waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= ~H00_SEM51Host_m0_waitrequest_n & ~H00_SEM51Host_m0_chipselect_n;
    end


  //H00_SEM51Host_m0_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (H00_SEM51Host_m0_address != H00_SEM51Host_m0_address_last_time))
        begin
          $write("%0d ns: H00_SEM51Host_m0_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //~H00_SEM51Host_m0_chipselect_n check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          H00_SEM51Host_m0_chipselect_n_last_time <= ~0;
      else 
        H00_SEM51Host_m0_chipselect_n_last_time <= H00_SEM51Host_m0_chipselect_n;
    end


  //~H00_SEM51Host_m0_chipselect_n matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (~H00_SEM51Host_m0_chipselect_n != ~H00_SEM51Host_m0_chipselect_n_last_time))
        begin
          $write("%0d ns: ~H00_SEM51Host_m0_chipselect_n did not heed wait!!!", $time);
          $stop;
        end
    end


  //~H00_SEM51Host_m0_read_n check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          H00_SEM51Host_m0_read_n_last_time <= ~0;
      else 
        H00_SEM51Host_m0_read_n_last_time <= H00_SEM51Host_m0_read_n;
    end


  //~H00_SEM51Host_m0_read_n matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (~H00_SEM51Host_m0_read_n != ~H00_SEM51Host_m0_read_n_last_time))
        begin
          $write("%0d ns: ~H00_SEM51Host_m0_read_n did not heed wait!!!", $time);
          $stop;
        end
    end


  //~H00_SEM51Host_m0_write_n check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          H00_SEM51Host_m0_write_n_last_time <= ~0;
      else 
        H00_SEM51Host_m0_write_n_last_time <= H00_SEM51Host_m0_write_n;
    end


  //~H00_SEM51Host_m0_write_n matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (~H00_SEM51Host_m0_write_n != ~H00_SEM51Host_m0_write_n_last_time))
        begin
          $write("%0d ns: ~H00_SEM51Host_m0_write_n did not heed wait!!!", $time);
          $stop;
        end
    end


  //H00_SEM51Host_m0_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          H00_SEM51Host_m0_writedata_last_time <= 0;
      else 
        H00_SEM51Host_m0_writedata_last_time <= H00_SEM51Host_m0_writedata;
    end


  //H00_SEM51Host_m0_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (H00_SEM51Host_m0_writedata != H00_SEM51Host_m0_writedata_last_time) & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))
        begin
          $write("%0d ns: H00_SEM51Host_m0_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S00_ChipID_idout_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      S00_ChipID_idout_readdata,
                                      S00_ChipID_idout_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S00_ChipID_idout,
                                      H00_SEM51Host_qualified_request_S00_ChipID_idout,
                                      H00_SEM51Host_read_data_valid_S00_ChipID_idout,
                                      H00_SEM51Host_requests_S00_ChipID_idout,
                                      S00_ChipID_idout_readdata_from_sa,
                                      S00_ChipID_idout_reset_n,
                                      S00_ChipID_idout_waitrequest_n_from_sa,
                                      d1_S00_ChipID_idout_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S00_ChipID_idout;
  output           H00_SEM51Host_qualified_request_S00_ChipID_idout;
  output           H00_SEM51Host_read_data_valid_S00_ChipID_idout;
  output           H00_SEM51Host_requests_S00_ChipID_idout;
  output  [  7: 0] S00_ChipID_idout_readdata_from_sa;
  output           S00_ChipID_idout_reset_n;
  output           S00_ChipID_idout_waitrequest_n_from_sa;
  output           d1_S00_ChipID_idout_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] S00_ChipID_idout_readdata;
  input            S00_ChipID_idout_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S00_ChipID_idout;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S00_ChipID_idout;
  wire             H00_SEM51Host_read_data_valid_S00_ChipID_idout;
  wire             H00_SEM51Host_requests_S00_ChipID_idout;
  wire             H00_SEM51Host_saved_grant_S00_ChipID_idout;
  wire             S00_ChipID_idout_allgrants;
  wire             S00_ChipID_idout_allow_new_arb_cycle;
  wire             S00_ChipID_idout_any_bursting_master_saved_grant;
  wire             S00_ChipID_idout_any_continuerequest;
  wire             S00_ChipID_idout_arb_counter_enable;
  reg              S00_ChipID_idout_arb_share_counter;
  wire             S00_ChipID_idout_arb_share_counter_next_value;
  wire             S00_ChipID_idout_arb_share_set_values;
  wire             S00_ChipID_idout_beginbursttransfer_internal;
  wire             S00_ChipID_idout_begins_xfer;
  wire             S00_ChipID_idout_end_xfer;
  wire             S00_ChipID_idout_firsttransfer;
  wire             S00_ChipID_idout_grant_vector;
  wire             S00_ChipID_idout_in_a_read_cycle;
  wire             S00_ChipID_idout_in_a_write_cycle;
  wire             S00_ChipID_idout_master_qreq_vector;
  wire             S00_ChipID_idout_non_bursting_master_requests;
  wire    [  7: 0] S00_ChipID_idout_readdata_from_sa;
  reg              S00_ChipID_idout_reg_firsttransfer;
  wire             S00_ChipID_idout_reset_n;
  reg              S00_ChipID_idout_slavearbiterlockenable;
  wire             S00_ChipID_idout_slavearbiterlockenable2;
  wire             S00_ChipID_idout_unreg_firsttransfer;
  wire             S00_ChipID_idout_waitrequest_n_from_sa;
  wire             S00_ChipID_idout_waits_for_read;
  wire             S00_ChipID_idout_waits_for_write;
  reg              d1_S00_ChipID_idout_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S00_ChipID_idout;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S00_ChipID_idout_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S00_ChipID_idout_end_xfer;
    end


  assign S00_ChipID_idout_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S00_ChipID_idout));
  //assign S00_ChipID_idout_readdata_from_sa = S00_ChipID_idout_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S00_ChipID_idout_readdata_from_sa = S00_ChipID_idout_readdata;

  assign H00_SEM51Host_requests_S00_ChipID_idout = (({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h0) & ~H00_SEM51Host_m0_chipselect_n) & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);
  //assign S00_ChipID_idout_waitrequest_n_from_sa = S00_ChipID_idout_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S00_ChipID_idout_waitrequest_n_from_sa = S00_ChipID_idout_waitrequest_n;

  //S00_ChipID_idout_arb_share_counter set values, which is an e_mux
  assign S00_ChipID_idout_arb_share_set_values = 1;

  //S00_ChipID_idout_non_bursting_master_requests mux, which is an e_mux
  assign S00_ChipID_idout_non_bursting_master_requests = H00_SEM51Host_requests_S00_ChipID_idout;

  //S00_ChipID_idout_any_bursting_master_saved_grant mux, which is an e_mux
  assign S00_ChipID_idout_any_bursting_master_saved_grant = 0;

  //S00_ChipID_idout_arb_share_counter_next_value assignment, which is an e_assign
  assign S00_ChipID_idout_arb_share_counter_next_value = S00_ChipID_idout_firsttransfer ? (S00_ChipID_idout_arb_share_set_values - 1) : |S00_ChipID_idout_arb_share_counter ? (S00_ChipID_idout_arb_share_counter - 1) : 0;

  //S00_ChipID_idout_allgrants all slave grants, which is an e_mux
  assign S00_ChipID_idout_allgrants = |S00_ChipID_idout_grant_vector;

  //S00_ChipID_idout_end_xfer assignment, which is an e_assign
  assign S00_ChipID_idout_end_xfer = ~(S00_ChipID_idout_waits_for_read | S00_ChipID_idout_waits_for_write);

  //end_xfer_arb_share_counter_term_S00_ChipID_idout arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S00_ChipID_idout = S00_ChipID_idout_end_xfer & (~S00_ChipID_idout_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S00_ChipID_idout_arb_share_counter arbitration counter enable, which is an e_assign
  assign S00_ChipID_idout_arb_counter_enable = (end_xfer_arb_share_counter_term_S00_ChipID_idout & S00_ChipID_idout_allgrants) | (end_xfer_arb_share_counter_term_S00_ChipID_idout & ~S00_ChipID_idout_non_bursting_master_requests);

  //S00_ChipID_idout_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S00_ChipID_idout_arb_share_counter <= 0;
      else if (S00_ChipID_idout_arb_counter_enable)
          S00_ChipID_idout_arb_share_counter <= S00_ChipID_idout_arb_share_counter_next_value;
    end


  //S00_ChipID_idout_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S00_ChipID_idout_slavearbiterlockenable <= 0;
      else if ((|S00_ChipID_idout_master_qreq_vector & end_xfer_arb_share_counter_term_S00_ChipID_idout) | (end_xfer_arb_share_counter_term_S00_ChipID_idout & ~S00_ChipID_idout_non_bursting_master_requests))
          S00_ChipID_idout_slavearbiterlockenable <= |S00_ChipID_idout_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S00_ChipID/idout arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S00_ChipID_idout_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S00_ChipID_idout_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S00_ChipID_idout_slavearbiterlockenable2 = |S00_ChipID_idout_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S00_ChipID/idout arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S00_ChipID_idout_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S00_ChipID_idout_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S00_ChipID_idout_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S00_ChipID_idout = H00_SEM51Host_requests_S00_ChipID_idout;
  //master is always granted when requested
  assign H00_SEM51Host_granted_S00_ChipID_idout = H00_SEM51Host_qualified_request_S00_ChipID_idout;

  //H00_SEM51Host/m0 saved-grant S00_ChipID/idout, which is an e_assign
  assign H00_SEM51Host_saved_grant_S00_ChipID_idout = H00_SEM51Host_requests_S00_ChipID_idout;

  //allow new arb cycle for S00_ChipID/idout, which is an e_assign
  assign S00_ChipID_idout_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S00_ChipID_idout_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S00_ChipID_idout_master_qreq_vector = 1;

  //S00_ChipID_idout_reset_n assignment, which is an e_assign
  assign S00_ChipID_idout_reset_n = reset_n;

  //S00_ChipID_idout_firsttransfer first transaction, which is an e_assign
  assign S00_ChipID_idout_firsttransfer = S00_ChipID_idout_begins_xfer ? S00_ChipID_idout_unreg_firsttransfer : S00_ChipID_idout_reg_firsttransfer;

  //S00_ChipID_idout_unreg_firsttransfer first transaction, which is an e_assign
  assign S00_ChipID_idout_unreg_firsttransfer = ~(S00_ChipID_idout_slavearbiterlockenable & S00_ChipID_idout_any_continuerequest);

  //S00_ChipID_idout_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S00_ChipID_idout_reg_firsttransfer <= 1'b1;
      else if (S00_ChipID_idout_begins_xfer)
          S00_ChipID_idout_reg_firsttransfer <= S00_ChipID_idout_unreg_firsttransfer;
    end


  //S00_ChipID_idout_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S00_ChipID_idout_beginbursttransfer_internal = S00_ChipID_idout_begins_xfer;

  //d1_S00_ChipID_idout_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S00_ChipID_idout_end_xfer <= 1;
      else 
        d1_S00_ChipID_idout_end_xfer <= S00_ChipID_idout_end_xfer;
    end


  //S00_ChipID_idout_waits_for_read in a cycle, which is an e_mux
  assign S00_ChipID_idout_waits_for_read = S00_ChipID_idout_in_a_read_cycle & ~S00_ChipID_idout_waitrequest_n_from_sa;

  //S00_ChipID_idout_in_a_read_cycle assignment, which is an e_assign
  assign S00_ChipID_idout_in_a_read_cycle = H00_SEM51Host_granted_S00_ChipID_idout & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S00_ChipID_idout_in_a_read_cycle;

  //S00_ChipID_idout_waits_for_write in a cycle, which is an e_mux
  assign S00_ChipID_idout_waits_for_write = S00_ChipID_idout_in_a_write_cycle & ~S00_ChipID_idout_waitrequest_n_from_sa;

  //S00_ChipID_idout_in_a_write_cycle assignment, which is an e_assign
  assign S00_ChipID_idout_in_a_write_cycle = H00_SEM51Host_granted_S00_ChipID_idout & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S00_ChipID_idout_in_a_write_cycle;

  assign wait_for_S00_ChipID_idout_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S00_ChipID/idout enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S01_Reset_reset_arbitrator (
                                    // inputs:
                                     H00_SEM51Host_m0_address_to_slave,
                                     H00_SEM51Host_m0_chipselect_n,
                                     H00_SEM51Host_m0_read_n,
                                     H00_SEM51Host_m0_write_n,
                                     H00_SEM51Host_m0_writedata,
                                     S01_Reset_reset_readdata,
                                     S01_Reset_reset_waitrequest_n,
                                     clk,
                                     reset_n,

                                    // outputs:
                                     H00_SEM51Host_granted_S01_Reset_reset,
                                     H00_SEM51Host_qualified_request_S01_Reset_reset,
                                     H00_SEM51Host_read_data_valid_S01_Reset_reset,
                                     H00_SEM51Host_requests_S01_Reset_reset,
                                     S01_Reset_reset_read_n,
                                     S01_Reset_reset_readdata_from_sa,
                                     S01_Reset_reset_reset_n,
                                     S01_Reset_reset_waitrequest_n_from_sa,
                                     S01_Reset_reset_write_n,
                                     S01_Reset_reset_writedata,
                                     d1_S01_Reset_reset_end_xfer
                                  )
;

  output           H00_SEM51Host_granted_S01_Reset_reset;
  output           H00_SEM51Host_qualified_request_S01_Reset_reset;
  output           H00_SEM51Host_read_data_valid_S01_Reset_reset;
  output           H00_SEM51Host_requests_S01_Reset_reset;
  output           S01_Reset_reset_read_n;
  output  [  7: 0] S01_Reset_reset_readdata_from_sa;
  output           S01_Reset_reset_reset_n;
  output           S01_Reset_reset_waitrequest_n_from_sa;
  output           S01_Reset_reset_write_n;
  output  [  7: 0] S01_Reset_reset_writedata;
  output           d1_S01_Reset_reset_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S01_Reset_reset_readdata;
  input            S01_Reset_reset_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S01_Reset_reset;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S01_Reset_reset;
  wire             H00_SEM51Host_read_data_valid_S01_Reset_reset;
  wire             H00_SEM51Host_requests_S01_Reset_reset;
  wire             H00_SEM51Host_saved_grant_S01_Reset_reset;
  wire             S01_Reset_reset_allgrants;
  wire             S01_Reset_reset_allow_new_arb_cycle;
  wire             S01_Reset_reset_any_bursting_master_saved_grant;
  wire             S01_Reset_reset_any_continuerequest;
  wire             S01_Reset_reset_arb_counter_enable;
  reg              S01_Reset_reset_arb_share_counter;
  wire             S01_Reset_reset_arb_share_counter_next_value;
  wire             S01_Reset_reset_arb_share_set_values;
  wire             S01_Reset_reset_beginbursttransfer_internal;
  wire             S01_Reset_reset_begins_xfer;
  wire             S01_Reset_reset_end_xfer;
  wire             S01_Reset_reset_firsttransfer;
  wire             S01_Reset_reset_grant_vector;
  wire             S01_Reset_reset_in_a_read_cycle;
  wire             S01_Reset_reset_in_a_write_cycle;
  wire             S01_Reset_reset_master_qreq_vector;
  wire             S01_Reset_reset_non_bursting_master_requests;
  wire             S01_Reset_reset_pretend_byte_enable;
  wire             S01_Reset_reset_read_n;
  wire    [  7: 0] S01_Reset_reset_readdata_from_sa;
  reg              S01_Reset_reset_reg_firsttransfer;
  wire             S01_Reset_reset_reset_n;
  reg              S01_Reset_reset_slavearbiterlockenable;
  wire             S01_Reset_reset_slavearbiterlockenable2;
  wire             S01_Reset_reset_unreg_firsttransfer;
  wire             S01_Reset_reset_waitrequest_n_from_sa;
  wire             S01_Reset_reset_waits_for_read;
  wire             S01_Reset_reset_waits_for_write;
  wire             S01_Reset_reset_write_n;
  wire    [  7: 0] S01_Reset_reset_writedata;
  reg              d1_S01_Reset_reset_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S01_Reset_reset;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S01_Reset_reset_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S01_Reset_reset_end_xfer;
    end


  assign S01_Reset_reset_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S01_Reset_reset));
  //assign S01_Reset_reset_readdata_from_sa = S01_Reset_reset_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S01_Reset_reset_readdata_from_sa = S01_Reset_reset_readdata;

  assign H00_SEM51Host_requests_S01_Reset_reset = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h1) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S01_Reset_reset_waitrequest_n_from_sa = S01_Reset_reset_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S01_Reset_reset_waitrequest_n_from_sa = S01_Reset_reset_waitrequest_n;

  //S01_Reset_reset_arb_share_counter set values, which is an e_mux
  assign S01_Reset_reset_arb_share_set_values = 1;

  //S01_Reset_reset_non_bursting_master_requests mux, which is an e_mux
  assign S01_Reset_reset_non_bursting_master_requests = H00_SEM51Host_requests_S01_Reset_reset;

  //S01_Reset_reset_any_bursting_master_saved_grant mux, which is an e_mux
  assign S01_Reset_reset_any_bursting_master_saved_grant = 0;

  //S01_Reset_reset_arb_share_counter_next_value assignment, which is an e_assign
  assign S01_Reset_reset_arb_share_counter_next_value = S01_Reset_reset_firsttransfer ? (S01_Reset_reset_arb_share_set_values - 1) : |S01_Reset_reset_arb_share_counter ? (S01_Reset_reset_arb_share_counter - 1) : 0;

  //S01_Reset_reset_allgrants all slave grants, which is an e_mux
  assign S01_Reset_reset_allgrants = |S01_Reset_reset_grant_vector;

  //S01_Reset_reset_end_xfer assignment, which is an e_assign
  assign S01_Reset_reset_end_xfer = ~(S01_Reset_reset_waits_for_read | S01_Reset_reset_waits_for_write);

  //end_xfer_arb_share_counter_term_S01_Reset_reset arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S01_Reset_reset = S01_Reset_reset_end_xfer & (~S01_Reset_reset_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S01_Reset_reset_arb_share_counter arbitration counter enable, which is an e_assign
  assign S01_Reset_reset_arb_counter_enable = (end_xfer_arb_share_counter_term_S01_Reset_reset & S01_Reset_reset_allgrants) | (end_xfer_arb_share_counter_term_S01_Reset_reset & ~S01_Reset_reset_non_bursting_master_requests);

  //S01_Reset_reset_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S01_Reset_reset_arb_share_counter <= 0;
      else if (S01_Reset_reset_arb_counter_enable)
          S01_Reset_reset_arb_share_counter <= S01_Reset_reset_arb_share_counter_next_value;
    end


  //S01_Reset_reset_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S01_Reset_reset_slavearbiterlockenable <= 0;
      else if ((|S01_Reset_reset_master_qreq_vector & end_xfer_arb_share_counter_term_S01_Reset_reset) | (end_xfer_arb_share_counter_term_S01_Reset_reset & ~S01_Reset_reset_non_bursting_master_requests))
          S01_Reset_reset_slavearbiterlockenable <= |S01_Reset_reset_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S01_Reset/reset arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S01_Reset_reset_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S01_Reset_reset_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S01_Reset_reset_slavearbiterlockenable2 = |S01_Reset_reset_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S01_Reset/reset arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S01_Reset_reset_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S01_Reset_reset_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S01_Reset_reset_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S01_Reset_reset = H00_SEM51Host_requests_S01_Reset_reset;
  //S01_Reset_reset_writedata mux, which is an e_mux
  assign S01_Reset_reset_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S01_Reset_reset = H00_SEM51Host_qualified_request_S01_Reset_reset;

  //H00_SEM51Host/m0 saved-grant S01_Reset/reset, which is an e_assign
  assign H00_SEM51Host_saved_grant_S01_Reset_reset = H00_SEM51Host_requests_S01_Reset_reset;

  //allow new arb cycle for S01_Reset/reset, which is an e_assign
  assign S01_Reset_reset_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S01_Reset_reset_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S01_Reset_reset_master_qreq_vector = 1;

  //S01_Reset_reset_reset_n assignment, which is an e_assign
  assign S01_Reset_reset_reset_n = reset_n;

  //S01_Reset_reset_firsttransfer first transaction, which is an e_assign
  assign S01_Reset_reset_firsttransfer = S01_Reset_reset_begins_xfer ? S01_Reset_reset_unreg_firsttransfer : S01_Reset_reset_reg_firsttransfer;

  //S01_Reset_reset_unreg_firsttransfer first transaction, which is an e_assign
  assign S01_Reset_reset_unreg_firsttransfer = ~(S01_Reset_reset_slavearbiterlockenable & S01_Reset_reset_any_continuerequest);

  //S01_Reset_reset_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S01_Reset_reset_reg_firsttransfer <= 1'b1;
      else if (S01_Reset_reset_begins_xfer)
          S01_Reset_reset_reg_firsttransfer <= S01_Reset_reset_unreg_firsttransfer;
    end


  //S01_Reset_reset_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S01_Reset_reset_beginbursttransfer_internal = S01_Reset_reset_begins_xfer;

  //~S01_Reset_reset_read_n assignment, which is an e_mux
  assign S01_Reset_reset_read_n = ~(H00_SEM51Host_granted_S01_Reset_reset & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n));

  //~S01_Reset_reset_write_n assignment, which is an e_mux
  assign S01_Reset_reset_write_n = ~(((H00_SEM51Host_granted_S01_Reset_reset & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S01_Reset_reset_pretend_byte_enable);

  //d1_S01_Reset_reset_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S01_Reset_reset_end_xfer <= 1;
      else 
        d1_S01_Reset_reset_end_xfer <= S01_Reset_reset_end_xfer;
    end


  //S01_Reset_reset_waits_for_read in a cycle, which is an e_mux
  assign S01_Reset_reset_waits_for_read = S01_Reset_reset_in_a_read_cycle & ~S01_Reset_reset_waitrequest_n_from_sa;

  //S01_Reset_reset_in_a_read_cycle assignment, which is an e_assign
  assign S01_Reset_reset_in_a_read_cycle = H00_SEM51Host_granted_S01_Reset_reset & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S01_Reset_reset_in_a_read_cycle;

  //S01_Reset_reset_waits_for_write in a cycle, which is an e_mux
  assign S01_Reset_reset_waits_for_write = S01_Reset_reset_in_a_write_cycle & ~S01_Reset_reset_waitrequest_n_from_sa;

  //S01_Reset_reset_in_a_write_cycle assignment, which is an e_assign
  assign S01_Reset_reset_in_a_write_cycle = H00_SEM51Host_granted_S01_Reset_reset & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S01_Reset_reset_in_a_write_cycle;

  assign wait_for_S01_Reset_reset_counter = 0;
  //S01_Reset_reset_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S01_Reset_reset_pretend_byte_enable = (H00_SEM51Host_granted_S01_Reset_reset)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S01_Reset/reset enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S02_OptKey_optkey_arbitrator (
                                      // inputs:
                                       H00_SEM51Host_m0_address_to_slave,
                                       H00_SEM51Host_m0_chipselect_n,
                                       H00_SEM51Host_m0_read_n,
                                       H00_SEM51Host_m0_write_n,
                                       S02_OptKey_optkey_readdata,
                                       S02_OptKey_optkey_waitrequest_n,
                                       clk,
                                       reset_n,

                                      // outputs:
                                       H00_SEM51Host_granted_S02_OptKey_optkey,
                                       H00_SEM51Host_qualified_request_S02_OptKey_optkey,
                                       H00_SEM51Host_read_data_valid_S02_OptKey_optkey,
                                       H00_SEM51Host_requests_S02_OptKey_optkey,
                                       S02_OptKey_optkey_readdata_from_sa,
                                       S02_OptKey_optkey_reset_n,
                                       S02_OptKey_optkey_waitrequest_n_from_sa,
                                       d1_S02_OptKey_optkey_end_xfer
                                    )
;

  output           H00_SEM51Host_granted_S02_OptKey_optkey;
  output           H00_SEM51Host_qualified_request_S02_OptKey_optkey;
  output           H00_SEM51Host_read_data_valid_S02_OptKey_optkey;
  output           H00_SEM51Host_requests_S02_OptKey_optkey;
  output  [  7: 0] S02_OptKey_optkey_readdata_from_sa;
  output           S02_OptKey_optkey_reset_n;
  output           S02_OptKey_optkey_waitrequest_n_from_sa;
  output           d1_S02_OptKey_optkey_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] S02_OptKey_optkey_readdata;
  input            S02_OptKey_optkey_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S02_OptKey_optkey;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S02_OptKey_optkey;
  wire             H00_SEM51Host_read_data_valid_S02_OptKey_optkey;
  wire             H00_SEM51Host_requests_S02_OptKey_optkey;
  wire             H00_SEM51Host_saved_grant_S02_OptKey_optkey;
  wire             S02_OptKey_optkey_allgrants;
  wire             S02_OptKey_optkey_allow_new_arb_cycle;
  wire             S02_OptKey_optkey_any_bursting_master_saved_grant;
  wire             S02_OptKey_optkey_any_continuerequest;
  wire             S02_OptKey_optkey_arb_counter_enable;
  reg              S02_OptKey_optkey_arb_share_counter;
  wire             S02_OptKey_optkey_arb_share_counter_next_value;
  wire             S02_OptKey_optkey_arb_share_set_values;
  wire             S02_OptKey_optkey_beginbursttransfer_internal;
  wire             S02_OptKey_optkey_begins_xfer;
  wire             S02_OptKey_optkey_end_xfer;
  wire             S02_OptKey_optkey_firsttransfer;
  wire             S02_OptKey_optkey_grant_vector;
  wire             S02_OptKey_optkey_in_a_read_cycle;
  wire             S02_OptKey_optkey_in_a_write_cycle;
  wire             S02_OptKey_optkey_master_qreq_vector;
  wire             S02_OptKey_optkey_non_bursting_master_requests;
  wire    [  7: 0] S02_OptKey_optkey_readdata_from_sa;
  reg              S02_OptKey_optkey_reg_firsttransfer;
  wire             S02_OptKey_optkey_reset_n;
  reg              S02_OptKey_optkey_slavearbiterlockenable;
  wire             S02_OptKey_optkey_slavearbiterlockenable2;
  wire             S02_OptKey_optkey_unreg_firsttransfer;
  wire             S02_OptKey_optkey_waitrequest_n_from_sa;
  wire             S02_OptKey_optkey_waits_for_read;
  wire             S02_OptKey_optkey_waits_for_write;
  reg              d1_S02_OptKey_optkey_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S02_OptKey_optkey;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S02_OptKey_optkey_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S02_OptKey_optkey_end_xfer;
    end


  assign S02_OptKey_optkey_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S02_OptKey_optkey));
  //assign S02_OptKey_optkey_readdata_from_sa = S02_OptKey_optkey_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S02_OptKey_optkey_readdata_from_sa = S02_OptKey_optkey_readdata;

  assign H00_SEM51Host_requests_S02_OptKey_optkey = (({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h2) & ~H00_SEM51Host_m0_chipselect_n) & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);
  //assign S02_OptKey_optkey_waitrequest_n_from_sa = S02_OptKey_optkey_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S02_OptKey_optkey_waitrequest_n_from_sa = S02_OptKey_optkey_waitrequest_n;

  //S02_OptKey_optkey_arb_share_counter set values, which is an e_mux
  assign S02_OptKey_optkey_arb_share_set_values = 1;

  //S02_OptKey_optkey_non_bursting_master_requests mux, which is an e_mux
  assign S02_OptKey_optkey_non_bursting_master_requests = H00_SEM51Host_requests_S02_OptKey_optkey;

  //S02_OptKey_optkey_any_bursting_master_saved_grant mux, which is an e_mux
  assign S02_OptKey_optkey_any_bursting_master_saved_grant = 0;

  //S02_OptKey_optkey_arb_share_counter_next_value assignment, which is an e_assign
  assign S02_OptKey_optkey_arb_share_counter_next_value = S02_OptKey_optkey_firsttransfer ? (S02_OptKey_optkey_arb_share_set_values - 1) : |S02_OptKey_optkey_arb_share_counter ? (S02_OptKey_optkey_arb_share_counter - 1) : 0;

  //S02_OptKey_optkey_allgrants all slave grants, which is an e_mux
  assign S02_OptKey_optkey_allgrants = |S02_OptKey_optkey_grant_vector;

  //S02_OptKey_optkey_end_xfer assignment, which is an e_assign
  assign S02_OptKey_optkey_end_xfer = ~(S02_OptKey_optkey_waits_for_read | S02_OptKey_optkey_waits_for_write);

  //end_xfer_arb_share_counter_term_S02_OptKey_optkey arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S02_OptKey_optkey = S02_OptKey_optkey_end_xfer & (~S02_OptKey_optkey_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S02_OptKey_optkey_arb_share_counter arbitration counter enable, which is an e_assign
  assign S02_OptKey_optkey_arb_counter_enable = (end_xfer_arb_share_counter_term_S02_OptKey_optkey & S02_OptKey_optkey_allgrants) | (end_xfer_arb_share_counter_term_S02_OptKey_optkey & ~S02_OptKey_optkey_non_bursting_master_requests);

  //S02_OptKey_optkey_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S02_OptKey_optkey_arb_share_counter <= 0;
      else if (S02_OptKey_optkey_arb_counter_enable)
          S02_OptKey_optkey_arb_share_counter <= S02_OptKey_optkey_arb_share_counter_next_value;
    end


  //S02_OptKey_optkey_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S02_OptKey_optkey_slavearbiterlockenable <= 0;
      else if ((|S02_OptKey_optkey_master_qreq_vector & end_xfer_arb_share_counter_term_S02_OptKey_optkey) | (end_xfer_arb_share_counter_term_S02_OptKey_optkey & ~S02_OptKey_optkey_non_bursting_master_requests))
          S02_OptKey_optkey_slavearbiterlockenable <= |S02_OptKey_optkey_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S02_OptKey/optkey arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S02_OptKey_optkey_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S02_OptKey_optkey_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S02_OptKey_optkey_slavearbiterlockenable2 = |S02_OptKey_optkey_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S02_OptKey/optkey arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S02_OptKey_optkey_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S02_OptKey_optkey_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S02_OptKey_optkey_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S02_OptKey_optkey = H00_SEM51Host_requests_S02_OptKey_optkey;
  //master is always granted when requested
  assign H00_SEM51Host_granted_S02_OptKey_optkey = H00_SEM51Host_qualified_request_S02_OptKey_optkey;

  //H00_SEM51Host/m0 saved-grant S02_OptKey/optkey, which is an e_assign
  assign H00_SEM51Host_saved_grant_S02_OptKey_optkey = H00_SEM51Host_requests_S02_OptKey_optkey;

  //allow new arb cycle for S02_OptKey/optkey, which is an e_assign
  assign S02_OptKey_optkey_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S02_OptKey_optkey_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S02_OptKey_optkey_master_qreq_vector = 1;

  //S02_OptKey_optkey_reset_n assignment, which is an e_assign
  assign S02_OptKey_optkey_reset_n = reset_n;

  //S02_OptKey_optkey_firsttransfer first transaction, which is an e_assign
  assign S02_OptKey_optkey_firsttransfer = S02_OptKey_optkey_begins_xfer ? S02_OptKey_optkey_unreg_firsttransfer : S02_OptKey_optkey_reg_firsttransfer;

  //S02_OptKey_optkey_unreg_firsttransfer first transaction, which is an e_assign
  assign S02_OptKey_optkey_unreg_firsttransfer = ~(S02_OptKey_optkey_slavearbiterlockenable & S02_OptKey_optkey_any_continuerequest);

  //S02_OptKey_optkey_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S02_OptKey_optkey_reg_firsttransfer <= 1'b1;
      else if (S02_OptKey_optkey_begins_xfer)
          S02_OptKey_optkey_reg_firsttransfer <= S02_OptKey_optkey_unreg_firsttransfer;
    end


  //S02_OptKey_optkey_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S02_OptKey_optkey_beginbursttransfer_internal = S02_OptKey_optkey_begins_xfer;

  //d1_S02_OptKey_optkey_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S02_OptKey_optkey_end_xfer <= 1;
      else 
        d1_S02_OptKey_optkey_end_xfer <= S02_OptKey_optkey_end_xfer;
    end


  //S02_OptKey_optkey_waits_for_read in a cycle, which is an e_mux
  assign S02_OptKey_optkey_waits_for_read = S02_OptKey_optkey_in_a_read_cycle & ~S02_OptKey_optkey_waitrequest_n_from_sa;

  //S02_OptKey_optkey_in_a_read_cycle assignment, which is an e_assign
  assign S02_OptKey_optkey_in_a_read_cycle = H00_SEM51Host_granted_S02_OptKey_optkey & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S02_OptKey_optkey_in_a_read_cycle;

  //S02_OptKey_optkey_waits_for_write in a cycle, which is an e_mux
  assign S02_OptKey_optkey_waits_for_write = S02_OptKey_optkey_in_a_write_cycle & ~S02_OptKey_optkey_waitrequest_n_from_sa;

  //S02_OptKey_optkey_in_a_write_cycle assignment, which is an e_assign
  assign S02_OptKey_optkey_in_a_write_cycle = H00_SEM51Host_granted_S02_OptKey_optkey & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S02_OptKey_optkey_in_a_write_cycle;

  assign wait_for_S02_OptKey_optkey_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S02_OptKey/optkey enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S03_IntrqKey_intkey_arbitrator (
                                        // inputs:
                                         H00_SEM51Host_m0_address_to_slave,
                                         H00_SEM51Host_m0_chipselect_n,
                                         H00_SEM51Host_m0_read_n,
                                         H00_SEM51Host_m0_write_n,
                                         S03_IntrqKey_intkey_irq,
                                         S03_IntrqKey_intkey_readdata,
                                         S03_IntrqKey_intkey_waitrequest_n,
                                         clk,
                                         reset_n,

                                        // outputs:
                                         H00_SEM51Host_granted_S03_IntrqKey_intkey,
                                         H00_SEM51Host_qualified_request_S03_IntrqKey_intkey,
                                         H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey,
                                         H00_SEM51Host_requests_S03_IntrqKey_intkey,
                                         S03_IntrqKey_intkey_irq_from_sa,
                                         S03_IntrqKey_intkey_readdata_from_sa,
                                         S03_IntrqKey_intkey_reset_n,
                                         S03_IntrqKey_intkey_waitrequest_n_from_sa,
                                         d1_S03_IntrqKey_intkey_end_xfer
                                      )
;

  output           H00_SEM51Host_granted_S03_IntrqKey_intkey;
  output           H00_SEM51Host_qualified_request_S03_IntrqKey_intkey;
  output           H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey;
  output           H00_SEM51Host_requests_S03_IntrqKey_intkey;
  output           S03_IntrqKey_intkey_irq_from_sa;
  output  [  7: 0] S03_IntrqKey_intkey_readdata_from_sa;
  output           S03_IntrqKey_intkey_reset_n;
  output           S03_IntrqKey_intkey_waitrequest_n_from_sa;
  output           d1_S03_IntrqKey_intkey_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input            S03_IntrqKey_intkey_irq;
  input   [  7: 0] S03_IntrqKey_intkey_readdata;
  input            S03_IntrqKey_intkey_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_requests_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_saved_grant_S03_IntrqKey_intkey;
  wire             S03_IntrqKey_intkey_allgrants;
  wire             S03_IntrqKey_intkey_allow_new_arb_cycle;
  wire             S03_IntrqKey_intkey_any_bursting_master_saved_grant;
  wire             S03_IntrqKey_intkey_any_continuerequest;
  wire             S03_IntrqKey_intkey_arb_counter_enable;
  reg              S03_IntrqKey_intkey_arb_share_counter;
  wire             S03_IntrqKey_intkey_arb_share_counter_next_value;
  wire             S03_IntrqKey_intkey_arb_share_set_values;
  wire             S03_IntrqKey_intkey_beginbursttransfer_internal;
  wire             S03_IntrqKey_intkey_begins_xfer;
  wire             S03_IntrqKey_intkey_end_xfer;
  wire             S03_IntrqKey_intkey_firsttransfer;
  wire             S03_IntrqKey_intkey_grant_vector;
  wire             S03_IntrqKey_intkey_in_a_read_cycle;
  wire             S03_IntrqKey_intkey_in_a_write_cycle;
  wire             S03_IntrqKey_intkey_irq_from_sa;
  wire             S03_IntrqKey_intkey_master_qreq_vector;
  wire             S03_IntrqKey_intkey_non_bursting_master_requests;
  wire    [  7: 0] S03_IntrqKey_intkey_readdata_from_sa;
  reg              S03_IntrqKey_intkey_reg_firsttransfer;
  wire             S03_IntrqKey_intkey_reset_n;
  reg              S03_IntrqKey_intkey_slavearbiterlockenable;
  wire             S03_IntrqKey_intkey_slavearbiterlockenable2;
  wire             S03_IntrqKey_intkey_unreg_firsttransfer;
  wire             S03_IntrqKey_intkey_waitrequest_n_from_sa;
  wire             S03_IntrqKey_intkey_waits_for_read;
  wire             S03_IntrqKey_intkey_waits_for_write;
  reg              d1_S03_IntrqKey_intkey_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S03_IntrqKey_intkey;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S03_IntrqKey_intkey_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S03_IntrqKey_intkey_end_xfer;
    end


  assign S03_IntrqKey_intkey_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S03_IntrqKey_intkey));
  //assign S03_IntrqKey_intkey_readdata_from_sa = S03_IntrqKey_intkey_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S03_IntrqKey_intkey_readdata_from_sa = S03_IntrqKey_intkey_readdata;

  assign H00_SEM51Host_requests_S03_IntrqKey_intkey = (({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h3) & ~H00_SEM51Host_m0_chipselect_n) & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);
  //assign S03_IntrqKey_intkey_waitrequest_n_from_sa = S03_IntrqKey_intkey_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S03_IntrqKey_intkey_waitrequest_n_from_sa = S03_IntrqKey_intkey_waitrequest_n;

  //S03_IntrqKey_intkey_arb_share_counter set values, which is an e_mux
  assign S03_IntrqKey_intkey_arb_share_set_values = 1;

  //S03_IntrqKey_intkey_non_bursting_master_requests mux, which is an e_mux
  assign S03_IntrqKey_intkey_non_bursting_master_requests = H00_SEM51Host_requests_S03_IntrqKey_intkey;

  //S03_IntrqKey_intkey_any_bursting_master_saved_grant mux, which is an e_mux
  assign S03_IntrqKey_intkey_any_bursting_master_saved_grant = 0;

  //S03_IntrqKey_intkey_arb_share_counter_next_value assignment, which is an e_assign
  assign S03_IntrqKey_intkey_arb_share_counter_next_value = S03_IntrqKey_intkey_firsttransfer ? (S03_IntrqKey_intkey_arb_share_set_values - 1) : |S03_IntrqKey_intkey_arb_share_counter ? (S03_IntrqKey_intkey_arb_share_counter - 1) : 0;

  //S03_IntrqKey_intkey_allgrants all slave grants, which is an e_mux
  assign S03_IntrqKey_intkey_allgrants = |S03_IntrqKey_intkey_grant_vector;

  //S03_IntrqKey_intkey_end_xfer assignment, which is an e_assign
  assign S03_IntrqKey_intkey_end_xfer = ~(S03_IntrqKey_intkey_waits_for_read | S03_IntrqKey_intkey_waits_for_write);

  //end_xfer_arb_share_counter_term_S03_IntrqKey_intkey arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S03_IntrqKey_intkey = S03_IntrqKey_intkey_end_xfer & (~S03_IntrqKey_intkey_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S03_IntrqKey_intkey_arb_share_counter arbitration counter enable, which is an e_assign
  assign S03_IntrqKey_intkey_arb_counter_enable = (end_xfer_arb_share_counter_term_S03_IntrqKey_intkey & S03_IntrqKey_intkey_allgrants) | (end_xfer_arb_share_counter_term_S03_IntrqKey_intkey & ~S03_IntrqKey_intkey_non_bursting_master_requests);

  //S03_IntrqKey_intkey_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S03_IntrqKey_intkey_arb_share_counter <= 0;
      else if (S03_IntrqKey_intkey_arb_counter_enable)
          S03_IntrqKey_intkey_arb_share_counter <= S03_IntrqKey_intkey_arb_share_counter_next_value;
    end


  //S03_IntrqKey_intkey_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S03_IntrqKey_intkey_slavearbiterlockenable <= 0;
      else if ((|S03_IntrqKey_intkey_master_qreq_vector & end_xfer_arb_share_counter_term_S03_IntrqKey_intkey) | (end_xfer_arb_share_counter_term_S03_IntrqKey_intkey & ~S03_IntrqKey_intkey_non_bursting_master_requests))
          S03_IntrqKey_intkey_slavearbiterlockenable <= |S03_IntrqKey_intkey_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S03_IntrqKey/intkey arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S03_IntrqKey_intkey_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S03_IntrqKey_intkey_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S03_IntrqKey_intkey_slavearbiterlockenable2 = |S03_IntrqKey_intkey_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S03_IntrqKey/intkey arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S03_IntrqKey_intkey_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S03_IntrqKey_intkey_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S03_IntrqKey_intkey_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S03_IntrqKey_intkey = H00_SEM51Host_requests_S03_IntrqKey_intkey;
  //master is always granted when requested
  assign H00_SEM51Host_granted_S03_IntrqKey_intkey = H00_SEM51Host_qualified_request_S03_IntrqKey_intkey;

  //H00_SEM51Host/m0 saved-grant S03_IntrqKey/intkey, which is an e_assign
  assign H00_SEM51Host_saved_grant_S03_IntrqKey_intkey = H00_SEM51Host_requests_S03_IntrqKey_intkey;

  //allow new arb cycle for S03_IntrqKey/intkey, which is an e_assign
  assign S03_IntrqKey_intkey_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S03_IntrqKey_intkey_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S03_IntrqKey_intkey_master_qreq_vector = 1;

  //S03_IntrqKey_intkey_reset_n assignment, which is an e_assign
  assign S03_IntrqKey_intkey_reset_n = reset_n;

  //S03_IntrqKey_intkey_firsttransfer first transaction, which is an e_assign
  assign S03_IntrqKey_intkey_firsttransfer = S03_IntrqKey_intkey_begins_xfer ? S03_IntrqKey_intkey_unreg_firsttransfer : S03_IntrqKey_intkey_reg_firsttransfer;

  //S03_IntrqKey_intkey_unreg_firsttransfer first transaction, which is an e_assign
  assign S03_IntrqKey_intkey_unreg_firsttransfer = ~(S03_IntrqKey_intkey_slavearbiterlockenable & S03_IntrqKey_intkey_any_continuerequest);

  //S03_IntrqKey_intkey_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S03_IntrqKey_intkey_reg_firsttransfer <= 1'b1;
      else if (S03_IntrqKey_intkey_begins_xfer)
          S03_IntrqKey_intkey_reg_firsttransfer <= S03_IntrqKey_intkey_unreg_firsttransfer;
    end


  //S03_IntrqKey_intkey_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S03_IntrqKey_intkey_beginbursttransfer_internal = S03_IntrqKey_intkey_begins_xfer;

  //d1_S03_IntrqKey_intkey_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S03_IntrqKey_intkey_end_xfer <= 1;
      else 
        d1_S03_IntrqKey_intkey_end_xfer <= S03_IntrqKey_intkey_end_xfer;
    end


  //S03_IntrqKey_intkey_waits_for_read in a cycle, which is an e_mux
  assign S03_IntrqKey_intkey_waits_for_read = S03_IntrqKey_intkey_in_a_read_cycle & ~S03_IntrqKey_intkey_waitrequest_n_from_sa;

  //S03_IntrqKey_intkey_in_a_read_cycle assignment, which is an e_assign
  assign S03_IntrqKey_intkey_in_a_read_cycle = H00_SEM51Host_granted_S03_IntrqKey_intkey & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S03_IntrqKey_intkey_in_a_read_cycle;

  //S03_IntrqKey_intkey_waits_for_write in a cycle, which is an e_mux
  assign S03_IntrqKey_intkey_waits_for_write = S03_IntrqKey_intkey_in_a_write_cycle & ~S03_IntrqKey_intkey_waitrequest_n_from_sa;

  //S03_IntrqKey_intkey_in_a_write_cycle assignment, which is an e_assign
  assign S03_IntrqKey_intkey_in_a_write_cycle = H00_SEM51Host_granted_S03_IntrqKey_intkey & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S03_IntrqKey_intkey_in_a_write_cycle;

  assign wait_for_S03_IntrqKey_intkey_counter = 0;
  //assign S03_IntrqKey_intkey_irq_from_sa = S03_IntrqKey_intkey_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S03_IntrqKey_intkey_irq_from_sa = S03_IntrqKey_intkey_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S03_IntrqKey/intkey enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_addr_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_addr_irq,
                                      S10_PNLCtrl_addr_readdata,
                                      S10_PNLCtrl_addr_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_addr,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_addr,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr,
                                      H00_SEM51Host_requests_S10_PNLCtrl_addr,
                                      S10_PNLCtrl_addr_irq_from_sa,
                                      S10_PNLCtrl_addr_readdata_from_sa,
                                      S10_PNLCtrl_addr_reset_n,
                                      S10_PNLCtrl_addr_waitrequest_n_from_sa,
                                      S10_PNLCtrl_addr_write_n,
                                      S10_PNLCtrl_addr_writedata,
                                      d1_S10_PNLCtrl_addr_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_addr;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_addr;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr;
  output           H00_SEM51Host_requests_S10_PNLCtrl_addr;
  output           S10_PNLCtrl_addr_irq_from_sa;
  output  [  7: 0] S10_PNLCtrl_addr_readdata_from_sa;
  output           S10_PNLCtrl_addr_reset_n;
  output           S10_PNLCtrl_addr_waitrequest_n_from_sa;
  output           S10_PNLCtrl_addr_write_n;
  output  [  7: 0] S10_PNLCtrl_addr_writedata;
  output           d1_S10_PNLCtrl_addr_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input            S10_PNLCtrl_addr_irq;
  input   [  7: 0] S10_PNLCtrl_addr_readdata;
  input            S10_PNLCtrl_addr_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_addr;
  wire             S10_PNLCtrl_addr_allgrants;
  wire             S10_PNLCtrl_addr_allow_new_arb_cycle;
  wire             S10_PNLCtrl_addr_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_addr_any_continuerequest;
  wire             S10_PNLCtrl_addr_arb_counter_enable;
  reg              S10_PNLCtrl_addr_arb_share_counter;
  wire             S10_PNLCtrl_addr_arb_share_counter_next_value;
  wire             S10_PNLCtrl_addr_arb_share_set_values;
  wire             S10_PNLCtrl_addr_beginbursttransfer_internal;
  wire             S10_PNLCtrl_addr_begins_xfer;
  wire             S10_PNLCtrl_addr_end_xfer;
  wire             S10_PNLCtrl_addr_firsttransfer;
  wire             S10_PNLCtrl_addr_grant_vector;
  wire             S10_PNLCtrl_addr_in_a_read_cycle;
  wire             S10_PNLCtrl_addr_in_a_write_cycle;
  wire             S10_PNLCtrl_addr_irq_from_sa;
  wire             S10_PNLCtrl_addr_master_qreq_vector;
  wire             S10_PNLCtrl_addr_non_bursting_master_requests;
  wire             S10_PNLCtrl_addr_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_addr_readdata_from_sa;
  reg              S10_PNLCtrl_addr_reg_firsttransfer;
  wire             S10_PNLCtrl_addr_reset_n;
  reg              S10_PNLCtrl_addr_slavearbiterlockenable;
  wire             S10_PNLCtrl_addr_slavearbiterlockenable2;
  wire             S10_PNLCtrl_addr_unreg_firsttransfer;
  wire             S10_PNLCtrl_addr_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_addr_waits_for_read;
  wire             S10_PNLCtrl_addr_waits_for_write;
  wire             S10_PNLCtrl_addr_write_n;
  wire    [  7: 0] S10_PNLCtrl_addr_writedata;
  reg              d1_S10_PNLCtrl_addr_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_addr;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_addr_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_addr_end_xfer;
    end


  assign S10_PNLCtrl_addr_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_addr));
  //assign S10_PNLCtrl_addr_readdata_from_sa = S10_PNLCtrl_addr_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_addr_readdata_from_sa = S10_PNLCtrl_addr_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_addr = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h10) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_addr_waitrequest_n_from_sa = S10_PNLCtrl_addr_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_addr_waitrequest_n_from_sa = S10_PNLCtrl_addr_waitrequest_n;

  //S10_PNLCtrl_addr_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_addr_arb_share_set_values = 1;

  //S10_PNLCtrl_addr_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_addr_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_addr;

  //S10_PNLCtrl_addr_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_addr_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_addr_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_addr_arb_share_counter_next_value = S10_PNLCtrl_addr_firsttransfer ? (S10_PNLCtrl_addr_arb_share_set_values - 1) : |S10_PNLCtrl_addr_arb_share_counter ? (S10_PNLCtrl_addr_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_addr_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_addr_allgrants = |S10_PNLCtrl_addr_grant_vector;

  //S10_PNLCtrl_addr_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_addr_end_xfer = ~(S10_PNLCtrl_addr_waits_for_read | S10_PNLCtrl_addr_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_addr arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_addr = S10_PNLCtrl_addr_end_xfer & (~S10_PNLCtrl_addr_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_addr_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_addr_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_addr & S10_PNLCtrl_addr_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_addr & ~S10_PNLCtrl_addr_non_bursting_master_requests);

  //S10_PNLCtrl_addr_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_addr_arb_share_counter <= 0;
      else if (S10_PNLCtrl_addr_arb_counter_enable)
          S10_PNLCtrl_addr_arb_share_counter <= S10_PNLCtrl_addr_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_addr_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_addr_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_addr_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_addr) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_addr & ~S10_PNLCtrl_addr_non_bursting_master_requests))
          S10_PNLCtrl_addr_slavearbiterlockenable <= |S10_PNLCtrl_addr_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/addr arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_addr_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_addr_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_addr_slavearbiterlockenable2 = |S10_PNLCtrl_addr_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/addr arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_addr_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_addr_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_addr_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_addr = H00_SEM51Host_requests_S10_PNLCtrl_addr;
  //S10_PNLCtrl_addr_writedata mux, which is an e_mux
  assign S10_PNLCtrl_addr_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_addr = H00_SEM51Host_qualified_request_S10_PNLCtrl_addr;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/addr, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_addr = H00_SEM51Host_requests_S10_PNLCtrl_addr;

  //allow new arb cycle for S10_PNLCtrl/addr, which is an e_assign
  assign S10_PNLCtrl_addr_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_addr_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_addr_master_qreq_vector = 1;

  //S10_PNLCtrl_addr_reset_n assignment, which is an e_assign
  assign S10_PNLCtrl_addr_reset_n = reset_n;

  //S10_PNLCtrl_addr_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_addr_firsttransfer = S10_PNLCtrl_addr_begins_xfer ? S10_PNLCtrl_addr_unreg_firsttransfer : S10_PNLCtrl_addr_reg_firsttransfer;

  //S10_PNLCtrl_addr_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_addr_unreg_firsttransfer = ~(S10_PNLCtrl_addr_slavearbiterlockenable & S10_PNLCtrl_addr_any_continuerequest);

  //S10_PNLCtrl_addr_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_addr_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_addr_begins_xfer)
          S10_PNLCtrl_addr_reg_firsttransfer <= S10_PNLCtrl_addr_unreg_firsttransfer;
    end


  //S10_PNLCtrl_addr_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_addr_beginbursttransfer_internal = S10_PNLCtrl_addr_begins_xfer;

  //~S10_PNLCtrl_addr_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_addr_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_addr & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_addr_pretend_byte_enable);

  //d1_S10_PNLCtrl_addr_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_addr_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_addr_end_xfer <= S10_PNLCtrl_addr_end_xfer;
    end


  //S10_PNLCtrl_addr_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_addr_waits_for_read = S10_PNLCtrl_addr_in_a_read_cycle & ~S10_PNLCtrl_addr_waitrequest_n_from_sa;

  //S10_PNLCtrl_addr_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_addr_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_addr & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_addr_in_a_read_cycle;

  //S10_PNLCtrl_addr_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_addr_waits_for_write = S10_PNLCtrl_addr_in_a_write_cycle & ~S10_PNLCtrl_addr_waitrequest_n_from_sa;

  //S10_PNLCtrl_addr_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_addr_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_addr & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_addr_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_addr_counter = 0;
  //S10_PNLCtrl_addr_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_addr_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_addr)? {1 {1'b1}} :
    -1;

  //assign S10_PNLCtrl_addr_irq_from_sa = S10_PNLCtrl_addr_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_addr_irq_from_sa = S10_PNLCtrl_addr_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/addr enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_ctrl_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_ctrl_readdata,
                                      S10_PNLCtrl_ctrl_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl,
                                      H00_SEM51Host_requests_S10_PNLCtrl_ctrl,
                                      S10_PNLCtrl_ctrl_readdata_from_sa,
                                      S10_PNLCtrl_ctrl_waitrequest_n_from_sa,
                                      S10_PNLCtrl_ctrl_write_n,
                                      S10_PNLCtrl_ctrl_writedata,
                                      d1_S10_PNLCtrl_ctrl_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_ctrl;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl;
  output           H00_SEM51Host_requests_S10_PNLCtrl_ctrl;
  output  [  7: 0] S10_PNLCtrl_ctrl_readdata_from_sa;
  output           S10_PNLCtrl_ctrl_waitrequest_n_from_sa;
  output           S10_PNLCtrl_ctrl_write_n;
  output  [  7: 0] S10_PNLCtrl_ctrl_writedata;
  output           d1_S10_PNLCtrl_ctrl_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S10_PNLCtrl_ctrl_readdata;
  input            S10_PNLCtrl_ctrl_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_ctrl;
  wire             S10_PNLCtrl_ctrl_allgrants;
  wire             S10_PNLCtrl_ctrl_allow_new_arb_cycle;
  wire             S10_PNLCtrl_ctrl_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_ctrl_any_continuerequest;
  wire             S10_PNLCtrl_ctrl_arb_counter_enable;
  reg              S10_PNLCtrl_ctrl_arb_share_counter;
  wire             S10_PNLCtrl_ctrl_arb_share_counter_next_value;
  wire             S10_PNLCtrl_ctrl_arb_share_set_values;
  wire             S10_PNLCtrl_ctrl_beginbursttransfer_internal;
  wire             S10_PNLCtrl_ctrl_begins_xfer;
  wire             S10_PNLCtrl_ctrl_end_xfer;
  wire             S10_PNLCtrl_ctrl_firsttransfer;
  wire             S10_PNLCtrl_ctrl_grant_vector;
  wire             S10_PNLCtrl_ctrl_in_a_read_cycle;
  wire             S10_PNLCtrl_ctrl_in_a_write_cycle;
  wire             S10_PNLCtrl_ctrl_master_qreq_vector;
  wire             S10_PNLCtrl_ctrl_non_bursting_master_requests;
  wire             S10_PNLCtrl_ctrl_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_ctrl_readdata_from_sa;
  reg              S10_PNLCtrl_ctrl_reg_firsttransfer;
  reg              S10_PNLCtrl_ctrl_slavearbiterlockenable;
  wire             S10_PNLCtrl_ctrl_slavearbiterlockenable2;
  wire             S10_PNLCtrl_ctrl_unreg_firsttransfer;
  wire             S10_PNLCtrl_ctrl_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_ctrl_waits_for_read;
  wire             S10_PNLCtrl_ctrl_waits_for_write;
  wire             S10_PNLCtrl_ctrl_write_n;
  wire    [  7: 0] S10_PNLCtrl_ctrl_writedata;
  reg              d1_S10_PNLCtrl_ctrl_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_ctrl_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_ctrl_end_xfer;
    end


  assign S10_PNLCtrl_ctrl_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl));
  //assign S10_PNLCtrl_ctrl_readdata_from_sa = S10_PNLCtrl_ctrl_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_ctrl_readdata_from_sa = S10_PNLCtrl_ctrl_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_ctrl = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h15) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_ctrl_waitrequest_n_from_sa = S10_PNLCtrl_ctrl_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_ctrl_waitrequest_n_from_sa = S10_PNLCtrl_ctrl_waitrequest_n;

  //S10_PNLCtrl_ctrl_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_ctrl_arb_share_set_values = 1;

  //S10_PNLCtrl_ctrl_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_ctrl_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_ctrl;

  //S10_PNLCtrl_ctrl_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_ctrl_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_ctrl_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_ctrl_arb_share_counter_next_value = S10_PNLCtrl_ctrl_firsttransfer ? (S10_PNLCtrl_ctrl_arb_share_set_values - 1) : |S10_PNLCtrl_ctrl_arb_share_counter ? (S10_PNLCtrl_ctrl_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_ctrl_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_ctrl_allgrants = |S10_PNLCtrl_ctrl_grant_vector;

  //S10_PNLCtrl_ctrl_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_ctrl_end_xfer = ~(S10_PNLCtrl_ctrl_waits_for_read | S10_PNLCtrl_ctrl_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl = S10_PNLCtrl_ctrl_end_xfer & (~S10_PNLCtrl_ctrl_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_ctrl_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_ctrl_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl & S10_PNLCtrl_ctrl_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl & ~S10_PNLCtrl_ctrl_non_bursting_master_requests);

  //S10_PNLCtrl_ctrl_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_ctrl_arb_share_counter <= 0;
      else if (S10_PNLCtrl_ctrl_arb_counter_enable)
          S10_PNLCtrl_ctrl_arb_share_counter <= S10_PNLCtrl_ctrl_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_ctrl_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_ctrl_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_ctrl_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_ctrl & ~S10_PNLCtrl_ctrl_non_bursting_master_requests))
          S10_PNLCtrl_ctrl_slavearbiterlockenable <= |S10_PNLCtrl_ctrl_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/ctrl arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_ctrl_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_ctrl_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_ctrl_slavearbiterlockenable2 = |S10_PNLCtrl_ctrl_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/ctrl arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_ctrl_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_ctrl_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_ctrl_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl = H00_SEM51Host_requests_S10_PNLCtrl_ctrl;
  //S10_PNLCtrl_ctrl_writedata mux, which is an e_mux
  assign S10_PNLCtrl_ctrl_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_ctrl = H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/ctrl, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_ctrl = H00_SEM51Host_requests_S10_PNLCtrl_ctrl;

  //allow new arb cycle for S10_PNLCtrl/ctrl, which is an e_assign
  assign S10_PNLCtrl_ctrl_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_ctrl_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_ctrl_master_qreq_vector = 1;

  //S10_PNLCtrl_ctrl_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_ctrl_firsttransfer = S10_PNLCtrl_ctrl_begins_xfer ? S10_PNLCtrl_ctrl_unreg_firsttransfer : S10_PNLCtrl_ctrl_reg_firsttransfer;

  //S10_PNLCtrl_ctrl_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_ctrl_unreg_firsttransfer = ~(S10_PNLCtrl_ctrl_slavearbiterlockenable & S10_PNLCtrl_ctrl_any_continuerequest);

  //S10_PNLCtrl_ctrl_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_ctrl_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_ctrl_begins_xfer)
          S10_PNLCtrl_ctrl_reg_firsttransfer <= S10_PNLCtrl_ctrl_unreg_firsttransfer;
    end


  //S10_PNLCtrl_ctrl_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_ctrl_beginbursttransfer_internal = S10_PNLCtrl_ctrl_begins_xfer;

  //~S10_PNLCtrl_ctrl_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_ctrl_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_ctrl & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_ctrl_pretend_byte_enable);

  //d1_S10_PNLCtrl_ctrl_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_ctrl_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_ctrl_end_xfer <= S10_PNLCtrl_ctrl_end_xfer;
    end


  //S10_PNLCtrl_ctrl_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_ctrl_waits_for_read = S10_PNLCtrl_ctrl_in_a_read_cycle & ~S10_PNLCtrl_ctrl_waitrequest_n_from_sa;

  //S10_PNLCtrl_ctrl_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_ctrl_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_ctrl & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_ctrl_in_a_read_cycle;

  //S10_PNLCtrl_ctrl_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_ctrl_waits_for_write = S10_PNLCtrl_ctrl_in_a_write_cycle & ~S10_PNLCtrl_ctrl_waitrequest_n_from_sa;

  //S10_PNLCtrl_ctrl_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_ctrl_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_ctrl & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_ctrl_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_ctrl_counter = 0;
  //S10_PNLCtrl_ctrl_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_ctrl_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_ctrl)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/ctrl enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_key0_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_key0_readdata,
                                      S10_PNLCtrl_key0_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_key0,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key0,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key0,
                                      S10_PNLCtrl_key0_readdata_from_sa,
                                      S10_PNLCtrl_key0_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key0_write_n,
                                      S10_PNLCtrl_key0_writedata,
                                      d1_S10_PNLCtrl_key0_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_key0;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_key0;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0;
  output           H00_SEM51Host_requests_S10_PNLCtrl_key0;
  output  [  7: 0] S10_PNLCtrl_key0_readdata_from_sa;
  output           S10_PNLCtrl_key0_waitrequest_n_from_sa;
  output           S10_PNLCtrl_key0_write_n;
  output  [  7: 0] S10_PNLCtrl_key0_writedata;
  output           d1_S10_PNLCtrl_key0_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S10_PNLCtrl_key0_readdata;
  input            S10_PNLCtrl_key0_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_key0;
  wire             S10_PNLCtrl_key0_allgrants;
  wire             S10_PNLCtrl_key0_allow_new_arb_cycle;
  wire             S10_PNLCtrl_key0_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_key0_any_continuerequest;
  wire             S10_PNLCtrl_key0_arb_counter_enable;
  reg              S10_PNLCtrl_key0_arb_share_counter;
  wire             S10_PNLCtrl_key0_arb_share_counter_next_value;
  wire             S10_PNLCtrl_key0_arb_share_set_values;
  wire             S10_PNLCtrl_key0_beginbursttransfer_internal;
  wire             S10_PNLCtrl_key0_begins_xfer;
  wire             S10_PNLCtrl_key0_end_xfer;
  wire             S10_PNLCtrl_key0_firsttransfer;
  wire             S10_PNLCtrl_key0_grant_vector;
  wire             S10_PNLCtrl_key0_in_a_read_cycle;
  wire             S10_PNLCtrl_key0_in_a_write_cycle;
  wire             S10_PNLCtrl_key0_master_qreq_vector;
  wire             S10_PNLCtrl_key0_non_bursting_master_requests;
  wire             S10_PNLCtrl_key0_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_key0_readdata_from_sa;
  reg              S10_PNLCtrl_key0_reg_firsttransfer;
  reg              S10_PNLCtrl_key0_slavearbiterlockenable;
  wire             S10_PNLCtrl_key0_slavearbiterlockenable2;
  wire             S10_PNLCtrl_key0_unreg_firsttransfer;
  wire             S10_PNLCtrl_key0_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key0_waits_for_read;
  wire             S10_PNLCtrl_key0_waits_for_write;
  wire             S10_PNLCtrl_key0_write_n;
  wire    [  7: 0] S10_PNLCtrl_key0_writedata;
  reg              d1_S10_PNLCtrl_key0_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_key0;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_key0_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_key0_end_xfer;
    end


  assign S10_PNLCtrl_key0_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_key0));
  //assign S10_PNLCtrl_key0_readdata_from_sa = S10_PNLCtrl_key0_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key0_readdata_from_sa = S10_PNLCtrl_key0_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_key0 = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h11) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_key0_waitrequest_n_from_sa = S10_PNLCtrl_key0_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key0_waitrequest_n_from_sa = S10_PNLCtrl_key0_waitrequest_n;

  //S10_PNLCtrl_key0_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_key0_arb_share_set_values = 1;

  //S10_PNLCtrl_key0_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_key0_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_key0;

  //S10_PNLCtrl_key0_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_key0_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_key0_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_key0_arb_share_counter_next_value = S10_PNLCtrl_key0_firsttransfer ? (S10_PNLCtrl_key0_arb_share_set_values - 1) : |S10_PNLCtrl_key0_arb_share_counter ? (S10_PNLCtrl_key0_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_key0_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_key0_allgrants = |S10_PNLCtrl_key0_grant_vector;

  //S10_PNLCtrl_key0_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_key0_end_xfer = ~(S10_PNLCtrl_key0_waits_for_read | S10_PNLCtrl_key0_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_key0 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_key0 = S10_PNLCtrl_key0_end_xfer & (~S10_PNLCtrl_key0_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_key0_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_key0_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_key0 & S10_PNLCtrl_key0_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key0 & ~S10_PNLCtrl_key0_non_bursting_master_requests);

  //S10_PNLCtrl_key0_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key0_arb_share_counter <= 0;
      else if (S10_PNLCtrl_key0_arb_counter_enable)
          S10_PNLCtrl_key0_arb_share_counter <= S10_PNLCtrl_key0_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_key0_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key0_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_key0_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_key0) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key0 & ~S10_PNLCtrl_key0_non_bursting_master_requests))
          S10_PNLCtrl_key0_slavearbiterlockenable <= |S10_PNLCtrl_key0_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/key0 arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_key0_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key0_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_key0_slavearbiterlockenable2 = |S10_PNLCtrl_key0_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/key0 arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_key0_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key0_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_key0_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_key0 = H00_SEM51Host_requests_S10_PNLCtrl_key0;
  //S10_PNLCtrl_key0_writedata mux, which is an e_mux
  assign S10_PNLCtrl_key0_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_key0 = H00_SEM51Host_qualified_request_S10_PNLCtrl_key0;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/key0, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_key0 = H00_SEM51Host_requests_S10_PNLCtrl_key0;

  //allow new arb cycle for S10_PNLCtrl/key0, which is an e_assign
  assign S10_PNLCtrl_key0_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_key0_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_key0_master_qreq_vector = 1;

  //S10_PNLCtrl_key0_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key0_firsttransfer = S10_PNLCtrl_key0_begins_xfer ? S10_PNLCtrl_key0_unreg_firsttransfer : S10_PNLCtrl_key0_reg_firsttransfer;

  //S10_PNLCtrl_key0_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key0_unreg_firsttransfer = ~(S10_PNLCtrl_key0_slavearbiterlockenable & S10_PNLCtrl_key0_any_continuerequest);

  //S10_PNLCtrl_key0_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key0_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_key0_begins_xfer)
          S10_PNLCtrl_key0_reg_firsttransfer <= S10_PNLCtrl_key0_unreg_firsttransfer;
    end


  //S10_PNLCtrl_key0_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_key0_beginbursttransfer_internal = S10_PNLCtrl_key0_begins_xfer;

  //~S10_PNLCtrl_key0_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_key0_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_key0 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_key0_pretend_byte_enable);

  //d1_S10_PNLCtrl_key0_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_key0_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_key0_end_xfer <= S10_PNLCtrl_key0_end_xfer;
    end


  //S10_PNLCtrl_key0_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_key0_waits_for_read = S10_PNLCtrl_key0_in_a_read_cycle & ~S10_PNLCtrl_key0_waitrequest_n_from_sa;

  //S10_PNLCtrl_key0_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key0_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key0 & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_key0_in_a_read_cycle;

  //S10_PNLCtrl_key0_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_key0_waits_for_write = S10_PNLCtrl_key0_in_a_write_cycle & ~S10_PNLCtrl_key0_waitrequest_n_from_sa;

  //S10_PNLCtrl_key0_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key0_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key0 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_key0_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_key0_counter = 0;
  //S10_PNLCtrl_key0_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_key0_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_key0)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/key0 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_key1_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_key1_readdata,
                                      S10_PNLCtrl_key1_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_key1,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key1,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key1,
                                      S10_PNLCtrl_key1_readdata_from_sa,
                                      S10_PNLCtrl_key1_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key1_write_n,
                                      S10_PNLCtrl_key1_writedata,
                                      d1_S10_PNLCtrl_key1_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_key1;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_key1;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1;
  output           H00_SEM51Host_requests_S10_PNLCtrl_key1;
  output  [  7: 0] S10_PNLCtrl_key1_readdata_from_sa;
  output           S10_PNLCtrl_key1_waitrequest_n_from_sa;
  output           S10_PNLCtrl_key1_write_n;
  output  [  7: 0] S10_PNLCtrl_key1_writedata;
  output           d1_S10_PNLCtrl_key1_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S10_PNLCtrl_key1_readdata;
  input            S10_PNLCtrl_key1_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_key1;
  wire             S10_PNLCtrl_key1_allgrants;
  wire             S10_PNLCtrl_key1_allow_new_arb_cycle;
  wire             S10_PNLCtrl_key1_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_key1_any_continuerequest;
  wire             S10_PNLCtrl_key1_arb_counter_enable;
  reg              S10_PNLCtrl_key1_arb_share_counter;
  wire             S10_PNLCtrl_key1_arb_share_counter_next_value;
  wire             S10_PNLCtrl_key1_arb_share_set_values;
  wire             S10_PNLCtrl_key1_beginbursttransfer_internal;
  wire             S10_PNLCtrl_key1_begins_xfer;
  wire             S10_PNLCtrl_key1_end_xfer;
  wire             S10_PNLCtrl_key1_firsttransfer;
  wire             S10_PNLCtrl_key1_grant_vector;
  wire             S10_PNLCtrl_key1_in_a_read_cycle;
  wire             S10_PNLCtrl_key1_in_a_write_cycle;
  wire             S10_PNLCtrl_key1_master_qreq_vector;
  wire             S10_PNLCtrl_key1_non_bursting_master_requests;
  wire             S10_PNLCtrl_key1_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_key1_readdata_from_sa;
  reg              S10_PNLCtrl_key1_reg_firsttransfer;
  reg              S10_PNLCtrl_key1_slavearbiterlockenable;
  wire             S10_PNLCtrl_key1_slavearbiterlockenable2;
  wire             S10_PNLCtrl_key1_unreg_firsttransfer;
  wire             S10_PNLCtrl_key1_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key1_waits_for_read;
  wire             S10_PNLCtrl_key1_waits_for_write;
  wire             S10_PNLCtrl_key1_write_n;
  wire    [  7: 0] S10_PNLCtrl_key1_writedata;
  reg              d1_S10_PNLCtrl_key1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_key1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_key1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_key1_end_xfer;
    end


  assign S10_PNLCtrl_key1_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_key1));
  //assign S10_PNLCtrl_key1_readdata_from_sa = S10_PNLCtrl_key1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key1_readdata_from_sa = S10_PNLCtrl_key1_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_key1 = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h12) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_key1_waitrequest_n_from_sa = S10_PNLCtrl_key1_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key1_waitrequest_n_from_sa = S10_PNLCtrl_key1_waitrequest_n;

  //S10_PNLCtrl_key1_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_key1_arb_share_set_values = 1;

  //S10_PNLCtrl_key1_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_key1_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_key1;

  //S10_PNLCtrl_key1_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_key1_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_key1_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_key1_arb_share_counter_next_value = S10_PNLCtrl_key1_firsttransfer ? (S10_PNLCtrl_key1_arb_share_set_values - 1) : |S10_PNLCtrl_key1_arb_share_counter ? (S10_PNLCtrl_key1_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_key1_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_key1_allgrants = |S10_PNLCtrl_key1_grant_vector;

  //S10_PNLCtrl_key1_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_key1_end_xfer = ~(S10_PNLCtrl_key1_waits_for_read | S10_PNLCtrl_key1_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_key1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_key1 = S10_PNLCtrl_key1_end_xfer & (~S10_PNLCtrl_key1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_key1_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_key1_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_key1 & S10_PNLCtrl_key1_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key1 & ~S10_PNLCtrl_key1_non_bursting_master_requests);

  //S10_PNLCtrl_key1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key1_arb_share_counter <= 0;
      else if (S10_PNLCtrl_key1_arb_counter_enable)
          S10_PNLCtrl_key1_arb_share_counter <= S10_PNLCtrl_key1_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_key1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key1_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_key1_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_key1) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key1 & ~S10_PNLCtrl_key1_non_bursting_master_requests))
          S10_PNLCtrl_key1_slavearbiterlockenable <= |S10_PNLCtrl_key1_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/key1 arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_key1_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_key1_slavearbiterlockenable2 = |S10_PNLCtrl_key1_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/key1 arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_key1_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_key1_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_key1 = H00_SEM51Host_requests_S10_PNLCtrl_key1;
  //S10_PNLCtrl_key1_writedata mux, which is an e_mux
  assign S10_PNLCtrl_key1_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_key1 = H00_SEM51Host_qualified_request_S10_PNLCtrl_key1;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/key1, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_key1 = H00_SEM51Host_requests_S10_PNLCtrl_key1;

  //allow new arb cycle for S10_PNLCtrl/key1, which is an e_assign
  assign S10_PNLCtrl_key1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_key1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_key1_master_qreq_vector = 1;

  //S10_PNLCtrl_key1_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key1_firsttransfer = S10_PNLCtrl_key1_begins_xfer ? S10_PNLCtrl_key1_unreg_firsttransfer : S10_PNLCtrl_key1_reg_firsttransfer;

  //S10_PNLCtrl_key1_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key1_unreg_firsttransfer = ~(S10_PNLCtrl_key1_slavearbiterlockenable & S10_PNLCtrl_key1_any_continuerequest);

  //S10_PNLCtrl_key1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key1_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_key1_begins_xfer)
          S10_PNLCtrl_key1_reg_firsttransfer <= S10_PNLCtrl_key1_unreg_firsttransfer;
    end


  //S10_PNLCtrl_key1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_key1_beginbursttransfer_internal = S10_PNLCtrl_key1_begins_xfer;

  //~S10_PNLCtrl_key1_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_key1_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_key1 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_key1_pretend_byte_enable);

  //d1_S10_PNLCtrl_key1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_key1_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_key1_end_xfer <= S10_PNLCtrl_key1_end_xfer;
    end


  //S10_PNLCtrl_key1_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_key1_waits_for_read = S10_PNLCtrl_key1_in_a_read_cycle & ~S10_PNLCtrl_key1_waitrequest_n_from_sa;

  //S10_PNLCtrl_key1_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key1_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key1 & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_key1_in_a_read_cycle;

  //S10_PNLCtrl_key1_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_key1_waits_for_write = S10_PNLCtrl_key1_in_a_write_cycle & ~S10_PNLCtrl_key1_waitrequest_n_from_sa;

  //S10_PNLCtrl_key1_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key1_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key1 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_key1_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_key1_counter = 0;
  //S10_PNLCtrl_key1_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_key1_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_key1)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/key1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_key2_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_key2_readdata,
                                      S10_PNLCtrl_key2_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_key2,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key2,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key2,
                                      S10_PNLCtrl_key2_readdata_from_sa,
                                      S10_PNLCtrl_key2_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key2_write_n,
                                      S10_PNLCtrl_key2_writedata,
                                      d1_S10_PNLCtrl_key2_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_key2;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_key2;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2;
  output           H00_SEM51Host_requests_S10_PNLCtrl_key2;
  output  [  7: 0] S10_PNLCtrl_key2_readdata_from_sa;
  output           S10_PNLCtrl_key2_waitrequest_n_from_sa;
  output           S10_PNLCtrl_key2_write_n;
  output  [  7: 0] S10_PNLCtrl_key2_writedata;
  output           d1_S10_PNLCtrl_key2_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S10_PNLCtrl_key2_readdata;
  input            S10_PNLCtrl_key2_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_key2;
  wire             S10_PNLCtrl_key2_allgrants;
  wire             S10_PNLCtrl_key2_allow_new_arb_cycle;
  wire             S10_PNLCtrl_key2_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_key2_any_continuerequest;
  wire             S10_PNLCtrl_key2_arb_counter_enable;
  reg              S10_PNLCtrl_key2_arb_share_counter;
  wire             S10_PNLCtrl_key2_arb_share_counter_next_value;
  wire             S10_PNLCtrl_key2_arb_share_set_values;
  wire             S10_PNLCtrl_key2_beginbursttransfer_internal;
  wire             S10_PNLCtrl_key2_begins_xfer;
  wire             S10_PNLCtrl_key2_end_xfer;
  wire             S10_PNLCtrl_key2_firsttransfer;
  wire             S10_PNLCtrl_key2_grant_vector;
  wire             S10_PNLCtrl_key2_in_a_read_cycle;
  wire             S10_PNLCtrl_key2_in_a_write_cycle;
  wire             S10_PNLCtrl_key2_master_qreq_vector;
  wire             S10_PNLCtrl_key2_non_bursting_master_requests;
  wire             S10_PNLCtrl_key2_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_key2_readdata_from_sa;
  reg              S10_PNLCtrl_key2_reg_firsttransfer;
  reg              S10_PNLCtrl_key2_slavearbiterlockenable;
  wire             S10_PNLCtrl_key2_slavearbiterlockenable2;
  wire             S10_PNLCtrl_key2_unreg_firsttransfer;
  wire             S10_PNLCtrl_key2_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key2_waits_for_read;
  wire             S10_PNLCtrl_key2_waits_for_write;
  wire             S10_PNLCtrl_key2_write_n;
  wire    [  7: 0] S10_PNLCtrl_key2_writedata;
  reg              d1_S10_PNLCtrl_key2_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_key2;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_key2_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_key2_end_xfer;
    end


  assign S10_PNLCtrl_key2_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_key2));
  //assign S10_PNLCtrl_key2_readdata_from_sa = S10_PNLCtrl_key2_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key2_readdata_from_sa = S10_PNLCtrl_key2_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_key2 = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h13) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_key2_waitrequest_n_from_sa = S10_PNLCtrl_key2_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key2_waitrequest_n_from_sa = S10_PNLCtrl_key2_waitrequest_n;

  //S10_PNLCtrl_key2_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_key2_arb_share_set_values = 1;

  //S10_PNLCtrl_key2_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_key2_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_key2;

  //S10_PNLCtrl_key2_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_key2_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_key2_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_key2_arb_share_counter_next_value = S10_PNLCtrl_key2_firsttransfer ? (S10_PNLCtrl_key2_arb_share_set_values - 1) : |S10_PNLCtrl_key2_arb_share_counter ? (S10_PNLCtrl_key2_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_key2_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_key2_allgrants = |S10_PNLCtrl_key2_grant_vector;

  //S10_PNLCtrl_key2_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_key2_end_xfer = ~(S10_PNLCtrl_key2_waits_for_read | S10_PNLCtrl_key2_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_key2 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_key2 = S10_PNLCtrl_key2_end_xfer & (~S10_PNLCtrl_key2_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_key2_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_key2_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_key2 & S10_PNLCtrl_key2_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key2 & ~S10_PNLCtrl_key2_non_bursting_master_requests);

  //S10_PNLCtrl_key2_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key2_arb_share_counter <= 0;
      else if (S10_PNLCtrl_key2_arb_counter_enable)
          S10_PNLCtrl_key2_arb_share_counter <= S10_PNLCtrl_key2_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_key2_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key2_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_key2_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_key2) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key2 & ~S10_PNLCtrl_key2_non_bursting_master_requests))
          S10_PNLCtrl_key2_slavearbiterlockenable <= |S10_PNLCtrl_key2_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/key2 arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_key2_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key2_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_key2_slavearbiterlockenable2 = |S10_PNLCtrl_key2_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/key2 arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_key2_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key2_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_key2_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_key2 = H00_SEM51Host_requests_S10_PNLCtrl_key2;
  //S10_PNLCtrl_key2_writedata mux, which is an e_mux
  assign S10_PNLCtrl_key2_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_key2 = H00_SEM51Host_qualified_request_S10_PNLCtrl_key2;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/key2, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_key2 = H00_SEM51Host_requests_S10_PNLCtrl_key2;

  //allow new arb cycle for S10_PNLCtrl/key2, which is an e_assign
  assign S10_PNLCtrl_key2_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_key2_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_key2_master_qreq_vector = 1;

  //S10_PNLCtrl_key2_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key2_firsttransfer = S10_PNLCtrl_key2_begins_xfer ? S10_PNLCtrl_key2_unreg_firsttransfer : S10_PNLCtrl_key2_reg_firsttransfer;

  //S10_PNLCtrl_key2_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key2_unreg_firsttransfer = ~(S10_PNLCtrl_key2_slavearbiterlockenable & S10_PNLCtrl_key2_any_continuerequest);

  //S10_PNLCtrl_key2_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key2_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_key2_begins_xfer)
          S10_PNLCtrl_key2_reg_firsttransfer <= S10_PNLCtrl_key2_unreg_firsttransfer;
    end


  //S10_PNLCtrl_key2_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_key2_beginbursttransfer_internal = S10_PNLCtrl_key2_begins_xfer;

  //~S10_PNLCtrl_key2_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_key2_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_key2 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_key2_pretend_byte_enable);

  //d1_S10_PNLCtrl_key2_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_key2_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_key2_end_xfer <= S10_PNLCtrl_key2_end_xfer;
    end


  //S10_PNLCtrl_key2_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_key2_waits_for_read = S10_PNLCtrl_key2_in_a_read_cycle & ~S10_PNLCtrl_key2_waitrequest_n_from_sa;

  //S10_PNLCtrl_key2_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key2_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key2 & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_key2_in_a_read_cycle;

  //S10_PNLCtrl_key2_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_key2_waits_for_write = S10_PNLCtrl_key2_in_a_write_cycle & ~S10_PNLCtrl_key2_waitrequest_n_from_sa;

  //S10_PNLCtrl_key2_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key2_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key2 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_key2_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_key2_counter = 0;
  //S10_PNLCtrl_key2_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_key2_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_key2)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/key2 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S10_PNLCtrl_key3_arbitrator (
                                     // inputs:
                                      H00_SEM51Host_m0_address_to_slave,
                                      H00_SEM51Host_m0_chipselect_n,
                                      H00_SEM51Host_m0_read_n,
                                      H00_SEM51Host_m0_write_n,
                                      H00_SEM51Host_m0_writedata,
                                      S10_PNLCtrl_key3_readdata,
                                      S10_PNLCtrl_key3_waitrequest_n,
                                      clk,
                                      reset_n,

                                     // outputs:
                                      H00_SEM51Host_granted_S10_PNLCtrl_key3,
                                      H00_SEM51Host_qualified_request_S10_PNLCtrl_key3,
                                      H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3,
                                      H00_SEM51Host_requests_S10_PNLCtrl_key3,
                                      S10_PNLCtrl_key3_readdata_from_sa,
                                      S10_PNLCtrl_key3_waitrequest_n_from_sa,
                                      S10_PNLCtrl_key3_write_n,
                                      S10_PNLCtrl_key3_writedata,
                                      d1_S10_PNLCtrl_key3_end_xfer
                                   )
;

  output           H00_SEM51Host_granted_S10_PNLCtrl_key3;
  output           H00_SEM51Host_qualified_request_S10_PNLCtrl_key3;
  output           H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3;
  output           H00_SEM51Host_requests_S10_PNLCtrl_key3;
  output  [  7: 0] S10_PNLCtrl_key3_readdata_from_sa;
  output           S10_PNLCtrl_key3_waitrequest_n_from_sa;
  output           S10_PNLCtrl_key3_write_n;
  output  [  7: 0] S10_PNLCtrl_key3_writedata;
  output           d1_S10_PNLCtrl_key3_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S10_PNLCtrl_key3_readdata;
  input            S10_PNLCtrl_key3_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_saved_grant_S10_PNLCtrl_key3;
  wire             S10_PNLCtrl_key3_allgrants;
  wire             S10_PNLCtrl_key3_allow_new_arb_cycle;
  wire             S10_PNLCtrl_key3_any_bursting_master_saved_grant;
  wire             S10_PNLCtrl_key3_any_continuerequest;
  wire             S10_PNLCtrl_key3_arb_counter_enable;
  reg              S10_PNLCtrl_key3_arb_share_counter;
  wire             S10_PNLCtrl_key3_arb_share_counter_next_value;
  wire             S10_PNLCtrl_key3_arb_share_set_values;
  wire             S10_PNLCtrl_key3_beginbursttransfer_internal;
  wire             S10_PNLCtrl_key3_begins_xfer;
  wire             S10_PNLCtrl_key3_end_xfer;
  wire             S10_PNLCtrl_key3_firsttransfer;
  wire             S10_PNLCtrl_key3_grant_vector;
  wire             S10_PNLCtrl_key3_in_a_read_cycle;
  wire             S10_PNLCtrl_key3_in_a_write_cycle;
  wire             S10_PNLCtrl_key3_master_qreq_vector;
  wire             S10_PNLCtrl_key3_non_bursting_master_requests;
  wire             S10_PNLCtrl_key3_pretend_byte_enable;
  wire    [  7: 0] S10_PNLCtrl_key3_readdata_from_sa;
  reg              S10_PNLCtrl_key3_reg_firsttransfer;
  reg              S10_PNLCtrl_key3_slavearbiterlockenable;
  wire             S10_PNLCtrl_key3_slavearbiterlockenable2;
  wire             S10_PNLCtrl_key3_unreg_firsttransfer;
  wire             S10_PNLCtrl_key3_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key3_waits_for_read;
  wire             S10_PNLCtrl_key3_waits_for_write;
  wire             S10_PNLCtrl_key3_write_n;
  wire    [  7: 0] S10_PNLCtrl_key3_writedata;
  reg              d1_S10_PNLCtrl_key3_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S10_PNLCtrl_key3;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S10_PNLCtrl_key3_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S10_PNLCtrl_key3_end_xfer;
    end


  assign S10_PNLCtrl_key3_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S10_PNLCtrl_key3));
  //assign S10_PNLCtrl_key3_readdata_from_sa = S10_PNLCtrl_key3_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key3_readdata_from_sa = S10_PNLCtrl_key3_readdata;

  assign H00_SEM51Host_requests_S10_PNLCtrl_key3 = ({H00_SEM51Host_m0_address_to_slave[12 : 0] } == 13'h14) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S10_PNLCtrl_key3_waitrequest_n_from_sa = S10_PNLCtrl_key3_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S10_PNLCtrl_key3_waitrequest_n_from_sa = S10_PNLCtrl_key3_waitrequest_n;

  //S10_PNLCtrl_key3_arb_share_counter set values, which is an e_mux
  assign S10_PNLCtrl_key3_arb_share_set_values = 1;

  //S10_PNLCtrl_key3_non_bursting_master_requests mux, which is an e_mux
  assign S10_PNLCtrl_key3_non_bursting_master_requests = H00_SEM51Host_requests_S10_PNLCtrl_key3;

  //S10_PNLCtrl_key3_any_bursting_master_saved_grant mux, which is an e_mux
  assign S10_PNLCtrl_key3_any_bursting_master_saved_grant = 0;

  //S10_PNLCtrl_key3_arb_share_counter_next_value assignment, which is an e_assign
  assign S10_PNLCtrl_key3_arb_share_counter_next_value = S10_PNLCtrl_key3_firsttransfer ? (S10_PNLCtrl_key3_arb_share_set_values - 1) : |S10_PNLCtrl_key3_arb_share_counter ? (S10_PNLCtrl_key3_arb_share_counter - 1) : 0;

  //S10_PNLCtrl_key3_allgrants all slave grants, which is an e_mux
  assign S10_PNLCtrl_key3_allgrants = |S10_PNLCtrl_key3_grant_vector;

  //S10_PNLCtrl_key3_end_xfer assignment, which is an e_assign
  assign S10_PNLCtrl_key3_end_xfer = ~(S10_PNLCtrl_key3_waits_for_read | S10_PNLCtrl_key3_waits_for_write);

  //end_xfer_arb_share_counter_term_S10_PNLCtrl_key3 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S10_PNLCtrl_key3 = S10_PNLCtrl_key3_end_xfer & (~S10_PNLCtrl_key3_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S10_PNLCtrl_key3_arb_share_counter arbitration counter enable, which is an e_assign
  assign S10_PNLCtrl_key3_arb_counter_enable = (end_xfer_arb_share_counter_term_S10_PNLCtrl_key3 & S10_PNLCtrl_key3_allgrants) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key3 & ~S10_PNLCtrl_key3_non_bursting_master_requests);

  //S10_PNLCtrl_key3_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key3_arb_share_counter <= 0;
      else if (S10_PNLCtrl_key3_arb_counter_enable)
          S10_PNLCtrl_key3_arb_share_counter <= S10_PNLCtrl_key3_arb_share_counter_next_value;
    end


  //S10_PNLCtrl_key3_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key3_slavearbiterlockenable <= 0;
      else if ((|S10_PNLCtrl_key3_master_qreq_vector & end_xfer_arb_share_counter_term_S10_PNLCtrl_key3) | (end_xfer_arb_share_counter_term_S10_PNLCtrl_key3 & ~S10_PNLCtrl_key3_non_bursting_master_requests))
          S10_PNLCtrl_key3_slavearbiterlockenable <= |S10_PNLCtrl_key3_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S10_PNLCtrl/key3 arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S10_PNLCtrl_key3_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key3_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S10_PNLCtrl_key3_slavearbiterlockenable2 = |S10_PNLCtrl_key3_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S10_PNLCtrl/key3 arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S10_PNLCtrl_key3_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S10_PNLCtrl_key3_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S10_PNLCtrl_key3_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S10_PNLCtrl_key3 = H00_SEM51Host_requests_S10_PNLCtrl_key3;
  //S10_PNLCtrl_key3_writedata mux, which is an e_mux
  assign S10_PNLCtrl_key3_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S10_PNLCtrl_key3 = H00_SEM51Host_qualified_request_S10_PNLCtrl_key3;

  //H00_SEM51Host/m0 saved-grant S10_PNLCtrl/key3, which is an e_assign
  assign H00_SEM51Host_saved_grant_S10_PNLCtrl_key3 = H00_SEM51Host_requests_S10_PNLCtrl_key3;

  //allow new arb cycle for S10_PNLCtrl/key3, which is an e_assign
  assign S10_PNLCtrl_key3_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S10_PNLCtrl_key3_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S10_PNLCtrl_key3_master_qreq_vector = 1;

  //S10_PNLCtrl_key3_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key3_firsttransfer = S10_PNLCtrl_key3_begins_xfer ? S10_PNLCtrl_key3_unreg_firsttransfer : S10_PNLCtrl_key3_reg_firsttransfer;

  //S10_PNLCtrl_key3_unreg_firsttransfer first transaction, which is an e_assign
  assign S10_PNLCtrl_key3_unreg_firsttransfer = ~(S10_PNLCtrl_key3_slavearbiterlockenable & S10_PNLCtrl_key3_any_continuerequest);

  //S10_PNLCtrl_key3_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S10_PNLCtrl_key3_reg_firsttransfer <= 1'b1;
      else if (S10_PNLCtrl_key3_begins_xfer)
          S10_PNLCtrl_key3_reg_firsttransfer <= S10_PNLCtrl_key3_unreg_firsttransfer;
    end


  //S10_PNLCtrl_key3_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S10_PNLCtrl_key3_beginbursttransfer_internal = S10_PNLCtrl_key3_begins_xfer;

  //~S10_PNLCtrl_key3_write_n assignment, which is an e_mux
  assign S10_PNLCtrl_key3_write_n = ~(((H00_SEM51Host_granted_S10_PNLCtrl_key3 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S10_PNLCtrl_key3_pretend_byte_enable);

  //d1_S10_PNLCtrl_key3_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S10_PNLCtrl_key3_end_xfer <= 1;
      else 
        d1_S10_PNLCtrl_key3_end_xfer <= S10_PNLCtrl_key3_end_xfer;
    end


  //S10_PNLCtrl_key3_waits_for_read in a cycle, which is an e_mux
  assign S10_PNLCtrl_key3_waits_for_read = S10_PNLCtrl_key3_in_a_read_cycle & ~S10_PNLCtrl_key3_waitrequest_n_from_sa;

  //S10_PNLCtrl_key3_in_a_read_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key3_in_a_read_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key3 & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S10_PNLCtrl_key3_in_a_read_cycle;

  //S10_PNLCtrl_key3_waits_for_write in a cycle, which is an e_mux
  assign S10_PNLCtrl_key3_waits_for_write = S10_PNLCtrl_key3_in_a_write_cycle & ~S10_PNLCtrl_key3_waitrequest_n_from_sa;

  //S10_PNLCtrl_key3_in_a_write_cycle assignment, which is an e_assign
  assign S10_PNLCtrl_key3_in_a_write_cycle = H00_SEM51Host_granted_S10_PNLCtrl_key3 & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S10_PNLCtrl_key3_in_a_write_cycle;

  assign wait_for_S10_PNLCtrl_key3_counter = 0;
  //S10_PNLCtrl_key3_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S10_PNLCtrl_key3_pretend_byte_enable = (H00_SEM51Host_granted_S10_PNLCtrl_key3)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S10_PNLCtrl/key3 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S11_T6963_LCD_lcd_arbitrator (
                                      // inputs:
                                       H00_SEM51Host_m0_address_to_slave,
                                       H00_SEM51Host_m0_chipselect_n,
                                       H00_SEM51Host_m0_read_n,
                                       H00_SEM51Host_m0_write_n,
                                       H00_SEM51Host_m0_writedata,
                                       S11_T6963_LCD_lcd_readdata,
                                       S11_T6963_LCD_lcd_waitrequest_n,
                                       clk,
                                       reset_n,

                                      // outputs:
                                       H00_SEM51Host_granted_S11_T6963_LCD_lcd,
                                       H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd,
                                       H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd,
                                       H00_SEM51Host_requests_S11_T6963_LCD_lcd,
                                       S11_T6963_LCD_lcd_address,
                                       S11_T6963_LCD_lcd_chipselect_n,
                                       S11_T6963_LCD_lcd_read_n,
                                       S11_T6963_LCD_lcd_readdata_from_sa,
                                       S11_T6963_LCD_lcd_reset_n,
                                       S11_T6963_LCD_lcd_waitrequest_n_from_sa,
                                       S11_T6963_LCD_lcd_write_n,
                                       S11_T6963_LCD_lcd_writedata,
                                       d1_S11_T6963_LCD_lcd_end_xfer
                                    )
;

  output           H00_SEM51Host_granted_S11_T6963_LCD_lcd;
  output           H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd;
  output           H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd;
  output           H00_SEM51Host_requests_S11_T6963_LCD_lcd;
  output           S11_T6963_LCD_lcd_address;
  output           S11_T6963_LCD_lcd_chipselect_n;
  output           S11_T6963_LCD_lcd_read_n;
  output  [  7: 0] S11_T6963_LCD_lcd_readdata_from_sa;
  output           S11_T6963_LCD_lcd_reset_n;
  output           S11_T6963_LCD_lcd_waitrequest_n_from_sa;
  output           S11_T6963_LCD_lcd_write_n;
  output  [  7: 0] S11_T6963_LCD_lcd_writedata;
  output           d1_S11_T6963_LCD_lcd_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input   [  7: 0] S11_T6963_LCD_lcd_readdata;
  input            S11_T6963_LCD_lcd_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_requests_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_saved_grant_S11_T6963_LCD_lcd;
  wire             S11_T6963_LCD_lcd_address;
  wire             S11_T6963_LCD_lcd_allgrants;
  wire             S11_T6963_LCD_lcd_allow_new_arb_cycle;
  wire             S11_T6963_LCD_lcd_any_bursting_master_saved_grant;
  wire             S11_T6963_LCD_lcd_any_continuerequest;
  wire             S11_T6963_LCD_lcd_arb_counter_enable;
  reg              S11_T6963_LCD_lcd_arb_share_counter;
  wire             S11_T6963_LCD_lcd_arb_share_counter_next_value;
  wire             S11_T6963_LCD_lcd_arb_share_set_values;
  wire             S11_T6963_LCD_lcd_beginbursttransfer_internal;
  wire             S11_T6963_LCD_lcd_begins_xfer;
  wire             S11_T6963_LCD_lcd_chipselect_n;
  wire             S11_T6963_LCD_lcd_end_xfer;
  wire             S11_T6963_LCD_lcd_firsttransfer;
  wire             S11_T6963_LCD_lcd_grant_vector;
  wire             S11_T6963_LCD_lcd_in_a_read_cycle;
  wire             S11_T6963_LCD_lcd_in_a_write_cycle;
  wire             S11_T6963_LCD_lcd_master_qreq_vector;
  wire             S11_T6963_LCD_lcd_non_bursting_master_requests;
  wire             S11_T6963_LCD_lcd_pretend_byte_enable;
  wire             S11_T6963_LCD_lcd_read_n;
  wire    [  7: 0] S11_T6963_LCD_lcd_readdata_from_sa;
  reg              S11_T6963_LCD_lcd_reg_firsttransfer;
  wire             S11_T6963_LCD_lcd_reset_n;
  reg              S11_T6963_LCD_lcd_slavearbiterlockenable;
  wire             S11_T6963_LCD_lcd_slavearbiterlockenable2;
  wire             S11_T6963_LCD_lcd_unreg_firsttransfer;
  wire             S11_T6963_LCD_lcd_waitrequest_n_from_sa;
  wire             S11_T6963_LCD_lcd_waits_for_read;
  wire             S11_T6963_LCD_lcd_waits_for_write;
  wire             S11_T6963_LCD_lcd_write_n;
  wire    [  7: 0] S11_T6963_LCD_lcd_writedata;
  reg              d1_S11_T6963_LCD_lcd_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S11_T6963_LCD_lcd_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S11_T6963_LCD_lcd_end_xfer;
    end


  assign S11_T6963_LCD_lcd_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd));
  //assign S11_T6963_LCD_lcd_readdata_from_sa = S11_T6963_LCD_lcd_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S11_T6963_LCD_lcd_readdata_from_sa = S11_T6963_LCD_lcd_readdata;

  assign H00_SEM51Host_requests_S11_T6963_LCD_lcd = ({H00_SEM51Host_m0_address_to_slave[12 : 1] , 1'b0} == 13'h20) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S11_T6963_LCD_lcd_waitrequest_n_from_sa = S11_T6963_LCD_lcd_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S11_T6963_LCD_lcd_waitrequest_n_from_sa = S11_T6963_LCD_lcd_waitrequest_n;

  //S11_T6963_LCD_lcd_arb_share_counter set values, which is an e_mux
  assign S11_T6963_LCD_lcd_arb_share_set_values = 1;

  //S11_T6963_LCD_lcd_non_bursting_master_requests mux, which is an e_mux
  assign S11_T6963_LCD_lcd_non_bursting_master_requests = H00_SEM51Host_requests_S11_T6963_LCD_lcd;

  //S11_T6963_LCD_lcd_any_bursting_master_saved_grant mux, which is an e_mux
  assign S11_T6963_LCD_lcd_any_bursting_master_saved_grant = 0;

  //S11_T6963_LCD_lcd_arb_share_counter_next_value assignment, which is an e_assign
  assign S11_T6963_LCD_lcd_arb_share_counter_next_value = S11_T6963_LCD_lcd_firsttransfer ? (S11_T6963_LCD_lcd_arb_share_set_values - 1) : |S11_T6963_LCD_lcd_arb_share_counter ? (S11_T6963_LCD_lcd_arb_share_counter - 1) : 0;

  //S11_T6963_LCD_lcd_allgrants all slave grants, which is an e_mux
  assign S11_T6963_LCD_lcd_allgrants = |S11_T6963_LCD_lcd_grant_vector;

  //S11_T6963_LCD_lcd_end_xfer assignment, which is an e_assign
  assign S11_T6963_LCD_lcd_end_xfer = ~(S11_T6963_LCD_lcd_waits_for_read | S11_T6963_LCD_lcd_waits_for_write);

  //end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd = S11_T6963_LCD_lcd_end_xfer & (~S11_T6963_LCD_lcd_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S11_T6963_LCD_lcd_arb_share_counter arbitration counter enable, which is an e_assign
  assign S11_T6963_LCD_lcd_arb_counter_enable = (end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd & S11_T6963_LCD_lcd_allgrants) | (end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd & ~S11_T6963_LCD_lcd_non_bursting_master_requests);

  //S11_T6963_LCD_lcd_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S11_T6963_LCD_lcd_arb_share_counter <= 0;
      else if (S11_T6963_LCD_lcd_arb_counter_enable)
          S11_T6963_LCD_lcd_arb_share_counter <= S11_T6963_LCD_lcd_arb_share_counter_next_value;
    end


  //S11_T6963_LCD_lcd_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S11_T6963_LCD_lcd_slavearbiterlockenable <= 0;
      else if ((|S11_T6963_LCD_lcd_master_qreq_vector & end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd) | (end_xfer_arb_share_counter_term_S11_T6963_LCD_lcd & ~S11_T6963_LCD_lcd_non_bursting_master_requests))
          S11_T6963_LCD_lcd_slavearbiterlockenable <= |S11_T6963_LCD_lcd_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S11_T6963_LCD/lcd arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S11_T6963_LCD_lcd_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S11_T6963_LCD_lcd_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S11_T6963_LCD_lcd_slavearbiterlockenable2 = |S11_T6963_LCD_lcd_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S11_T6963_LCD/lcd arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S11_T6963_LCD_lcd_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S11_T6963_LCD_lcd_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S11_T6963_LCD_lcd_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd = H00_SEM51Host_requests_S11_T6963_LCD_lcd;
  //S11_T6963_LCD_lcd_writedata mux, which is an e_mux
  assign S11_T6963_LCD_lcd_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S11_T6963_LCD_lcd = H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd;

  //H00_SEM51Host/m0 saved-grant S11_T6963_LCD/lcd, which is an e_assign
  assign H00_SEM51Host_saved_grant_S11_T6963_LCD_lcd = H00_SEM51Host_requests_S11_T6963_LCD_lcd;

  //allow new arb cycle for S11_T6963_LCD/lcd, which is an e_assign
  assign S11_T6963_LCD_lcd_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S11_T6963_LCD_lcd_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S11_T6963_LCD_lcd_master_qreq_vector = 1;

  //S11_T6963_LCD_lcd_reset_n assignment, which is an e_assign
  assign S11_T6963_LCD_lcd_reset_n = reset_n;

  assign S11_T6963_LCD_lcd_chipselect_n = ~H00_SEM51Host_granted_S11_T6963_LCD_lcd;
  //S11_T6963_LCD_lcd_firsttransfer first transaction, which is an e_assign
  assign S11_T6963_LCD_lcd_firsttransfer = S11_T6963_LCD_lcd_begins_xfer ? S11_T6963_LCD_lcd_unreg_firsttransfer : S11_T6963_LCD_lcd_reg_firsttransfer;

  //S11_T6963_LCD_lcd_unreg_firsttransfer first transaction, which is an e_assign
  assign S11_T6963_LCD_lcd_unreg_firsttransfer = ~(S11_T6963_LCD_lcd_slavearbiterlockenable & S11_T6963_LCD_lcd_any_continuerequest);

  //S11_T6963_LCD_lcd_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S11_T6963_LCD_lcd_reg_firsttransfer <= 1'b1;
      else if (S11_T6963_LCD_lcd_begins_xfer)
          S11_T6963_LCD_lcd_reg_firsttransfer <= S11_T6963_LCD_lcd_unreg_firsttransfer;
    end


  //S11_T6963_LCD_lcd_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S11_T6963_LCD_lcd_beginbursttransfer_internal = S11_T6963_LCD_lcd_begins_xfer;

  //~S11_T6963_LCD_lcd_read_n assignment, which is an e_mux
  assign S11_T6963_LCD_lcd_read_n = ~(H00_SEM51Host_granted_S11_T6963_LCD_lcd & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n));

  //~S11_T6963_LCD_lcd_write_n assignment, which is an e_mux
  assign S11_T6963_LCD_lcd_write_n = ~(((H00_SEM51Host_granted_S11_T6963_LCD_lcd & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S11_T6963_LCD_lcd_pretend_byte_enable);

  //S11_T6963_LCD_lcd_address mux, which is an e_mux
  assign S11_T6963_LCD_lcd_address = H00_SEM51Host_m0_address_to_slave;

  //d1_S11_T6963_LCD_lcd_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S11_T6963_LCD_lcd_end_xfer <= 1;
      else 
        d1_S11_T6963_LCD_lcd_end_xfer <= S11_T6963_LCD_lcd_end_xfer;
    end


  //S11_T6963_LCD_lcd_waits_for_read in a cycle, which is an e_mux
  assign S11_T6963_LCD_lcd_waits_for_read = S11_T6963_LCD_lcd_in_a_read_cycle & ~S11_T6963_LCD_lcd_waitrequest_n_from_sa;

  //S11_T6963_LCD_lcd_in_a_read_cycle assignment, which is an e_assign
  assign S11_T6963_LCD_lcd_in_a_read_cycle = H00_SEM51Host_granted_S11_T6963_LCD_lcd & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S11_T6963_LCD_lcd_in_a_read_cycle;

  //S11_T6963_LCD_lcd_waits_for_write in a cycle, which is an e_mux
  assign S11_T6963_LCD_lcd_waits_for_write = S11_T6963_LCD_lcd_in_a_write_cycle & ~S11_T6963_LCD_lcd_waitrequest_n_from_sa;

  //S11_T6963_LCD_lcd_in_a_write_cycle assignment, which is an e_assign
  assign S11_T6963_LCD_lcd_in_a_write_cycle = H00_SEM51Host_granted_S11_T6963_LCD_lcd & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S11_T6963_LCD_lcd_in_a_write_cycle;

  assign wait_for_S11_T6963_LCD_lcd_counter = 0;
  //S11_T6963_LCD_lcd_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S11_T6963_LCD_lcd_pretend_byte_enable = (H00_SEM51Host_granted_S11_T6963_LCD_lcd)? {1 {1'b1}} :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S11_T6963_LCD/lcd enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module S20_ATA8_Interface_ata_arbitrator (
                                           // inputs:
                                            H00_SEM51Host_m0_address_to_slave,
                                            H00_SEM51Host_m0_chipselect_n,
                                            H00_SEM51Host_m0_read_n,
                                            H00_SEM51Host_m0_write_n,
                                            H00_SEM51Host_m0_writedata,
                                            S20_ATA8_Interface_ata_irq,
                                            S20_ATA8_Interface_ata_readdata,
                                            S20_ATA8_Interface_ata_waitrequest_n,
                                            clk,
                                            reset_n,

                                           // outputs:
                                            H00_SEM51Host_granted_S20_ATA8_Interface_ata,
                                            H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata,
                                            H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata,
                                            H00_SEM51Host_requests_S20_ATA8_Interface_ata,
                                            S20_ATA8_Interface_ata_address,
                                            S20_ATA8_Interface_ata_chipselect_n,
                                            S20_ATA8_Interface_ata_irq_from_sa,
                                            S20_ATA8_Interface_ata_read_n,
                                            S20_ATA8_Interface_ata_readdata_from_sa,
                                            S20_ATA8_Interface_ata_reset_n,
                                            S20_ATA8_Interface_ata_waitrequest_n_from_sa,
                                            S20_ATA8_Interface_ata_write_n,
                                            S20_ATA8_Interface_ata_writedata,
                                            d1_S20_ATA8_Interface_ata_end_xfer
                                         )
;

  output           H00_SEM51Host_granted_S20_ATA8_Interface_ata;
  output           H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata;
  output           H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata;
  output           H00_SEM51Host_requests_S20_ATA8_Interface_ata;
  output  [  4: 0] S20_ATA8_Interface_ata_address;
  output           S20_ATA8_Interface_ata_chipselect_n;
  output           S20_ATA8_Interface_ata_irq_from_sa;
  output           S20_ATA8_Interface_ata_read_n;
  output  [  7: 0] S20_ATA8_Interface_ata_readdata_from_sa;
  output           S20_ATA8_Interface_ata_reset_n;
  output           S20_ATA8_Interface_ata_waitrequest_n_from_sa;
  output           S20_ATA8_Interface_ata_write_n;
  output  [  7: 0] S20_ATA8_Interface_ata_writedata;
  output           d1_S20_ATA8_Interface_ata_end_xfer;
  input   [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  input            H00_SEM51Host_m0_chipselect_n;
  input            H00_SEM51Host_m0_read_n;
  input            H00_SEM51Host_m0_write_n;
  input   [  7: 0] H00_SEM51Host_m0_writedata;
  input            S20_ATA8_Interface_ata_irq;
  input   [  7: 0] S20_ATA8_Interface_ata_readdata;
  input            S20_ATA8_Interface_ata_waitrequest_n;
  input            clk;
  input            reset_n;

  wire             H00_SEM51Host_granted_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_m0_arbiterlock;
  wire             H00_SEM51Host_m0_arbiterlock2;
  wire             H00_SEM51Host_m0_continuerequest;
  wire             H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_requests_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_saved_grant_S20_ATA8_Interface_ata;
  wire    [  4: 0] S20_ATA8_Interface_ata_address;
  wire             S20_ATA8_Interface_ata_allgrants;
  wire             S20_ATA8_Interface_ata_allow_new_arb_cycle;
  wire             S20_ATA8_Interface_ata_any_bursting_master_saved_grant;
  wire             S20_ATA8_Interface_ata_any_continuerequest;
  wire             S20_ATA8_Interface_ata_arb_counter_enable;
  reg              S20_ATA8_Interface_ata_arb_share_counter;
  wire             S20_ATA8_Interface_ata_arb_share_counter_next_value;
  wire             S20_ATA8_Interface_ata_arb_share_set_values;
  wire             S20_ATA8_Interface_ata_beginbursttransfer_internal;
  wire             S20_ATA8_Interface_ata_begins_xfer;
  wire             S20_ATA8_Interface_ata_chipselect_n;
  wire             S20_ATA8_Interface_ata_end_xfer;
  wire             S20_ATA8_Interface_ata_firsttransfer;
  wire             S20_ATA8_Interface_ata_grant_vector;
  wire             S20_ATA8_Interface_ata_in_a_read_cycle;
  wire             S20_ATA8_Interface_ata_in_a_write_cycle;
  wire             S20_ATA8_Interface_ata_irq_from_sa;
  wire             S20_ATA8_Interface_ata_master_qreq_vector;
  wire             S20_ATA8_Interface_ata_non_bursting_master_requests;
  wire             S20_ATA8_Interface_ata_pretend_byte_enable;
  wire             S20_ATA8_Interface_ata_read_n;
  wire    [  7: 0] S20_ATA8_Interface_ata_readdata_from_sa;
  reg              S20_ATA8_Interface_ata_reg_firsttransfer;
  wire             S20_ATA8_Interface_ata_reset_n;
  reg              S20_ATA8_Interface_ata_slavearbiterlockenable;
  wire             S20_ATA8_Interface_ata_slavearbiterlockenable2;
  wire             S20_ATA8_Interface_ata_unreg_firsttransfer;
  wire             S20_ATA8_Interface_ata_waitrequest_n_from_sa;
  wire             S20_ATA8_Interface_ata_waits_for_read;
  wire             S20_ATA8_Interface_ata_waits_for_write;
  wire             S20_ATA8_Interface_ata_write_n;
  wire    [  7: 0] S20_ATA8_Interface_ata_writedata;
  reg              d1_S20_ATA8_Interface_ata_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_S20_ATA8_Interface_ata_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~S20_ATA8_Interface_ata_end_xfer;
    end


  assign S20_ATA8_Interface_ata_begins_xfer = ~d1_reasons_to_wait & ((H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata));
  //assign S20_ATA8_Interface_ata_readdata_from_sa = S20_ATA8_Interface_ata_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S20_ATA8_Interface_ata_readdata_from_sa = S20_ATA8_Interface_ata_readdata;

  assign H00_SEM51Host_requests_S20_ATA8_Interface_ata = ({H00_SEM51Host_m0_address_to_slave[12 : 5] , 5'b0} == 13'h40) & ~H00_SEM51Host_m0_chipselect_n;
  //assign S20_ATA8_Interface_ata_waitrequest_n_from_sa = S20_ATA8_Interface_ata_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S20_ATA8_Interface_ata_waitrequest_n_from_sa = S20_ATA8_Interface_ata_waitrequest_n;

  //S20_ATA8_Interface_ata_arb_share_counter set values, which is an e_mux
  assign S20_ATA8_Interface_ata_arb_share_set_values = 1;

  //S20_ATA8_Interface_ata_non_bursting_master_requests mux, which is an e_mux
  assign S20_ATA8_Interface_ata_non_bursting_master_requests = H00_SEM51Host_requests_S20_ATA8_Interface_ata;

  //S20_ATA8_Interface_ata_any_bursting_master_saved_grant mux, which is an e_mux
  assign S20_ATA8_Interface_ata_any_bursting_master_saved_grant = 0;

  //S20_ATA8_Interface_ata_arb_share_counter_next_value assignment, which is an e_assign
  assign S20_ATA8_Interface_ata_arb_share_counter_next_value = S20_ATA8_Interface_ata_firsttransfer ? (S20_ATA8_Interface_ata_arb_share_set_values - 1) : |S20_ATA8_Interface_ata_arb_share_counter ? (S20_ATA8_Interface_ata_arb_share_counter - 1) : 0;

  //S20_ATA8_Interface_ata_allgrants all slave grants, which is an e_mux
  assign S20_ATA8_Interface_ata_allgrants = |S20_ATA8_Interface_ata_grant_vector;

  //S20_ATA8_Interface_ata_end_xfer assignment, which is an e_assign
  assign S20_ATA8_Interface_ata_end_xfer = ~(S20_ATA8_Interface_ata_waits_for_read | S20_ATA8_Interface_ata_waits_for_write);

  //end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata = S20_ATA8_Interface_ata_end_xfer & (~S20_ATA8_Interface_ata_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //S20_ATA8_Interface_ata_arb_share_counter arbitration counter enable, which is an e_assign
  assign S20_ATA8_Interface_ata_arb_counter_enable = (end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata & S20_ATA8_Interface_ata_allgrants) | (end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata & ~S20_ATA8_Interface_ata_non_bursting_master_requests);

  //S20_ATA8_Interface_ata_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S20_ATA8_Interface_ata_arb_share_counter <= 0;
      else if (S20_ATA8_Interface_ata_arb_counter_enable)
          S20_ATA8_Interface_ata_arb_share_counter <= S20_ATA8_Interface_ata_arb_share_counter_next_value;
    end


  //S20_ATA8_Interface_ata_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S20_ATA8_Interface_ata_slavearbiterlockenable <= 0;
      else if ((|S20_ATA8_Interface_ata_master_qreq_vector & end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata) | (end_xfer_arb_share_counter_term_S20_ATA8_Interface_ata & ~S20_ATA8_Interface_ata_non_bursting_master_requests))
          S20_ATA8_Interface_ata_slavearbiterlockenable <= |S20_ATA8_Interface_ata_arb_share_counter_next_value;
    end


  //H00_SEM51Host/m0 S20_ATA8_Interface/ata arbiterlock, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock = S20_ATA8_Interface_ata_slavearbiterlockenable & H00_SEM51Host_m0_continuerequest;

  //S20_ATA8_Interface_ata_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign S20_ATA8_Interface_ata_slavearbiterlockenable2 = |S20_ATA8_Interface_ata_arb_share_counter_next_value;

  //H00_SEM51Host/m0 S20_ATA8_Interface/ata arbiterlock2, which is an e_assign
  assign H00_SEM51Host_m0_arbiterlock2 = S20_ATA8_Interface_ata_slavearbiterlockenable2 & H00_SEM51Host_m0_continuerequest;

  //S20_ATA8_Interface_ata_any_continuerequest at least one master continues requesting, which is an e_assign
  assign S20_ATA8_Interface_ata_any_continuerequest = 1;

  //H00_SEM51Host_m0_continuerequest continued request, which is an e_assign
  assign H00_SEM51Host_m0_continuerequest = 1;

  assign H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata = H00_SEM51Host_requests_S20_ATA8_Interface_ata;
  //S20_ATA8_Interface_ata_writedata mux, which is an e_mux
  assign S20_ATA8_Interface_ata_writedata = H00_SEM51Host_m0_writedata;

  //master is always granted when requested
  assign H00_SEM51Host_granted_S20_ATA8_Interface_ata = H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata;

  //H00_SEM51Host/m0 saved-grant S20_ATA8_Interface/ata, which is an e_assign
  assign H00_SEM51Host_saved_grant_S20_ATA8_Interface_ata = H00_SEM51Host_requests_S20_ATA8_Interface_ata;

  //allow new arb cycle for S20_ATA8_Interface/ata, which is an e_assign
  assign S20_ATA8_Interface_ata_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign S20_ATA8_Interface_ata_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign S20_ATA8_Interface_ata_master_qreq_vector = 1;

  //S20_ATA8_Interface_ata_reset_n assignment, which is an e_assign
  assign S20_ATA8_Interface_ata_reset_n = reset_n;

  assign S20_ATA8_Interface_ata_chipselect_n = ~H00_SEM51Host_granted_S20_ATA8_Interface_ata;
  //S20_ATA8_Interface_ata_firsttransfer first transaction, which is an e_assign
  assign S20_ATA8_Interface_ata_firsttransfer = S20_ATA8_Interface_ata_begins_xfer ? S20_ATA8_Interface_ata_unreg_firsttransfer : S20_ATA8_Interface_ata_reg_firsttransfer;

  //S20_ATA8_Interface_ata_unreg_firsttransfer first transaction, which is an e_assign
  assign S20_ATA8_Interface_ata_unreg_firsttransfer = ~(S20_ATA8_Interface_ata_slavearbiterlockenable & S20_ATA8_Interface_ata_any_continuerequest);

  //S20_ATA8_Interface_ata_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          S20_ATA8_Interface_ata_reg_firsttransfer <= 1'b1;
      else if (S20_ATA8_Interface_ata_begins_xfer)
          S20_ATA8_Interface_ata_reg_firsttransfer <= S20_ATA8_Interface_ata_unreg_firsttransfer;
    end


  //S20_ATA8_Interface_ata_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign S20_ATA8_Interface_ata_beginbursttransfer_internal = S20_ATA8_Interface_ata_begins_xfer;

  //~S20_ATA8_Interface_ata_read_n assignment, which is an e_mux
  assign S20_ATA8_Interface_ata_read_n = ~(H00_SEM51Host_granted_S20_ATA8_Interface_ata & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n));

  //~S20_ATA8_Interface_ata_write_n assignment, which is an e_mux
  assign S20_ATA8_Interface_ata_write_n = ~(((H00_SEM51Host_granted_S20_ATA8_Interface_ata & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n))) & S20_ATA8_Interface_ata_pretend_byte_enable);

  //S20_ATA8_Interface_ata_address mux, which is an e_mux
  assign S20_ATA8_Interface_ata_address = H00_SEM51Host_m0_address_to_slave;

  //d1_S20_ATA8_Interface_ata_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_S20_ATA8_Interface_ata_end_xfer <= 1;
      else 
        d1_S20_ATA8_Interface_ata_end_xfer <= S20_ATA8_Interface_ata_end_xfer;
    end


  //S20_ATA8_Interface_ata_waits_for_read in a cycle, which is an e_mux
  assign S20_ATA8_Interface_ata_waits_for_read = S20_ATA8_Interface_ata_in_a_read_cycle & ~S20_ATA8_Interface_ata_waitrequest_n_from_sa;

  //S20_ATA8_Interface_ata_in_a_read_cycle assignment, which is an e_assign
  assign S20_ATA8_Interface_ata_in_a_read_cycle = H00_SEM51Host_granted_S20_ATA8_Interface_ata & (~H00_SEM51Host_m0_read_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = S20_ATA8_Interface_ata_in_a_read_cycle;

  //S20_ATA8_Interface_ata_waits_for_write in a cycle, which is an e_mux
  assign S20_ATA8_Interface_ata_waits_for_write = S20_ATA8_Interface_ata_in_a_write_cycle & ~S20_ATA8_Interface_ata_waitrequest_n_from_sa;

  //S20_ATA8_Interface_ata_in_a_write_cycle assignment, which is an e_assign
  assign S20_ATA8_Interface_ata_in_a_write_cycle = H00_SEM51Host_granted_S20_ATA8_Interface_ata & (~H00_SEM51Host_m0_write_n & ~H00_SEM51Host_m0_chipselect_n);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = S20_ATA8_Interface_ata_in_a_write_cycle;

  assign wait_for_S20_ATA8_Interface_ata_counter = 0;
  //S20_ATA8_Interface_ata_pretend_byte_enable byte enable port mux, which is an e_mux
  assign S20_ATA8_Interface_ata_pretend_byte_enable = (H00_SEM51Host_granted_S20_ATA8_Interface_ata)? {1 {1'b1}} :
    -1;

  //assign S20_ATA8_Interface_ata_irq_from_sa = S20_ATA8_Interface_ata_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign S20_ATA8_Interface_ata_irq_from_sa = S20_ATA8_Interface_ata_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //S20_ATA8_Interface/ata enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module EXB51_MAIN_reset_MCU_CLK_domain_synch_module (
                                                      // inputs:
                                                       clk,
                                                       data_in,
                                                       reset_n,

                                                      // outputs:
                                                       data_out
                                                    )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module EXB51_MAIN (
                    // 1) global signals:
                     MCU_CLK,
                     reset_n,

                    // the_H00_SEM51Host
                     SEM_ADDR_to_the_H00_SEM51Host,
                     SEM_CINT_from_the_H00_SEM51Host,
                     SEM_CSN_to_the_H00_SEM51Host,
                     SEM_DATA_to_and_from_the_H00_SEM51Host,
                     SEM_INT00_from_the_H00_SEM51Host,
                     SEM_INT01_from_the_H00_SEM51Host,
                     SEM_INT02_from_the_H00_SEM51Host,
                     SEM_INT04_from_the_H00_SEM51Host,
                     SEM_INT05_from_the_H00_SEM51Host,
                     SEM_INT06_from_the_H00_SEM51Host,
                     SEM_OEN_to_the_H00_SEM51Host,
                     SEM_WAITN_from_the_H00_SEM51Host,
                     SEM_WEN_to_the_H00_SEM51Host,

                    // the_S01_Reset
                     BATFL_OUT_from_the_S01_Reset,
                     RESET_OUT_from_the_S01_Reset,

                    // the_S02_OptKey
                     OPT_IN_to_the_S02_OptKey,

                    // the_S03_IntrqKey
                     INT_KEY_to_the_S03_IntrqKey,

                    // the_S10_PNLCtrl
                     PNL_CLK_to_the_S10_PNLCtrl,
                     PNL_DI_to_the_S10_PNLCtrl,
                     PNL_DO_from_the_S10_PNLCtrl,
                     PNL_LE_to_the_S10_PNLCtrl,
                     PNL_STA_to_the_S10_PNLCtrl,

                    // the_S11_T6963_LCD
                     LCD_BUF_DIR_from_the_S11_T6963_LCD,
                     LCD_CTRL_from_the_S11_T6963_LCD,
                     LCD_DATA_to_and_from_the_S11_T6963_LCD,

                    // the_S20_ATA8_Interface
                     ATA_ADDR_from_the_S20_ATA8_Interface,
                     ATA_DATA_DIR_from_the_S20_ATA8_Interface,
                     ATA_DATA_to_and_from_the_S20_ATA8_Interface,
                     ATA_INTRQ_to_the_S20_ATA8_Interface,
                     ATA_OEN_from_the_S20_ATA8_Interface,
                     ATA_WAITN_to_the_S20_ATA8_Interface,
                     ATA_WEN_from_the_S20_ATA8_Interface
                  )
;

  output  [  4: 0] ATA_ADDR_from_the_S20_ATA8_Interface;
  output           ATA_DATA_DIR_from_the_S20_ATA8_Interface;
  inout   [ 15: 0] ATA_DATA_to_and_from_the_S20_ATA8_Interface;
  output           ATA_OEN_from_the_S20_ATA8_Interface;
  output           ATA_WEN_from_the_S20_ATA8_Interface;
  output           BATFL_OUT_from_the_S01_Reset;
  output           LCD_BUF_DIR_from_the_S11_T6963_LCD;
  output  [  3: 0] LCD_CTRL_from_the_S11_T6963_LCD;
  inout   [ 15: 0] LCD_DATA_to_and_from_the_S11_T6963_LCD;
  output           PNL_DO_from_the_S10_PNLCtrl;
  output           RESET_OUT_from_the_S01_Reset;
  output           SEM_CINT_from_the_H00_SEM51Host;
  inout   [ 15: 0] SEM_DATA_to_and_from_the_H00_SEM51Host;
  output           SEM_INT00_from_the_H00_SEM51Host;
  output           SEM_INT01_from_the_H00_SEM51Host;
  output           SEM_INT02_from_the_H00_SEM51Host;
  output           SEM_INT04_from_the_H00_SEM51Host;
  output           SEM_INT05_from_the_H00_SEM51Host;
  output           SEM_INT06_from_the_H00_SEM51Host;
  output           SEM_WAITN_from_the_H00_SEM51Host;
  input            ATA_INTRQ_to_the_S20_ATA8_Interface;
  input            ATA_WAITN_to_the_S20_ATA8_Interface;
  input            INT_KEY_to_the_S03_IntrqKey;
  input            MCU_CLK;
  input   [  3: 0] OPT_IN_to_the_S02_OptKey;
  input            PNL_CLK_to_the_S10_PNLCtrl;
  input            PNL_DI_to_the_S10_PNLCtrl;
  input            PNL_LE_to_the_S10_PNLCtrl;
  input            PNL_STA_to_the_S10_PNLCtrl;
  input   [ 12: 0] SEM_ADDR_to_the_H00_SEM51Host;
  input            SEM_CSN_to_the_H00_SEM51Host;
  input            SEM_OEN_to_the_H00_SEM51Host;
  input            SEM_WEN_to_the_H00_SEM51Host;
  input            reset_n;

  wire    [  4: 0] ATA_ADDR_from_the_S20_ATA8_Interface;
  wire             ATA_DATA_DIR_from_the_S20_ATA8_Interface;
  wire    [ 15: 0] ATA_DATA_to_and_from_the_S20_ATA8_Interface;
  wire             ATA_OEN_from_the_S20_ATA8_Interface;
  wire             ATA_WEN_from_the_S20_ATA8_Interface;
  wire             BATFL_OUT_from_the_S01_Reset;
  wire             H00_SEM51Host_granted_S00_ChipID_idout;
  wire             H00_SEM51Host_granted_S01_Reset_reset;
  wire             H00_SEM51Host_granted_S02_OptKey_optkey;
  wire             H00_SEM51Host_granted_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_granted_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_granted_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_granted_S20_ATA8_Interface_ata;
  wire    [ 12: 0] H00_SEM51Host_m0_address;
  wire    [ 12: 0] H00_SEM51Host_m0_address_to_slave;
  wire             H00_SEM51Host_m0_chipselect_n;
  wire    [  6: 0] H00_SEM51Host_m0_irq;
  wire             H00_SEM51Host_m0_read_n;
  wire    [  7: 0] H00_SEM51Host_m0_readdata;
  wire             H00_SEM51Host_m0_reset_n;
  wire             H00_SEM51Host_m0_waitrequest_n;
  wire             H00_SEM51Host_m0_write_n;
  wire    [  7: 0] H00_SEM51Host_m0_writedata;
  wire             H00_SEM51Host_qualified_request_S00_ChipID_idout;
  wire             H00_SEM51Host_qualified_request_S01_Reset_reset;
  wire             H00_SEM51Host_qualified_request_S02_OptKey_optkey;
  wire             H00_SEM51Host_qualified_request_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_qualified_request_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_read_data_valid_S00_ChipID_idout;
  wire             H00_SEM51Host_read_data_valid_S01_Reset_reset;
  wire             H00_SEM51Host_read_data_valid_S02_OptKey_optkey;
  wire             H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata;
  wire             H00_SEM51Host_requests_S00_ChipID_idout;
  wire             H00_SEM51Host_requests_S01_Reset_reset;
  wire             H00_SEM51Host_requests_S02_OptKey_optkey;
  wire             H00_SEM51Host_requests_S03_IntrqKey_intkey;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_addr;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_ctrl;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key0;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key1;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key2;
  wire             H00_SEM51Host_requests_S10_PNLCtrl_key3;
  wire             H00_SEM51Host_requests_S11_T6963_LCD_lcd;
  wire             H00_SEM51Host_requests_S20_ATA8_Interface_ata;
  wire             LCD_BUF_DIR_from_the_S11_T6963_LCD;
  wire    [  3: 0] LCD_CTRL_from_the_S11_T6963_LCD;
  wire    [ 15: 0] LCD_DATA_to_and_from_the_S11_T6963_LCD;
  wire             MCU_CLK_reset_n;
  wire             PNL_DO_from_the_S10_PNLCtrl;
  wire             RESET_OUT_from_the_S01_Reset;
  wire    [  7: 0] S00_ChipID_idout_readdata;
  wire    [  7: 0] S00_ChipID_idout_readdata_from_sa;
  wire             S00_ChipID_idout_reset_n;
  wire             S00_ChipID_idout_waitrequest_n;
  wire             S00_ChipID_idout_waitrequest_n_from_sa;
  wire             S01_Reset_reset_read_n;
  wire    [  7: 0] S01_Reset_reset_readdata;
  wire    [  7: 0] S01_Reset_reset_readdata_from_sa;
  wire             S01_Reset_reset_reset_n;
  wire             S01_Reset_reset_waitrequest_n;
  wire             S01_Reset_reset_waitrequest_n_from_sa;
  wire             S01_Reset_reset_write_n;
  wire    [  7: 0] S01_Reset_reset_writedata;
  wire    [  7: 0] S02_OptKey_optkey_readdata;
  wire    [  7: 0] S02_OptKey_optkey_readdata_from_sa;
  wire             S02_OptKey_optkey_reset_n;
  wire             S02_OptKey_optkey_waitrequest_n;
  wire             S02_OptKey_optkey_waitrequest_n_from_sa;
  wire             S03_IntrqKey_intkey_irq;
  wire             S03_IntrqKey_intkey_irq_from_sa;
  wire    [  7: 0] S03_IntrqKey_intkey_readdata;
  wire    [  7: 0] S03_IntrqKey_intkey_readdata_from_sa;
  wire             S03_IntrqKey_intkey_reset_n;
  wire             S03_IntrqKey_intkey_waitrequest_n;
  wire             S03_IntrqKey_intkey_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_addr_irq;
  wire             S10_PNLCtrl_addr_irq_from_sa;
  wire    [  7: 0] S10_PNLCtrl_addr_readdata;
  wire    [  7: 0] S10_PNLCtrl_addr_readdata_from_sa;
  wire             S10_PNLCtrl_addr_reset_n;
  wire             S10_PNLCtrl_addr_waitrequest_n;
  wire             S10_PNLCtrl_addr_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_addr_write_n;
  wire    [  7: 0] S10_PNLCtrl_addr_writedata;
  wire    [  7: 0] S10_PNLCtrl_ctrl_readdata;
  wire    [  7: 0] S10_PNLCtrl_ctrl_readdata_from_sa;
  wire             S10_PNLCtrl_ctrl_waitrequest_n;
  wire             S10_PNLCtrl_ctrl_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_ctrl_write_n;
  wire    [  7: 0] S10_PNLCtrl_ctrl_writedata;
  wire    [  7: 0] S10_PNLCtrl_key0_readdata;
  wire    [  7: 0] S10_PNLCtrl_key0_readdata_from_sa;
  wire             S10_PNLCtrl_key0_waitrequest_n;
  wire             S10_PNLCtrl_key0_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key0_write_n;
  wire    [  7: 0] S10_PNLCtrl_key0_writedata;
  wire    [  7: 0] S10_PNLCtrl_key1_readdata;
  wire    [  7: 0] S10_PNLCtrl_key1_readdata_from_sa;
  wire             S10_PNLCtrl_key1_waitrequest_n;
  wire             S10_PNLCtrl_key1_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key1_write_n;
  wire    [  7: 0] S10_PNLCtrl_key1_writedata;
  wire    [  7: 0] S10_PNLCtrl_key2_readdata;
  wire    [  7: 0] S10_PNLCtrl_key2_readdata_from_sa;
  wire             S10_PNLCtrl_key2_waitrequest_n;
  wire             S10_PNLCtrl_key2_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key2_write_n;
  wire    [  7: 0] S10_PNLCtrl_key2_writedata;
  wire    [  7: 0] S10_PNLCtrl_key3_readdata;
  wire    [  7: 0] S10_PNLCtrl_key3_readdata_from_sa;
  wire             S10_PNLCtrl_key3_waitrequest_n;
  wire             S10_PNLCtrl_key3_waitrequest_n_from_sa;
  wire             S10_PNLCtrl_key3_write_n;
  wire    [  7: 0] S10_PNLCtrl_key3_writedata;
  wire             S11_T6963_LCD_lcd_address;
  wire             S11_T6963_LCD_lcd_chipselect_n;
  wire             S11_T6963_LCD_lcd_read_n;
  wire    [  7: 0] S11_T6963_LCD_lcd_readdata;
  wire    [  7: 0] S11_T6963_LCD_lcd_readdata_from_sa;
  wire             S11_T6963_LCD_lcd_reset_n;
  wire             S11_T6963_LCD_lcd_waitrequest_n;
  wire             S11_T6963_LCD_lcd_waitrequest_n_from_sa;
  wire             S11_T6963_LCD_lcd_write_n;
  wire    [  7: 0] S11_T6963_LCD_lcd_writedata;
  wire    [  4: 0] S20_ATA8_Interface_ata_address;
  wire             S20_ATA8_Interface_ata_chipselect_n;
  wire             S20_ATA8_Interface_ata_irq;
  wire             S20_ATA8_Interface_ata_irq_from_sa;
  wire             S20_ATA8_Interface_ata_read_n;
  wire    [  7: 0] S20_ATA8_Interface_ata_readdata;
  wire    [  7: 0] S20_ATA8_Interface_ata_readdata_from_sa;
  wire             S20_ATA8_Interface_ata_reset_n;
  wire             S20_ATA8_Interface_ata_waitrequest_n;
  wire             S20_ATA8_Interface_ata_waitrequest_n_from_sa;
  wire             S20_ATA8_Interface_ata_write_n;
  wire    [  7: 0] S20_ATA8_Interface_ata_writedata;
  wire             SEM_CINT_from_the_H00_SEM51Host;
  wire    [ 15: 0] SEM_DATA_to_and_from_the_H00_SEM51Host;
  wire             SEM_INT00_from_the_H00_SEM51Host;
  wire             SEM_INT01_from_the_H00_SEM51Host;
  wire             SEM_INT02_from_the_H00_SEM51Host;
  wire             SEM_INT04_from_the_H00_SEM51Host;
  wire             SEM_INT05_from_the_H00_SEM51Host;
  wire             SEM_INT06_from_the_H00_SEM51Host;
  wire             SEM_WAITN_from_the_H00_SEM51Host;
  wire             d1_S00_ChipID_idout_end_xfer;
  wire             d1_S01_Reset_reset_end_xfer;
  wire             d1_S02_OptKey_optkey_end_xfer;
  wire             d1_S03_IntrqKey_intkey_end_xfer;
  wire             d1_S10_PNLCtrl_addr_end_xfer;
  wire             d1_S10_PNLCtrl_ctrl_end_xfer;
  wire             d1_S10_PNLCtrl_key0_end_xfer;
  wire             d1_S10_PNLCtrl_key1_end_xfer;
  wire             d1_S10_PNLCtrl_key2_end_xfer;
  wire             d1_S10_PNLCtrl_key3_end_xfer;
  wire             d1_S11_T6963_LCD_lcd_end_xfer;
  wire             d1_S20_ATA8_Interface_ata_end_xfer;
  wire             reset_n_sources;
  H00_SEM51Host_m0_arbitrator the_H00_SEM51Host_m0
    (
      .H00_SEM51Host_granted_S00_ChipID_idout                 (H00_SEM51Host_granted_S00_ChipID_idout),
      .H00_SEM51Host_granted_S01_Reset_reset                  (H00_SEM51Host_granted_S01_Reset_reset),
      .H00_SEM51Host_granted_S02_OptKey_optkey                (H00_SEM51Host_granted_S02_OptKey_optkey),
      .H00_SEM51Host_granted_S03_IntrqKey_intkey              (H00_SEM51Host_granted_S03_IntrqKey_intkey),
      .H00_SEM51Host_granted_S10_PNLCtrl_addr                 (H00_SEM51Host_granted_S10_PNLCtrl_addr),
      .H00_SEM51Host_granted_S10_PNLCtrl_ctrl                 (H00_SEM51Host_granted_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_granted_S10_PNLCtrl_key0                 (H00_SEM51Host_granted_S10_PNLCtrl_key0),
      .H00_SEM51Host_granted_S10_PNLCtrl_key1                 (H00_SEM51Host_granted_S10_PNLCtrl_key1),
      .H00_SEM51Host_granted_S10_PNLCtrl_key2                 (H00_SEM51Host_granted_S10_PNLCtrl_key2),
      .H00_SEM51Host_granted_S10_PNLCtrl_key3                 (H00_SEM51Host_granted_S10_PNLCtrl_key3),
      .H00_SEM51Host_granted_S11_T6963_LCD_lcd                (H00_SEM51Host_granted_S11_T6963_LCD_lcd),
      .H00_SEM51Host_granted_S20_ATA8_Interface_ata           (H00_SEM51Host_granted_S20_ATA8_Interface_ata),
      .H00_SEM51Host_m0_address                               (H00_SEM51Host_m0_address),
      .H00_SEM51Host_m0_address_to_slave                      (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                          (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_irq                                   (H00_SEM51Host_m0_irq),
      .H00_SEM51Host_m0_read_n                                (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_readdata                              (H00_SEM51Host_m0_readdata),
      .H00_SEM51Host_m0_reset_n                               (H00_SEM51Host_m0_reset_n),
      .H00_SEM51Host_m0_waitrequest_n                         (H00_SEM51Host_m0_waitrequest_n),
      .H00_SEM51Host_m0_write_n                               (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                             (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S00_ChipID_idout       (H00_SEM51Host_qualified_request_S00_ChipID_idout),
      .H00_SEM51Host_qualified_request_S01_Reset_reset        (H00_SEM51Host_qualified_request_S01_Reset_reset),
      .H00_SEM51Host_qualified_request_S02_OptKey_optkey      (H00_SEM51Host_qualified_request_S02_OptKey_optkey),
      .H00_SEM51Host_qualified_request_S03_IntrqKey_intkey    (H00_SEM51Host_qualified_request_S03_IntrqKey_intkey),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_addr       (H00_SEM51Host_qualified_request_S10_PNLCtrl_addr),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl       (H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key0       (H00_SEM51Host_qualified_request_S10_PNLCtrl_key0),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key1       (H00_SEM51Host_qualified_request_S10_PNLCtrl_key1),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key2       (H00_SEM51Host_qualified_request_S10_PNLCtrl_key2),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key3       (H00_SEM51Host_qualified_request_S10_PNLCtrl_key3),
      .H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd      (H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd),
      .H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata (H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata),
      .H00_SEM51Host_read_data_valid_S00_ChipID_idout         (H00_SEM51Host_read_data_valid_S00_ChipID_idout),
      .H00_SEM51Host_read_data_valid_S01_Reset_reset          (H00_SEM51Host_read_data_valid_S01_Reset_reset),
      .H00_SEM51Host_read_data_valid_S02_OptKey_optkey        (H00_SEM51Host_read_data_valid_S02_OptKey_optkey),
      .H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey      (H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3         (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3),
      .H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd        (H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd),
      .H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata   (H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata),
      .H00_SEM51Host_requests_S00_ChipID_idout                (H00_SEM51Host_requests_S00_ChipID_idout),
      .H00_SEM51Host_requests_S01_Reset_reset                 (H00_SEM51Host_requests_S01_Reset_reset),
      .H00_SEM51Host_requests_S02_OptKey_optkey               (H00_SEM51Host_requests_S02_OptKey_optkey),
      .H00_SEM51Host_requests_S03_IntrqKey_intkey             (H00_SEM51Host_requests_S03_IntrqKey_intkey),
      .H00_SEM51Host_requests_S10_PNLCtrl_addr                (H00_SEM51Host_requests_S10_PNLCtrl_addr),
      .H00_SEM51Host_requests_S10_PNLCtrl_ctrl                (H00_SEM51Host_requests_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_requests_S10_PNLCtrl_key0                (H00_SEM51Host_requests_S10_PNLCtrl_key0),
      .H00_SEM51Host_requests_S10_PNLCtrl_key1                (H00_SEM51Host_requests_S10_PNLCtrl_key1),
      .H00_SEM51Host_requests_S10_PNLCtrl_key2                (H00_SEM51Host_requests_S10_PNLCtrl_key2),
      .H00_SEM51Host_requests_S10_PNLCtrl_key3                (H00_SEM51Host_requests_S10_PNLCtrl_key3),
      .H00_SEM51Host_requests_S11_T6963_LCD_lcd               (H00_SEM51Host_requests_S11_T6963_LCD_lcd),
      .H00_SEM51Host_requests_S20_ATA8_Interface_ata          (H00_SEM51Host_requests_S20_ATA8_Interface_ata),
      .S00_ChipID_idout_readdata_from_sa                      (S00_ChipID_idout_readdata_from_sa),
      .S00_ChipID_idout_waitrequest_n_from_sa                 (S00_ChipID_idout_waitrequest_n_from_sa),
      .S01_Reset_reset_readdata_from_sa                       (S01_Reset_reset_readdata_from_sa),
      .S01_Reset_reset_waitrequest_n_from_sa                  (S01_Reset_reset_waitrequest_n_from_sa),
      .S02_OptKey_optkey_readdata_from_sa                     (S02_OptKey_optkey_readdata_from_sa),
      .S02_OptKey_optkey_waitrequest_n_from_sa                (S02_OptKey_optkey_waitrequest_n_from_sa),
      .S03_IntrqKey_intkey_irq_from_sa                        (S03_IntrqKey_intkey_irq_from_sa),
      .S03_IntrqKey_intkey_readdata_from_sa                   (S03_IntrqKey_intkey_readdata_from_sa),
      .S03_IntrqKey_intkey_waitrequest_n_from_sa              (S03_IntrqKey_intkey_waitrequest_n_from_sa),
      .S10_PNLCtrl_addr_irq_from_sa                           (S10_PNLCtrl_addr_irq_from_sa),
      .S10_PNLCtrl_addr_readdata_from_sa                      (S10_PNLCtrl_addr_readdata_from_sa),
      .S10_PNLCtrl_addr_waitrequest_n_from_sa                 (S10_PNLCtrl_addr_waitrequest_n_from_sa),
      .S10_PNLCtrl_ctrl_readdata_from_sa                      (S10_PNLCtrl_ctrl_readdata_from_sa),
      .S10_PNLCtrl_ctrl_waitrequest_n_from_sa                 (S10_PNLCtrl_ctrl_waitrequest_n_from_sa),
      .S10_PNLCtrl_key0_readdata_from_sa                      (S10_PNLCtrl_key0_readdata_from_sa),
      .S10_PNLCtrl_key0_waitrequest_n_from_sa                 (S10_PNLCtrl_key0_waitrequest_n_from_sa),
      .S10_PNLCtrl_key1_readdata_from_sa                      (S10_PNLCtrl_key1_readdata_from_sa),
      .S10_PNLCtrl_key1_waitrequest_n_from_sa                 (S10_PNLCtrl_key1_waitrequest_n_from_sa),
      .S10_PNLCtrl_key2_readdata_from_sa                      (S10_PNLCtrl_key2_readdata_from_sa),
      .S10_PNLCtrl_key2_waitrequest_n_from_sa                 (S10_PNLCtrl_key2_waitrequest_n_from_sa),
      .S10_PNLCtrl_key3_readdata_from_sa                      (S10_PNLCtrl_key3_readdata_from_sa),
      .S10_PNLCtrl_key3_waitrequest_n_from_sa                 (S10_PNLCtrl_key3_waitrequest_n_from_sa),
      .S11_T6963_LCD_lcd_readdata_from_sa                     (S11_T6963_LCD_lcd_readdata_from_sa),
      .S11_T6963_LCD_lcd_waitrequest_n_from_sa                (S11_T6963_LCD_lcd_waitrequest_n_from_sa),
      .S20_ATA8_Interface_ata_irq_from_sa                     (S20_ATA8_Interface_ata_irq_from_sa),
      .S20_ATA8_Interface_ata_readdata_from_sa                (S20_ATA8_Interface_ata_readdata_from_sa),
      .S20_ATA8_Interface_ata_waitrequest_n_from_sa           (S20_ATA8_Interface_ata_waitrequest_n_from_sa),
      .clk                                                    (MCU_CLK),
      .d1_S00_ChipID_idout_end_xfer                           (d1_S00_ChipID_idout_end_xfer),
      .d1_S01_Reset_reset_end_xfer                            (d1_S01_Reset_reset_end_xfer),
      .d1_S02_OptKey_optkey_end_xfer                          (d1_S02_OptKey_optkey_end_xfer),
      .d1_S03_IntrqKey_intkey_end_xfer                        (d1_S03_IntrqKey_intkey_end_xfer),
      .d1_S10_PNLCtrl_addr_end_xfer                           (d1_S10_PNLCtrl_addr_end_xfer),
      .d1_S10_PNLCtrl_ctrl_end_xfer                           (d1_S10_PNLCtrl_ctrl_end_xfer),
      .d1_S10_PNLCtrl_key0_end_xfer                           (d1_S10_PNLCtrl_key0_end_xfer),
      .d1_S10_PNLCtrl_key1_end_xfer                           (d1_S10_PNLCtrl_key1_end_xfer),
      .d1_S10_PNLCtrl_key2_end_xfer                           (d1_S10_PNLCtrl_key2_end_xfer),
      .d1_S10_PNLCtrl_key3_end_xfer                           (d1_S10_PNLCtrl_key3_end_xfer),
      .d1_S11_T6963_LCD_lcd_end_xfer                          (d1_S11_T6963_LCD_lcd_end_xfer),
      .d1_S20_ATA8_Interface_ata_end_xfer                     (d1_S20_ATA8_Interface_ata_end_xfer),
      .reset_n                                                (MCU_CLK_reset_n)
    );

  H00_SEM51Host the_H00_SEM51Host
    (
      .SEM_ADDR               (SEM_ADDR_to_the_H00_SEM51Host),
      .SEM_CINT               (SEM_CINT_from_the_H00_SEM51Host),
      .SEM_CSN                (SEM_CSN_to_the_H00_SEM51Host),
      .SEM_DATA               (SEM_DATA_to_and_from_the_H00_SEM51Host),
      .SEM_INT00              (SEM_INT00_from_the_H00_SEM51Host),
      .SEM_INT01              (SEM_INT01_from_the_H00_SEM51Host),
      .SEM_INT02              (SEM_INT02_from_the_H00_SEM51Host),
      .SEM_INT04              (SEM_INT04_from_the_H00_SEM51Host),
      .SEM_INT05              (SEM_INT05_from_the_H00_SEM51Host),
      .SEM_INT06              (SEM_INT06_from_the_H00_SEM51Host),
      .SEM_OEN                (SEM_OEN_to_the_H00_SEM51Host),
      .SEM_WAITN              (SEM_WAITN_from_the_H00_SEM51Host),
      .SEM_WEN                (SEM_WEN_to_the_H00_SEM51Host),
      .avm_m0_address         (H00_SEM51Host_m0_address),
      .avm_m0_chipselect_n    (H00_SEM51Host_m0_chipselect_n),
      .avm_m0_read_n          (H00_SEM51Host_m0_read_n),
      .avm_m0_readdata        (H00_SEM51Host_m0_readdata),
      .avm_m0_waitrequest_n   (H00_SEM51Host_m0_waitrequest_n),
      .avm_m0_write_n         (H00_SEM51Host_m0_write_n),
      .avm_m0_writedata       (H00_SEM51Host_m0_writedata),
      .csi_clockreset_clk     (MCU_CLK),
      .csi_clockreset_reset_n (H00_SEM51Host_m0_reset_n),
      .inr_irq0_irq           (H00_SEM51Host_m0_irq)
    );

  S00_ChipID_idout_arbitrator the_S00_ChipID_idout
    (
      .H00_SEM51Host_granted_S00_ChipID_idout           (H00_SEM51Host_granted_S00_ChipID_idout),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_qualified_request_S00_ChipID_idout (H00_SEM51Host_qualified_request_S00_ChipID_idout),
      .H00_SEM51Host_read_data_valid_S00_ChipID_idout   (H00_SEM51Host_read_data_valid_S00_ChipID_idout),
      .H00_SEM51Host_requests_S00_ChipID_idout          (H00_SEM51Host_requests_S00_ChipID_idout),
      .S00_ChipID_idout_readdata                        (S00_ChipID_idout_readdata),
      .S00_ChipID_idout_readdata_from_sa                (S00_ChipID_idout_readdata_from_sa),
      .S00_ChipID_idout_reset_n                         (S00_ChipID_idout_reset_n),
      .S00_ChipID_idout_waitrequest_n                   (S00_ChipID_idout_waitrequest_n),
      .S00_ChipID_idout_waitrequest_n_from_sa           (S00_ChipID_idout_waitrequest_n_from_sa),
      .clk                                              (MCU_CLK),
      .d1_S00_ChipID_idout_end_xfer                     (d1_S00_ChipID_idout_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S00_ChipID the_S00_ChipID
    (
      .avs_idout_readdata      (S00_ChipID_idout_readdata),
      .avs_idout_waitrequest_n (S00_ChipID_idout_waitrequest_n),
      .csi_clockreset_clk      (MCU_CLK),
      .csi_clockreset_reset_n  (S00_ChipID_idout_reset_n)
    );

  S01_Reset_reset_arbitrator the_S01_Reset_reset
    (
      .H00_SEM51Host_granted_S01_Reset_reset           (H00_SEM51Host_granted_S01_Reset_reset),
      .H00_SEM51Host_m0_address_to_slave               (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                   (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                         (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                        (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                      (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S01_Reset_reset (H00_SEM51Host_qualified_request_S01_Reset_reset),
      .H00_SEM51Host_read_data_valid_S01_Reset_reset   (H00_SEM51Host_read_data_valid_S01_Reset_reset),
      .H00_SEM51Host_requests_S01_Reset_reset          (H00_SEM51Host_requests_S01_Reset_reset),
      .S01_Reset_reset_read_n                          (S01_Reset_reset_read_n),
      .S01_Reset_reset_readdata                        (S01_Reset_reset_readdata),
      .S01_Reset_reset_readdata_from_sa                (S01_Reset_reset_readdata_from_sa),
      .S01_Reset_reset_reset_n                         (S01_Reset_reset_reset_n),
      .S01_Reset_reset_waitrequest_n                   (S01_Reset_reset_waitrequest_n),
      .S01_Reset_reset_waitrequest_n_from_sa           (S01_Reset_reset_waitrequest_n_from_sa),
      .S01_Reset_reset_write_n                         (S01_Reset_reset_write_n),
      .S01_Reset_reset_writedata                       (S01_Reset_reset_writedata),
      .clk                                             (MCU_CLK),
      .d1_S01_Reset_reset_end_xfer                     (d1_S01_Reset_reset_end_xfer),
      .reset_n                                         (MCU_CLK_reset_n)
    );

  S01_Reset the_S01_Reset
    (
      .BATFL_OUT               (BATFL_OUT_from_the_S01_Reset),
      .RESET_OUT               (RESET_OUT_from_the_S01_Reset),
      .avs_reset_read_n        (S01_Reset_reset_read_n),
      .avs_reset_readdata      (S01_Reset_reset_readdata),
      .avs_reset_waitrequest_n (S01_Reset_reset_waitrequest_n),
      .avs_reset_write_n       (S01_Reset_reset_write_n),
      .avs_reset_writedata     (S01_Reset_reset_writedata),
      .csi_clockreset_clk      (MCU_CLK),
      .csi_clockreset_reset_n  (S01_Reset_reset_reset_n)
    );

  S02_OptKey_optkey_arbitrator the_S02_OptKey_optkey
    (
      .H00_SEM51Host_granted_S02_OptKey_optkey           (H00_SEM51Host_granted_S02_OptKey_optkey),
      .H00_SEM51Host_m0_address_to_slave                 (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                     (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                           (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                          (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_qualified_request_S02_OptKey_optkey (H00_SEM51Host_qualified_request_S02_OptKey_optkey),
      .H00_SEM51Host_read_data_valid_S02_OptKey_optkey   (H00_SEM51Host_read_data_valid_S02_OptKey_optkey),
      .H00_SEM51Host_requests_S02_OptKey_optkey          (H00_SEM51Host_requests_S02_OptKey_optkey),
      .S02_OptKey_optkey_readdata                        (S02_OptKey_optkey_readdata),
      .S02_OptKey_optkey_readdata_from_sa                (S02_OptKey_optkey_readdata_from_sa),
      .S02_OptKey_optkey_reset_n                         (S02_OptKey_optkey_reset_n),
      .S02_OptKey_optkey_waitrequest_n                   (S02_OptKey_optkey_waitrequest_n),
      .S02_OptKey_optkey_waitrequest_n_from_sa           (S02_OptKey_optkey_waitrequest_n_from_sa),
      .clk                                               (MCU_CLK),
      .d1_S02_OptKey_optkey_end_xfer                     (d1_S02_OptKey_optkey_end_xfer),
      .reset_n                                           (MCU_CLK_reset_n)
    );

  S02_OptKey the_S02_OptKey
    (
      .OPT_IN                   (OPT_IN_to_the_S02_OptKey),
      .avs_optkey_readdata      (S02_OptKey_optkey_readdata),
      .avs_optkey_waitrequest_n (S02_OptKey_optkey_waitrequest_n),
      .csi_clockreset_clk       (MCU_CLK),
      .csi_clockreset_reset_n   (S02_OptKey_optkey_reset_n)
    );

  S03_IntrqKey_intkey_arbitrator the_S03_IntrqKey_intkey
    (
      .H00_SEM51Host_granted_S03_IntrqKey_intkey           (H00_SEM51Host_granted_S03_IntrqKey_intkey),
      .H00_SEM51Host_m0_address_to_slave                   (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                       (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                             (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                            (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_qualified_request_S03_IntrqKey_intkey (H00_SEM51Host_qualified_request_S03_IntrqKey_intkey),
      .H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey   (H00_SEM51Host_read_data_valid_S03_IntrqKey_intkey),
      .H00_SEM51Host_requests_S03_IntrqKey_intkey          (H00_SEM51Host_requests_S03_IntrqKey_intkey),
      .S03_IntrqKey_intkey_irq                             (S03_IntrqKey_intkey_irq),
      .S03_IntrqKey_intkey_irq_from_sa                     (S03_IntrqKey_intkey_irq_from_sa),
      .S03_IntrqKey_intkey_readdata                        (S03_IntrqKey_intkey_readdata),
      .S03_IntrqKey_intkey_readdata_from_sa                (S03_IntrqKey_intkey_readdata_from_sa),
      .S03_IntrqKey_intkey_reset_n                         (S03_IntrqKey_intkey_reset_n),
      .S03_IntrqKey_intkey_waitrequest_n                   (S03_IntrqKey_intkey_waitrequest_n),
      .S03_IntrqKey_intkey_waitrequest_n_from_sa           (S03_IntrqKey_intkey_waitrequest_n_from_sa),
      .clk                                                 (MCU_CLK),
      .d1_S03_IntrqKey_intkey_end_xfer                     (d1_S03_IntrqKey_intkey_end_xfer),
      .reset_n                                             (MCU_CLK_reset_n)
    );

  S03_IntrqKey the_S03_IntrqKey
    (
      .INT_KEY                  (INT_KEY_to_the_S03_IntrqKey),
      .avs_intkey_readdata      (S03_IntrqKey_intkey_readdata),
      .avs_intkey_waitrequest_n (S03_IntrqKey_intkey_waitrequest_n),
      .csi_clockreset_clk       (MCU_CLK),
      .csi_clockreset_reset_n   (S03_IntrqKey_intkey_reset_n),
      .ins_intrq_irq            (S03_IntrqKey_intkey_irq)
    );

  S10_PNLCtrl_addr_arbitrator the_S10_PNLCtrl_addr
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_addr           (H00_SEM51Host_granted_S10_PNLCtrl_addr),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_addr (H00_SEM51Host_qualified_request_S10_PNLCtrl_addr),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_addr),
      .H00_SEM51Host_requests_S10_PNLCtrl_addr          (H00_SEM51Host_requests_S10_PNLCtrl_addr),
      .S10_PNLCtrl_addr_irq                             (S10_PNLCtrl_addr_irq),
      .S10_PNLCtrl_addr_irq_from_sa                     (S10_PNLCtrl_addr_irq_from_sa),
      .S10_PNLCtrl_addr_readdata                        (S10_PNLCtrl_addr_readdata),
      .S10_PNLCtrl_addr_readdata_from_sa                (S10_PNLCtrl_addr_readdata_from_sa),
      .S10_PNLCtrl_addr_reset_n                         (S10_PNLCtrl_addr_reset_n),
      .S10_PNLCtrl_addr_waitrequest_n                   (S10_PNLCtrl_addr_waitrequest_n),
      .S10_PNLCtrl_addr_waitrequest_n_from_sa           (S10_PNLCtrl_addr_waitrequest_n_from_sa),
      .S10_PNLCtrl_addr_write_n                         (S10_PNLCtrl_addr_write_n),
      .S10_PNLCtrl_addr_writedata                       (S10_PNLCtrl_addr_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_addr_end_xfer                     (d1_S10_PNLCtrl_addr_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl_ctrl_arbitrator the_S10_PNLCtrl_ctrl
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_ctrl           (H00_SEM51Host_granted_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl (H00_SEM51Host_qualified_request_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_ctrl),
      .H00_SEM51Host_requests_S10_PNLCtrl_ctrl          (H00_SEM51Host_requests_S10_PNLCtrl_ctrl),
      .S10_PNLCtrl_ctrl_readdata                        (S10_PNLCtrl_ctrl_readdata),
      .S10_PNLCtrl_ctrl_readdata_from_sa                (S10_PNLCtrl_ctrl_readdata_from_sa),
      .S10_PNLCtrl_ctrl_waitrequest_n                   (S10_PNLCtrl_ctrl_waitrequest_n),
      .S10_PNLCtrl_ctrl_waitrequest_n_from_sa           (S10_PNLCtrl_ctrl_waitrequest_n_from_sa),
      .S10_PNLCtrl_ctrl_write_n                         (S10_PNLCtrl_ctrl_write_n),
      .S10_PNLCtrl_ctrl_writedata                       (S10_PNLCtrl_ctrl_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_ctrl_end_xfer                     (d1_S10_PNLCtrl_ctrl_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl_key0_arbitrator the_S10_PNLCtrl_key0
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_key0           (H00_SEM51Host_granted_S10_PNLCtrl_key0),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key0 (H00_SEM51Host_qualified_request_S10_PNLCtrl_key0),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key0),
      .H00_SEM51Host_requests_S10_PNLCtrl_key0          (H00_SEM51Host_requests_S10_PNLCtrl_key0),
      .S10_PNLCtrl_key0_readdata                        (S10_PNLCtrl_key0_readdata),
      .S10_PNLCtrl_key0_readdata_from_sa                (S10_PNLCtrl_key0_readdata_from_sa),
      .S10_PNLCtrl_key0_waitrequest_n                   (S10_PNLCtrl_key0_waitrequest_n),
      .S10_PNLCtrl_key0_waitrequest_n_from_sa           (S10_PNLCtrl_key0_waitrequest_n_from_sa),
      .S10_PNLCtrl_key0_write_n                         (S10_PNLCtrl_key0_write_n),
      .S10_PNLCtrl_key0_writedata                       (S10_PNLCtrl_key0_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_key0_end_xfer                     (d1_S10_PNLCtrl_key0_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl_key1_arbitrator the_S10_PNLCtrl_key1
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_key1           (H00_SEM51Host_granted_S10_PNLCtrl_key1),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key1 (H00_SEM51Host_qualified_request_S10_PNLCtrl_key1),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key1),
      .H00_SEM51Host_requests_S10_PNLCtrl_key1          (H00_SEM51Host_requests_S10_PNLCtrl_key1),
      .S10_PNLCtrl_key1_readdata                        (S10_PNLCtrl_key1_readdata),
      .S10_PNLCtrl_key1_readdata_from_sa                (S10_PNLCtrl_key1_readdata_from_sa),
      .S10_PNLCtrl_key1_waitrequest_n                   (S10_PNLCtrl_key1_waitrequest_n),
      .S10_PNLCtrl_key1_waitrequest_n_from_sa           (S10_PNLCtrl_key1_waitrequest_n_from_sa),
      .S10_PNLCtrl_key1_write_n                         (S10_PNLCtrl_key1_write_n),
      .S10_PNLCtrl_key1_writedata                       (S10_PNLCtrl_key1_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_key1_end_xfer                     (d1_S10_PNLCtrl_key1_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl_key2_arbitrator the_S10_PNLCtrl_key2
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_key2           (H00_SEM51Host_granted_S10_PNLCtrl_key2),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key2 (H00_SEM51Host_qualified_request_S10_PNLCtrl_key2),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key2),
      .H00_SEM51Host_requests_S10_PNLCtrl_key2          (H00_SEM51Host_requests_S10_PNLCtrl_key2),
      .S10_PNLCtrl_key2_readdata                        (S10_PNLCtrl_key2_readdata),
      .S10_PNLCtrl_key2_readdata_from_sa                (S10_PNLCtrl_key2_readdata_from_sa),
      .S10_PNLCtrl_key2_waitrequest_n                   (S10_PNLCtrl_key2_waitrequest_n),
      .S10_PNLCtrl_key2_waitrequest_n_from_sa           (S10_PNLCtrl_key2_waitrequest_n_from_sa),
      .S10_PNLCtrl_key2_write_n                         (S10_PNLCtrl_key2_write_n),
      .S10_PNLCtrl_key2_writedata                       (S10_PNLCtrl_key2_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_key2_end_xfer                     (d1_S10_PNLCtrl_key2_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl_key3_arbitrator the_S10_PNLCtrl_key3
    (
      .H00_SEM51Host_granted_S10_PNLCtrl_key3           (H00_SEM51Host_granted_S10_PNLCtrl_key3),
      .H00_SEM51Host_m0_address_to_slave                (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                    (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                          (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                         (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                       (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S10_PNLCtrl_key3 (H00_SEM51Host_qualified_request_S10_PNLCtrl_key3),
      .H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3   (H00_SEM51Host_read_data_valid_S10_PNLCtrl_key3),
      .H00_SEM51Host_requests_S10_PNLCtrl_key3          (H00_SEM51Host_requests_S10_PNLCtrl_key3),
      .S10_PNLCtrl_key3_readdata                        (S10_PNLCtrl_key3_readdata),
      .S10_PNLCtrl_key3_readdata_from_sa                (S10_PNLCtrl_key3_readdata_from_sa),
      .S10_PNLCtrl_key3_waitrequest_n                   (S10_PNLCtrl_key3_waitrequest_n),
      .S10_PNLCtrl_key3_waitrequest_n_from_sa           (S10_PNLCtrl_key3_waitrequest_n_from_sa),
      .S10_PNLCtrl_key3_write_n                         (S10_PNLCtrl_key3_write_n),
      .S10_PNLCtrl_key3_writedata                       (S10_PNLCtrl_key3_writedata),
      .clk                                              (MCU_CLK),
      .d1_S10_PNLCtrl_key3_end_xfer                     (d1_S10_PNLCtrl_key3_end_xfer),
      .reset_n                                          (MCU_CLK_reset_n)
    );

  S10_PNLCtrl the_S10_PNLCtrl
    (
      .PNL_CLK                (PNL_CLK_to_the_S10_PNLCtrl),
      .PNL_DI                 (PNL_DI_to_the_S10_PNLCtrl),
      .PNL_DO                 (PNL_DO_from_the_S10_PNLCtrl),
      .PNL_LE                 (PNL_LE_to_the_S10_PNLCtrl),
      .PNL_STA                (PNL_STA_to_the_S10_PNLCtrl),
      .avs_addr_readdata      (S10_PNLCtrl_addr_readdata),
      .avs_addr_waitrequest_n (S10_PNLCtrl_addr_waitrequest_n),
      .avs_addr_write_n       (S10_PNLCtrl_addr_write_n),
      .avs_addr_writedata     (S10_PNLCtrl_addr_writedata),
      .avs_ctrl_readdata      (S10_PNLCtrl_ctrl_readdata),
      .avs_ctrl_waitrequest_n (S10_PNLCtrl_ctrl_waitrequest_n),
      .avs_ctrl_write_n       (S10_PNLCtrl_ctrl_write_n),
      .avs_ctrl_writedata     (S10_PNLCtrl_ctrl_writedata),
      .avs_key0_readdata      (S10_PNLCtrl_key0_readdata),
      .avs_key0_waitrequest_n (S10_PNLCtrl_key0_waitrequest_n),
      .avs_key0_write_n       (S10_PNLCtrl_key0_write_n),
      .avs_key0_writedata     (S10_PNLCtrl_key0_writedata),
      .avs_key1_readdata      (S10_PNLCtrl_key1_readdata),
      .avs_key1_waitrequest_n (S10_PNLCtrl_key1_waitrequest_n),
      .avs_key1_write_n       (S10_PNLCtrl_key1_write_n),
      .avs_key1_writedata     (S10_PNLCtrl_key1_writedata),
      .avs_key2_readdata      (S10_PNLCtrl_key2_readdata),
      .avs_key2_waitrequest_n (S10_PNLCtrl_key2_waitrequest_n),
      .avs_key2_write_n       (S10_PNLCtrl_key2_write_n),
      .avs_key2_writedata     (S10_PNLCtrl_key2_writedata),
      .avs_key3_readdata      (S10_PNLCtrl_key3_readdata),
      .avs_key3_waitrequest_n (S10_PNLCtrl_key3_waitrequest_n),
      .avs_key3_write_n       (S10_PNLCtrl_key3_write_n),
      .avs_key3_writedata     (S10_PNLCtrl_key3_writedata),
      .csi_clockreset_clk     (MCU_CLK),
      .csi_clockreset_reset_n (S10_PNLCtrl_addr_reset_n),
      .ins_event_irq          (S10_PNLCtrl_addr_irq)
    );

  S11_T6963_LCD_lcd_arbitrator the_S11_T6963_LCD_lcd
    (
      .H00_SEM51Host_granted_S11_T6963_LCD_lcd           (H00_SEM51Host_granted_S11_T6963_LCD_lcd),
      .H00_SEM51Host_m0_address_to_slave                 (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                     (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                           (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                          (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                        (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd (H00_SEM51Host_qualified_request_S11_T6963_LCD_lcd),
      .H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd   (H00_SEM51Host_read_data_valid_S11_T6963_LCD_lcd),
      .H00_SEM51Host_requests_S11_T6963_LCD_lcd          (H00_SEM51Host_requests_S11_T6963_LCD_lcd),
      .S11_T6963_LCD_lcd_address                         (S11_T6963_LCD_lcd_address),
      .S11_T6963_LCD_lcd_chipselect_n                    (S11_T6963_LCD_lcd_chipselect_n),
      .S11_T6963_LCD_lcd_read_n                          (S11_T6963_LCD_lcd_read_n),
      .S11_T6963_LCD_lcd_readdata                        (S11_T6963_LCD_lcd_readdata),
      .S11_T6963_LCD_lcd_readdata_from_sa                (S11_T6963_LCD_lcd_readdata_from_sa),
      .S11_T6963_LCD_lcd_reset_n                         (S11_T6963_LCD_lcd_reset_n),
      .S11_T6963_LCD_lcd_waitrequest_n                   (S11_T6963_LCD_lcd_waitrequest_n),
      .S11_T6963_LCD_lcd_waitrequest_n_from_sa           (S11_T6963_LCD_lcd_waitrequest_n_from_sa),
      .S11_T6963_LCD_lcd_write_n                         (S11_T6963_LCD_lcd_write_n),
      .S11_T6963_LCD_lcd_writedata                       (S11_T6963_LCD_lcd_writedata),
      .clk                                               (MCU_CLK),
      .d1_S11_T6963_LCD_lcd_end_xfer                     (d1_S11_T6963_LCD_lcd_end_xfer),
      .reset_n                                           (MCU_CLK_reset_n)
    );

  S11_T6963_LCD the_S11_T6963_LCD
    (
      .LCD_BUF_DIR            (LCD_BUF_DIR_from_the_S11_T6963_LCD),
      .LCD_CTRL               (LCD_CTRL_from_the_S11_T6963_LCD),
      .LCD_DATA               (LCD_DATA_to_and_from_the_S11_T6963_LCD),
      .avs_lcd_address        (S11_T6963_LCD_lcd_address),
      .avs_lcd_chipselect_n   (S11_T6963_LCD_lcd_chipselect_n),
      .avs_lcd_read_n         (S11_T6963_LCD_lcd_read_n),
      .avs_lcd_readdata       (S11_T6963_LCD_lcd_readdata),
      .avs_lcd_waitrequest_n  (S11_T6963_LCD_lcd_waitrequest_n),
      .avs_lcd_write_n        (S11_T6963_LCD_lcd_write_n),
      .avs_lcd_writedata      (S11_T6963_LCD_lcd_writedata),
      .csi_clockreset_clk     (MCU_CLK),
      .csi_clockreset_reset_n (S11_T6963_LCD_lcd_reset_n)
    );

  S20_ATA8_Interface_ata_arbitrator the_S20_ATA8_Interface_ata
    (
      .H00_SEM51Host_granted_S20_ATA8_Interface_ata           (H00_SEM51Host_granted_S20_ATA8_Interface_ata),
      .H00_SEM51Host_m0_address_to_slave                      (H00_SEM51Host_m0_address_to_slave),
      .H00_SEM51Host_m0_chipselect_n                          (H00_SEM51Host_m0_chipselect_n),
      .H00_SEM51Host_m0_read_n                                (H00_SEM51Host_m0_read_n),
      .H00_SEM51Host_m0_write_n                               (H00_SEM51Host_m0_write_n),
      .H00_SEM51Host_m0_writedata                             (H00_SEM51Host_m0_writedata),
      .H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata (H00_SEM51Host_qualified_request_S20_ATA8_Interface_ata),
      .H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata   (H00_SEM51Host_read_data_valid_S20_ATA8_Interface_ata),
      .H00_SEM51Host_requests_S20_ATA8_Interface_ata          (H00_SEM51Host_requests_S20_ATA8_Interface_ata),
      .S20_ATA8_Interface_ata_address                         (S20_ATA8_Interface_ata_address),
      .S20_ATA8_Interface_ata_chipselect_n                    (S20_ATA8_Interface_ata_chipselect_n),
      .S20_ATA8_Interface_ata_irq                             (S20_ATA8_Interface_ata_irq),
      .S20_ATA8_Interface_ata_irq_from_sa                     (S20_ATA8_Interface_ata_irq_from_sa),
      .S20_ATA8_Interface_ata_read_n                          (S20_ATA8_Interface_ata_read_n),
      .S20_ATA8_Interface_ata_readdata                        (S20_ATA8_Interface_ata_readdata),
      .S20_ATA8_Interface_ata_readdata_from_sa                (S20_ATA8_Interface_ata_readdata_from_sa),
      .S20_ATA8_Interface_ata_reset_n                         (S20_ATA8_Interface_ata_reset_n),
      .S20_ATA8_Interface_ata_waitrequest_n                   (S20_ATA8_Interface_ata_waitrequest_n),
      .S20_ATA8_Interface_ata_waitrequest_n_from_sa           (S20_ATA8_Interface_ata_waitrequest_n_from_sa),
      .S20_ATA8_Interface_ata_write_n                         (S20_ATA8_Interface_ata_write_n),
      .S20_ATA8_Interface_ata_writedata                       (S20_ATA8_Interface_ata_writedata),
      .clk                                                    (MCU_CLK),
      .d1_S20_ATA8_Interface_ata_end_xfer                     (d1_S20_ATA8_Interface_ata_end_xfer),
      .reset_n                                                (MCU_CLK_reset_n)
    );

  S20_ATA8_Interface the_S20_ATA8_Interface
    (
      .ATA_ADDR               (ATA_ADDR_from_the_S20_ATA8_Interface),
      .ATA_DATA               (ATA_DATA_to_and_from_the_S20_ATA8_Interface),
      .ATA_DATA_DIR           (ATA_DATA_DIR_from_the_S20_ATA8_Interface),
      .ATA_INTRQ              (ATA_INTRQ_to_the_S20_ATA8_Interface),
      .ATA_OEN                (ATA_OEN_from_the_S20_ATA8_Interface),
      .ATA_WAITN              (ATA_WAITN_to_the_S20_ATA8_Interface),
      .ATA_WEN                (ATA_WEN_from_the_S20_ATA8_Interface),
      .avs_ata_address        (S20_ATA8_Interface_ata_address),
      .avs_ata_chipselect_n   (S20_ATA8_Interface_ata_chipselect_n),
      .avs_ata_read_n         (S20_ATA8_Interface_ata_read_n),
      .avs_ata_readdata       (S20_ATA8_Interface_ata_readdata),
      .avs_ata_waitrequest_n  (S20_ATA8_Interface_ata_waitrequest_n),
      .avs_ata_write_n        (S20_ATA8_Interface_ata_write_n),
      .avs_ata_writedata      (S20_ATA8_Interface_ata_writedata),
      .csi_clockreset_clk     (MCU_CLK),
      .csi_clockreset_reset_n (S20_ATA8_Interface_ata_reset_n),
      .ins_intrq_irq          (S20_ATA8_Interface_ata_irq)
    );

  //reset is asserted asynchronously and deasserted synchronously
  EXB51_MAIN_reset_MCU_CLK_domain_synch_module EXB51_MAIN_reset_MCU_CLK_domain_synch
    (
      .clk      (MCU_CLK),
      .data_in  (1'b1),
      .data_out (MCU_CLK_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0);


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/10.1sp1/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/10.1sp1/quartus/eda/sim_lib/220model.v"
`include "c:/altera/10.1sp1/quartus/eda/sim_lib/sgate.v"
`include "sopc_root/SOPC_MemLCD.v"
`include "S11_T6963_LCD.v"
`include "sopc_root/SOPC_OptionKey.v"
`include "S02_OptKey.v"
`include "sopc_root/SOPC_PNLPort.v"
`include "S10_PNLCtrl.v"
`include "sopc_root/SOPC_GlobalReset.v"
`include "S01_Reset.v"
`include "sopc_root/SOPC_ATAPort.v"
`include "S20_ATA8_Interface.v"
`include "sopc_root/SOPC_IntKey.v"
`include "S03_IntrqKey.v"
`include "sopc_root/SOPC_ChipID.v"
`include "S00_ChipID.v"
`include "sopc_root/SOPC_SEM51Host.v"
`include "H00_SEM51Host.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire    [  4: 0] ATA_ADDR_from_the_S20_ATA8_Interface;
  wire             ATA_DATA_DIR_from_the_S20_ATA8_Interface;
  wire    [ 15: 0] ATA_DATA_to_and_from_the_S20_ATA8_Interface;
  wire             ATA_INTRQ_to_the_S20_ATA8_Interface;
  wire             ATA_OEN_from_the_S20_ATA8_Interface;
  wire             ATA_WAITN_to_the_S20_ATA8_Interface;
  wire             ATA_WEN_from_the_S20_ATA8_Interface;
  wire             BATFL_OUT_from_the_S01_Reset;
  wire             INT_KEY_to_the_S03_IntrqKey;
  wire             LCD_BUF_DIR_from_the_S11_T6963_LCD;
  wire    [  3: 0] LCD_CTRL_from_the_S11_T6963_LCD;
  wire    [ 15: 0] LCD_DATA_to_and_from_the_S11_T6963_LCD;
  reg              MCU_CLK;
  wire    [  3: 0] OPT_IN_to_the_S02_OptKey;
  wire             PNL_CLK_to_the_S10_PNLCtrl;
  wire             PNL_DI_to_the_S10_PNLCtrl;
  wire             PNL_DO_from_the_S10_PNLCtrl;
  wire             PNL_LE_to_the_S10_PNLCtrl;
  wire             PNL_STA_to_the_S10_PNLCtrl;
  wire             RESET_OUT_from_the_S01_Reset;
  wire    [ 12: 0] SEM_ADDR_to_the_H00_SEM51Host;
  wire             SEM_CINT_from_the_H00_SEM51Host;
  wire             SEM_CSN_to_the_H00_SEM51Host;
  wire    [ 15: 0] SEM_DATA_to_and_from_the_H00_SEM51Host;
  wire             SEM_INT00_from_the_H00_SEM51Host;
  wire             SEM_INT01_from_the_H00_SEM51Host;
  wire             SEM_INT02_from_the_H00_SEM51Host;
  wire             SEM_INT04_from_the_H00_SEM51Host;
  wire             SEM_INT05_from_the_H00_SEM51Host;
  wire             SEM_INT06_from_the_H00_SEM51Host;
  wire             SEM_OEN_to_the_H00_SEM51Host;
  wire             SEM_WAITN_from_the_H00_SEM51Host;
  wire             SEM_WEN_to_the_H00_SEM51Host;
  wire             clk;
  reg              reset_n;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  EXB51_MAIN DUT
    (
      .ATA_ADDR_from_the_S20_ATA8_Interface        (ATA_ADDR_from_the_S20_ATA8_Interface),
      .ATA_DATA_DIR_from_the_S20_ATA8_Interface    (ATA_DATA_DIR_from_the_S20_ATA8_Interface),
      .ATA_DATA_to_and_from_the_S20_ATA8_Interface (ATA_DATA_to_and_from_the_S20_ATA8_Interface),
      .ATA_INTRQ_to_the_S20_ATA8_Interface         (ATA_INTRQ_to_the_S20_ATA8_Interface),
      .ATA_OEN_from_the_S20_ATA8_Interface         (ATA_OEN_from_the_S20_ATA8_Interface),
      .ATA_WAITN_to_the_S20_ATA8_Interface         (ATA_WAITN_to_the_S20_ATA8_Interface),
      .ATA_WEN_from_the_S20_ATA8_Interface         (ATA_WEN_from_the_S20_ATA8_Interface),
      .BATFL_OUT_from_the_S01_Reset                (BATFL_OUT_from_the_S01_Reset),
      .INT_KEY_to_the_S03_IntrqKey                 (INT_KEY_to_the_S03_IntrqKey),
      .LCD_BUF_DIR_from_the_S11_T6963_LCD          (LCD_BUF_DIR_from_the_S11_T6963_LCD),
      .LCD_CTRL_from_the_S11_T6963_LCD             (LCD_CTRL_from_the_S11_T6963_LCD),
      .LCD_DATA_to_and_from_the_S11_T6963_LCD      (LCD_DATA_to_and_from_the_S11_T6963_LCD),
      .MCU_CLK                                     (MCU_CLK),
      .OPT_IN_to_the_S02_OptKey                    (OPT_IN_to_the_S02_OptKey),
      .PNL_CLK_to_the_S10_PNLCtrl                  (PNL_CLK_to_the_S10_PNLCtrl),
      .PNL_DI_to_the_S10_PNLCtrl                   (PNL_DI_to_the_S10_PNLCtrl),
      .PNL_DO_from_the_S10_PNLCtrl                 (PNL_DO_from_the_S10_PNLCtrl),
      .PNL_LE_to_the_S10_PNLCtrl                   (PNL_LE_to_the_S10_PNLCtrl),
      .PNL_STA_to_the_S10_PNLCtrl                  (PNL_STA_to_the_S10_PNLCtrl),
      .RESET_OUT_from_the_S01_Reset                (RESET_OUT_from_the_S01_Reset),
      .SEM_ADDR_to_the_H00_SEM51Host               (SEM_ADDR_to_the_H00_SEM51Host),
      .SEM_CINT_from_the_H00_SEM51Host             (SEM_CINT_from_the_H00_SEM51Host),
      .SEM_CSN_to_the_H00_SEM51Host                (SEM_CSN_to_the_H00_SEM51Host),
      .SEM_DATA_to_and_from_the_H00_SEM51Host      (SEM_DATA_to_and_from_the_H00_SEM51Host),
      .SEM_INT00_from_the_H00_SEM51Host            (SEM_INT00_from_the_H00_SEM51Host),
      .SEM_INT01_from_the_H00_SEM51Host            (SEM_INT01_from_the_H00_SEM51Host),
      .SEM_INT02_from_the_H00_SEM51Host            (SEM_INT02_from_the_H00_SEM51Host),
      .SEM_INT04_from_the_H00_SEM51Host            (SEM_INT04_from_the_H00_SEM51Host),
      .SEM_INT05_from_the_H00_SEM51Host            (SEM_INT05_from_the_H00_SEM51Host),
      .SEM_INT06_from_the_H00_SEM51Host            (SEM_INT06_from_the_H00_SEM51Host),
      .SEM_OEN_to_the_H00_SEM51Host                (SEM_OEN_to_the_H00_SEM51Host),
      .SEM_WAITN_from_the_H00_SEM51Host            (SEM_WAITN_from_the_H00_SEM51Host),
      .SEM_WEN_to_the_H00_SEM51Host                (SEM_WEN_to_the_H00_SEM51Host),
      .reset_n                                     (reset_n)
    );

  initial
    MCU_CLK = 1'b0;
  always
     if (MCU_CLK == 1'b1) 
    #10 MCU_CLK <= ~MCU_CLK;
     else 
    #11 MCU_CLK <= ~MCU_CLK;
  
  initial 
    begin
      reset_n <= 0;
      #210 reset_n <= 1;
    end

endmodule


//synthesis translate_on
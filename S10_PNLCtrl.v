// S10_PNLCtrl.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module S10_PNLCtrl (
		input  wire       csi_clockreset_clk,     //       clockreset.clk
		input  wire       csi_clockreset_reset_n, // clockreset_reset.reset_n
		output wire [7:0] avs_addr_readdata,      //             addr.readdata
		input  wire [7:0] avs_addr_writedata,     //                 .writedata
		input  wire       avs_addr_write_n,       //                 .write_n
		output wire       avs_addr_waitrequest_n, //                 .waitrequest_n
		output wire [7:0] avs_key0_readdata,      //             key0.readdata
		input  wire [7:0] avs_key0_writedata,     //                 .writedata
		input  wire       avs_key0_write_n,       //                 .write_n
		output wire       avs_key0_waitrequest_n, //                 .waitrequest_n
		output wire [7:0] avs_key1_readdata,      //             key1.readdata
		input  wire [7:0] avs_key1_writedata,     //                 .writedata
		input  wire       avs_key1_write_n,       //                 .write_n
		output wire       avs_key1_waitrequest_n, //                 .waitrequest_n
		output wire [7:0] avs_key2_readdata,      //             key2.readdata
		input  wire [7:0] avs_key2_writedata,     //                 .writedata
		input  wire       avs_key2_write_n,       //                 .write_n
		output wire       avs_key2_waitrequest_n, //                 .waitrequest_n
		output wire [7:0] avs_key3_readdata,      //             key3.readdata
		input  wire [7:0] avs_key3_writedata,     //                 .writedata
		input  wire       avs_key3_write_n,       //                 .write_n
		output wire       avs_key3_waitrequest_n, //                 .waitrequest_n
		output wire [7:0] avs_ctrl_readdata,      //             ctrl.readdata
		input  wire [7:0] avs_ctrl_writedata,     //                 .writedata
		input  wire       avs_ctrl_write_n,       //                 .write_n
		output wire       avs_ctrl_waitrequest_n, //                 .waitrequest_n
		output wire       ins_event_irq,          //            event.irq
		output wire       PNL_DO,                 //           EXPORT.export
		input  wire       PNL_DI,                 //                 .export
		input  wire       PNL_CLK,                //                 .export
		input  wire       PNL_LE,                 //                 .export
		input  wire       PNL_STA                 //                 .export
	);

	PNLPort s10_pnlctrl (
		.csi_clockreset_clk     (csi_clockreset_clk),     //       clockreset.clk
		.csi_clockreset_reset_n (csi_clockreset_reset_n), // clockreset_reset.reset_n
		.avs_addr_readdata      (avs_addr_readdata),      //             addr.readdata
		.avs_addr_writedata     (avs_addr_writedata),     //                 .writedata
		.avs_addr_write_n       (avs_addr_write_n),       //                 .write_n
		.avs_addr_waitrequest_n (avs_addr_waitrequest_n), //                 .waitrequest_n
		.avs_key0_readdata      (avs_key0_readdata),      //             key0.readdata
		.avs_key0_writedata     (avs_key0_writedata),     //                 .writedata
		.avs_key0_write_n       (avs_key0_write_n),       //                 .write_n
		.avs_key0_waitrequest_n (avs_key0_waitrequest_n), //                 .waitrequest_n
		.avs_key1_readdata      (avs_key1_readdata),      //             key1.readdata
		.avs_key1_writedata     (avs_key1_writedata),     //                 .writedata
		.avs_key1_write_n       (avs_key1_write_n),       //                 .write_n
		.avs_key1_waitrequest_n (avs_key1_waitrequest_n), //                 .waitrequest_n
		.avs_key2_readdata      (avs_key2_readdata),      //             key2.readdata
		.avs_key2_writedata     (avs_key2_writedata),     //                 .writedata
		.avs_key2_write_n       (avs_key2_write_n),       //                 .write_n
		.avs_key2_waitrequest_n (avs_key2_waitrequest_n), //                 .waitrequest_n
		.avs_key3_readdata      (avs_key3_readdata),      //             key3.readdata
		.avs_key3_writedata     (avs_key3_writedata),     //                 .writedata
		.avs_key3_write_n       (avs_key3_write_n),       //                 .write_n
		.avs_key3_waitrequest_n (avs_key3_waitrequest_n), //                 .waitrequest_n
		.avs_ctrl_readdata      (avs_ctrl_readdata),      //             ctrl.readdata
		.avs_ctrl_writedata     (avs_ctrl_writedata),     //                 .writedata
		.avs_ctrl_write_n       (avs_ctrl_write_n),       //                 .write_n
		.avs_ctrl_waitrequest_n (avs_ctrl_waitrequest_n), //                 .waitrequest_n
		.ins_event_irq          (ins_event_irq),          //            event.irq
		.PNL_DO                 (PNL_DO),                 //           EXPORT.export
		.PNL_DI                 (PNL_DI),                 //                 .export
		.PNL_CLK                (PNL_CLK),                //                 .export
		.PNL_LE                 (PNL_LE),                 //                 .export
		.PNL_STA                (PNL_STA)                 //                 .export
	);

endmodule

// S01_Reset.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module S01_Reset (
		input  wire       csi_clockreset_clk,      //       clockreset.clk
		input  wire       csi_clockreset_reset_n,  // clockreset_reset.reset_n
		output wire [7:0] avs_reset_readdata,      //            reset.readdata
		input  wire [7:0] avs_reset_writedata,     //                 .writedata
		input  wire       avs_reset_write_n,       //                 .write_n
		input  wire       avs_reset_read_n,        //                 .read_n
		output wire       avs_reset_waitrequest_n, //                 .waitrequest_n
		output wire       RESET_OUT,               //           EXPORT.export
		output wire       BATFL_OUT                //                 .export
	);

	GlobalReset s01_reset (
		.csi_clockreset_clk      (csi_clockreset_clk),      //       clockreset.clk
		.csi_clockreset_reset_n  (csi_clockreset_reset_n),  // clockreset_reset.reset_n
		.avs_reset_readdata      (avs_reset_readdata),      //            reset.readdata
		.avs_reset_writedata     (avs_reset_writedata),     //                 .writedata
		.avs_reset_write_n       (avs_reset_write_n),       //                 .write_n
		.avs_reset_read_n        (avs_reset_read_n),        //                 .read_n
		.avs_reset_waitrequest_n (avs_reset_waitrequest_n), //                 .waitrequest_n
		.RESET_OUT               (RESET_OUT),               //           EXPORT.export
		.BATFL_OUT               (BATFL_OUT)                //                 .export
	);

endmodule

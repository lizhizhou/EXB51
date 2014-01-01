// S02_OptKey.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module S02_OptKey (
		input  wire       csi_clockreset_clk,       //       clockreset.clk
		input  wire       csi_clockreset_reset_n,   // clockreset_reset.reset_n
		output wire [7:0] avs_optkey_readdata,      //           optkey.readdata
		output wire       avs_optkey_waitrequest_n, //                 .waitrequest_n
		input  wire [3:0] OPT_IN                    //           EXPORT.writebyteenable_n
	);

	SOPC_OptionKey s02_optkey (
		.csi_clockreset_clk       (csi_clockreset_clk),       //       clockreset.clk
		.csi_clockreset_reset_n   (csi_clockreset_reset_n),   // clockreset_reset.reset_n
		.avs_optkey_readdata      (avs_optkey_readdata),      //           optkey.readdata
		.avs_optkey_waitrequest_n (avs_optkey_waitrequest_n), //                 .waitrequest_n
		.OPT_IN                   (OPT_IN)                    //           EXPORT.writebyteenable_n
	);

endmodule

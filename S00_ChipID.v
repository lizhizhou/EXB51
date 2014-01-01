// S00_ChipID.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module S00_ChipID (
		input  wire       csi_clockreset_clk,      //       clockreset.clk
		input  wire       csi_clockreset_reset_n,  // clockreset_reset.reset_n
		output wire [7:0] avs_idout_readdata,      //            idout.readdata
		output wire       avs_idout_waitrequest_n  //                 .waitrequest_n
	);

	ChipID s00_chipid (
		.csi_clockreset_clk      (csi_clockreset_clk),      //       clockreset.clk
		.csi_clockreset_reset_n  (csi_clockreset_reset_n),  // clockreset_reset.reset_n
		.avs_idout_readdata      (avs_idout_readdata),      //            idout.readdata
		.avs_idout_waitrequest_n (avs_idout_waitrequest_n)  //                 .waitrequest_n
	);

endmodule

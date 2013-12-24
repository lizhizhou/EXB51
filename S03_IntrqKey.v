// S03_IntrqKey.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module S03_IntrqKey (
		input  wire       csi_clockreset_clk,       //       clockreset.clk
		input  wire       csi_clockreset_reset_n,   // clockreset_reset.reset_n
		output wire [7:0] avs_intkey_readdata,      //           intkey.readdata
		output wire       avs_intkey_waitrequest_n, //                 .waitrequest_n
		output wire       ins_intrq_irq,            //            intrq.irq
		input  wire       INT_KEY                   //           EXPORT.beginbursttransfer_n
	);

	SOPC_IntKey s03_intrqkey (
		.csi_clockreset_clk       (csi_clockreset_clk),       //       clockreset.clk
		.csi_clockreset_reset_n   (csi_clockreset_reset_n),   // clockreset_reset.reset_n
		.avs_intkey_readdata      (avs_intkey_readdata),      //           intkey.readdata
		.avs_intkey_waitrequest_n (avs_intkey_waitrequest_n), //                 .waitrequest_n
		.ins_intrq_irq            (ins_intrq_irq),            //            intrq.irq
		.INT_KEY                  (INT_KEY)                   //           EXPORT.beginbursttransfer_n
	);

endmodule

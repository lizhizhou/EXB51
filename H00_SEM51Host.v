// H00_SEM51Host.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module H00_SEM51Host (
		input  wire        csi_clockreset_clk,     //       clockreset.clk
		input  wire        csi_clockreset_reset_n, // clockreset_reset.reset_n
		inout  wire [15:0] SEM_DATA,               //           EXPORT.export
		input  wire [12:0] SEM_ADDR,               //                 .export
		input  wire        SEM_WEN,                //                 .export
		input  wire        SEM_OEN,                //                 .export
		input  wire        SEM_CSN,                //                 .export
		output wire        SEM_WAITN,              //                 .export
		output wire        SEM_CINT,               //                 .export
		output wire        SEM_INT00,              //                 .export
		output wire        SEM_INT01,              //                 .export
		output wire        SEM_INT02,              //                 .export
		output wire        SEM_INT04,              //                 .export
		output wire        SEM_INT05,              //                 .export
		output wire        SEM_INT06,              //                 .export
		output wire [7:0]  avm_m0_writedata,       //               m0.writedata
		input  wire [7:0]  avm_m0_readdata,        //                 .readdata
		output wire [12:0] avm_m0_address,         //                 .address
		output wire        avm_m0_write_n,         //                 .write_n
		output wire        avm_m0_read_n,          //                 .read_n
		output wire        avm_m0_chipselect_n,    //                 .chipselect_n
		input  wire        avm_m0_waitrequest_n,   //                 .waitrequest_n
		input  wire [6:0]  inr_irq0_irq            //             irq0.irq
	);

	SEM51Host h00_sem51host (
		.csi_clockreset_clk     (csi_clockreset_clk),     //       clockreset.clk
		.csi_clockreset_reset_n (csi_clockreset_reset_n), // clockreset_reset.reset_n
		.SEM_DATA               (SEM_DATA),               //           EXPORT.export
		.SEM_ADDR               (SEM_ADDR),               //                 .export
		.SEM_WEN                (SEM_WEN),                //                 .export
		.SEM_OEN                (SEM_OEN),                //                 .export
		.SEM_CSN                (SEM_CSN),                //                 .export
		.SEM_WAITN              (SEM_WAITN),              //                 .export
		.SEM_CINT               (SEM_CINT),               //                 .export
		.SEM_INT00              (SEM_INT00),              //                 .export
		.SEM_INT01              (SEM_INT01),              //                 .export
		.SEM_INT02              (SEM_INT02),              //                 .export
		.SEM_INT04              (SEM_INT04),              //                 .export
		.SEM_INT05              (SEM_INT05),              //                 .export
		.SEM_INT06              (SEM_INT06),              //                 .export
		.avm_m0_writedata       (avm_m0_writedata),       //               m0.writedata
		.avm_m0_readdata        (avm_m0_readdata),        //                 .readdata
		.avm_m0_address         (avm_m0_address),         //                 .address
		.avm_m0_write_n         (avm_m0_write_n),         //                 .write_n
		.avm_m0_read_n          (avm_m0_read_n),          //                 .read_n
		.avm_m0_chipselect_n    (avm_m0_chipselect_n),    //                 .chipselect_n
		.avm_m0_waitrequest_n   (avm_m0_waitrequest_n),   //                 .waitrequest_n
		.inr_irq0_irq           (inr_irq0_irq)            //             irq0.irq
	);

endmodule

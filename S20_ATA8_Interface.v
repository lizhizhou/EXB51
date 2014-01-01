// S20_ATA8_Interface.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module S20_ATA8_Interface (
		input  wire        csi_clockreset_clk,     //       clockreset.clk
		input  wire        csi_clockreset_reset_n, // clockreset_reset.reset_n
		output wire [7:0]  avs_ata_readdata,       //              ata.readdata
		input  wire [7:0]  avs_ata_writedata,      //                 .writedata
		input  wire [4:0]  avs_ata_address,        //                 .address
		input  wire        avs_ata_chipselect_n,   //                 .chipselect_n
		input  wire        avs_ata_write_n,        //                 .write_n
		input  wire        avs_ata_read_n,         //                 .read_n
		output wire        avs_ata_waitrequest_n,  //                 .waitrequest_n
		output wire        ins_intrq_irq,          //            intrq.irq
		inout  wire [15:0] ATA_DATA,               //           EXPORT.export
		output wire [4:0]  ATA_ADDR,               //                 .export
		output wire        ATA_OEN,                //                 .export
		output wire        ATA_WEN,                //                 .export
		input  wire        ATA_WAITN,              //                 .export
		input  wire        ATA_INTRQ,              //                 .export
		output wire        ATA_DATA_DIR            //                 .export
	);

	ATAPort s20_ata8_interface (
		.csi_clockreset_clk     (csi_clockreset_clk),     //       clockreset.clk
		.csi_clockreset_reset_n (csi_clockreset_reset_n), // clockreset_reset.reset_n
		.avs_ata_readdata       (avs_ata_readdata),       //              ata.readdata
		.avs_ata_writedata      (avs_ata_writedata),      //                 .writedata
		.avs_ata_address        (avs_ata_address),        //                 .address
		.avs_ata_chipselect_n   (avs_ata_chipselect_n),   //                 .chipselect_n
		.avs_ata_write_n        (avs_ata_write_n),        //                 .write_n
		.avs_ata_read_n         (avs_ata_read_n),         //                 .read_n
		.avs_ata_waitrequest_n  (avs_ata_waitrequest_n),  //                 .waitrequest_n
		.ins_intrq_irq          (ins_intrq_irq),          //            intrq.irq
		.ATA_DATA               (ATA_DATA),               //           EXPORT.export
		.ATA_ADDR               (ATA_ADDR),               //                 .export
		.ATA_OEN                (ATA_OEN),                //                 .export
		.ATA_WEN                (ATA_WEN),                //                 .export
		.ATA_WAITN              (ATA_WAITN),              //                 .export
		.ATA_INTRQ              (ATA_INTRQ),              //                 .export
		.ATA_DATA_DIR           (ATA_DATA_DIR)            //                 .export
	);

endmodule

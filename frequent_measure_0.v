// frequent_measure_0.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module frequent_measure_0 (
		input  wire       rsi_MRST_reset,     //     mrst.reset
		input  wire       csi_MCLK_clk,       //     mclk.clk
		input  wire [7:0] avs_ctrl_writedata, //     ctrl.writedata
		output wire [7:0] avs_ctrl_readdata,  //         .readdata
		input  wire [3:0] avs_ctrl_address,   //         .address
		input  wire       avs_ctrl_write,     //         .write
		input  wire       avs_ctrl_read,      //         .read
		input  wire       frequent            // frequent.export
	);

	frequent_measure frequent_measure_0 (
		.rsi_MRST_reset     (rsi_MRST_reset),     //     mrst.reset
		.csi_MCLK_clk       (csi_MCLK_clk),       //     mclk.clk
		.avs_ctrl_writedata (avs_ctrl_writedata), //     ctrl.writedata
		.avs_ctrl_readdata  (avs_ctrl_readdata),  //         .readdata
		.avs_ctrl_address   (avs_ctrl_address),   //         .address
		.avs_ctrl_write     (avs_ctrl_write),     //         .write
		.avs_ctrl_read      (avs_ctrl_read),      //         .read
		.frequent           (frequent)            // frequent.export
	);

endmodule

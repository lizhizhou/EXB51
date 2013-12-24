// S11_T6963_LCD.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module S11_T6963_LCD (
		input  wire        csi_clockreset_clk,     //       clockreset.clk
		input  wire        csi_clockreset_reset_n, // clockreset_reset.reset_n
		output wire [7:0]  avs_lcd_readdata,       //              lcd.readdata
		input  wire [7:0]  avs_lcd_writedata,      //                 .writedata
		input  wire        avs_lcd_address,        //                 .address
		input  wire        avs_lcd_chipselect_n,   //                 .chipselect_n
		input  wire        avs_lcd_write_n,        //                 .write_n
		input  wire        avs_lcd_read_n,         //                 .read_n
		output wire        avs_lcd_waitrequest_n,  //                 .waitrequest_n
		inout  wire [15:0] LCD_DATA,               //           EXPORT.export
		output wire [3:0]  LCD_CTRL,               //                 .export
		output wire        LCD_BUF_DIR             //                 .export
	);

	MemLCD s11_t6963_lcd (
		.csi_clockreset_clk     (csi_clockreset_clk),     //       clockreset.clk
		.csi_clockreset_reset_n (csi_clockreset_reset_n), // clockreset_reset.reset_n
		.avs_lcd_readdata       (avs_lcd_readdata),       //              lcd.readdata
		.avs_lcd_writedata      (avs_lcd_writedata),      //                 .writedata
		.avs_lcd_address        (avs_lcd_address),        //                 .address
		.avs_lcd_chipselect_n   (avs_lcd_chipselect_n),   //                 .chipselect_n
		.avs_lcd_write_n        (avs_lcd_write_n),        //                 .write_n
		.avs_lcd_read_n         (avs_lcd_read_n),         //                 .read_n
		.avs_lcd_waitrequest_n  (avs_lcd_waitrequest_n),  //                 .waitrequest_n
		.LCD_DATA               (LCD_DATA),               //           EXPORT.export
		.LCD_CTRL               (LCD_CTRL),               //                 .export
		.LCD_BUF_DIR            (LCD_BUF_DIR)             //                 .export
	);

endmodule

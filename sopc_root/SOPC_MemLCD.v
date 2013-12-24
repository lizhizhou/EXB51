module MemLCD(
csi_clockreset_clk,
csi_clockreset_reset_n,

avs_lcd_readdata,
avs_lcd_writedata,
avs_lcd_address,
avs_lcd_chipselect_n,
avs_lcd_write_n,
avs_lcd_read_n,
avs_lcd_waitrequest_n,

LCD_DATA,
LCD_CTRL,
LCD_BUF_DIR
);

input					csi_clockreset_clk, csi_clockreset_reset_n;

input		[7:0]		avs_lcd_writedata;
output	[7:0]		avs_lcd_readdata;

input					avs_lcd_address;
input					avs_lcd_chipselect_n;
input					avs_lcd_write_n, avs_lcd_read_n;
output				avs_lcd_waitrequest_n;

inout		[15:0]	LCD_DATA;
output	[3:0]		LCD_CTRL;
output				LCD_BUF_DIR;

wire					LCD_IORn, LCD_IOWn, LCD_CD, LCD_CE;

assign	avs_lcd_waitrequest_n = 1'b1;

assign	avs_lcd_readdata = LCD_DATA[7:0];
assign	LCD_DATA = (avs_lcd_write_n == 1'b0) ? {8'b0, avs_lcd_writedata} : 16'bzzzzzzzzzzzzzzzz;

assign	LCD_IORn = avs_lcd_read_n;
assign	LCD_IOWn = avs_lcd_write_n;
assign	LCD_CE = avs_lcd_chipselect_n;
assign	LCD_CD = avs_lcd_address;

assign	LCD_CTRL[0] = LCD_CE;
assign	LCD_CTRL[1] = LCD_IORn;
assign	LCD_CTRL[2] = LCD_IOWn;
assign	LCD_CTRL[3] = LCD_CD;
assign	LCD_BUF_DIR = avs_lcd_write_n;

endmodule

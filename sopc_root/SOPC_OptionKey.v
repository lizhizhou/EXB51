module SOPC_OptionKey(

csi_clockreset_clk,
csi_clockreset_reset_n,

avs_optkey_readdata,
avs_optkey_waitrequest_n,

OPT_IN

);

input					csi_clockreset_clk, csi_clockreset_reset_n;

output	[7:0]		avs_optkey_readdata;
output				avs_optkey_waitrequest_n;

input		[3:0]		OPT_IN;

assign	avs_optkey_readdata = {4'b0, OPT_IN};
assign	avs_optkey_waitrequest_n = 1'b1;

endmodule

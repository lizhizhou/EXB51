module ChipID(
csi_clockreset_clk,
csi_clockreset_reset_n,

avs_idout_readdata,
avs_idout_waitrequest_n
);

input					csi_clockreset_clk, csi_clockreset_reset_n;

output	[7:0]		avs_idout_readdata;
output				avs_idout_waitrequest_n;

assign	avs_idout_readdata = 8'hBE;
assign	avs_idout_waitrequest_n = 1'b1;

endmodule

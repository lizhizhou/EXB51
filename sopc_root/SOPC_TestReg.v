module TestReg(
csi_clockreset_clk,
csi_clockreset_reset_n,

avs_test_readdata,
avs_test_writedata,
avs_test_write_n,
avs_test_waitrequest_n
);

input					csi_clockreset_clk, csi_clockreset_reset_n;

input		[7:0]	avs_test_writedata;
output	[7:0]	avs_test_readdata;

input					avs_test_write_n;
output				avs_test_waitrequest_n;

reg		[7:0]	test_reg;

assign	avs_test_readdata = test_reg;
assign	avs_test_waitrequest_n = 1'b1;

always@(posedge csi_clockreset_clk or negedge csi_clockreset_reset_n)
begin
	if(!csi_clockreset_reset_n) test_reg <= 0;
	else if(!avs_test_write_n) test_reg <= avs_test_writedata;
end

endmodule

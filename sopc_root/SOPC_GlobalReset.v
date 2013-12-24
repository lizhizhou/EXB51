module GlobalReset(
csi_clockreset_clk,
csi_clockreset_reset_n,

avs_reset_readdata,
avs_reset_writedata,
avs_reset_write_n,
avs_reset_read_n,
avs_reset_waitrequest_n,

RESET_OUT,
BATFL_OUT
);


input					csi_clockreset_clk, csi_clockreset_reset_n;

input		[7:0]	avs_reset_writedata;
output	[7:0]	avs_reset_readdata;

input					avs_reset_write_n, avs_reset_read_n;
output				avs_reset_waitrequest_n;

output				RESET_OUT, BATFL_OUT;
reg					RESET_OUT, BATFL_OUT;

assign	avs_reset_readdata = {6'b0, BATFL_OUT, RESET_OUT};
assign	avs_reset_waitrequest_n = 1'b1;

always@(posedge csi_clockreset_clk or negedge csi_clockreset_reset_n)
begin
	if(!csi_clockreset_reset_n) begin BATFL_OUT <= 1'b1; RESET_OUT <= 1'b0; end
	else if(!avs_reset_write_n) begin BATFL_OUT <= avs_reset_writedata[1]; RESET_OUT <= avs_reset_writedata[0]; end
end

endmodule

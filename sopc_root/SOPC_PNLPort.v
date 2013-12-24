module PNLPort(

// Global clock and reset

csi_clockreset_clk,
csi_clockreset_reset_n,

avs_addr_readdata,
avs_addr_writedata,
avs_addr_write_n,
avs_addr_waitrequest_n,

avs_key0_readdata,
avs_key0_writedata,
avs_key0_write_n,
avs_key0_waitrequest_n,

avs_key1_readdata,
avs_key1_writedata,
avs_key1_write_n,
avs_key1_waitrequest_n,

avs_key2_readdata,
avs_key2_writedata,
avs_key2_write_n,
avs_key2_waitrequest_n,

avs_key3_readdata,
avs_key3_writedata,
avs_key3_write_n,
avs_key3_waitrequest_n,

avs_ctrl_readdata,
avs_ctrl_writedata,
avs_ctrl_write_n,
avs_ctrl_waitrequest_n,

ins_event_irq,

PNL_DO,
PNL_DI,
PNL_CLK,
PNL_LE,
PNL_STA

);

input					csi_clockreset_clk, csi_clockreset_reset_n;

wire					mclk, mclr;

assign	mclk = csi_clockreset_clk;
assign	mclr = csi_clockreset_reset_n;

output	[7:0]		avs_addr_readdata;
input		[7:0]		avs_addr_writedata;
input					avs_addr_write_n;
output				avs_addr_waitrequest_n;

assign	avs_addr_waitrequest_n = 1'b1;

output	[7:0]		avs_key0_readdata;
input		[7:0]		avs_key0_writedata;
input					avs_key0_write_n;
output				avs_key0_waitrequest_n;

assign	avs_key0_readdata = recv_buf[7:0];
assign	avs_key0_waitrequest_n = 1'b1;

output	[7:0]		avs_key1_readdata;
input		[7:0]		avs_key1_writedata;
input					avs_key1_write_n;
output				avs_key1_waitrequest_n;

assign	avs_key1_readdata = recv_buf[15:8];
assign	avs_key1_waitrequest_n = 1'b1;

output	[7:0]		avs_key2_readdata;
input		[7:0]		avs_key2_writedata;
input					avs_key2_write_n;
output				avs_key2_waitrequest_n;

assign	avs_key2_readdata = recv_buf[23:16];
assign	avs_key2_waitrequest_n = 1'b1;

output	[7:0]		avs_key3_readdata;
input		[7:0]		avs_key3_writedata;
input					avs_key3_write_n;
output				avs_key3_waitrequest_n;

assign	avs_key3_readdata = recv_buf[31:24];
assign	avs_key3_waitrequest_n = 1'b1;

output	[7:0]		avs_ctrl_readdata;
input		[7:0]		avs_ctrl_writedata;
input					avs_ctrl_write_n;
output				avs_ctrl_waitrequest_n;

assign	avs_ctrl_readdata = {6'b0, recv_sta, send_sta};
assign	avs_ctrl_waitrequest_n = 1'b1;

output				ins_event_irq;
assign	ins_event_irq = recv_sta & PNL_LE & PNL_STA;

//Exports
output				PNL_DO;
input					PNL_DI, PNL_CLK, PNL_LE, PNL_STA;

assign	avs_addr_readdata = recv_add;

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) begin
		send_add <= 0;
	end
	else begin
		if(!avs_addr_write_n) send_add <= avs_addr_writedata;
	end
end

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) send_buf[7:0] <= 0;
	else if(!avs_key0_write_n) send_buf[7:0] <= avs_key0_writedata;
end

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) send_buf[15:8] <= 0;
	else if(!avs_key1_write_n) send_buf[15:8] <= avs_key1_writedata;
end

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) send_buf[23:16] <= 0;
	else if(!avs_key2_write_n) send_buf[23:16] <= avs_key2_writedata;
end

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) send_buf[31:24] <= 0;
	else if(!avs_key3_write_n) send_buf[31:24] <= avs_key3_writedata;
end

always@(posedge mclk or negedge mclr)
begin
	if(!mclr) send_sta <= 1'b0;
	else if(!avs_ctrl_write_n) send_sta <= avs_ctrl_writedata[0];
end

reg		[31:0]	send_buf = 0, recv_buf = 0;
reg		[7:0]		send_add = 0, recv_add = 0;
reg					send_sta = 1'b0, recv_sta = 1'b0;

reg		[4:0]		state = 0;

reg					sdo = 1'b0;

wire					sclk, sden, sten, sdi;

assign	sclk = PNL_CLK;
assign	sden = PNL_LE;
assign	sten = PNL_STA;
assign	sdi = PNL_DI;
assign	PNL_DO = sdo;

always@(posedge sclk or negedge mclr)
begin
	if(!mclr) begin
		state <= 0;	
	end
	else begin
		case(state)
			
			0:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[0]; recv_buf[0] <= sdi; end
						else begin sdo <= send_sta; recv_sta <= sdi; end
						state <= state + 1;
					end
				end
				
			1:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[1]; recv_buf[1] <= sdi; end
						else begin sdo <= send_add[0]; recv_add[0] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end
			
			2:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[2]; recv_buf[2] <= sdi; end
						else begin sdo <= send_add[1]; recv_add[1] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			3:	 begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[3]; recv_buf[3] <= sdi; end
						else begin sdo <= send_add[2]; recv_add[2] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end
			4:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[4]; recv_buf[4] <= sdi; end
						else begin sdo <= send_add[3]; recv_add[3] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			5:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[5]; recv_buf[5] <= sdi; end
						else begin sdo <= send_add[4]; recv_add[4] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			6:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[6]; recv_buf[6] <= sdi; end
						else begin sdo <= send_add[5]; recv_add[5] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			7:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[7]; recv_buf[7] <= sdi; end
						else begin sdo <= send_add[6]; recv_add[6] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			8:	 begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[8]; recv_buf[8] <= sdi; end
						else begin sdo <= send_add[7]; recv_add[7] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end
				
			9:  begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[9]; recv_buf[9] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end
				
			10: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[10]; recv_buf[10] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end
				
			11: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[11]; recv_buf[11] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			12: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[12]; recv_buf[12] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			13: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[13]; recv_buf[13] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			14: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[14]; recv_buf[14] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			15: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[15]; recv_buf[15] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			16: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[16]; recv_buf[16] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			17: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[17]; recv_buf[17] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			18: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[18]; recv_buf[18] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			19: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[19]; recv_buf[19] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			20: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[20]; recv_buf[20] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			21: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[21]; recv_buf[21] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			22: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[22]; recv_buf[22] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			23: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[23]; recv_buf[23] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			24: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[24]; recv_buf[24] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			25: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[25]; recv_buf[25] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			26: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[26]; recv_buf[26] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			27: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[27]; recv_buf[27] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			28: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[28]; recv_buf[28] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			29: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[29]; recv_buf[29] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			30: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[30]; recv_buf[30] <= sdi; end
						state <= state + 1;
					end
					else begin
						state <= 0;
					end
				end

			31: begin
					if(!sden) begin
						if(!sten) begin sdo <= send_buf[31]; recv_buf[31] <= sdi; end
					end
					else begin
						state <= 0;
					end
				end
		endcase
	end
end

endmodule

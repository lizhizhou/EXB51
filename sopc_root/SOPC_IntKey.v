module SOPC_IntKey(

csi_clockreset_clk,
csi_clockreset_reset_n,

avs_intkey_readdata,
avs_intkey_waitrequest_n,

ins_intrq_irq,

INT_KEY

);

input					csi_clockreset_clk, csi_clockreset_reset_n;

output	[7:0]	avs_intkey_readdata;
output				avs_intkey_waitrequest_n;

output				ins_intrq_irq;
reg					ins_intrq_irq = 1'b0;

assign				avs_intkey_readdata = {7'b0, INT_KEY};
assign				avs_intkey_waitrequest_n = 1'b1;

reg		[15:0]	cnt_clk = 0;

wire					key_clk = cnt_clk[15];

input					INT_KEY;

reg		[1:0]		state = 0;

always@(posedge csi_clockreset_clk) cnt_clk <= cnt_clk + 1;

always@(posedge key_clk or negedge csi_clockreset_reset_n)
begin
	if(!csi_clockreset_reset_n) begin
		state <= 0;
		ins_intrq_irq <= 1'b0;
	end
	else begin
		case(state)
			0: begin
				ins_intrq_irq <= 1'b0;
				if(!INT_KEY) state <= 1;
			end
			
			1: begin
				if(!INT_KEY) state <= 2;
				else state <= 0;
			end
			
			2: begin
				ins_intrq_irq <= 1'b1;
				if(INT_KEY) state <= 0;
			end
			
			default: begin
				state <= 0;
				ins_intrq_irq <= 1'b0;
			end
		endcase
	end
end

endmodule

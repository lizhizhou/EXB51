module test_clk(
clk1,
clk2,
clk3,
clk4,

led
);

input					clk1, clk2, clk3, clk4;

output	[3:0]		led;

reg		[21:0]	cnt1 = 0; 
reg		[21:0]	cnt2 = 0;
reg		[21:0]	cnt3 = 0;
reg		[21:0]	cnt4 = 0;

always@(posedge clk1) cnt1 <= cnt1 + 1;
always@(posedge clk2) cnt2 <= cnt2 + 1;
always@(posedge clk3) cnt3 <= cnt3 + 1;
always@(posedge clk4) cnt4 <= cnt4 + 1;

assign	led[0] = cnt1[21];
assign	led[1] = cnt2[21];
assign	led[2] = cnt3[21];
assign	led[3] = cnt4[21];

endmodule

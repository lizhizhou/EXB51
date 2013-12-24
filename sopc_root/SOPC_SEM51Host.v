module SEM51Host(

//Global clock and reset

csi_clockreset_clk,
csi_clockreset_reset_n,

//MCU side signals

SEM_DATA,
SEM_ADDR,
SEM_WEN,
SEM_OEN,
SEM_CSN,

SEM_WAITN,

SEM_CINT,

SEM_INT00,
SEM_INT01,
SEM_INT02,
SEM_INT04,
SEM_INT05,
SEM_INT06,

//Avalon-MM side signals

avm_m0_writedata,
avm_m0_readdata,
avm_m0_address,
avm_m0_write_n,
avm_m0_read_n,
avm_m0_chipselect_n,
avm_m0_waitrequest_n,

inr_irq0_irq
);

input					csi_clockreset_clk, csi_clockreset_reset_n;

inout		[15:0]	SEM_DATA;
input		[12:0]	SEM_ADDR;

input					SEM_WEN, SEM_OEN;
input					SEM_CSN;
output				SEM_WAITN;

output				SEM_CINT;
output				SEM_INT00;
output				SEM_INT01;
output				SEM_INT02;
output				SEM_INT04;
output				SEM_INT05;
output				SEM_INT06;

output	[7:0]		avm_m0_writedata;
input		[7:0]		avm_m0_readdata;
output	[12:0]	avm_m0_address;
output				avm_m0_write_n, avm_m0_read_n;
output				avm_m0_chipselect_n;
input					avm_m0_waitrequest_n;

input		[6:0]		inr_irq0_irq;

assign	SEM_WAITN = (avm_m0_waitrequest_n == 1'b0) ? 1'b0 : 1'bz;

assign	SEM_CINT = inr_irq0_irq[0];
assign	SEM_INT00 = inr_irq0_irq[1];
assign	SEM_INT01 = inr_irq0_irq[2];
assign	SEM_INT02 = inr_irq0_irq[3];
assign	SEM_INT04 = inr_irq0_irq[4];
assign	SEM_INT05 = inr_irq0_irq[5];
assign	SEM_INT06 = inr_irq0_irq[6];

or(avm_m0_read_n, SEM_CSN, SEM_OEN);
or(avm_m0_write_n, SEM_CSN, SEM_WEN);
assign	avm_m0_chipselect_n = SEM_CSN;
assign	avm_m0_address = SEM_ADDR;

assign	SEM_DATA = ((SEM_CSN == 1'b0)&&(SEM_OEN == 1'b0)) ? {8'h0000, avm_m0_readdata} : 16'bzzzzzzzzzzzzzzzz;
assign	avm_m0_writedata = ((SEM_CSN == 1'b0)&&(SEM_WEN == 1'b0)) ? SEM_DATA[7:0] : 8'bzzzzzzzz;

endmodule

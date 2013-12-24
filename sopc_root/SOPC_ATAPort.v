module ATAPort(
csi_clockreset_clk,
csi_clockreset_reset_n,

avs_ata_readdata,
avs_ata_writedata,
avs_ata_address,
avs_ata_chipselect_n,
avs_ata_write_n,
avs_ata_read_n,
avs_ata_waitrequest_n,

ins_intrq_irq,

ATA_DATA,
ATA_ADDR,

ATA_OEN,
ATA_WEN,
ATA_WAITN,
ATA_INTRQ,

ATA_DATA_DIR
);

input					csi_clockreset_clk, csi_clockreset_reset_n;

input		[7:0]	avs_ata_writedata;
output	[7:0]	avs_ata_readdata;

input		[4:0]		avs_ata_address;
input					avs_ata_chipselect_n;
input					avs_ata_write_n, avs_ata_read_n;
output				avs_ata_waitrequest_n;

output				ins_intrq_irq;

inout		[15:0]	ATA_DATA;

output				ATA_OEN, ATA_WEN, ATA_DATA_DIR;
output	[4:0]		ATA_ADDR;
input					ATA_WAITN, ATA_INTRQ;

assign	avs_ata_readdata = ATA_DATA[7:0];
assign	ATA_DATA = (avs_ata_write_n == 1'b0) ? {8'h0000, avs_ata_writedata} : 16'bzzzzzzzzzzzzzzzz;
assign	ATA_ADDR = avs_ata_address;
assign	ATA_OEN = avs_ata_read_n;
assign	ATA_WEN = avs_ata_write_n;
assign	ATA_DATA_DIR = avs_ata_write_n;

assign	ins_intrq_irq = ATA_INTRQ;
assign	avs_ata_waitrequest_n = ATA_WAITN;

endmodule

module brushless_motor(
// Qsys bus interface	
		input					rsi_MRST_reset,
		input					csi_MCLK_clk,
		input		[7:0]	   avs_ctrl_writedata,
		output	[7:0]	   avs_ctrl_readdata,
		input		[3:0]		avs_ctrl_address,
		input					avs_ctrl_write,
		input					avs_ctrl_read,
		
//brushless_moter_interface		
		input I_limit,	
		
		input Ha,
		input Hb,
		input Hc,
		
		output Lau,		
		output Lbu,
		output Lcu,
		output Lad,
		output Lbd,
		output Lcd
		);
//Qsys controller		
	reg  forward_back;
	reg  brake;   
	wire error;		    	
	reg [31:0] PWM_width;
	reg [31:0] PWM_frequent;
	reg [7:0] read_data;
	assign	avs_ctrl_readdata = read_data;
	always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset) begin
			read_data <= 0;
		end
		else if(avs_ctrl_write) 
		begin
			case(avs_ctrl_address)
				9: PWM_frequent[31:24] <= avs_ctrl_writedata[7:0];
				8: PWM_frequent[23:16] <= avs_ctrl_writedata[7:0];	
				7: PWM_frequent[15:8] <= avs_ctrl_writedata[7:0];
				6: PWM_frequent[7:0] <= avs_ctrl_writedata[7:0];
				5: PWM_width[31:24] <= avs_ctrl_writedata[7:0];
				4: PWM_width[23:16] <= avs_ctrl_writedata[7:0];	
				3: PWM_width[15:8] <= avs_ctrl_writedata[7:0];	
				2: PWM_width[7:0] <= avs_ctrl_writedata[7:0];
				1: brake <= avs_ctrl_writedata[0];
				0: forward_back <= avs_ctrl_writedata[0];
				default:;
			endcase
	   end
		else begin
			case(avs_ctrl_address)
				9: read_data <= PWM_frequent[31:24];
				8: read_data <= PWM_frequent[23:16];
				7: read_data <= PWM_frequent[15:8];
				6: read_data <= PWM_frequent[7:0];
				5: read_data <= PWM_width[31:24];
				4: read_data <= PWM_width[23:16];
				3: read_data <= PWM_width[15:8];
				2: read_data <= PWM_width[7:0];					
				1: read_data <= {7'b0,brake};
				0: read_data <= {7'b0,forward_back};
				default: read_data <= 8'b0;
			endcase
		end
	end
	wire rsi_PWMRST_reset;
	wire csi_PWMCLK_clk;
	assign rsi_PWMRST_reset = rsi_MRST_reset;
   assign csi_PWMCLK_clk = csi_MCLK_clk;
	//PWM controller		
	reg [31:0] PWM;
	reg PWM_out;
	always @ (posedge csi_PWMCLK_clk or posedge rsi_PWMRST_reset)
	begin
		if(rsi_PWMRST_reset)
			PWM <= 32'b0;
		else
		begin
			PWM <= PWM + PWM_frequent;
			PWM_out <=(PWM > PWM_width) ? 1'b0:1'b1;   
		end
	end
//	assign PWM_out = 1;
//Brushless motor controller 			
	reg Lau_r;		
	reg Lbu_r;
	reg Lcu_r;
	reg Lad_r;
	reg Lbd_r;
	reg Lcd_r;		
	always @(Ha or Hb or Hc or I_limit or brake or forward_back)
	begin
		if(I_limit)
			{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'd0;
		else if(brake)
			{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b000111;
		else
		if(forward_back)		
			case ({Ha,Hb,Hc})
				3'b100:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b100001;
				3'b110:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b010001;
				3'b010:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b010100;
				3'b011:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b001100;
				3'b001:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b001010;
				3'b101:	
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b100010;
				default:					
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'd0;	
			endcase
		else 
			case ({Ha,Hb,Hc})
				3'b100:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b001100;
				3'b110:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b001010;
				3'b010:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b100010;
				3'b011:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b100001;
				3'b001:
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b010001;
				3'b101:	
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'b010100;
				default:					
					{Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}<= 6'd0;	
		endcase
	end	
	assign error = {Lau_r,Lbu_r,Lcu_r,Lad_r,Lbd_r,Lcd_r}?0:1;		
	assign Lau = Lau_r;		
	assign Lbu = Lbu_r;
	assign Lcu = Lcu_r;
	assign Lad = Lad_r & PWM_out;
	assign Lbd = Lbd_r & PWM_out;
	assign Lcd = Lcd_r & PWM_out;
endmodule
/****************************************************
				�Ⱦ���Ƶ�ʲ���
					V1.1
					2006.4.8
					��֪��
****************************************************/
module frequentmeasure#(
		parameter system_clk = 'd40004600,
		parameter gate_time  = 'd1
		)(
		input frequent,
		input clk,        
		
		input rd,
		input reset,
		output reg ready,
		input [2:0]address,
		output reg [7:0]data
		);
		
		wire gate;
		reg [31:0] tempgate;
		always@(posedge clk)				//������բ�ź�
			tempgate<=tempgate+107/2;//4294967296/system_clk/2*gate_time;			
		assign gate=tempgate[31];
		
		wire f1;
		wire f2;
		reg temp;
		assign f1=frequent & temp;
		assign f2=clk &  temp;
		always@(posedge frequent)
			temp<=gate;

		reg [7:0]state;												
		reg [7:0]nextstate;	
		always@(posedge clk or negedge reset) 
			if(!reset)state<=1;
			else state<=nextstate;
		always@(state or temp)
			case(state)
			1:if(temp==0)nextstate=2;else nextstate=1;	//״̬1 �ȴ���բ���
			2:if(temp==1)nextstate=3;else nextstate=2;  //״̬2 ��բ��߿�ʼ��Ƶ
			3:if(temp==0)nextstate=4;else nextstate=3;	//״̬3 ��բ�����ɲ�Ƶ
			4:nextstate=4;								//״̬4 ����ready�ź�
			endcase
		
		reg [31:0]a;
		reg [31:0]b;
		always @ (posedge f1 or negedge reset)
			if(!reset)a<=0;
			else if(state==4)a<=a;						
			else a<=a+1;			
		always @ (posedge f2 or negedge reset)
			if(reset==0)b<=0;
			else if(state==4)b<=b;
			else b<=b+1;
		
		always@(posedge clk)
			if(state==4)ready<=1;
			else ready<=0;
		
		always@(negedge rd)							//��������
			case(address)
			0:data<=a[7:0];
			1:data<=a[15:8];
			2:data<=a[23:16];
			3:data<=a[31:24];
			4:data<=b[7:0];
			5:data<=b[15:8];
			6:data<=b[23:16];
			7:data<=b[31:24];
			endcase			
endmodule 
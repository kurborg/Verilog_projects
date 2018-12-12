module adder_b(clk, n1, n2, sum);

	input clk;
	input [15:0] n1;	
	input [15:0] n2;	
	output [16:0] sum;	
	
	reg [16:0] sum;	
	wire [8:0] sum_LSB;	
	reg [8:0] sum_LSB_1;	
	
	reg [15:8] n1_reg1;	
	reg [15:8] n2_reg1;	
	
	wire [16:8] sum_MSB;	
	wire [16:0] sum_next;
	
	assign sum_LSB = (n1[7:0] + n2[7:0]); //Adding 8LSB of n1 and n2
	
	always@(posedge clk)	
	begin
		sum_LSB_1 <= sum_LSB;		//Preserving 8LSB sum
		n1_reg1 <= n1[15:8];		//Preserve remaining MSB's of n1
		n2_reg1 <= n2[15:8];		//Preserve remaining MSB's of n2
	end
	
	assign sum_MSB = (n1_reg1 + n2_reg1 + sum_LSB_1[8]);//Adding MSB's 8b + 8b with carry for 9b result
	assign sum_next = {sum_MSB, sum_LSB[7:0]};	
	
	always@(posedge clk)	
	begin
		sum <= sum_next;
	end

endmodule


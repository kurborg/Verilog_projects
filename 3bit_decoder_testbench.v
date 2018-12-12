module Decoder_Testbench();

wire [2:0] inputs;
wire enable;

wire [7:0] struct_Output;
wire [7:0] behave_Output;

reg [4:0] j;

reg clk;
reg reset;

wire sel;

initial begin
	#5 clk = 0 ;
	  
	    reset = 1;
	#20 reset = 0;	
end

always #10 clk <= ~clk;

always@(posedge clk)begin
	if(reset)
	j <= 5'd0;
	else 
	j <= j + 1'b1;
end

assign {sel,enable, inputs} = j;

always@(posedge clk)begin
if(sel == 1'b0)
$display("Structural: enable = %b, inputs[2:0] = %b, outputs[7:0] = %b", enable, inputs[2:0], struct_Output[7:0]);
else begin
	if(j == 5'b10000)
	$display("\n");

$display("Behavioral: enable = %b, inputs[2:0] = %b, outputs[7:0] = %b", enable, inputs[2:0], behave_Output[7:0]);

	if(j == 5'b11111)
	$finish;
end
end

Decoder_Struct inst_1(.en(enable), .in(inputs), .d(struct_Output));

Decoder_Behave inst_2(.en(enable), .in(inputs), .d(behave_Output));

endmodule

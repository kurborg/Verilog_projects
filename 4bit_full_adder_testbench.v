module cla4_tb();

reg [3:0] a, b;
reg cin;

wire [3:0] sum;
wire cout;

initial
$monitor("a = %b, b = %b, cin = %b, cout = %b, sum = %b", a,b,cin,cout,sum);


initial 
begin 

	a = 4'b0000;
	b = 4'b0000;
	cin = 1'b0;

	#10;

	a = 4'b0001;
	b = 4'b0010;
	cin = 1'b0;

	#10;

	a = 4'b0100;
	b = 4'b0010;
	cin = 1'b0;

	#10;

	a = 4'b1010;
	b = 4'b0101;
	cin = 1'b0;

	#10;

	a = 4'b1111;
	b = 4'b0000;
	cin = 1'b0;

	#10;

	a = 4'b0000;
	b = 4'b1111;
	cin = 1'b0;

	#10;

	a = 4'b0110;
	b = 4'b0010;
	cin = 1'b0;

	#10;

	a = 4'b1110;
	b = 4'b0110;
	cin = 1'b1;

	#10;

	a = 4'b0111;
	b = 4'b0111;
	cin = 1'b1;

	#10;

end


cla4 inst1(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);



endmodule

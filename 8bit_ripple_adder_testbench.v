module eight_ripple_adder_struc_tb();

reg [7:0] a, b;
reg cin;

wire [7:0] sum;
wire cout;

initial
$monitor("a = %b, b = %b, cin = %b, cout = %b, sum = %b", a,b,cin,cout,sum);

initial 
begin 

a = 8'b00000000;
b = 8'b00000000;
cin = 1'b0;

#10;

a = 8'b00000001;
b = 8'b00000010;
cin = 1'b0;

#10;

a = 8'b00000100;
b = 8'b00000010;
cin = 1'b0;

#10;

a = 8'b10100000;
b = 8'b00000101;
cin = 1'b0;

#10;

a = 8'b00001111;
b = 8'b11110000;
cin = 1'b0;

#10;

a = 8'b00011000;
b = 8'b11011011;
cin = 1'b0;

#10;

a = 8'b01100110;
b = 8'b00100110;
cin = 1'b0;

#10;

a = 8'b01101110;
b = 8'b01100110;
cin = 1'b1;

#10;

a = 8'b11111111;
b = 8'b11111111;
cin = 1'b1;

#10;

end 


eight_ripple_adder_struc inst1(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);



endmodule

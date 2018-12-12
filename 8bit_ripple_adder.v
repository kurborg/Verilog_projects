module eight_ripple_adder_struc(a,b,cin,sum,cout);

input [7:0] a, b;
input cin;

output [7:0] sum;
output cout;

wire [7:0] a,b;
wire cin;

wire [7:0] sum;
wire cout;

wire c;

four_ripple_adder_struc inst1(
.a(a[3:0]),
.b(b[3:0]),
.cin(cin),
.sum(sum[3:0]),
.cout(c)
);

four_ripple_adder_struc inst2(
.a(a[7:4]),
.b(b[7:4]),
.cin(c),
.sum(sum[7:4]),
.cout(cout)
);


endmodule

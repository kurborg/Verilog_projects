module four_ripple_adder_struc(a,b,cin,sum,cout);

input [3:0] a, b;
input cin;

output [3:0] sum;
output cout;

wire [3:0] a,b;
wire cin;
wire [3:0] sum;
wire cout;
wire [3:0] c;

assign cout = c[3];

full_adder_bh inst1(
.a(a[0]),
.b(b[0]),
.cin(cin),
.sum(sum[0]),
.cout(c[0])
);

full_adder_bh inst2(
.a(a[1]),
.b(b[1]),
.cin(c[0]),
.sum(sum[1]),
.cout(c[1])
);

full_adder_bh inst3(
.a(a[2]),
.b(b[2]),
.cin(c[1]),
.sum(sum[2]),
.cout(c[2])
);

full_adder_bh inst4(
.a(a[3]),
.b(b[3]),
.cin(c[2]),
.sum(sum[3]),
.cout(c[3])
);


endmodule

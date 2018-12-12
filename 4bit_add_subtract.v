module add_subtract_struc(a,b,dir,cout,rslt,ovfl);

input [3:0] a, b;

//if 1 then subtractor
input dir;

output [3:0] rslt;
output [2:0] cout;
output ovfl;

wire net0, net1, net2, net3;

xor(net0, b[0],dir);
xor(net1, b[1],dir);
xor(net2, b[2],dir);
xor(net3, b[3],dir);

full_adder inst0(
.a(a[0]),
.b(net0),
.cin(dir),
.sum(rslt[0]),
.cout(cout[0])
);

full_adder inst1(
.a(a[1]),
.b(net1),
.cin(cout[0]),
.sum(rslt[1]),
.cout(cout[1])
);

full_adder inst2(
.a(a[2]),
.b(net2),
.cin(cout[1]),
.sum(rslt[2]),
.cout(cout[2])
);

full_adder inst3(
.a(a[3]),
.b(net3),
.cin(cout[2]),
.sum(rslt[3]),
.cout(ovfl)
);


endmodule

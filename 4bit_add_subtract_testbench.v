module add_subtract_struc_tb;

reg [3:0] a,b;
reg dir;

wire [3:0] rslt;
wire [2:0] cout;
wire ovfl;

initial
$monitor("a = %b, b = %b, dir = %b, cout = %b, result = %b, overflow = %b \n" , a,b,dir,cout,rslt,ovfl);


initial 
begin 
		// Addition
	a = 4'b0000; b = 4'b0000; dir = 1'b0;
	#10;
	a = 4'b0010; b = 4'b0001; dir = 1'b0;
	#10;
	a = 4'b0100; b = 4'b0010; dir = 1'b0;
	#10;
	a = 4'b1110; b = 4'b0111; dir = 1'b0;
	#10;
	a = 4'b1111; b = 4'b0110; dir = 1'b0;
	#10;
	a = 4'b0001; b = 4'b1111; dir = 1'b0;
	#10;
	a = 4'b0100; b = 4'b1000; dir = 1'b0;
	#10;
	a = 4'b1111; b = 4'b1111; dir = 1'b0;
	#10;


		// Subtraction
	a = 4'b0000; b = 4'b0000; dir = 1'b1;
	#10;
	a = 4'b0010; b = 4'b0001; dir = 1'b1;
	#10;
	a = 4'b0100; b = 4'b0010; dir = 1'b1;
	#10;
	a = 4'b1110; b = 4'b0111; dir = 1'b1;
	#10;
	a = 4'b1111; b = 4'b0110; dir = 1'b1;
	#10;
	a = 4'b0001; b = 4'b1111; dir = 1'b1;
	#10;
	a = 4'b0100; b = 4'b1000; dir = 1'b1;
	#10;
	a = 4'b1111; b = 4'b1111; dir = 1'b1;
	#10;

	$stop;
end

add_subtract_struc inst0(
.a(a),
.b(b),
.dir(dir),
.cout(cout),
.rslt(rslt),
.ovfl(ovfl)
);


endmodule

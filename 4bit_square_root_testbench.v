module squareroot_rom_tb();

reg [3:0]n;
wire [11:0] sqroot;

initial begin
$monitor("n = %d, squareroot = %d.%d\n", n, inst.sqroot_int, inst.sqroot_dp);
end

initial begin

#10;
n = 4'b0010;
#10;
n = 4'b1100;
#10;
n = 4'b0110;
#10;
n = 4'b1001;
#10;
n = 4'b0011;
#10;
n = 4'b1110;
#10;
n = 4'b1111;

#50;
$finish;

end




squareroot_rom inst(.n(n),
.sqroot(sqroot));


endmodule

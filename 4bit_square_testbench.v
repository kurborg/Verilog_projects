module square_rom_tb();

reg [3:0]n;
reg sign;
wire [7:0] square;

initial begin
$monitor("n = %d, sign = %b, square = %d \n\n", n, sign, square);
end

initial begin

#10;
sign = 0;
n = 4'b1111;
#10;
sign = 0;
n = 4'b0101;
#10;
sign = 1;
n = 4'b1001;
#10;
sign = 0;
n = 4'b0001;
#10;
sign = 1;
n = 4'b1000;
#10;
sign = 1;
n = 4'b1100;

#50;
$finish;

end


square_rom inst(.n(n),
.sign(sign),
.square(square));


endmodule

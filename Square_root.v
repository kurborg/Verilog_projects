module squareroot_rom(n,sqroot);

input [3:0] n;

output [11:0] sqroot;
reg [11:0] sqroot;

wire [1:0] sqroot_int;
wire [9:0] sqroot_dp;

always @(n)
begin	
		case(n)

			0:	sqroot <= 12'b000000000000;	
			1:	sqroot <= 12'b010000000000;	
			2:	sqroot <= 12'b010110011110;	
			3:	sqroot <= 12'b011011011100;	
			4:	sqroot <= 12'b100000000000;	
			5:	sqroot <= 12'b100011101100;	
			6:	sqroot <= 12'b100111000001;	
			7:	sqroot <= 12'b101010000110;	
			8:	sqroot <= 12'b101100111100;	
			9:	sqroot <= 12'b110000000000;	
			10:	sqroot <= 12'b110010100010;	
			11:	sqroot <= 12'b110100111101;	
			12:	sqroot <= 12'b110111010000;	
			13:	sqroot <= 12'b111001011110;	
			14:	sqroot <= 12'b111011100110;	
			15:	sqroot <= 12'b111101101001;	

			default: sqroot <= 0;

		endcase

end

assign sqroot_int = sqroot [11:10] ;
assign sqroot_dp = sqroot [9:0] ;

endmodule

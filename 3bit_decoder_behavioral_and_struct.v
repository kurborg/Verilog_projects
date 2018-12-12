module Decoder_Behave(en, in, d);

input [2:0] in;
input en;
output [7:0] d;

reg [7:0] d;

always @ (en or in)
begin 

casex({en,in})
4'b0XXX: begin d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=0; end

4'b1000: begin d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=1; end

4'b1001: begin d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=1;d[0]=0; end

4'b1010: begin d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=1;d[1]=0;d[0]=0; end

4'b1011: begin d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=1;d[2]=0;d[1]=0;d[0]=0; end

4'b1100: begin d[7]=0;d[6]=0;d[5]=0;d[4]=1;d[3]=0;d[2]=0;d[1]=0;d[0]=0; end

4'b1101: begin d[7]=0;d[6]=0;d[5]=1;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=0; end

4'b1110: begin d[7]=0;d[6]=1;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=0; end

4'b1111: begin d[7]=1;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=0; end

endcase

end

endmodule

/////////////////////////////////////////////////////////////////////////////////////////////

module Decoder_Struct(en, in ,d);

input en;
output [7:0] d;
input [2:0] in;
wire [2:0] in_;

not N0 (in_[0], in[0]);
not N1 (in_[1], in[1]);
not N2 (in_[2], in[2]);

and A0 (d[0], en, in_[2],in_[1],in_[0]);
and A1 (d[1], en, in_[2],in_[1],in[0]);
and A2 (d[2], en, in_[2],in[1],in_[0]);
and A3 (d[3], en, in_[2],in[1],in[0]);
and A4 (d[4], en, in[2],in_[1],in_[0]);
and A5 (d[5], en, in[2],in_[1],in[0]);
and A6 (d[6], en, in[2],in[1],in_[0]);
and A7 (d[7], en, in[2],in[1],in[0]);

endmodule

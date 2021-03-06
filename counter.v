
module counter ( R , Clk , X, Y , Z , OUT ) ;
input  R , Clk ;
output X , Y , Z , OUT  ; 

assign out2 = X & ~Y | ~X & Y & Z | X & Y & ~Z ; 
dff1(out2 , R , Clk ,X, Xnot) ; 

assign out1 = Y^Z ; 
dff1 (out1 , R , Clk ,Y, Ynot) ; 

assign out0 = ~Z;
dff1 (out0 , R , Clk ,Z , Znot) ; 

assign OUT = X & Y & Z | X & ~Y & Z | X & Y & ~Z ; 
endmodule 
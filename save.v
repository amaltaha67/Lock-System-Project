module save (A , B , C , S , R , Clk , Q2 , Q1 , Q0 ) ;
input A , B , C , S , R , Clk ;
output Q2 , Q1 , Q0 ; 

mux1 (Q2 , A , S , out2);
dff1(out2 , R , Clk ,Q2 , Q2not) ; 

mux1 (Q1 , B , S , out1);
dff1 (out1 , R , Clk ,Q1 , Q1not) ; 

mux1 (Q0 , C , S , out0);
dff1 (out0 , R , Clk ,Q0 , Q0not) ;  
endmodule 
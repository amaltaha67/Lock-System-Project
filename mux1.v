module mux1 (I0 , I1 , S , out); 
input I0 , I1 , S ; 
output out ; 

inv1(S , WNOT);
and1(WNOT , I0 , W1) ; 
and1(S , I1 , W2) ; 
or1 ( W1 , W2 , out) ; 
  
endmodule 
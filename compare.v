module compare (Q2 , Q1 , Q0 , A , B , C , X , Y , Z); 
input Q2 , Q1 , Q0 , A , B , C ;
output X , Y , Z ; 
assign X = A^Q2 ; 
assign Y = B^Q1 ; 
assign Z = C^Q0 ; 

endmodule 
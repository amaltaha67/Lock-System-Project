module status (A , B , a ,b , c , d , e , f , g);
input A , B; 
output a ,b , c , d , e , f , g ; 
assign a = A ; 
assign b = 1 ; 
assign c = 1 ; 
assign d = ~A & ~B ; 
assign e = 0 ;
assign f = 0 ; 
assign g = A | B ; 
endmodule 
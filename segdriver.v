module  segdriver (A, B , C , a , b , c , d , e , f , g); 
input A, B , C;
output a , b , c , d , e , f , g;
assign a = ~A & ~B & C | A &~B & ~C ; 
assign b = A & ~B & C | A & B & ~C ; 
assign c = ~A & B & ~C ; 
assign d = ~A & ~B & C | A &~B & ~C | A & B & C; 
assign e = C | A & ~B ; 
assign f = ~A & C | ~A & B | B & C ; 
assign g = ~A & ~B | A & B &C;  
endmodule 
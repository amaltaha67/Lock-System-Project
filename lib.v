module xor1 (A , B , out) ;
input A , B ; 
output out ; 
assign out = A ^ B ; 
endmodule 

module and1 (A , B , out) ;
input A , B ; 
output out ; 
assign out = A & B ; 
endmodule 

module or1 (A , B , out) ;
input A , B ; 
output out ; 
assign out = A | B ; 
endmodule 

module inv1 (A ,out) ;
input A ; 
output out ; 
assign out = ~A ; 
endmodule 
module nand1(out , A , B) ; 
input A , B ; 
output out ; 
assign out = ~A| ~B  ; 
endmodule 
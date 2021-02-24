
module check (ch , l , x , A , B);
input ch , l , x ; 
output  A , B ; 
assign A = ch& l ;  
assign B =  ch&(~x | l);  

endmodule 
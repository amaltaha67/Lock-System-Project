module SRL(S , R , C , Q , Qnot);
input S , R , C ; 
output Q , Qnot ; 

nand1(w1 , S , C);
nand1(w2 , R , C);
nand1(Q , w1 , Qnot);
nand1(Qnot , w2 , Q);

endmodule 
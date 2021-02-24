module dff1 (D , R , C , Q , Qnot) ; 
input D , R , C ; 
output Q , Qnot ; 

inv1(C , w1) ; 
inv1(D , w2);
inv1(w1 ,w3) ; 
inv1(R ,Rnot) ; 

SRL(D , w2 , w1 , w4 , w5) ; 
SRL(w4 , w5 , w3 , QS , QSnot) ; 

and1 (Rnot , QS , Q);
or1 (QSnot , R , Qnot);
endmodule 

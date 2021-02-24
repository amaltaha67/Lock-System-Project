
module Final (A , B , C , S, CH , a0 , b0 , c0 , d0 , e0  , f0 , g0 ,a1 , b1 , c1 , d1 , e1  , f1 ,
g1 , a2 , b2 , c2 , d2 , e2  , f2 , g2 , A1 , B1 , C1 , A2 , B2 , C2 , A3 , B3 , C3, a3 , b3 ,
c3 , d3 , e3 , f3 , g3 , a5 , b5 , c5 , d5 , e5 , f5 ,g5 , a4 , b4 , c4 , d4 , e4 , f4 , g4) ;

input A , B , C , S, CH ,A1 , B1 , C1 , A2 , B2 , C2 , A3 , B3 , C3;
output a0 , b0 , c0 , d0 , e0  , f0 , g0 ,a1 , b1 , c1 , d1 , e1  , f1 , g1 ,
a2 , b2 , c2 , d2 , e2  , f2 , g2,a3 , b3 , c3 , d3 , e3 , f3 , g3 , a5 , b5 , c5 , d5 , e5 , f5
,g5 , a4 , b4 , c4 , d4 , e4 , f4 , g4;


save (A , B , C , S , 0 , ~S , digit12 , digit11 , digit10 ) ;
save (A1 , B1 , C1 , S , 0 , ~S , digit22 , digit21 , digit20 ) ;
save (A2 , B2 , C2 , S , 0 , ~S , digit32 , digit31 , digit30 ) ;
save (A3 , B3 , C3 , S , 0 , ~S , digit42 , digit41 , digit40 ) ;

 
compare (digit12 , digit11 ,digit10 , A , B , C , res12 , res11 , res10); 
compare (digit22 , digit21 ,digit20 , A1 , B1 , C1 , res22 , res21 , res20); 
compare (digit32 , digit31 ,digit30 , A2 , B2 , C2 , res32 , res31 , res30);
compare (digit42 , digit41 ,digit40 , A3 , B3 , C3 , res42 , res41 , res40);

assign torf = res12|res11|res10|res22|res21|res20|res32|res31|res30|res42|res41|res40; 

assign reset = S | CH& ~torf ;  


counter ( reset , CH , X, Y , Z , OUT ) ;  

check (CH , OUT , torf , out1 , out0);


segdriver (digit12 , digit11 ,digit10 , a0 , b0 , c0 , d0 , e0 , f0 , g0); 
segdriver (digit22 , digit21 ,digit20 , a1 , b1 , c1 , d1 , e1 , f1 , g1);
segdriver (digit32 , digit31 ,digit30 , a2 , b2 , c2 , d2 , e2 , f2 , g2);
segdriver (digit42 , digit41 ,digit40 , a3 , b3 , c3 , d3 , e3 , f3 , g3);
segdriver (X, Y , Z , a5 , b5 , c5 , d5 , e5 , f5 , g5);
status (out1 , out0 , a4 , b4 , c4 , d4 , e4 , f4 , g4);
endmodule  

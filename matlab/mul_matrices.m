clear,clc

A = [2 0 1; 
     3 0 0;
     5 1 1];
     
B = [1 0 1; 
     1 2 1;
     1 1 0];
         
renglones=3;
columnas=3;

C = A*B
D = 0;
acumu=0;

for ren=1:renglones;
  
  for ren1=1:renglones;
    for col=1:columnas;
      C= ( A(ren,col)*B(col,ren1) );
      acumu+=C;
    endfor
    fprintf('%d  ',acumu)
    acumu=0;
  endfor
  fprintf('\n')
endfor
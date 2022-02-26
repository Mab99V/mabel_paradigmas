clear, clc

A = [1 5 5; 
     2 7 1];
     
B = [2 5 7 4 6 2; 
     2 1 5 6 8 1;
     9 8 2 1 5 2];
         
columnas_A=2;
columnas_B=6;
renglones=3;

C = A*B
acu=0;

for col_A=1:columnas_A;
  for col_B=1:columnas_B;
    for ren=1:renglones;
      C= ( A(col_A,ren)*B(ren,col_B) );
      acu+=C;
    endfor
    fprintf('%d  ',acu)
    acu=0;
  endfor
 endfor
  fprintf('\n')
clear, clc

%Dos matrices de 2x2

A= [ 1 1;
     1 1;];

B= [ 1 1;
     1 1;]; 
     

         
 orden = 2;
 orden2 = 2;

 fprintf('Figura de la matriz: \n')

for ren =1:orden;
  for col =1:orden;
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('Figura de la matriz 2: \n')

for ren = 1:orden2;
  for col = 1:orden2;
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('Suma de dos matrices: \n')

for ren =1:orden;
  for col =1:orden;
      C= (A(ren, col) + B(ren, col));
      fprintf('%d ',C)
  endfor
  fprintf('\n')
endfor
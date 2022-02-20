clear, clc

%matriz 3x3 usando ciclos

A= [ 2 0 1;
     3 0 0;
     5 1 1; ];
  
 orden = 3;

fprintf('Figura de la matriz: \n')

for ren =1:orden;
  for col =1:orden;
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('multiplicar matriz con numero dado: \n');

prompt='¿valor por multiplicar?'
x= input(prompt);

for ren =1:orden;
  for col =1:orden;
      y= (A(ren, col) * x);
      fprintf('%d ',y)
  endfor
  fprintf('\n')
endfor
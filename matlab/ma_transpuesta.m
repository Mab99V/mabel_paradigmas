clear,clc
clear,clc
A = [ 8 9 1; 
      5 6 7;
      4 3 2 ];
     
renglones=3;
columnas=3;

fprintf('Matriz normal: \n')
for ren=1:renglones;
  for col=1:columnas;
    fprintf('%d',A(ren,col))
  endfor
  fprintf('\n')
endfor

fprintf('Matriz transpuesta: \n')
for ren=1:renglones;
  for col=1:columnas;
    fprintf('%d',A(col,ren))
  endfor
  fprintf('\n')
endfor
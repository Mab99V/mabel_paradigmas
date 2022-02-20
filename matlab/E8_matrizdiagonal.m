clear, clc

A= [ 9  2  3  4;
     5 -1  8  2;
     8  7  6  6;
     2  7  2  8; ];
     
     renglones= 4;
     columnas = 4;
     
 fprintf('Figura de la matriz: \n')

for ren =1:renglones;
    for col=1:columnas;
        fprintf('%d', A(ren, col))
    end
    fprintf('\n')
 end
 
 fprintf('Cambiar los elementos a cero menos la diagonal principal: \n')
 
for ren =1:renglones;
  for col =1:columnas;
      if (col > ren)
         A(ren, col) = 0;
    end
    fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('Cambiar los elementos a cero menos la diagonal principal: \n')

for ren =1:renglones;
  for col =1:columnas;
      if (col < ren)
         A(ren, col) = 0;
    end
    fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('diagonal: \n')
for ren =1:renglones;
  for col =1:columnas;
     if(ren==col)
     diagonalp = A(ren,col);
      fprintf('%d ',diagonalp)
      endif
  endfor
  fprintf('\n')
endfor

     
     
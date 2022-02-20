clear, clc

A= [ 2 5 4 6;
     6 3 1 4;
     5 8 9 6;
     8 9 4 6; ];
 
renglones = 4;
columnas = 4;

fprintf('Figura de la matriz: \n')

for ren =1:renglones;
    for col=1:columnas;
        fprintf('%d', A(ren, col))
    end
    fprintf('\n')
 end
 
fprintf("Matriz identidad: \n")

 for ren =1:renglones;
  for col =1:columnas;
      if (col == ren) 
         A(ren, col) = 1 ;
    end
    fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('Cambiar los elementos a cero: \n')

for ren =1:renglones;
  for col =1:columnas;
      if (col > ren)
         A(ren, col) = 0;
    end
    fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor

fprintf('Cambiar los elementos a cero: \n')

for ren =1:renglones;
  for col =1:columnas;
      if (col < ren)
         A(ren, col) = 0;
    end
    fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor
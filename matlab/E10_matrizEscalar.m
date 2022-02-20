clear, clc

A= [ 5 8 6 3;
     1 2 5 4;
     6 2 3 4;
     9 4 2 3; ];
     
renglones = 4;
columnas= 4;

fprintf('Figura de la matriz: \n')

for ren =1:renglones;
    for col=1:columnas;
        fprintf('%d', A(ren, col))
    end
    fprintf('\n')
 end
 
fprintf('Matriz escalar: \n')
prompt='¿valor por sustituir?'
x= input(prompt);
for ren =1:renglones;
  for col =1:columnas;
      if (col == ren) 
         A(ren, col) = x ;
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
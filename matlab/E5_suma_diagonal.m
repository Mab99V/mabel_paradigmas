clear, clc

%matriz, suma de los elementos de la diagonal principal

A = [ 5 7 0;
    -1 4 3;
     0 2 5; ]; 
     
renglones= 3;
columnas= 3;

fprintf('Figura de la matriz: \n')

for ren =1:renglones;
    for col=1:columnas;
        fprintf('%d', A(ren, col))
    end
    fprintf('\n')
 end
 
 fprintf('Diagonal principal: \n')
 for ren =1:renglones;
  for col =1:columnas;
     if(ren==col)
     diagonalp = A(ren,col);
      fprintf('%d ',diagonalp)
      endif
  endfor
  fprintf('\n')
endfor
 
 fprintf('Suma de elementos de la diagonal principal: \n') 
 
 sum=0; 
 
 for ren=1:renglones;
   for col=1:columnas;
     if(ren == col) 
      diagonalp = A(ren,col);
      sum = sum + diagonalp;
      endif
   endfor  
 endfor
 fprintf('%d', sum)

  

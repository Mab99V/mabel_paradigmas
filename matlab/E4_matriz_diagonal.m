clear, clc;

%matriz cuadrada de 4x4

     
A= [ -1  7  0 17; 
     12 -3  8  6; 
      2  9  3 -4; 
     15  6  1  0; ]; 
  
orden = 4;

fprintf('Figura de la matriz: \n')

for ren =1:orden;
    for col=1:orden;
        fprintf('%d', A(ren, col))
    end
    fprintf('\n')
 end

 fprintf('Sacar diagonal principal: \n')

 for ren =1:orden;
  for col =1:orden;
     if(ren==col)
     diagonalp = A(ren,col);
      fprintf('%d ',diagonalp)
      endif
  endfor
  fprintf('\n')
endfor
 
    
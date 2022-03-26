clear, clc
%Personajes y simbolos de magia de FAIRY TAIL

%Personaje Natsu
Nat = [-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,1,-1,1,-1,-1,1,1,1,-1,1,1,-1,1,1,-1,1,-1,-1,1,-1,-1,1,-1,1,1,1,1,1,-1,-1,1,-1,-1,1,-1,-1,-1,1,-1,1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]; 
Nat
%Murcielago de sombra
MurSo = [-1,-1,-1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,-1,-1,1,-1,-1,1,-1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,1,-1,-1,-1,1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,-1,-1];
MurSo

%Magia bola de luz
BolLuz = [-1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,-1];
BolLuz

%Simbolo de un gremio
Phantom = [-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,1,-1,-1,-1,-1,1,-1,-1,1,-1,-1,1,-1,-1,-1,1,1,1,-1,-1,-1,1,-1];
Phantom

%Gremio
Gremio =[-1,-1,1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,1,1,1,-1,-1,-1,-1,-1,1,1,1,-1,-1,1,-1,-1,-1,1,-1,-1,-1,1,-1,-1,-1,1,-1,-1,1,1,1,-1,-1,1,-1,-1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
Gremio

Nat'
Natmul = Nat(:) * Nat(:)';
Natmul;

MurSo' %Murcielago de sombra
MurSomul = MurSo(:) * MurSo(:)';
MurSomul;

BolLuz' %Magia de Luz
BolLuzmul = BolLuz(:) * BolLuz(:)';
BolLuzmul;


Phantom'
Phantomul = Phantom(:)  * Phantom(:)';
Phantomul

Gremio'
Gremiomul = Gremio(:) * Gremio(:)';
Gremiomul

w1 = Natmul+MurSomul+BolLuzmul+Phantomul+Gremiomul;
%w1

w = w1 - diag(diag(w1));
%w

x = [-1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,-1];
u0 = x;
c=1;
%x

ulast = x;

while (1)
  u0=u0*w;
  u0
  %aplicar la funcion de activacion thresold
  
  for i=1:1:84
    if u0(i) > 0
      u0(i) = 1;
    else
      u0(i) = -1
    endif
  endfor
  c 
  u0 
  ulast
  if(u0 == ulast)
  fprintf('Se han encontrado \n');
   for i=1:84
            if (u0(i)) > 0
              fprintf(' %d ', u0(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,12)) == 0
              fprintf('\n')
            endif
          endfor
          fprintf('\n')
          
          fprintf('Resultado ingresado: \n\n');
          
          for i=1:84
            if (x(i))>0
              fprintf(' %d ', x(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,12)) == 0
              fprintf('\n')
            endif
          endfor
          fprintf('\n')

        
      fprintf ('\n Matrices recorridas hasta hallar el resultado: %d \n', c);
     break;
     %u0
     %ulast
     c
  break;
endif
c = c + 1;
ulast = u0;
endwhile


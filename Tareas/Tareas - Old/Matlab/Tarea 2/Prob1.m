'(ch13sp2) Example 13.2'     % Despliega etiqueta
syms z k                     % Objetos simbolicos
'F(z)'                       % Despliega
F=(z*(z + 1)*(z + 2))/((z - 0.5)*(z-0.7)*(z - 0.9));   % Define F(z).
pretty(F)                    % print
'f(kT)'                      % Despliega.
f=iztrans(F,k);              % transformada inversa
pretty(f)                    % f(kT)
'f(nT)'                      % Despliega.
f=iztrans(F);                % transformada inversa z f(nT).
pretty(f)                    % imprime
% Ejemplo de transofrmada z de funciones

syms k T

% Funcion escalon unitario
ek=1^k;

Ez=ztrans(ek)

% Funcion escalon unitario)
ek=1^(k*T);

Ez=ztrans(ek)
% Ejemplo de transofrmada z de funciones
clear;
clc;
syms w T;

% Funcion coseno trasladada
ek=cos(w*T);

Ez=ztrans(ek);
pretty(Ez)
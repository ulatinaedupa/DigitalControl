% Ejemplo de Propiedad de traslaci�n

clear;
clc;
syms a k T;

Ez = T*ztrans(a^(k-4));
pretty(Ez)
% Ejemplo de Propiedad de traslación

clear;
clc;
syms a k T;

Ez = T*ztrans(a^(k-4));
pretty(Ez)
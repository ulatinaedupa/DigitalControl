% Encontrar la transformada inversa de z de
% E(z) = (z^3 + z + 2)/((z-1)*(z^2-z+1))

clear;
clc;

% Se puede conseguir de esta manera

syms k z
Ez = (z^3 + z + 2)/((z-1)*(z^2-z+1));

Ekt = iztrans(Ez, k);  % Transformada de e(kT)
pretty(Ekt)            % Imprime


% Probando el método de expansión por fracciones parciales
%Eznum = (z^3 + z + 2);
%Ezden = ((z-1)*(z^2-z+1));
%Ezden = expand(Ezden)
%num = double(fliplr(coeffs(Eznum, 'All')))
%den = double(fliplr(coeffs(Ezden, 'All')))
%[r, p, k] = residue(num, den)
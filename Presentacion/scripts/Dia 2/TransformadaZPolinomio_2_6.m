% Encontrar la transformada Z de
% E(s) = (s^2 + 4*s + 3)/(s^3 + 6*s^2 + 8*s)

clear;
clc;


% Se puede conseguir de esta manera la transformada Z
T = 0.1;

num = [1 4 3];
den = [1 6 8 0];

[r, p, k] = residue(num, den);

n = length(den);
for i = 1:1:n-1
    pz(i) = exp(p(i)*T);
end

[numz, denz] = residue(r,pz, k);
numzz = conv(numz, [1 0]); % (z + 0)X(z)
Ez = tf(numzz,denz, T)


% O también de esta manera

syms s t k z
Xs = (s^2+4*s+3)/(s^3+6*s^2+8*s); % función

xt = ilaplace(Xs);   % x(t), inversa de laplace
ekT = subs(xt,t,k*T); % remplazar t por kT
Ez = ztrans(ekT);     % Transformada de e(kT)
pretty(Ez)          % Imprime
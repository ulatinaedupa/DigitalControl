syms s z;
Dz = z^3 - z^2 - 0.5*z + 0.3;
Ds = subs(Dz, (s+1)/(s-1));
n = numden(sym(Ds))
n
c = coeffs(n);
arr = fliplr(c)
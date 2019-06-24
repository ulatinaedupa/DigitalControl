% Ejemplo de transofrmada de X(s) a x(t) a X(z)

syms s t z

Sfunc = 1/(s*(s+1))
Tfunc = ilaplace(Sfunc)
Ztransf = ztrans(Tfunc);
pretty(Ztransf)
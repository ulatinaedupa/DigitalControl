syms s t Y
ode = 'D(D(y))(t) + 12*D(y)(t)+32*y(t)=32'
ltode = laplace(ode,t,s)
eqn = subs(ltode,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,0,0})
Y = solve(eqn, Y)
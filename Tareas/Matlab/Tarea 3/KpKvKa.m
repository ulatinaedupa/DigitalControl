T=input('Type T ');                 %Ingresar T
numg1s=20*poly([-3]);               %Numerador.
deng1s=poly([-4 -5]);               %Denominador
'G1(s)'                             %imprime
G1s=tf(numg1s,deng1s)               %En función de s
'G(z)'                              %imprime
Gz=c2d(G1s,T,'zoh')                 %Convertir G1s a Gz
'T(z)'                              %Funcion de transferencia
Tz=feedback(Gz,1)                   %retroalimentacion 1
'Polos plano z'                     %Despliega
r=pole(Tz)                          %Verifica estabilidad.
M=abs(r)                            %Magnitud de raices.
Kp=dcgain(Gz)                       %Calcular Kp.
GzKv=Gz*(1/T)*tf([1 -1],[1 0],T);   %Multiplicar Gz por (1/T)*(z-1)
                                    %Luego dividir G(z) por z 
                                    %para Kv.
GzKv=minreal(GzKv,0.00001);         %Cancela algunos polos omunes.
Kv=dcgain(GzKv)                     %Calcula Kv.
GzKa=Gz*(1/T^2)*tf([1 -2 1],[1 0 0],T);		
                                    %Multiplica G(z) por (1/T^2)(z-1)^2.
                                    %Ademas divide G(z) por z^2 
                                    %para mismo valor de Ka.
GzKa=minreal(GzKa,0.00001);         %cancela polos y ceros comunes.
Ka=dcgain(GzKa)                     %Calcula Ka.
% Encontrar la transformada inversa Z de
% G(z) = (0.4673*z^-1 - 0.3393*z^-2)/(1 - 1.5327*z^-1 + 0.6607*z^-2)



% Metodo de ecuaciones diferenciales

clear;
clc;

% Encontramos la ecuacion...
%(y(k+2)-1.5327*y(k+1)+0.6607*y(k) = 0.4673*x(k+1)-0.3393*y(k));



x = [1 zeros(1,20)];     % Funcion impulso
y = [0 0.4673];          % condiciones iniciales

samples = 0:length(x)-1; % Escoger 20 muestras

for k=1:length(x)-2      % hacemos 20 veces.  
                         % Las series y matrices empiezan en 1 en matlab
    y(k+2) = 1.5327*y(k+1)-0.6607*y(k)+0.4673*x(k+1)-0.3393*y(k);
end

stem(samples, y)  % gráfica de la salida
hold
stem(samples, x)  % grafica de la entrada
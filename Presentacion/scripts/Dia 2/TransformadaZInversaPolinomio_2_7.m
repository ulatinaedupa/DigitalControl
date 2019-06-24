% Encontrar la transformada inversa Z de
% G(z) = (0.4673*z^-1 - 0.3393*z^-2)/(1 - 1.5327*z^-1 + 0.6607*z^-2)

clear;
clc;

samples = 20

num = [0 0.4673 -0.3393];
den = [1 -1.5327 0.6607];

X = [1 zeros(1, samples)];

Y = filter(num, den, X)

x_axis = [0 samples];
y_axis = [-1 1];
window = [x_axis y_axis];

axis(window);
k = 0:samples;
plot(k, Y, 'o');
grid;
title('Respuesta a Entrada Kronecker Delta');
ylabel('y(k)');
xlabel('k (sample no)');
num = [0 0.5151 -0.1452 -0.2963 0.0528];
den = [1 -1.8528 1.5906 -0.6642 0.0528];
k = 0:40;
r = [k];
c = filter(num, den, r);
plot(k, c, 'b', k, c, '+', k, k, '--');
v = [0 16 0 16];
axis(v);
grid
title('Respuesta Rampa');
xlabel('k');
ylabel('c(k)');
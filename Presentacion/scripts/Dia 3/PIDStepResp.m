num = [0 0.5151 -0.1452 -0.2963 0.0528];
den = [1 -1.8528 1.5906 -0.6642 0.0528];
r = ones(1, 41)
k = 0:40
c = filter(num, den, r);
plot(k, c, 'b', k, c, '+')
v = [0 40 0 2];
axis(v);
grid
title('Respuesta Escalon');
xlabel('k');
ylabel('c(k)');
num = [0 0.4673 -0.3393];
den = [1 -1.5327 0.6607];
k = 0:40;
r = ones(1, 41);
c = filter(num, den, r);
plot(k, c, 'o', k, c, '+', k, r, '--');
v = [0 40 0 1.6];
axis(v);
grid
title('Respuesta Escalon');
xlabel('k');
ylabel('c(k)');
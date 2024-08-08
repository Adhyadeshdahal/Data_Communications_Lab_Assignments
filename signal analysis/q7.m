t = -5:0.2:5;
x1 = 5*sin(2*pi*t).*cos(2*pi*t);
x2 = 5*exp(-0.2*t);

figure;
subplot(2, 1, 1); 
plot(t, x1, 'b');
title('x1');
xlabel('Time (s)');
ylabel('x(t)');
grid on;

subplot(2, 1, 2); 
plot(t, x2, 'r');
title('x2');
xlabel('Time (s)');
ylabel('x(t)');
grid on;

k = -10:1:20;
fk1 = -0.92*sin(0.1*pi*k - 0.75*pi);
fk2 = (-0.93).^k .* exp(i*pi*k/sqrt(350));

figure;
subplot(2, 1, 1);
stem(k, fk1, 'b', 'filled');
title('fk1');
xlabel('k');
ylabel('f[k]');
grid on;

subplot(2, 1, 2);
stem(k, fk2, 'r', 'filled');
title('fk2');
xlabel('k');
ylabel('f[k]');
grid on;

pi = 3.14;

Ec = input('Enter the carrier signal amplitude (Ec): ');
Em = input('Enter the message signal amplitude (Em): ');
fc = input('Enter the carrier signal frequency (fc) in Hz: ');
fm = input('Enter the message signal frequency (fm) in Hz: ');

wc = 2 * pi * fc;
wm = 2 * pi * fm;

t = 0:1000;  
m = Em / Ec;

ec = Ec * cos(wc * t);
em = Em * cos(wm * t);
eam = Ec * (1 + (m * cos(wm * t))) .* cos(wc * t);

figure;
plot(t, eam, 'b');
title('Amplitude Modulated Signal');
xlabel('Time (s)');
ylabel('eam = Ec*(1 + m*cos(wm*t))*cos(wc*t)');
grid on;

figure;
plot(t, ec, 'r');
title('Carrier Signal');
xlabel('Time (s)');
ylabel('ec = Ec*cos(wc*t)');
grid on;

figure;
plot(t, em, 'g');
title('Modulating Signal');
xlabel('Time (s)');
ylabel('em = Em*cos(wm*t)');
grid on;

pi = 3.14;
t = 0:1000;  % Adjusted time vector for better resolution

Ec = input('Enter the carrier signal amplitude (Ec): ');
Em = input('Enter the message signal amplitude (Em): ');
fc = input('Enter the carrier signal frequency (fc) in Hz: ');
fm = input('Enter the message signal frequency (fm) in Hz: ');
df = input('Enter the frequency deviation (df) in Hz: ');

mf = df / fm;

wm = 2 * pi * fm;
wc = 2 * pi * fc;

theta_m = wm * t;
theta_c = wc * t;

ec = Ec * sin(theta_c);
em = Em * sin(theta_m);

efm = Ec * sin(theta_c + mf * sin(theta_m));

figure;
plot(t, ec, 'r');
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
plot(t, efm, 'b');
title('Frequency Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
plot(t, em, 'g');
title('Modulating Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

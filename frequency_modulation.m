pi = 22/7;
t=1:10000;

Ec = input('Enter the carrier signal amplitude (Ec): ');
Em = input('Enter the message signal amplitude (Em): ');
fc = input('Enter the carrier signal frequency (fc) in Hz: ');
fm = input('Enter the message signal frequency (fm) in Hz: ');


df = mod(Em,1000) * 1000;

mf = df/fm;

wm = 2 * pi * fm;
wc = 2 * pi * fc;

theta_m= wm * t;
theta_c= wc * t;



ec = Ec * sin(theta_c);
em = Em * sin(theta_m);

efm = Ec * sin(theta_c+(mf * sin(theta_m)));

figure;
plot(t, ec, 'r');
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
set(gca, 'XTick', 0:1:max(time));


figure;
plot(t, efm, 'b');
title('Frequency Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
set(gca, 'XTick', 0:1:max(time));


figure;
plot(t, em, 'g');
title('Modulating Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
set(gca, 'XTick', 0:1:max(time));

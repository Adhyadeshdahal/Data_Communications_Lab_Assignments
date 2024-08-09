pkg load signal;
t=0:0.01:3;
A=19;
F=5;
x_square=A*square(2*pi*F*t);

fft_x=fft(x_square);
L=length(t);

p2=abs(fft_x/L);
p1=p2(1:L/2+1);
p1(2:end-1)=2*p1(2:end-1);

Fs=1/0.01;
f=Fs*(0:(L/2))/L;

ifft_x = ifft(fft_x);

figure;
subplot(2,2,1)
plot(t, x_square, 'b', 'LineWidth', 1.5);
title('Original Square Wave x(t)');
xlabel('Time (s)');
ylabel('Amplitude (V)');
grid on;

subplot(2,2,2)
plot(f, p1, 'b', 'LineWidth', 1.5);
title('FFT of Square Wave x(t)');
xlabel('Frequency (Hz)');
ylabel('|P1(f)|');
grid on;

subplot(2,2,3)
plot(t, ifft_x, 'r', 'LineWidth', 1.5);
title('Reconstructed Square Wave using IFFT');
xlabel('Time (s)');
ylabel('Amplitude (V)');
grid on;

t=0:0.01:3;
A=19;
F=5;
x_cos=A*cos(2*pi*F*t)



fft_x=fft(x_cos);
L = length(t);

P2 = abs(fft_x/L);            
P1 = P2(1:L/2+1);              
P1(2:end-1) = 2*P1(2:end-1);   

Fs = 1/(t(2)-t(1));           
f = Fs*(0:(L/2))/L;           


ifft_x = ifft(fft_x);

figure;
subplot(3, 1, 1);
plot(t, ifft_x, 'b', 'LineWidth', 1.5);
title('Recreated Cosine Wave');
xlabel('Time (s)');
ylabel('Amplitude (V)');
grid on;

subplot(3,1,2)
plot(t, x_cos, 'b', 'LineWidth', 1.5);
title('Original Cosine Wave g(t)');
xlabel('Time (s)');
ylabel('Amplitude (V)');
grid on;


subplot(3,1,3)
stem(f, P1, 'r', 'LineWidth', 1.5, 'MarkerFaceColor', 'blue');
title('Single-Sided Amplitude Spectrum of x\_cos(t)')
xlabel('Frequency (Hz)')
ylabel('|P1(f)|')
grid on;
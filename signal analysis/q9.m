pkg load signal;
frequency = 1;   
amplitude = 5;  
dc_bias = -3; 
t = -3:0.001:3;  

g_t = amplitude * square(2 * pi * frequency * t) + dc_bias;

figure;
plot(t, g_t, 'b', 'LineWidth', 1.5);
title('Square Wave g(t)');
xlabel('Time (s)');
ylabel('Amplitude (V)');
grid on;


m_values = [1, 5, 10, 20];  
A = 5;                     
T = 1 / frequency;          
g_approx = zeros(size(t));  

figure;

for i = 1:length(m_values)
    m = m_values(i);
    g_approx = zeros(size(t));  
    
    for n = 1:2:m
        g_approx = g_approx + (4 * A / (n * pi)) * sin(2 * pi * n * frequency * t);
    end
    
    g_approx = g_approx + dc_bias;
    
    subplot(2, 2, i);
    plot(t, g_approx, 'r', 'LineWidth', 1.5);
    title(['Fourier Series Approximation with m = ', num2str(m)]);
    xlabel('Time (s)');
    ylabel('Amplitude (V)');
    grid on;
end


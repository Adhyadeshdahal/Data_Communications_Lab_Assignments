pkg load symbolic

t = -5:0.01:5;
g_t = (-1*t.^4) + (17*t.^3) - (t.^2) - 47;

g_t2 = @(t) (-1*t.^4) + (17*t.^3) - (t.^2) - 47;
g_t3_cos = @(t, m) ((-1*t.^4) + (17*t.^3) - (t.^2) - 47) .* cos(m*pi*t/5);
g_t3_sin = @(t, m) ((-1*t.^4) + (17*t.^3) - (t.^2) - 47) .* sin(m*pi*t/5);

L = 5;

a0 = integral(g_t2, -L, L) / (2*L);

m_values = [1, 5, 10, 20];
am = zeros(1, max(m_values));
bm = zeros(1, max(m_values));

for m = 1:max(m_values)
    am(m) = integral(@(t) g_t3_cos(t, m), -L, L) / L;
    bm(m) = integral(@(t) g_t3_sin(t, m), -L, L) / L;
end

for i = 1:length(m_values)
    m = m_values(i);
    g_approx = a0;
    
    for k = 1:m
        g_approx = g_approx + am(k) * cos(k*pi*t/L) + bm(k) * sin(k*pi*t/L);
    end
    
    figure;
    plot(t, g_t, 'b', 'LineWidth', 1.5);
    hold on;
    plot(t, g_approx, 'r--', 'LineWidth', 1.5);
    title(['Original function g(t) and its Fourier series approximation for m = ', num2str(m)]);
    xlabel('Time (s)');
    ylabel('Amplitude (V)');
    legend('g(t)', 'Fourier Approximation');
    grid on;
end

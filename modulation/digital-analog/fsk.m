time = 0:0.05:10; % Time from 0 to 10 seconds with a step of 0.05


bit_time = 1; 
no_of_points = bit_time / 0.05; 

t = 0:0.05:bit_time-0.05; 

points_ones = ones(1, no_of_points);
points_zeros = zeros(1, no_of_points);

bit_stream = input("Enter digital bits (e.g., [1 0 1 1]): ");
fc1 = input("Enter the carrier signal frequency for bit 1: ");
fc2 = input("Enter the carrier signal frequency for bit 0: ");
Ec = input("Enter the carrier signal amplitude: ");

pi = 22 / 7; % Approximate value of pi
wc1 = 2 * pi * fc1; % Carrier angular frequency for bit 1
wc2 = 2 * pi * fc2; % Carrier angular frequency for bit 0

ec1 = Ec * sin(wc1 * t);
ec2 = Ec * sin(wc2 * t);

fsk = [];
output = [];

for i = 1:length(bit_stream)
    if bit_stream(i) == 1
        fsk = [fsk ec1];
        output = [output points_ones];
    else
        fsk = [fsk ec2];
        output = [output points_zeros];
    end
end

fsk = [fsk zeros(1, length(time) - length(fsk))];
output = [output zeros(1, length(time) - length(output))];

figure;
plot(time, fsk, 'r');
title('FSK');
xlabel('Time (s)');
ylabel('Voltage');
grid on;
set(gca, 'XTick', 0:1:max(time));


figure;
plot(time, output, 'b');
title('Digital Data Encoded in unipolar');
xlabel('Time (s)');
ylabel('Voltage');
grid on;
set(gca, 'XTick', 0:1:max(time));


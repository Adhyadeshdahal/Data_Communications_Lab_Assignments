time = 0:0.05:10; 

bit_time = 1; 
no_of_points = bit_time / 0.05; 

points_ones = [ones(1, no_of_points/2).*-1 ones(1, no_of_points/2)];
points_zeros = [ones(1, no_of_points/2) ones(1, no_of_points/2).*-1]

output = [];

bit_stream = input("Enter digital bits (e.g., [1 0 1 1]): ");

for i = 1:length(bit_stream)
    if bit_stream(i) == 1
        output = [output points_ones];
    else
        output = [output points_zeros];
    end
end

output = [output ones(1, length(time) - length(output)).*points_ones(1)];

figure;
plot(time, output, 'r');
title('Digital Data Encoded in Manchester');
xlabel('Time (s)');
ylabel('Voltage');
grid on;
set(gca, 'XTick', 0:1:max(time));


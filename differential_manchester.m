time = 0:0.05:10; 

bit_time = 1; 
no_of_points = bit_time / 0.05; 

prev_level = 1;


output = [];

bit_stream = input("Enter digital bits (e.g., [1 0 1 1]): ");

for i = 1:length(bit_stream)
    if bit_stream(i) == 1
        points_ones = [ones(1, no_of_points/2).*prev_level ones(1, no_of_points/2).*(prev_level*-1)];
        prev_level=-prev_level;
        output = [output points_ones];
    else
        points_zeros = [ones(1, no_of_points/2).*(prev_level*-1) ones(1, no_of_points/2).*prev_level];
        output = [output points_zeros];
    end
end

output = [output ones(1, length(time) - length(output)).*output(length(output))];

figure;
plot(time, output, 'r');
title('Digital Data Encoded in Differential Manchester');
xlabel('Time (s)');
ylabel('Voltage');
grid on;
set(gca, 'XTick', 0:1:max(time));


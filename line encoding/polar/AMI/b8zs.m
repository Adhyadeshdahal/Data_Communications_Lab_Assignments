time = 0:0.05:100;

bit_time = 1;
no_of_points = bit_time / 0.05;

points_ones = ones(1, no_of_points);
points_zeros = zeros(1, no_of_points);

violation_1 = [repmat(points_zeros, 1, 3), points_ones, -points_ones, points_zeros, -points_ones, points_ones];
violation_n1 = [repmat(points_zeros, 1, 3), -points_ones, points_ones, points_zeros, points_ones, -points_ones];

output = [];
prev_level = -1;

bit_stream = input("Enter digital bits (e.g., [1 0 1 1]): ");

i = 1;
while i <= length(bit_stream)
    if i + 7 <= length(bit_stream)
        current_chunk = bit_stream(i:i + 7);
        if all(current_chunk == 0)
            if prev_level == 1
                output = [output, violation_1];
            else
                output = [output, violation_n1];
            end
            i = i + 8;
            continue;
        end
    end

    if bit_stream(i) == 1
        prev_level = -prev_level;
        output = [output, points_ones * prev_level];
    else
        output = [output, points_zeros];
    end
    i = i + 1;
end

output = [output, zeros(1, length(time) - length(output))];

figure;
plot(time, output, 'r');
title('Digital Data Encoded in AMI');
xlabel('Time (s)');
ylabel('Voltage');
grid on;
set(gca, 'XTick', 0:1:max(time));

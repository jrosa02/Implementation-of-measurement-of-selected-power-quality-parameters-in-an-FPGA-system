addpath("..");

% Read the data from the CSV file
csv_read;

out = sim("real_signal_conv.slx");

signal_2 = out.yout{1}.Values.Data(:, :);

signal_2 = signal_2(1:end-1);
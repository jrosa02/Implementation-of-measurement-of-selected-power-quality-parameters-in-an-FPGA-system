N = BUFFER_LEN;      % Total number of points

% Generate time vector
t = linspace(0, 1, N);

% Generate square wave
sq_wave = square(2 * pi * t * 8);

%samples = data(:, 2);
samples = sq_wave';
%samples = signal_2';

samples = samples / (2.001*max(samples));
fixed_samples = fi(samples, 1, 12, 11);

figure;

plot(double(fixed_samples))
ylim([-0.55, 0.55])
xlim([0, N])
title("Znormalizowany sygnał wejściowy")
xlabel("Numer próbki")
ylabel("Znormalizowane napięcie próbki [V]")
grid on;

% Convert to hexadecimal
%hex_values = [hex(fixed_samples)];

% Save to CSV
%fid = fopen('hex_output_real.csv', 'w');
%for i = 1:length(hex_values)
%    fprintf(fid, '%s\n', hex_values(i, :));
%end
%fclose(fid);
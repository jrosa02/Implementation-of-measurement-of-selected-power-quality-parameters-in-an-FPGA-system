
figure;
plot(data(:, 1), data(:, 2), data(:, 1), data(:, 3), data(:, 1), data(:, 4));
title("Napięcie trójfazowe");
xlabel("Czas")
ylabel("Napiecie")

a = 1/data(end, 1);
b = 1/data(2, 1);
freq = 0 : a: b; 

fft_out = abs(fft(data(:, 2)));

%trim
halfLength = floor(length(freq) / 2);
freq = freq(1:halfLength);
fft_out = fft_out(1:halfLength);

figure;
plot(freq, fft_out);
title("FFT");
xlabel("Częstotliwość [Hz]")
ylabel("Składowa")
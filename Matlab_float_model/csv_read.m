addpath("../eng_csv");

% Open the file
fid = fopen('Uabc_3', 'r');

% Read data with space delimiter and scientific notation
data = textscan(fid, '%f %f %f %f', 'Delimiter', ' ', 'MultipleDelimsAsOne', true);

mySignal = [data(:, 1), data(:, 2)];

% Close the file
fclose(fid);

% Convert to a matrix if needed
data = cell2mat(data);

signal_1 = data(:, 1:2);

%figure;
%plot(signal_1(:, 1), signal_1(:, 2));
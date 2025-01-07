addpath("..");

% Total number of points
N = 2048;      

% Generate time vector
t = linspace(0, 1, N);

% Read the data from the CSV file
csv_read;

% Extract the second column as a numeric array
%secondColumn = data(:, 2);
secondColumn = square(2 * pi * t * 8);
%secondColumn = signal_2;

% Normalize the second column to the range [-0.5+eps, 0.5-eps]
secondColumn = secondColumn / (2.001*max(secondColumn));

% Convert the values to fixed-point hexadecimal representation
% Assuming fixed-point scaling to 11 fractional bits
secondColumnFixed = fi(secondColumn, 1, 12, 11); % Signed, 12-bit, 11 fractional bits
hexValues = arrayfun(@(x) ['0x', hex(x)], secondColumnFixed, 'UniformOutput', false);

% Format the fixed-point values into a C array
cArrayElements = strjoin(hexValues, ', '); % Join all elements with a comma
cArrayStr = sprintf('{%s}', cArrayElements); % Wrap in curly braces

% Write the C array to a file
outputFilename = 'array_square.h'; % Or 'array.h'
fid = fopen(outputFilename, 'w');

% Add necessary C-style declarations
fprintf(fid, '// Auto-generated C array\n');
fprintf(fid, '#include <stdint.h>\n'); % Include standard header for fixed-width types
fprintf(fid, 'uint16_t data_array[] = %s;\n', cArrayStr);

% Close the file
fclose(fid);

disp(['C array saved to ', outputFilename]);


function fixedPointValues = hex_to_fixpt(filename)
    % hex_to_fixpt converts hexadecimal values from a file into a fixed-point array.
    %
    % Input:
    %   filename: The path to the file containing the hex dump.
    %
    % Output:
    %   fixedPointValues: A fixed-point array (fi object) with 16 bits and 11 fractional bits.
    
    % Step 1: Open the file
    fileID = fopen(filename, 'r');
    
    % Check if the file is successfully opened
    if fileID == -1
        error('Failed to open the file. Please check the file path.');
    end

    rawData = fread(fileID, '*char')';
    fclose(fileID);
    
    % Split the string by whitespace
    hexValues = strsplit(strtrim(rawData));

    % Step 5: Remove the '0x' prefix if it's present (though your example doesn't have it)
    % (Not needed in this case as the values are pure hex, but included for robustness)
    hexValues = strrep(hexValues, '0x', '');  % Ensure no '0x' prefix
    
    % Step 6: Convert the hex values to decimal
    decimalValues = zeros(1, length(hexValues));  % Initialize an array for decimal values
    
    % Create the quantizer for fixed-point (16 bits word, 11 fractional bits)
    q = quantizer([16, 11]);
    
    for i = 1:length(hexValues)
        decimalValues(i) = hex2num(q, hexValues{i});  % Convert each hex value to decimal
    end

    % Step 7: Define the fixed-point data type (fixdt(1,16,11) for signed, 16 bits, 11 fractional bits)
    fixedPointValues = fi(decimalValues, 1, 16, 11);  % Signed, word length 16, fraction length 11

end

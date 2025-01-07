function complexArray = convert_to_complex(inputArray)
    % convert_to_complex converts an array into complex numbers.
    % Odd indices are used for the real part, and even indices for the imaginary part.
    %
    % Input:
    %   inputArray: A 1D array of numbers, where odd indices are real and even indices are imaginary.
    %
    % Output:
    %   complexArray: A complex number array, where odd indices are real and even indices are imaginary.
    
    % Ensure that the input array has an even number of elements
    if mod(length(inputArray), 2) ~= 0
        error('Input array must have an even number of elements.');
    end
    
    % Initialize the complex array
    complexArray = zeros(1, length(inputArray) / 2);
    
    % Iterate through the input array, assigning real and imaginary parts
    for i = 1:length(complexArray)
        realPart = inputArray(2*i - 1);    % Odd index for real part
        imagPart = inputArray(2*i);        % Even index for imaginary part
        complexArray(i) = realPart + 1i * imagPart;  % Construct complex number
    end
end

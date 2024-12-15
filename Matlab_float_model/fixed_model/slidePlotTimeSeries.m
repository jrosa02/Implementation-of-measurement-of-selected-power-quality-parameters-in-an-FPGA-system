function slidePlotTimeSeries(ts)
    % slidePlotTimeSeries - Visualize time series data with a slider to control time.
    %
    % Usage:
    %   slidePlotTimeSeries(ts)
    %
    % Parameters:
    %   ts - A MATLAB timeseries object containing the data to visualize.

    % Validate input
    if ~isa(ts, 'timeseries')
        error('Input must be a MATLAB timeseries object.');
    end
    
    % Extract time and data
    time = ts.Time;
    data = abs(ts.Data);
    
    % Validate dimensions of data
    if size(data, 1) ~= length(time)
        error('The first dimension of the data must match the length of the time vector.');
    end

    % Number of frames
    frames = length(time);

    % Initial frame index
    frameIndex = 1;

    % Create a figure window
    fig = figure;

    % Plot the initial frame
    hPlot = plot(data(frameIndex, :), 'LineWidth', 1.5);
    xlabel('Sample Index');
    ylabel('Amplitude');
    title(['Time: ' num2str(time(frameIndex))]);
    grid on;

    % Add a slider to control the frame index
    frameSlider = uicontrol('Style', 'slider', ...
        'Min', 1, 'Max', frames, 'Value', frameIndex, ...
        'SliderStep', [1/(frames-1), 10/(frames-1)], ...
        'Units', 'normalized', ...
        'Position', [0.2 0.01 0.6 0.05]);

    % Set up a callback function for the slider
    frameSlider.Callback = @(src, event) updateFrame(src, hPlot, data, time);

    % Nested function to update the plot based on slider position
    function updateFrame(src, hPlot, data, time)
        % Get the new frame index from the slider (rounded to integer)
        frameIndex = round(src.Value);

        % Update the plot data to the new frame
        hPlot.YData = data(frameIndex, :);

        % Update the title with the current time
        title(['Time: ' num2str(time(frameIndex))]);
        drawnow;
    end
end

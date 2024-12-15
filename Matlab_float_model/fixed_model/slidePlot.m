function slidePlot3D(data)
    % slidePlot3D - Visualize each frame of a 3D data matrix (2048 x 1 x frames) with a slider
    % 
    % Usage:
    %   slidePlot3D(data)
    %
    % Parameters:
    %   data - A 2048 x 1 x 12008 data matrix (for example) where each frame (2048 x 1) 
    %          will be visualized individually.
    
    % Validate input dimensions
    [rows, cols, frames] = size(data);
    
    % Initial frame index
    frameIndex = 1;
    
    % Create a figure window
    fig = figure;
    
    % Plot the initial frame
    hPlot = plot(data(:, 1, frameIndex), 'LineWidth', 1.5);
    xlabel('Sample Index'); ylabel('Amplitude');
    title(['Frame ' num2str(frameIndex) ' of ' num2str(frames)]);
    grid on;
    
    % Add a slider to control the frame index
    frameSlider = uicontrol('Style', 'slider', ...
        'Min', 1, 'Max', frames, 'Value', frameIndex, ...
        'SliderStep', [1/(frames-1) , 10/(frames-1)], ...
        'Units', 'normalized', ...
        'Position', [0.2 0.01 0.6 0.05]);
    
    % Set up a callback function for the slider
    frameSlider.Callback = @(src, event) updateFrame(src, hPlot, data);
    
    % Nested function to update the plot based on slider position
    function updateFrame(src, hPlot, data)
        % Get the new frame index from the slider (rounded to integer)
        frameIndex = round(src.Value);
        
        % Update the plot data to the new frame
        hPlot.YData = data(:, 1, frameIndex);
        
        % Update the title with the current frame index
        title(['Frame ' num2str(frameIndex) ' of ' num2str(frames)]);
        drawnow;
    end
end
% Create a new figure window
f = figure('Name', 'Game Homepage', 'Position', [200, 200, 400, 300]);

% Add a title
title = uicontrol('Style', 'text', 'String', 'Brain Game', ...
    'Position', [100, 200, 200, 50], 'FontSize', 20);

% Add a start button
start_button = uicontrol('Style', 'pushbutton', 'String', 'Push here to start', ...
    'Position', [100, 150, 200, 30], 'Callback', @start_game);

% Define the callback function for the start button
function start_game(~, ~)
    disp('Starting game...');
    % Add your game starting logic here
end

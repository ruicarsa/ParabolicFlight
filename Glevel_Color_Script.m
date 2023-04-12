
% import csv file with g data
g=uiimport 
% lots of options. May not always work, require edits to next few lines
% accordingly

% separate by axis. 

gx = g.data(:,1);
gy = g.data(:,2);
gz = -g.data(:,3); % in this example, Z seems to be inverted 

% here, 4 samples per second... 
% running average of 
%

% free parameter, needs optimization 
% smaller, more noise, longer, more delay in detection
n_points = 4;

smoothedZ = running_window(gz, n_points);

% color plot, with simple thresholds 

% inspired in the pendulum code
% will require optimization
thresholds = [0.5 , 12];

[gcolor, rgb_values] = map_to_rgb(smoothedZ, thresholds)
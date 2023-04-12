function [colors, rgb_values] = map_to_rgb(avg, thresholds)

% Colors a vector of values to colors based on user-defined thresholds
% Inputs:
%   avg: a vector of values to map to colors
%   thresholds: a 1x2 vector containing the lower and upper threshold values
%    This will likely need to change
% 
% Outputs:
%   colors: a cell array of strings specifying the colors for each value
%   rgb_values: a matrix of RGB color values for each value
% 

n = length(avg);
colors = cell(1,n);
rgb_values = zeros(n,3);

% Map each value to a color
for i = 1:n
    if avg(i) < thresholds(1)
        colors{i} = 'green';
        rgb_values(i,:) = [0,1,0];
    elseif avg(i) >= thresholds(1) && avg(i) < thresholds(2)
        colors{i} = 'blue';
        rgb_values(i,:) = [0,0,1];
    else
        colors{i} = 'red';
        rgb_values(i,:) = [1,0,0];
    end
end

scatter(1:length(avg), avg, [], rgb_values, 'filled');

end

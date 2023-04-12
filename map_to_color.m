function colors = map_to_color(avg, thresholds)
% Maps a vector of values to colors based on user-defined thresholds
% Inputs:
%   avg: a vector of values to map to colors
%   thresholds: a 1x2 vector containing the lower and upper threshold values
% Outputs:
%   colors: a cell array of strings specifying the colors for each value

% Initialize the output array
n = length(avg);
colors = cell(1,n);

% Map each value to a color
for i = 1:n
    if avg(i) < thresholds(1)
        colors{i} = 'green';
    elseif avg(i) >= thresholds(1) && avg(i) < thresholds(2)
        colors{i} = 'blue';
    else
        colors{i} = 'red';
    end
end

end

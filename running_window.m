
function avg = running_window(gdata, n_points)

% Calculates the running average of the last n_points data points
% Input:
%   data: vector containing the data points
%   n_points: the number of data points to include in the running average
%
% Output:
%   avg: a vector containing the running average
% 
% Rui C Sá, edited / simplified from RunningWindow
% April 2023


n = length(gdata);
avg = zeros(1,n);

for i = n_points:n
    avg(i) = mean(gdata(i-n_points+1:i));
end

% Copy the first n_points-1 data points as they are
avg(1:n_points-1) = gdata(1:n_points-1);

end

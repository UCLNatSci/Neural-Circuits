function result = average_path_length(G)
    d = distances(G);
    n = length(d);
    % Set diagonal elements to NaN
    d(1:n+1:end) = NaN;
    % Set infinite elements to NaN
    d(isinf(d)) = NaN;
    % Get non-NaN elements
    d = d(~isnan(d));
    % Calculate mean
    result = mean(d);
end
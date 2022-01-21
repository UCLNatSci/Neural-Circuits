% Plot a graph with dotted edges
% and red diamond nodes
labels = {'Mitcham', 'Sutton', 'Southwark'}
plt = plot(G2, ':dr', 'NodeLabel', labels);

% Set nodes 1 and 2 to green colour
highlight(plt, [1 2], 'NodeColor', 'green');
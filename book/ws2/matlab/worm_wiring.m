h = hermfulledgelist;

% Get the indices of rows where
% the Type is "chemical".
% Notice the curly brackets
idx = (h{:,4} == "chemical");

% Extract the corresponding rows
% and the first and second columns
h_source = h{idx,1};
h_target = h{idx,2}; 

% Create a graph from the lists of
% source and target edges
G = digraph(cellstr(h_source),...
    cellstr(h_target));

% Remove self-loops and multiple edges
G = simplify(G);

plot(G);
h = hermfulledgelist;

idx = (h{:,4} == "chemical" & h{:,3}>10);

% Extract the corresponding rows
% and the first and second columns
h_source = h{idx,1};
h_target = h{idx,2}; 

% create a graph from the lists of
% source and target edges
G = digraph(cellstr(h_source),...
    cellstr(h_target));
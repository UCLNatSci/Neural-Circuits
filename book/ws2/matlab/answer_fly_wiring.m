% c)
h = tracedtotalconnections;

idx = (h{:,3}>10);

% Extract the corresponding rows
% and the first and second columns
h_source = h{idx,1};
h_target = h{idx,2};

% Create a graph from the lists of
% source and target edges
G = digraph(cellstr(h_source),...
    cellstr(h_target));
%G =g G.simplify();
H = G;
%plot(G);

% d)
[bin, binsize] = conncomp(G, 'Type', 'weak');
[m, i_max] = max(binsize);
idx = (bin == i_max);
%H = subgraph(G, idx);

%p = plot(H);

d = distances(H);
d(isinf(d)) = nan;

% Find maximum of all columns and rows of d
m = max(max(d));
% Get indices of maximum
[i,j] = find(d==m);

% There may be more than one, so let's take
% the first one
i_max = i(1);
j_max = j(1);

disp(H.Nodes.Name{i_max});
disp(H.Nodes.Name{j_max});

sp = shortestpath(H, i_max, j_max);
for x = sp
    disp(H.Nodes.Name{x});
end



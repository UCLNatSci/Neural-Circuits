% Create a graph from an edge list. 
edges = [1 2; 2 3; 3 1; 4 5] 
G = digraph(edges(:,1), edges(:,2));
% Determine its connected components 
% and color the largest one.
[bin, binsize] = conncomp(G, 'Type', 'weak');
[m, max_bin] = max(binsize);
idx = (bin == max_bin);
p = plot(G);
highlight(p, idx, 'NodeColor', 'red');




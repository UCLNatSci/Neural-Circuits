% a
[bin,binsize] = conncomp(G,'Type','weak');
[m, i_max] = max(binsize);
idx = (bin == i_max);
H = subgraph(G, idx);
plot(H);

% b
disp(length(binsize));

% c
[b, i_sorted] = sort(binsize);
disp(b(end-1));

% d
idx = (bin == i_2);
H2 = subgraph(G, idx);
plot(H2);
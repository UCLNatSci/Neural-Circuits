p = plot(H);

[b, i_sorted] = sort(binsize);
i1 = i_sorted(end);
idx = (bin == i1);

highlight(p, idx, 'NodeColor', 'red');
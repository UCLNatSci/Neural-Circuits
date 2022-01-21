trc = tracedtotalconnections;
idx = (trc{:,3} >= 3);
source = trc{idx,1};
target = trc{idx,2};
G = digraph(cellstr(source), cellstr(target));

histogram(G.indegree, 0:2:300);
hold on;
histogram(G.outdegree, 0:2:300);
xlim([0,300]);
legend('Indegree', 'Outdegree');
xlabel('Degree');
ylabel('Frequency');


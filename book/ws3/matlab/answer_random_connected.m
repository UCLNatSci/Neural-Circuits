n = 10;
p = 0.1;

% A large number of graphs
N = 1000;

% An array to store whether each
% graph is connected.
connected = zeros(N,1);
for i=1:N
    % Generate a random graph and 
    % Determine its connected components.
    G = random_graph(n, p);
    [bin, binsize] = conncomp(G, 'type', 'weak');
    % Graph is connected if there is one bin.
    connected(i) = (length(binsize)==1);
end

% Probability of begin connected
prob = sum(connected)/N;
disp(prob);
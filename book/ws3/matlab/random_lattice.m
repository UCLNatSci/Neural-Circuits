N = 10;
d = 2;
e = 2;

edges = [];

for i=1:N
    x = randi(2*d, e, 1) - d;
    x = x - (x <= 0);
    x = mod(i + x - 1, N) + 1;
    edges = [edges ; [x ones(e,1)*i]];
end

G = digraph(edges(:,1), edges(:,2));
plot(G ,'Layout', 'circle');
    
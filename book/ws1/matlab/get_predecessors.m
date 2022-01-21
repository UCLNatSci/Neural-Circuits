function result = get_predecessors(M, i) 
    a = M(:,i);
    result = find(a==1);     
end
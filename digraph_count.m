function [DM] = digraph_count(message, N)
%
m = length(message);
DM = zeros(N,N);

for ii = 1:N
    for jj = 1:N
        for kk = 2:m
            DM(ii,jj) = DM(ii,jj) + ...
                (message(kk-1)==ii-1)*(message(kk)==jj-1);
        end
        DM(ii,jj) = DM(ii,jj) + ...
            (message(m)==ii-1)*(message(1)==jj-1);
    end
end
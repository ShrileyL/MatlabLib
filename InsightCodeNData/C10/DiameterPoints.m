function [Q1,Q2] = DiameterPoints(P)
% P is a structure array of points.
% Q1 and Q2 are the points in P with maximum Euclidean separation.

n = length(P);
Q1 = P(1); Q2 = P(2); d = GetDist(Q1,Q2);
for i=1:n-1
    for j=i+1:n
        % See if P(i) and P(j) are further apart than Q1 and Q2...
        dij = GetDist(P(i),P(j));
        if dij>d
            % A better choice for Q1 and Q2 has been found...
            d = dij; Q1 = P(i); Q2 = P(j);
        end
    end
end
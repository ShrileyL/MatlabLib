function d = GetDist(P1,P2)
% P1 and P2 are points.
% d is the Euclidean distance between them.
d = sqrt((P1.x - P2.x)^2 + (P1.y - P2.y)^2);
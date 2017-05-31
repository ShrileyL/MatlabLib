function P = Nearest(P0,P1,P2)
% P0, P1, and P2 are points with P1 and P2 distinct.
% P is the nearest point to P0 that is on the line segment 
%   connecting P1 and P2.

tstar = ((P0.x-P1.x)*(P2.x-P1.x) + (P0.y-P1.y)*(P2.y-P1.y)) ...
        / GetDist(P1,P2)^2;
if tstar <= 0
    P = P1;
elseif tstar >= 1
    P = P2;
else
    P = MakePoint(P1.x + tstar*(P2.x-P1.x), ...
                  P1.y + tstar*(P2.y-P1.y));
end
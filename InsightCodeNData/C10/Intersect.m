function P = Intersect(L1,L2)
% P is the single point at which lines L1 and L2 intersect

A = [-L1.del_x L2.del_x; -L1.del_y L2.del_y];
b = [L1.P.x-L2.P.x;L1.P.y-L2.P.y];
tStar = A\b;
P = MakePoint(L1.P.x+tStar(1)*L1.del_x,L1.P.y+tStar(1)*L1.del_y);
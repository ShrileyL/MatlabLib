function L = PerpBisector(A,B)
% A and B are distinct points.
% L is the line that passes through the midpoint of line 
%   segment AB and is perpendicular to line segment AB.

% The midpoint
P = MakePoint((A.x+B.x)/2,(A.y+B.y)/2);
% The slope is the negative reciprocal of line segment AB's slope
del_x = B.x-A.x;
del_y = B.y-A.y;
L = MakeLine(P,-del_y,del_x);
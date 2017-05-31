function [xNew,yNew] = Smooth(x,y)
% x and y are column n-vectors that define the vertices of a polygon P.
% xNew and yNew are column n-vectors that define a polygon Q
% whose edges are the midpoints of P's edges.

% Initializations...
n = length(x); xNew = zeros(n,1); yNew = zeros(n,1);
for i=1:n-1
    % i-th new vertex is a midpoint...
    xNew(i) = (x(i) + x(i+1))/2;
    yNew(i) = (y(i) + y(i+1))/2;
end
% Special case...
xNew(n) = (x(n)+x(1))/2;
yNew(n) = (y(n)+y(1))/2;
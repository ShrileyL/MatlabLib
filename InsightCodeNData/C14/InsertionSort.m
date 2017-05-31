function [y,TotalC,TotalS] = InsertionSort(x)
% x is a column n-vector
% y is a column n-vector obtained by permuting the values in x so
%   that they are ordered from smallest to largest.
% TotalC is the total number of required comparisons.
% TotalS is the total number of required swaps.

n = length(x); y = x; TotalC = 0; TotalS = 0;
for k=2:n
    [y(1:k),C,S] = Insert(y(1:k));
    k = k+1;
    TotalC = TotalC + C;
    TotalS = TotalS + S;
end

function [y,C,S] = Insert(x)
% x is a column m-vector with x(1:m-1) sorted.
% y is a column m-vector obtained by applying the insert process to x.
% C is the number of required comparisions.
% S is the number of required swaps.
m = length(x); y = x; S = 0;
k = m-1;
while k>=1 && y(k)>y(k+1)
    t = y(k+1); y(k+1) = y(k); y(k) = t; S = S+1;
    k = k-1;
end
C = S+1;


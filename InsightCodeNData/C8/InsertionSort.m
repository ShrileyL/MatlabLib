function [y,TotalC,TotalS] = InsertionSort(x)
% x is a column n-vector.
% y is a column n-vector obtained by permuting the values in x so
%   that they are ordered from smallest to largest.
% TotalC is the total number of required comparisons.
% TotalS is the total number of required swaps.

n = length(x); TotalC = 0; TotalS = 0;
for k=2:n
    [x(1:k),C,S] = Insert(x(1:k));
    TotalC = TotalC + C;
    TotalS = TotalS + S;
end
y = x;


function [y,C,S] = Insert(x)
% x is a column m-vector with x(1:m-1) sorted.
% y is a column m-vector obtained by applying the insert 
%   process to x.
% C is the number of required comparisions.
% S is the number of required swaps.
m = length(x); S = 0;
k = m-1;
while k>=1 && x(k)>x(k+1)
    t = x(k+1); x(k+1) = x(k); x(k) = t; S = S+1;
    k = k-1;
end
y = x;
C = S+1;


function y = MergeSortR(x)
% x is a column N-vector.
% y is a column N-vector consisting of the values in x sorted
% from smallest to largest.

N = length(x);
if N==1
    y = x;
else
    m  = floor(N/2);
    % Sort the first half...
    y1 = MergeSortR(x(1:m));
    % Sort the second half...
    y2 = MergeSortR(x(m+1:N));
    % Merge...
    y  = Merge(y1,y2);
end
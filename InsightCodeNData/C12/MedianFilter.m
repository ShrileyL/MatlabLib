function B = MedianFilter(A)
% A is an m-by-n uint8 array.
% B is an m-by-n uint8 array obtained from A by median filtering

[m,n] = size(A);
B = zeros(m,n,'uint8');
for i=1:m
    for j=1:n
        % The 3-by-3 matrix of neighbors...
        iMin = max(1,i-1); iMax = min(m,i+1);
        jMin = max(1,j-1); jMax = min(n,j+1);
        Neighbors = A(iMin:iMax,jMin:jMax);
        % The median value...
        B(i,j) = median(Neighbors(:));
    end
end
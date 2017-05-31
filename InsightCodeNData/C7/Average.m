function B = Average(A)
% A is an m-by-n matrix
% B is an m-by-n matrix
% The first and last row and first and last column of A and B are the same.
% Otherwise, B(i,j) is the average of A(i,j)'s four neighbors, i.e.,
% A(i+1,j), A(i,j+1), A(i-1,j), and A(i,j-1).

[m,n] = size(A);
B = zeros(m,n);
for i=2:m-1
    for j=2:n-1
        B(i,j) = (A(i+1,j) + A(i,j+1) + A(i,j-1) + A(i-1,j))/4;
    end
end
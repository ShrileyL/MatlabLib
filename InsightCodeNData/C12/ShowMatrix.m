function ShowMatrix(A,C)
% A is an m-by-n matrix whose values are not all the same.
% C is a p-by-3 colormap matrix
% Displays the matrix A as an m-by-n array of colored tiles.

[m,n] = size(A);
p = size(C,1);
A_min = min(min(A));
A_max = max(max(A));
h = (A_max - A_min)/p;

figure
axis ij off equal
hold on

for i =1:m
    for j=1:n
        % Display A(i,j)
        k = max(ceil( (A(i,j)-A_min)/h ),1);
        c = C(k,:);
        fill([j j+1 j+1 j],[i i i+1 i+1],c)
    end
end
hold off

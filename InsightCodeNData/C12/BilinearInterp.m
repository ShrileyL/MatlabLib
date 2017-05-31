function A = BilinearInterp(F,n)
% F is a 2-by-2 matrix and n>1 is an integer.
% A is an n-by-n matrix with A(1,1)=F(1,1), A(1,n)=F(1,2),
% A(n,1)=F(2,1), A(n,n)=F(2,2), and the rest of the A(i,j)
% are obtained via bilinear interpolation.

A = zeros(n,n);
for j=1:n
    beta = (j-1)/(n-1);
    FN = (1-beta)*F(1,1) + beta*F(1,2);
    FS = (1-beta)*F(2,1) + beta*F(2,2);
    for i=1:n
        alfa = (i-1)/(n-1);
        A(i,j) = (1-alfa)*FN + alfa*FS;
    end
end

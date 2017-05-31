function y = MergeSortI(x)
% x is a column N-vector with N a power or two.
% y is a column N-vector consisting of the values in x sorted
% from smallest to largest.
N = length(x);
d = round(log2(N));
for Level = d-1:-1:0
    % Number of merges to perform at this level...
    p = 2^Level;
    % Length of the output vector for each call to Merge...
    q = N/p;
    % Length of the input vectors for each call to Merge....
    r = q/2;
    % Starting index for the next Merge...
    i = 1;
    for k=1:p
        % Perform the kth merge at the current Level...
        x(i:i+q-1) = Merge(x(i:i+r-1),x(i+r:i+q-1));
        i = i+q;
    end
end
y = x;
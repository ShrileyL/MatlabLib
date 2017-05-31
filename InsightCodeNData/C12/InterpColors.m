function C = InterpColors(c1,c2,m)
% c1 and c2 are rgb vectors
% m is a nonnegative integer
% C is an (m+2)-by-3 color map whose first and last
%     rows are c1 and c2 respectively.
% Rows 2 through m+1 are obtained via linear interpolation

n = m+2;
s = (c2 - c1)/(n-1);
d = c1;
C = d;
for k=2:n
    % Append the kth color...
    d = d + s;
    C = [C;d];
end
% Make sure all the entries are in the interval [0,1]...
C = max(zeros(n,3),min(C,ones(n,3)));
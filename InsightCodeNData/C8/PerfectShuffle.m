function y = PerfectShuffle(x)
% x is a column n-vector with n = 2m.
% y is a column n-vector that is x's perfect shuffle.

% Initializations...
n = length(x); 
y = zeros(n,1); 
m = n/2;
for k=1:m
   % Save the k-th value from the "top half" of the deck...
   y(2*k-1) = x(k);
   % Save the k-th value from the "bottom half" of the deck...
   y(2*k) = x(k+m);
end
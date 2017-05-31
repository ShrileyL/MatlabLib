function s = MySqrt(A)
% A is a non-negative real number and s is an approximation
% to its square root.

if A == 0
    % Nothing to do in this case...
    s = 0;
else
    % The initial rectangle is A-by-1...
    L = A; W = 1;
    % Iterate until the difference between L and W is less than L/10^15...
    while abs(L-W) >  (10^-15)*L
        % The new L is the average of the current L and W...
        L = (L+W)/2; W = A/L;
    end
    s = L;
end


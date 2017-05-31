function y = Transition(P,x)
% P is an n-by-n transition matrix.
% x is an n-by-1 vector
% y is an n-by-1 vector obtained by taking a Markov step.

% Initializations...
[n,n] = size(P);
y = zeros(n,1);
for i=1:n
    % Compute the new ith state value...
    for j=1:n
        % Add in the contribution from the current jth state...
        y(i) = y(i) + P(i,j)*x(j);
    end
end
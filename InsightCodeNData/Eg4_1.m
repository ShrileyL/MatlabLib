% Script Eg4_1
% Plots the function f(x) = sin(5x)*exp(-x/2)/(1 + x^2) across [-2,3].

L = -2;  % Left endpoint
R =  3;  % Right endpoint
N = 200; % Number of sample points
% Obtain the vector of x-values and f-values...
x = linspace(L,R,N);
y = sin(5*x) .* exp(-x/2) ./ (1 + x.^2);
% Plot and label...
plot(x,y,[L R],[0 0],':')
title('The function f(x) = sin(5x) * exp(-x/2) / (1 + x^2)')
ylabel('y = f(x)')
xlabel('x')
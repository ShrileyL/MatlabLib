function y = Rough(x)
y = humps(x-1) + 10;
% humps is a Matlab built-in function with strong maxima
% at x=.3 and x=.9
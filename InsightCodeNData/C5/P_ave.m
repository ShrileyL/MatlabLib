function P = P_ave(a,b,tol)
% a and b are the semiaxes of an ellipse E.
% tol is a small positive error tolerance.
% P is an estimate of E's perimeter with relative error
% approximately equal to tol.

% Initializations...
n = ceil(sqrt(2.5/tol));
% Inner perimeter estimate...
Inner = P_inner(a,b,n);
% Outer perimeter estimate...
Outer = P_outer(a,b,n);
% Return the average of the two perimeters...
P = (Inner + Outer)/2;
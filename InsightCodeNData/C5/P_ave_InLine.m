function P = P_ave_Inline(a,b,tol)
% a and b are the semiaxes of an ellipse E.
% tol is a small positive error tolerance.
% P is an estimate of E's perimeter with relative error
% approximately equal to tol.

% Initializations...
n = ceil(sqrt(2.5/tol));
theta = 2*pi/n;
gamma = (1 - cos(theta))/sin(theta);
% Precompute the cosines and sines...
TheThetas = linspace(0,2*pi,n+1);
c = cos(TheThetas);
s = sin(TheThetas);
% Inner perimeter estimate...
Inner = 0;
% Sum the side lengths...
for k=1:n
    % Coordinates of vertex k...
    xk = a*c(k);
    yk = b*s(k);
    % Coordinates of vertex k+1...
    xkp1 = a*c(k+1);
    ykp1 = b*s(k+1);
    % Add in the distance between them...
    dk = sqrt((xk-xkp1)^2 + (yk-ykp1)^2);
    Inner = Inner + dk;
end
% Outer perimeter estimate..
Outer = 0;
% Sum the side lengths...
for k=1:n
    % Coordinates of vertex k...
    xk = a*(c(k)-gamma*s(k));
    yk = b*(s(k)+gamma*c(k));
    % Coordinates of vertex k+1...
    xkp1 = a*(c(k+1)-gamma*s(k+1));
    ykp1 = b*(s(k+1)+gamma*c(k+1));
    % Add in the distance between them...
    Dk = sqrt((xk-xkp1)^2 + (yk-ykp1)^2);
    Outer = Outer + Dk;
end
% Return the average of the two perimeters...
P = (Inner + Outer)/2;
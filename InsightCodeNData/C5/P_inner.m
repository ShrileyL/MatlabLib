function P = P_inner(a,b,n)
% a and b are the semiaxes of an ellipse E.
% n is a positive integer bigger than 2.
% P is the perimeter of the inner polygon whose
% vertices are on E.

theta = 2*pi/n;
innerSum = 0;
% Sum the side lengths...
for k=1:n
    % Coordinates of vertex k...
    xk = a*cos(k*theta);
    yk = b*sin(k*theta);
    % Coordinates of vertex k+1...
    xkp1 = a*cos((k+1)*theta);
    ykp1 = b*sin((k+1)*theta);
    % Add in the distance between them...
    dk = sqrt((xk-xkp1)^2 + (yk-ykp1)^2);
    innerSum = innerSum + dk;
end
P = innerSum;
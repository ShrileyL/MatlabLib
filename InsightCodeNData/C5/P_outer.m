function P = P_outer(a,b,n)
% a and b are the semiaxes of an ellipse E.
% n is a positive integer bigger than 2.
% P is the perimeter of the outer polygon whose edges are
% tangent to E.

theta = 2*pi/n;
gamma = (1 - cos(theta))/sin(theta);
outerSum = 0;
% Sum the side lengths...
for k = 1:n
    % Coordinates of vertex k...
    xk = a*(cos(k*theta)-gamma*sin(k*theta));
    yk = b*(sin(k*theta)+gamma*cos(k*theta));
    % Coordinates of vertex k+1...
    xkp1 = a*(cos((k+1)*theta)-gamma*sin((k+1)*theta));
    ykp1 = b*(sin((k+1)*theta)+gamma*cos((k+1)*theta));
    % Add in the distance between them...
    Dk = sqrt((xk-xkp1)^2 + (yk-ykp1)^2);
    outerSum = outerSum + Dk;
end
P = outerSum;
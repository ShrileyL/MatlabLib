function ShowEllipse(alpha,beta,s,phiVal)
% Adds the ellipse with focus F2 = (alpha,beta) and string length
% s to the current figure window. Displays F2 in the figure
% window and the input parameters in the title.

% Obtain perihelion, aphelion, and tilt...
P = (s+sqrt(alpha^2+beta^2))/2;
A = (s-sqrt(alpha^2+beta^2))/2;
theta = atan2(beta,alpha);

% Plot...
t = linspace(0,2*pi);
x1 = (P-A)/2 + ((P+A)/2)*cos(t);
y1 = sqrt(A*P)*sin(t);
xVals = cos(theta)*x1 - sin(theta)*y1;
yVals = sin(theta)*x1 + cos(theta)*y1;
plot(xVals,yVals)
plot((-A+P)*cos(theta),(-A+P)*sin(theta),'.k','Markersize',20)
title(sprintf('alpha = %5.2f   beta = %5.2f   phi = %5.2f',...
      alpha, beta, phiVal),'FontSize',14)
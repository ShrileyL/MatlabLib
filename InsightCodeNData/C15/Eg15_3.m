% Script Eg15_3
% Fitting an ellipse to data

% Generate noisy orbit data...
NoiseFactor = .2;
P = 1; A = 6; theta = pi/6;
n = 20; t = linspace(0,2*pi,n);
x1 = (P-A)/2 + ((P+A)/2)*cos(t);   y1 = sqrt(A*P)*sin(t);
x = cos(theta)*x1 - sin(theta)*y1; y = sin(theta)*x1 + cos(theta)*y1;
x = x + NoiseFactor*randn(1,n);    y = y + NoiseFactor*randn(1,n);

% Solicit and display the first approximation...
close all; axis equal off; hold on
plot(x,y,'or',0,0,'*k')
[alpha,beta,sbar,phiValBest] = GetFocusAndString(x,y);
ShowEllipse(alpha,beta,sbar,phiValBest)

% Try to improve the fit...
nTries = 10;
for Try = 2:nTries
   [alpha,beta,stilde,phiVal] = GetFocusAndString(x,y);
   if phiVal < phiValBest
       % Redisplay if an improvement...
       phiValBest = phiVal;
       close all; axis equal off; hold on
       plot(x,y,'or',0,0,'*k')
       ShowEllipse(alpha,beta,sbar,phiValBest)
   end
end
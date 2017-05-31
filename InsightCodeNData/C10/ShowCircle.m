function ShowCircle(C,s)
% C is a circle.
% s is one of the characters 'k','w','r','g','b','m','c','y'.
% Displays C in the current figure window using color s.
% Assumes hold is on.

theta = linspace(0,2*pi);
x = C.P.x + C.r * cos(theta);
y = C.P.y + C.r * sin(theta);
fill(x,y,s)

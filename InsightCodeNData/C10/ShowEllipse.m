function ShowEllipse(E)
% E is an ellipse
% Displays E in the current figure window. Assumes hold is on.
u = E.a*cos(linspace(0,2*pi));
v = E.b*sin(linspace(0,2*pi));
x = E.h + cos(E.theta)*u - sin(E.theta)*v;
y = E.k + sin(E.theta)*u + cos(E.theta)*v;
plot(x,y,'r')


% Script Eg10_3
% Displays a random triangle and the associate inscribed
% and circumscribed circles.

% Set up the figure window...
close all
figure
axis equal off
hold on

% Generate a random triangle and its inscribed and circumscribed
% circles...
A = MakePoint(rand(1),rand(1));
B = MakePoint(rand(1),rand(1));
C = MakePoint(rand(1),rand(1));
T = MakeTriangle(A,B,C);
[C_In,C_Out] = InAndOut(T);

% Display...
ShowCircle(C_Out,'y')
ShowTriangle(T,'k');
ShowCircle(C_In,'r')
rho = sqrt(1 - (2*C_In.r/C_Out.r)^2);
title(sprintf('rho(T) = %5.3f',rho),'Fontsize',14)
hold off
shg
% Script Eg14_3
% Illustrates pwLAdapt with the function Rough on [0,6].
close all

% Produce a nice "linspace" plot...
N = 1000;
figure
set(gcf,'position',[50 50 1000 500])
L = 0.0;
R = 6.0;
x = linspace(L,R,N);
y = Rough(x);
plot(x,y,'r',[L R],[0 0],'k')
axis([L R -10 120])
pause(1)

% Now show a more efficient distribution of f-evals...
tol = (R-L)/(N-1); fL = Rough(L); fR = Rough(R);
hold on
[x,y] = pwLadapt(@Rough,L,fL,R,fR,tol);
plot(x,y,'.k','Markersize',10)
title(sprintf('Number of f-Evaluations = %1d',length(x)),'Fontsize',14)
pause(1)
% And connect...
plot(x,y,'k')
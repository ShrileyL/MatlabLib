% Script Eg7_2
% Contour plot and cross sections of a function of two variables.

% Generate a matrix of f(x,y) evaluations...
a = 0; b = 6; n = 301; x = linspace(a,b,n);
c = 0; d = 4; m = 201; y = linspace(c,d,m);
TVals = fOnGrid(x,y,@T_plate);
% Display the contour plot
close all
v = linspace(5,100,20);
contour(x,y,TVals,v)

% Display selected crosssections
figure
TY = fOnGrid(x,[1 2 3],@T_plate);
plot(x,TY(1,:),x,TY(2,:),'--',x,TY(3,:),'-.')
xlabel('x','Fontsize',14)
ylabel('Temperature','Fontsize',14)
legend('y = 1', 'y = 2', 'y = 3')
shg
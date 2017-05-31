%% plot
clc
for n = 25:25:500
    x = linspace(0,2*pi,n);
    y = sin(x);
    plot(x,y)
    title(sprintf('n=%3d',n))
    pause
end

%% Plot the function f(x) = sin(5x)*exp(x/2)/(1 + x^2)

L = -2;
R = 3;
N = 200;

x = linspace(L,R,N);
y = sin(5*x) .* exp(-x/2) ./ (1 + x.^2);
%plot and label
plot(x,y,[L,R],[0,0],':')
title('The Function f(x) = sin(5x)*exp(x/2)/(1 + x^2)')
ylabel('y = f(x)')
xlabel('x')
function yNoisy = SendNoisy(tVals,y)
% Adds noise to the signal y.
% Displays and plays the resulting signal yNoisy

n = length(y);
% Add noise...
A = .5;
yNoisy = y + A*randn(n,1);

% Display a representative part of the sinusoid...
figure
set(gcf,'position',[100 300 800 160])
m = 300;
plot((1:m)',yNoisy(1:m),(1:m)',zeros(m,1),'-r')
axis([1 m -1.2 1.2])
set(gca,'xTickLabel','')
title('Received Signal','Fontsize',14)
shg

% Play the noisy tone...
Fs = 32768;
pause(1)
sound(yNoisy,Fs)
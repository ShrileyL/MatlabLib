function ShowCosines(y)
% Shows the cosine that signal y makes with each of the 4 perfect row
% signals and each of the three perfect column signals.

% Set up the perfect signal matrices...
Fs = 32768;
tVals = 0:(1/Fs):.25;
tau = 2*pi*tVals';
fR = [697 770 852 941];
trueR = [sin(tau*fR(1)) sin(tau*fR(2)) sin(tau*fR(3)) sin(tau*fR(4))];
fC = [1209 1336 1477];
trueC = [sin(tau*fC(1)) sin(tau*fC(2)) sin(tau*fC(3))];

% Compute the row and column cosines...
for i=1:4
    rowCosine(i) = cos_xy(y,trueR(:,i));
end
for i=1:3
    colCosine(i) = cos_xy(y,trueC(:,i));
end


% Display...
figure
set(gcf,'position',[100 50 800 160])
subplot(1,2,1)
bar(rowCosine)
title('Row Cosines','Fontsize',14)
axis([0 5 0 1.1*max(rowCosine)])
set(gca,'xTick',[1 2 3 4])
subplot(1,2,2)
bar(colCosine)
title('Column Cosines','Fontsize',14)
axis([0 5 0 1.1*max(colCosine)])
set(gca,'xTick',[1 2 3])




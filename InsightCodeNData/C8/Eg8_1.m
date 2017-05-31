% Script Eg8_1
% Displays the restoration index for a range of n-values

close all
nVals = 2:2:60;
rVals = [];
for n = nVals
   % Initializations....
   x0 = (1:n)'; 
   x  = PerfectShuffle(x0); 
   k = 1;
   % Keep shuffling until a match with x0...
   while sum(abs(x-x0))>0
       x = PerfectShuffle(x);
       k = k+1;
   end
   rVals = [rVals k];
end
% Display...
bar(nVals,rVals)
axis([0 62 0 60])
xlabel('n','Fontsize',14)
ylabel('Restoration Index','Fontsize',14)
title('Restoration Via Repeated Perfect Shuffles','Fontsize',14)
grid on
shg
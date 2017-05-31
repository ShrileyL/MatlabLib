% Script Eg12_3
% Environment for designing 14-by-10 dot matrix representations of the
% ten digits.

close all
% Get the 7-by-5 representations...
SevenByFive = TheDigits();

% Improve the 14-by-10's...
FourteenByTen = cell(10,1);
for k=1:3
    figure
    set(gcf,'position',[20,20,800,600])
    axis equal off
    hold on
    %    Design and  save the k-th digit...
    FourteenByTen{k} = Refine(SevenByFive{k});
    close
end

% Display the 7-by-5's and 14-by-10's side-by-side...
figure
axis([1 11 -1.3 1.3])
set(gcf,'position',[20,20,800,600])
axis equal off
hold on
for k=1:10
    DrawDigit(k,1,1,SevenByFive{k},0)
    DrawDigit(k,-1.3,1,FourteenByTen{k},0)
end
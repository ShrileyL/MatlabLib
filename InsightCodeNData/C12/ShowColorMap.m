function ShowColorMap(C)
% Displays the p-by-3 color map C

p = size(C,1);
W = p/4;
hold on
for k=1:p
    c = C(k,:);
    fill([k-1 k k k-1],[0 0 W W],c,'EdgeColor',c)
end
hold off
axis off equal

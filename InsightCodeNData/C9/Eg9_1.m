% Script Eg9_1
% Amino acid frequency counts.
n = input('Enter the number of amino acids: ');
P = RandomProtein(n);

count = zeros(20,1);
for j=1:n
    s = P(3*(j-1)+1:3*j);
    a = FindMnemonic(s);
    i = FindIndex(a);
    count(i) = count(i)+1;
end
bar(count(1:20))
title(sprintf('n = %d',n),'Fontsize',14)
axis([0 21 0 1.1*max(count)])
set(gcf,'position',[30 50 950 600])
set(gca,'xTick',1:20)
set(gca,'xTickLabel',...
    {'Ala','Arg','Asn','Asp','Cys','Glu','Gln','Gly','His','Ile',...
    'Leu','Lys','Met','Phe','Pro','Ser','Thr','Trp','Tyr','Val'})
shg
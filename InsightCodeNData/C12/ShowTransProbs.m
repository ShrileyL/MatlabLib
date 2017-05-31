% ShowTransProbs
D = TheDigits();
Count = zeros(7,5);
n = 100000;
for k=1:n
    i1 = ceil(10*rand);
    i2 = ceil(10*rand);
    Count = Count + Difference(D{i1},D{i2});
end
Count = Count
Count = Count/n;

for i=1:7
    disp(sprintf('  %3.2f',Count(i,:)))
end

% Script Eg14_2
% Benchmarks MergeSortI
clc
disp('      N       tMerge    tInsert')
disp('-----------------------------------')
dRange = 14:20;
dRange = 10:14;
for d = dRange
    N = 2^d; x = randn(N,1);
    if d<=15
        tic;
        y = InsertionSort(x);
        tInsert = toc;
        tic;
        y = MergeSortI(x);
        tMerge = toc;
        fprintf('%10d   %6.3f     %6.3f\n',N,tMerge,tInsert)
    else
        tic
        y = MergeSortI(x);
        tMerge = toc;
        fprintf('%10d   %6.3f\n',N,tMerge)
    end
end
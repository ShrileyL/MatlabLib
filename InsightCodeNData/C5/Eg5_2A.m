% Script Eg5_2A
% Explores the accuracy of P_inner and P_outer

% Acquire the semiaxes...
a = input('Enter a:');
b = input('Enter b:');
clc
fprintf('a = %5.3f  b = %5.3f\n\n',a,b)
disp('    n         RelErrEst')
disp('-------------------------')
for n = logspace(1,6,6)
    Inner = P_inner(a,b,n);
    Outer = P_outer(a,b,n);
    Ave = (Inner + Outer)/2;
    % tol = 1/n^2; Ave = P_ave(a,b,tol);
    relErrEst = (Outer-Inner)/(2*Ave);
    fprintf('%6.2e   %10.6e\n',n,relErrEst)
end
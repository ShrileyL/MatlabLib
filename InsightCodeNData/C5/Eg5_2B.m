% Script Eg5_2B
% Explores the performance of P_ave

% Acquire the semiaxes...
a = input('Enter a:');
b = input('Enter b:');
clc
fprintf('a = %5.3f  b = %5.3f\n\n',a,b)
disp('    tol          Perimeter')
disp('-------------------------------')
for tol = logspace(-1,-12,12)
    P = P_ave(a,b,tol);
    fprintf('%6.2e   %18.12f\n',tol,P)
end
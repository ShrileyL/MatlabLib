% Script Eg9_3
% Illustrates the method of bisection applied to finding the
% smallest positive root of
%     tau(x) = 512x^10 - 1280x^8 + 1120x^6 - 400x^4 + 50x^2 -1

% Initializations...
clc
L0 = 0.0;
R0 = 0.3;
fEvalsMax = 100;
fprintf('Initial interval = [%5.2f,%5.2f]\n',L0,R0)
fprintf('f-evaluation maximum = %2d\n\n',fEvalsMax)
disp('   delta               Root           f-Evals')
disp('------------------------------------------------')
% Apply bisection with increasingly small values for delta...
for delta = logspace(-3,-20,18)
    [L,R,fEvals] = Bisection(@tau,L0,R0,delta,fEvalsMax);
    Root = (L+R)/2;
    fprintf(' %5.1e      %20.18f      %3d\n',delta,Root,fEvals)
end
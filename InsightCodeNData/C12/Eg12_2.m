% Script Eg12_2
% Interpolate F(x,y) given the four random corner values

n = 20;
C = colormap('hot');
close all
F = randn(2,2);  % assume the four values are different
A = BilinearInterp(F,n);
ShowMatrix(A,C)
shg
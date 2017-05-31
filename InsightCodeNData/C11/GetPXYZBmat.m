function [P,x,y,z] = GetPXYZBmat()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains the file PXYZBmat.bin.
% P, x, y, and z are column vectors that house the population
%    and xyz data encoded in PXYZBmat.bin  

% Acquire n (the total number of zipcodes)...
fid3 = fopen([pwd '\MyData\PXYZBmat.bin'],'r');
n = fread(fid3,1,'int');

% Acquire and take apart the matrix of P, x, y, and z values...
A = fread(fid3,[n,4],'float');
P = A(:,1); x = A(:,2); y = A(:,3); z = A(:,4);
fclose(fid3);
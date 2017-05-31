function MakePXYZBmat()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains PXYZ.dat
% Creates a matrix-level, binary version of PXYZ.dat called 
%    PXYZBmat.bin and stores it in MyData.

% Acquire and store n (the total number of zipcodes)...
fid0 = fopen([pwd '\MyData\PXYZ.dat'],'r');
n = str2num(fgetl(fid0));
fid3 = fopen([pwd '\MyData\PXYZBmat.bin'],'w');
fwrite(fid3,n,'int');

% Set up and write the matrix of P, x, y, and z values...
A = zeros(n,4);
for k=1:n
    A(k,:) = str2num(fgetl(fid0));
end
fwrite(fid3,A,'float');
fclose('all');
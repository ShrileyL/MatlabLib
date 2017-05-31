function [P,x,y,z] = GetPXYZBvec()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains the file PXYZBvec.bin.
% P, x, y, and z are column vectors that house the population
%    and xyz data encoded in PXYZBvec.bin

% Acquire n (the total number of zipcodes) and initialize
%   P, x, y, and z.
fid2 = fopen([pwd '\MyData\PXYZBvec.bin'],'r');
n = fread(fid2,1,'int');
P = zeros(n,1); x = zeros(n,1); y = zeros(n,1); z = zeros(n,1);

% Set up P, x, y, and z...
for k=1:n
    NextLineOfData = fread(fid2,4,'float');
    P(k) = NextLineOfData(1);
    x(k) = NextLineOfData(2);
    y(k) = NextLineOfData(3);
    z(k) = NextLineOfData(4);
end
fclose(fid2);
function [P,x,y,z] = GetPXYZB()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains the file PXYZB.bin.
% P, x, y, and z are column vectors that house the population
%    and xyz data encoded in PXYZB.bin

% Acquire n (the total number of zipcodes) and initialize
%   P, x, y, and z...
fid1 = fopen([pwd '\MyData\PXYZB.bin'],'r');
n = fread(fid1,1,'int');
P = zeros(n,1); x = zeros(n,1); y = zeros(n,1); z = zeros(n,1);

% Set up P, x, y, and z...
for k=1:n
    Pk =  fread(fid1,1,'float'); P(k) = Pk;
    xk =  fread(fid1,1,'float'); x(k) = xk;
    yk =  fread(fid1,1,'float'); y(k) = yk;
    zk =  fread(fid1,1,'float'); z(k) = zk;
end
fclose(fid1);
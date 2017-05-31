function [P,x,y,z] = GetPXYZ()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains the file PXYZ.dat.
% P, x, y, and z are column vectors that house the population
%    and xyz data encoded in PXYZ.dat

% Open PXYZ.dat, obtain the total number of zipcodes,
%   and initialize the arrays, P, x, y, and z...
fid = fopen([pwd '\MyData\PXYZ.dat'],'r');
n = str2num(fgetl(fid));
P = zeros(n,1); x = zeros(n,1); y = zeros(n,1); z = zeros(n,1);
% Extract the population and xyz data for each zipcode...
for k=1:n
    NextLine = fgetl(fid);
    t = str2num(NextLine);
    P(k) = t(1); x(k) = t(2); y(k) = t(3); z(k) = t(4);
end
fclose(fid);
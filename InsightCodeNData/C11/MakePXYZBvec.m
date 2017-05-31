function MakePXYZBvec()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains PXYZ.dat
% Creates a vector-level, binary version of PXYZ.dat called 
%    PXYZBvec.bin and stores it in MyData.

% Acquire and store n (the total number of zipcodes)...
fid0 = fopen([pwd '\MyData\PXYZ.dat'],'r');
n = str2num(fgetl(fid0));
fid2 = fopen([pwd '\MyData\PXYZBvec.bin'],'w');
fwrite(fid2,n,'int');

% Process zipcodes 1 through n...
for k=1:n
    NextLineOfData = str2num(fgetl(fid0));
    fwrite(fid2,NextLineOfData,'float');
end
fclose('all');

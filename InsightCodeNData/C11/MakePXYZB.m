function MakePXYZB()
% Assumes that MyData is a subdirectory of the working directory
%    and that it contains PXYZ.dat
% Creates a scalar-level, binary version of PXYZ.dat called 
%    PXYZB.bin and stores it in MyData.

% Acquire and store n (the total number of zipcodes)...
fid0 = fopen([pwd '\MyData\PXYZ.dat'],'r');
n = str2num(fgetl(fid0));
fid1 = fopen([pwd '\MyData\PXYZB.bin'],'w');
fwrite(fid1,n,'int');

% Process zipcodes 1 through n...
for k=1:n
    NextLineOfData = str2num(fgetl(fid0));
    fwrite(fid1,NextLineOfData(1),'float');  % P
    fwrite(fid1,NextLineOfData(2),'float');  % x
    fwrite(fid1,NextLineOfData(3),'float');  % y
    fwrite(fid1,NextLineOfData(4),'float');  % z
end
fclose('all');

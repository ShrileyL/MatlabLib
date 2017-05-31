function MakePXYZ()
% Assumes that InsightData and MyData are subdirectories of the
%   working directory.
% Creates and stores a text file PXYZ.dat in MyData.
% The first line contains the number of zipcodes.
% Subsequent lines specify the population of the zipcode and 
%   its normalized Cartesian coordinates.

% Determine the number of lines in the file...
fid  = fopen([pwd '\InsightData\11_2\Zipcode.dat'],'r');
n = 0;
while ~feof(fid)
    s = fgetl(fid);
    n = n+1;
end
fclose(fid);

% Create PXYZ.dat and write the value of n to the first line...
fid0 = fopen([pwd '\MyData\PXYZ.dat'],'w');
fprintf(fid0,'%d \n',n);
% Pass through Zipcode.dat again copying the relevant data to PXYZ.dat
fid  = fopen([pwd '\InsightData\11_2\Zipcode.dat'],'r');
while ~feof(fid)
    % Process the kth line
    s = fgetl(fid);
    P    = str2double(s(67:75));
    Lat  = str2double(s(137:146));
    Long = str2double(s(147:157));
    [x,y,z] = EarthCartesian(Lat,Long);
    fprintf(fid0,'%6d %12.6f  %12.6f  %12.6f \n',P,x,y,z);
end
fclose('all');
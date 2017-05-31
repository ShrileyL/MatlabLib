function C = File2Cell(fname)
% fname is a string that gives the complete path to a .dat file.
% C is a cell array with C{i} being the i-th line in the file.
fid = fopen(fname,'r');
i=0;
while ~feof(fid)
    i=i+1;
    C{i} = fgetl(fid);
end
fclose(fid);
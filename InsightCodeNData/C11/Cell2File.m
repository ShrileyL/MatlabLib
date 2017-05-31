function Cell2File(C,fname)
% C is a cell array of strings
% Creates .dat file with name specified by the string fname.
% The i-th line in the file is C{i}

fid = fopen([fname '.dat'],'w');
for i=1:length(C)
    fprintf(fid,'%s\n',C{i});
end
fclose(fid);

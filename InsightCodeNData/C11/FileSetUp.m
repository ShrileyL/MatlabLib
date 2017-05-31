% Script FileSetUp
% Contrast four different ways to store the population and
% location data in a file.

MakePXYZ();       % PXYZ.dat
MakePXYZB();      % PXYZB.bin
MakePXYZBvec();   % PXYZBvec.bin
MakePXYZBmat();   % PXYZBmat.bin

% Benchmark how long it takes to extract and convert 
% P, x, y, z
tic; [P,x,y,z] = GetPXYZ();     T  = toc;
tic; [P,x,y,z] = GetPXYZB();    T1 = toc;
tic; [P,x,y,z] = GetPXYZBvec(); T2 = toc;
tic; [P,x,y,z] = GetPXYZBmat(); T3 = toc;

clc
fprintf('T/T1 = %8.2f\nT/T2 = %8.2f\nT/T3 = %8.2f\n ',...
        T/T1, T/T2, T/T3)


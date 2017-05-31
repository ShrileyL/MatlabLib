% Script Eg5_1
% Examines the relative error in MySqrt

clc
disp('    a       Relative Error')
disp('             in MySqrt(a)')
disp('--------------------------')
for i = -6:6
    a = 10^i;
    y = sqrt(a);
    z = MySqrt(a);
    relErr = abs(y - z)/y;
    fprintf('%7.0e    %15.7e\n',a,relErr)
end
function [alpha,beta,sbar,phiVal] = GetFocusAndString(x,y)
% x and y are column n-vectors that represent approximate 
%     orbital points.
% alpha and beta are the xy coordinates of focus F2, obtained
%     via ginput.
% sbar is the average of the string-length estimates s(i).
% phiVal is the square root of 
%     |s(i)-stilde|^2 + ... + |s(n)-stilde|^2.

[alpha,beta] = ginput(1);
n = length(x);
sVec = sqrt(x.^2 + y.^2) + sqrt((x-alpha).^2 + (y-beta).^2);
sbar = sum(sVec)/n;
phiVal = sqrt(sum((sVec-sbar).^2)/n);
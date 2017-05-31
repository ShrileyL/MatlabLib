% Script Eg4_3
% Floating Point Number Facts

clc
% p = largest positive integer so 1+1/2^p > 1.
x=1; p=0; y=1; z=x+y/2;
while x~=z
    y = y/2;
    p = p+1;
    z = x+y/2;
end
fprintf('p = %2.0f   is the largest positive integer so 1+1/2^p > 1.\n',p)

% q = smallest positive integer so 1/2^q = 0.
x = 1; q = 0;
while x>0
    x = x/2;
    q = q+1;
end;
fprintf('q = %2.0f is the smallest positive integer so 1/2^q == 0.\n',q)

% r = smallest positive integer so 2^r = inf.
x = 1; r = 0;
while x~=inf
    x = 2*x;
    r = r+1;
end
fprintf('r = %2.0f is the smallest positive integer so 2^r == inf.\n',r)



% Script File: Eg6_1
% Pi computation with uniform and normal distributions

% Initializations
n = 10000; rand('seed',0); randn('seed',0);

% Throw Darts Uniformly...
x = -1+2*rand(n,1);
y = -1+2*rand(n,1);
Hits = 0;
for k=1:n
    % Check the k-th dart throw...
    if x(k)^2 + y(k)^2 <= 1
        Hits = Hits + 1;
    end
end
piEstU = 4*(Hits/n);

% Throw Darts with Aiming...
sigma = .4;
x = sigma*randn(n,1);
y = sigma*randn(n,1);
Hits = 0;
nSquare = 0;
for k=1:n
    % Check the k-th dart throw...
    if abs(x(k))<=1 && abs(y(k))<=1
        nSquare = nSquare + 1;
        if x(k)^2 + y(k)^2 <= 1
            Hits = Hits + 1;
        end
    end
end
piEstN = 4*(Hits/nSquare);

% Display the estimates...
clc
fprintf('n: %1d\n',n)
fprintf('Pi Estimate via Uniform Distribution: %7.5f\n',piEstU)
fprintf('Pi Estimate via N(0,%5.2f)          : %7.5f\n',sigma,piEstN)





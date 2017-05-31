function NewM = Refine(M)
% M is an m-by-n dot matrix representing a digit.
% NewM is a 2m-by-2n dot matrix that represents the same digit
% but "looks better."

% Compute and display the embedded digit...
[m,n] = size(M);
NewM = Embed(M);
d = 2*n/5;
base = 7*d;
DrawDigit(-d,-d,base,NewM,1)

% Turn lights on and off until happy with the design. Process
% terminated by clicking outside the digit grid....
[x,y] = ginput(1);
while x>0 && x<=2*n && y>=0 && y<=2*m
    i = 2*m-floor(y);
    j = ceil(x);
    if NewM(i,j)==1
        % Turn this light off...
        NewM(i,j) = 0;
    else
        % Turn this light on...
        NewM(i,j) = 1;
    end
    DrawDigit(-d,-d,base,NewM,1)
    [x,y] = ginput(1);
end



function NewM = Embed(M)
% M is an m-by-n matrix of zeros and ones.
% NewM is a (2m)-by-(2n) matrix of zeros and ones obtained by ``replacing''
%   the (i,j) entry in M with ones(2,2) if M(i,j) is 1 and zeros(2,2) if
%   M(i,j) is zero.

[m,n] = size(M);
NewM = zeros(2*m,2*n);
for i=1:m
    for j=1:n
        NewM(2*i-1:2*i,2*j-1:2*j)=M(i,j);
    end
end
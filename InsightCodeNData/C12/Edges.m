function Edges(jpegIn,jpegOut,tau)
% jpegIn is a string that specifies the address of a jpeg file that
%   encodes an image I.
% tau is a threshold value between 0 and 255.
% Builds an image of I's edges and stores it as a jpeg file whose
%   address is specified by the string jpegOut.

% Convert the jpegIn to a grayscale matrix...
A = rgb2gray(imread(jpegIn));
% Visit each pixel and see if the rate of change is above the threshold...
[m,n] = size(A);
Rho = zeros(m,n,'uint8');
for i=1:m
    for j = 1:n
        % The 3-by-3 matrix of neighbors...
        Neighbors = A(max(1,i-1):min(i+1,m),max(1,j-1):min(j+1,n));
        % Color white those pixels above the threshold...
        if max( max( abs( double(Neighbors) - double( A(i,j))))) > tau
            Rho(i,j) = 255;
        end
    end
end
imwrite(Rho,jpegOut,'jpg')



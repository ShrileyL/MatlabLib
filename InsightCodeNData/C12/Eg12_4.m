% Script Eg12_4
% Illustrates median filtering and edge detection.
close all
% Acquire and show the original color image...
A = imread([pwd '\InsightData\12_4\Cornell_Clock.jpg'],'jpg');
imshow(A)

% Turn into black-and-white, display, and save...
B = rgb2gray(A);
figure; imshow(B)
imwrite(B,[pwd '\MyData\Cornell_Clock_Gray.jpg'],'jpg')

% Extract a portion of the black-and-white image, add some noise,
% and observe the effect of median filtering...
figure
C = B(850:1150,2350:2650);
for k=1:200
    i = floor(1+rand(1)*299); j = floor(1+rand(1)*299);
    C(i:i+1,j:j+1) = floor(10*rand(2,2));
end
imshow(C)

figure
D = MedianFilter(C);
imshow(D)

% Find and display the edges in the black-and-white image...
figure
jpegIn  = [pwd '\InsightData\12_4\Cornell_Clock.jpg'];
jpegOut = [pwd '\MyData\Cornell_Clock_Edges.jpg'];
for tau = 30:10:50
    Edges(jpegIn,jpegOut,tau);
    imshow(imread(jpegOut))
    title(sprintf('Tau = %2d',tau),'Fontsize',14)
    pause
end
% Script Eg4_2
% Displays interpolants of the colors cyan and magenta

% Prepare the figure window...
close all
figure
axis equal off
hold on

% Color initializations...
cyan    = [0 1 1];  % rgb of the "bottom" color
magenta = [1 0 1];  % rgb of the "top" color
n = 10;             % the number of "in between" colors is n-1
x = [0 3 3 0];      % locates the x-values in the tiles
y = [0 0 1 1];      % locates the y-values in the tiles

% Add colored tiles to the figure window...
for j=0:n
    % Display the jth tile and its rgb value...
    f = j/n;
    v = (1-f)*cyan + f*magenta;
    fill(x,y+j,v)
    text(3.5,j+.5,sprintf('[ %4.2f , %4.2f , %4.2f ]',v(1),v(2),v(3)))
end
hold off
shg


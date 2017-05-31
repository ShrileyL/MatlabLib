% Script Eg13_2
% Examines the Touch-tone system in the presence of noise.

for Trial = 1:10
    close all
    % Choose a button at random...
    i = ceil(rand*4); 
    j = ceil(rand*3); 
    % Generate and the tone...
    [tVals,y] = MakeShowPlay(i,j);
    % "Send" a noisy version...
    y = SendNoisy(tVals,y);
    % "Receive" and decipher...
    ShowCosines(y)
    pause(2)
end




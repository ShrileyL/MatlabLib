% Script Eg7_1
% Illustrates the function Transition.

% Set up the transition probability matrix and initialize
% the state vector....
P = [ .32   .17   .11    .46 ;...
      .18   .43   .32    .33 ;...
      .27   .22   .39    .14 ;...
      .23   .18   .18    .07 ];
x = 1000000*ones(4,1);
% Simulate 5 time steps and display...
clc
disp('     x(1)      x(2)       x(3)       x(4)   ')
disp('--------------------------------------------')
disp(sprintf(' %8.0f  ',x))
for t = 1:5
    x = Transition(P,x);
    disp(sprintf(' %8.0f  ',x))
end
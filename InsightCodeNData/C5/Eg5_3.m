% Script Eg5_3
% Illustrates DrawFlag

% Initializations
close all
figure
axis equal off
hold on
SW = 1;               % Stripe width
FW = 13*SW;           % Flag width
GR = (1+sqrt(5))/2;   % Golden ratio
FL = GR*FW;           % Flag length
RR = 2.5*SW;          % Ring radius
SR = 0.5*SW;          % Star radius
% Display four flags with different blue lengths...
BL = .30*FL; DrawFlag( 0, 0,FL,FW,BL,RR,SR)
BL = .35*FL; DrawFlag(25, 0,FL,FW,BL,RR,SR)
BL = .40*FL; DrawFlag( 0,16,FL,FW,BL,RR,SR)
BL = .45*FL; DrawFlag(25,16,FL,FW,BL,RR,SR)



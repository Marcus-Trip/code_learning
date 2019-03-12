% EE220L-002 Lab 7
% Marcus Hall
% Feb 21, 2019
%

%% 2d 
Calc =[16.276,50.21,324.178,324.178];
measured =[16.29,49.31,330.35,330.35]

% percent differnce Calculations for 2d
pd = efficency(Calc,measured)
pd = pd'
measured'
 
%% Analsys %%
% This was used to find the power load of resitors
% in a Thevenin Circuit 

% setting up the Power load function
R_L= 10:1:1500;
load_p = (16.292./(330.2+R_L)).^2 .*(R_L);

% creating the measured points
R_act = [100,220,1000];
load_p_act = (16.292./(330.2+R_act)).^2 .*(R_act);

% plotting the 2 power load functions 
plot(R_L,load_p,'b',R_act,load_p_act,'*r')
ylabel('Load Power')
xlabel('Load Resistance')
legend('Calculated ','Measured')
title('EE220L Lab 7:')
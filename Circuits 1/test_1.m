% CT_plot_example.m
% EE 220/220L Circuits I
% Dr. Thomas P. Montoya
% 1-17-2019
%
clear;clc;close all; % Clear/close variables, command window, & figures
w = 500;    % Natural Frequency of sinusoid (rad/s)
T = 2*pi/w; % Period of sinusoid (s)
% Define an analytic sinusoidal voltage
t = 0:T/25:3*T; % Define vector of time points over range 0<t<3T
v = 170*sin(w*t+pi/4); % Calculate a sinusoidal voltage (V)
% Define some vectors containing experimental data
texp = [0,0.002,0.005,0.007,0.011,0.014,0.017,0.02,0.024,0.027,0.03,0.033];
vexp = [100,160,0,-165,0,165,0,-155,40,170,0,-165];
z = 0*t;    % create a zero axis
% Now, plot the data- analytic function as red line 'r-', 
% exp. data as blue dots 'b.', and zero axis as a black line 'k-'
plot(t,v,'r-',texp,vexp,'b.',t,z,'k-','linewidth',2)
axis([0 3*T -200 200]), % define ranges for horizontal & vertical axes 
xlabel('t (s)','fontsize',14,'fontname','times'), % horiz. axis label
ylabel('v(t) (V)','fontsize',14,'fontname','times'), % vert. axis label
title('Continuous Time Plot','fontsize',16,'fontname','times'), %plot title
legend('analytic','experimental'); %Create legend for first two sets of data
grid; %put gridlines on plot 
set(findobj('type','line'),'linewidth',1.5) % find all lines & set width
set(findobj('type','line'),'markersize',18) % find all marker & set size
set(findobj('type','axes'),'linewidth',2)% find all axes & set width
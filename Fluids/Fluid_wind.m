m = csvread('cdat.csv',1);
V = [m(:,3),m(:,6)]
F_d = [m(:,2),m(:,5)]

rho = 1.204; %[kg/m^3]
D = 4; %[in]
mu = 1.003e-3; %[kgs/m]
D =.1016; %[m] 
F_d = F_d / 0.22481;
V = V / 2.237; %[m\s]

% smooth %
C_d_s = F_d(:,1)./(1/2*rho*V(:,1).^2*pi/4*D^2);
Reynolds_s = rho*V(:,1).*D/mu;



% Rough %
C_d_r = F_d(:,2)./(1/2*rho*V(:,2).^2*pi/4*D^2)
Reynolds_r = rho*V(:,2).*D/mu



subplot(2,2,1)
loglog(Reynolds_s,C_d_s,'-*R',Reynolds_r,C_d_r,'-dg')
title('Log plot of Cd Vs Reynolds number reduced in Metric 8am')
xlabel('Reynolds')
ylabel('Cd')
legend('Smooth','Rough')
grid on



%%%English%%%
%V = [m(:,2),m(:,5)];% old
%F_d = [m(:,3),m(:,6)];
V = [m(:,3),m(:,6)]
F_d = [m(:,2),m(:,5)]

V = V*5280/3600
mu = 6.733e-4; %[lbm/ft^3]
rho = 62.30; %[lbm*s/ft]
D = 4/12; %[ft]

% smooth %
C_d_s = F_d(:,1)./(1/2*rho/32.174*V(:,1).^2*pi/4*D^2);
Reynolds_s = rho*V(:,1).*D/mu;
C_d_s(1)=0;


% rough % 
C_d_r = F_d(:,2)./(1/2*rho/32.174*V(:,2).^2*pi/4*D^2)
Reynolds_r = rho*V(:,2).*D/mu


subplot(2,2,2)
loglog(Reynolds_s,C_d_s,'-*R',Reynolds_r,C_d_r,'-dg')
title('Log plot of Cd Vs Reynolds number reduced in English 8am')
xlabel('Reynolds')
ylabel('Cd')
legend('Smooth','Rough')
grid on

Reynolds_r_1=Reynolds_r;
C_d_r_1=C_d_r;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = csvread('WT project.csv',1);
V = [m(:,2),m(:,5)];% old
F_d = [m(:,3),m(:,6)];

rho = 1.204; %[kg/m^3]
D = 4; %[in]
mu = 1.003e-3; %[kgs/m]
D =.1016; %[m] 
F_d = F_d / 0.22481;
V = V / 2.237; %[m\s]

% smooth %
C_d_s = F_d(:,1)./(1/2*rho*V(:,1).^2*pi/4*D^2);
Reynolds_s = rho*V(:,1).*D/mu;
C_d_s(1)=0;

% Rough %
C_d_r = F_d(:,2)./(1/2*rho*V(:,2).^2*pi/4*D^2)
Reynolds_r = rho*V(:,2).*D/mu

subplot(2,2,3)
loglog(Reynolds_s,C_d_s,'-*R',Reynolds_r,C_d_r,'-dg')
title('Log plot of Cd Vs Reynolds number reduced in Metric 11am')
xlabel('Reynolds')
ylabel('Cd')
legend('Smooth','Rough')
grid on





%%%English%%%
V = [m(:,2),m(:,5)];% old
F_d = [m(:,3),m(:,6)];


V = V*5280/3600;
mu = 6.733e-4; %[lbm/ft^3]
rho = 62.30; %[lbm*s/ft]
D = 4/12; %[ft]

% smooth %
C_d_s = F_d(:,1)./(1/2*rho/32.174*V(:,1).^2*pi/4*D^2);
Reynolds_s = rho*V(:,1).*D/mu;
C_d_s(1)=0;

% rough % 
C_d_r = F_d(:,2)./(1/2*rho/32.174*V(:,2).^2*pi/4*D^2)
Reynolds_r = rho*V(:,2).*D/mu


subplot(2,2,4)
loglog(Reynolds_s,C_d_s,'-*R',Reynolds_r,C_d_r,'-dg')
title('Log plot of Cd Vs Reynolds number reduced in English 11am')
xlabel('Reynolds')
ylabel('Cd')
legend('Smooth','Rough')
grid on

pause

loglog(Reynolds_r,C_d_r,'-dg',Reynolds_r_1,C_d_r_1,'-sb')
title('Log plot of Cd Vs Reynolds number reduced in English 11am Vs 8am')
xlabel('Reynolds')
ylabel('Cd')
legend('11 am','8 am')
grid on
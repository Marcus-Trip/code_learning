
close all
clear

t = -pi/2:0.1:pi/2;
K=80;
sigma_x_1 = K./sqrt(2.*pi.*.001).*cos(t./2).*(1-sin(t./2).*sin(3.*t./2));
sigma_x_5 = K./sqrt(2.*pi.*.005).*cos(t./2).*(1-sin(t./2).*sin(3.*t./2));
sigma_x_10 = K./sqrt(2.*pi.*.010).*cos(t./2).*(1-sin(t./2).*sin(3.*t./2));


sigma_y_1 = K./sqrt(2.*pi.*.001).*cos(t./2).*(1+sin(t./2).*sin(3.*t./2));
sigma_y_5 = K./sqrt(2.*pi.*.05).*cos(t./2).*(1+sin(t./2).*sin(3.*t./2));
sigma_y_10 = K./sqrt(2.*pi.*.010).*cos(t./2).*(1+sin(t./2).*sin(3.*t./2));



plot(t,sigma_x_1,t,sigma_x_5,t,sigma_x_10)
legend('1','5','10')
title('sigma x vs angle from -Pi/2 to -Pi/2')
ylabel('sigma x [Mpa]')
xlabel('Theta')



figure
plot(t,sigma_y_1,t,sigma_y_5,t,sigma_y_10)
legend('1','5','10')
title('sigma y vs angle from -Pi/2 to -Pi/2')
ylabel('sigma y [Mpa]')
xlabel('Theta')

figure
plot(t,sigma_x_1,t,sigma_x_5,t,sigma_x_10,t,sigma_y_1,t,sigma_y_5,t,sigma_y_10)
legend('1x','5x','10x','1y','5y','10y')
title('sigma x & y vs angle from -Pi/2 to -Pi/2')
ylabel('sigma x & y [Mpa]')
xlabel('Theta')
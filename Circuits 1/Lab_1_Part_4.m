% Lab_1_Part_4
% EE 220L Lab 1 Part 4
% Marcus Hall
% Jan. 17, 2019


time_exp = [0,4,7,10,14,18,25,32,40,50,55,59]; %[sec]
data_exp = [46,36,29,25,19,15,10,6,4,2,1.2,1.1]; %[mA]
if(length(time_exp) ~= length(data_exp))
    error('Unequal Time & data array')
end

plot(time_exp,data_exp,'r.','MarkerSize', 20)
axis([0 60 0 50]), % define ranges for horizontal & vertical axes 
ylabel('i(t)  [mA]','fontsize',14,'fontname','times'), % vert. axis label
xlabel('t [s]','fontsize',14,'fontname','times'), % horiz. axis label
title('EE 220L Lab 1, part 4a, Marcus Hall, 1/17/19','fontsize',16,'fontname','times')
legend('experimental')
saveas(gcf,'lab_1_4a.png')




I_not = 46;
tau = time_exp./log(I_not./data_exp)
tau = tau(2:length(tau));
Tau = mean(tau)
time = 0:0.5:60;
i_t = I_not * exp(-time./Tau);

plot(time_exp,data_exp,'r.',time,i_t,'b-','linewidth',2,'MarkerSize', 20)
axis([0 60 0 50]), % define ranges for horizontal & vertical axes 
ylabel('i(t)  [mA]','fontsize',14,'fontname','times'), % vert. axis label
xlabel('t [s]','fontsize',14,'fontname','times'), % horiz. axis label
title('EE 220L Lab 1, part 4b, Marcus Hall, 1/17/19','fontsize',16,'fontname','times')
legend('experimental','analytic')
saveas(gcf,'lab_1_4b.png')



a = 364
b = -228
c = 2+5j
d = -3-4j

%%%%%%%%%%%%%% Step 2 %%%%%%%%%%%%
%%% a %%%
calc_1 = abs(b).^0.6*(0.3*a-sqrt(5*a))/(3*pi)

%%% b %%%
S = c*conj(d)

%%% c %%%
Real_S = real(S)
Imag_S = imag(S)
Mag_S = abs(S)
Ang_S_rad = angle(S)
Ang_S_deg = rad2deg(Ang_S_rad)

%%% d %%%%
F = exp(-0.1*c)*cos(a*pi/b)


%%%%%%%%%%%%% Step 3 %%%%%%%%%%%%%%%%
restistors = [133.4,162.3,158.7,148.1,154.2,141.6,147.5]

R_avg = mean(restistors)
R_median = median(restistors)
R_min = min(restistors)
R_max = max(restistors)
R_Sd = std(restistors)


Lab_1_Part_4;




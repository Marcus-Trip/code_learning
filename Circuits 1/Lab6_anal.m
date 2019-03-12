%% lab 4
meas = [15.478,11.478,13.897,18.032,18.034,15.307,26.36,2.428,8.167,9.394,11.607,18.664,15.979,38.59,52.25,314.767,3.944,45.089,131.135,45.132,336.156,247.323,695.932];
simul = [15.837,12.273,14.008,18.034,18.034,15.979,27.093,2.5925,8.5218,9.4264, 12.019,18.688,15.979,39.229,56.938,332.52,4.4964,49.092,132.04,48.392,337.02,253.05,707.45];

if(length(meas) ~= length(simul))
    length(meas)
    length(simul)
    error('Array length not equal')
end

Lab4 = efficency(simul,meas)

%% lab 5
% [emiter,collector, base,source]
meas_V = [1.139,11.335,1.995,16.00];
simul_V = [1.0514,11.587,1.7539,16];

meas_I = [10.07,9.997,0.0575,10.447];
simul_I = [9.6458,9.5718,.074046,10.101];

meas_R = [109,461,0,0];

meas_pwr1 = Power('r',meas_R,'i', meas_I/1000);
meas_pwr1 = meas_pwr1*1000+[0,0,0,-16*meas_I(4)];
meas_pwr1(3) = -sum(meas_pwr1);
simul_pwr = [10.142,42.236,100.9,-161.62];

meas_2 = [meas_V,meas_I,meas_pwr1];
simul_2= [simul_V,simul_I,simul_pwr];

if(length(meas_2) ~= length(simul_2))
    length(meas_2)
    length(simul_2)
    error('Array length not equal 2')
end
Lab5 = efficency(simul_2,meas_2)


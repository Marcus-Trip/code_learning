% Marcus Hall
% ME 352 Hmwk 3
% 2/14/19


%% Question 1 %%
close,clear
m_1=2; %kg
m_2=5; %kg
k_1=5; %N/m
k_2=10; %N/m
b=1.5; % Ns/m


L = [m_2,0,k_2];
R = [m_1,b,k_1+k_2];
% converging the polynomials together
denom = conv(L,R);
% subtracting the k2^2 from the poly.
denom(5) = denom(5)-k_2^2;

% setting up the transfer function
sys=tf(L,denom);

% plotting the step and impulse on the same figure
step(sys)
hold on
impulse(sys)
legend('Step','Impluse')
title('Transfer Function')





%% question 2 %%
% from prob 1 we know the final value is 0.2
close
fv = 0.2*.02;
t = (0:0.1:25)'';

y_val = 1;
i= 1;

m_1=2; %kg
m_2=5; %kg
k_1=5; %N/m
k_2=10; %N/m

b = .01;
% Ns/m

while (abs(0.2-y_val)>fv)
L = [m_2,0,k_2];
R = [m_1,b,k_1+k_2];
% converging the polynomials together
denom = conv(L,R);
% subtracting the k2^2 from the poly.
denom(5) = denom(5)-k_2^2;

% setting up the transfer function
sys=tf(L,denom);
y = step(sys,t);
% we need when time = 20 
slot = 20/0.1;
y_val=y(slot)

b=b+0.01;

if(b == 10)
    break
end
i = i +1;
if(mod(i,100)==0)
step(sys,25)
hold on
pause
end

end
y_val
b
i

step(sys)


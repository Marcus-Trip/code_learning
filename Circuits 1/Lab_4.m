

clear
clc
% x = v_1
% y = v_2
% z = v_3
% m = v_4


syms x y z m q 
eqn1 = -0.016 + (x-y)/220 == 0;
eqn2 = (y-x)/220 + y/470 + (y-z)/680 + (y-m)/680 ==0;
eqn3 = (z-y)/680 + z/1500 + (z-m)/330 == 0;
eqn4 = m == 18;
eqn5 = q + (m-y)/680+(m-z)/330+m/1000 == 0;
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5],[x,y,z,m,q]);
X = linsolve(A,B);
double(X)

x = X(1);
y = X(2);
z = X(3);
m = X(4);

I_o(1)= (x-y)/220;
I_o(2)= y/470;
I_o(3)= (y-z)/680;
I_o(4)= (y-m)/680;
I_o(5)= z/1500;
I_o(6) = (y-z)/330;
I_o(7) = m/1000;

I_u = I_o.*1000;
current = double(I_u')
I_vs = X(5)
I_s = .016;

% P = IV = I^2*R 

P_a(1) = (y-x)*I_o(1);
P_a(2) = y * I_o(2);
P_a(3) = (z-y)*I_o(3);
P_a(4) = (m-y)*I_o(4);
P_a(5) = z * I_o(5);
P_a(6) = (z-m)*I_o(6); 
P_a(7) = m * I_o(7);
P_a = abs(P_a)
P_a(8) = -x*I_s;
P_a(9)= 18 * I_vs;
check = double(sum(P_a))
power = double(P_a')


%%
% Using Mesh
clear
I_a = -0.016;

syms a b c d e 
eqn1 = a == -0.016;
eqn2 = 220*a+470*(a-b) ==0;
eqn3 = 470*(b-a)+1500*(b-c)+680*(b-e) == 0;
%eqn4 = 330*(c-e)+1500*(c-b)-18 ==0;
eqn5 = 1000*(d-c) ==18;
eqn6 = 680*e+680*(e-b)+330*(e-c)==0;

%[A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5,eqn6],[a,b,c,d,e]);
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn5,eqn6],[a,b,c,d,e]);

X = linsolve(A,B)
double(X)






%%
% take 2 on Nodal
clear
syms x y z q 
eqn1 = z/1000==q + (z-x)/680+(z-y)/330;
eqn2 = (y-x)/680 == y/1500+(y-z)/330;
eqn3 = 0.016 == x/470+(x-y)/680+(x-z)/480;
eqn4 = z==18;

[A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn4],[x,y,z,q]);

X = linsolve(A,B)
double(X)

x = X(1)-0.016*220;
y = X(1);
z = X(2);
m = X(3);

I_o(1)= (x-y)/220;
I_o(2)= y/470;
I_o(3)= (y-z)/680;
I_o(4)= (y-m)/680;
I_o(5)= z/1500;
I_o(6) = (z-m)/330;
I_o(7) = m/1000;

I_u = I_o.*1000;
current = double(I_u')

I_vs = X(4);
I_vs = double(I_vs)
I_s = .016;

% P = IV = I^2*R 

P_a(1) = (y-x)*I_o(1);
P_a(2) = y * I_o(2);
P_a(3) = (z-y)*I_o(3);
P_a(4) = (m-y)*I_o(4);
P_a(5) = z * I_o(5);
P_a(6) = (m-z)*I_o(6); 
P_a(7) = m * I_o(7);
P_a = abs(P_a)
P_a(8) = -x*I_s;
P_a(9)= -18 * I_vs;

check = double(sum(P_a))
power = double(P_a')



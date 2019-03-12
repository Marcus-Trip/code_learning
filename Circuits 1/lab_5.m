clc
syms I_s I_c I_e
eqn1 = -16 + 27000*(I_s-I_c)+3900*(I_s-I_e) == 0;
eqn2 = 147*(I_e-I_c) == I_c;
eqn3 = 3900*(I_e-I_s) + 0.68 + 110*I_e == 0;
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3],[I_s,I_c,I_e]);




format long

X = linsolve(A,B);
double(X)   

I_s = X(1);
I_c = X(2);
I_e = X(3);

I_b = double(I_c/147)
node_check = double(-I_c+I_e)

V_C = double(16-I_c*470)
V_B_1 = double(16 - (I_s-I_c)*27000)
V_B_2 = double((I_s-I_e)*3900)
V_E_b = V_B_1 - 0.68
V_E = double(I_e*110)
V_CE = double(V_C - V_B_1)


display('Power abssorbed')
% P = I^2*R

P_1 = double((I_s-I_c)^2 * 27000)
P_1_c = (16-V_B_1)^2/27000

P_2 = double((I_s-I_e)^2 * 3900)
P_2_c = V_B_1^2/3900

P_Vs = double(-I_s * 16)

P_Re = double(V_E * I_e)
P_Re_c = V_E^2/110

P_Rc = double(I_c^2 * 470)
P_Rc_c = (16-V_C)^2/470

P_T = -double( P_Vs + P_Re + P_Rc + P_1+ P_2_c)

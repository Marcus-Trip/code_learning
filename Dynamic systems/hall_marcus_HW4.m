% Marcus Hall
% ME 352 Hmwk 4
% 3/13/19

figure
tran_A = tf([1],[1,6,8,0])
bode(tran_A)
title('A')

figure
tran_B = tf([1,5],[1,6,5])
bode(tran_B)
title('B')


figure
tran_C = tf([1,8,15],[1,6,8,0])
bode(tran_C)
title('C')

figure
tran_4 = tf([1],[2,0.25,15])
bode(tran_4)
title('Q4')

%% Question 5 %%

L = [2,0.25,15];
R = [50,0.4,80];
% converging the polynomials together
denom = conv(L,R);
tran_5 = tf([1],denom)
figure
bode(tran_5)
title('Q5')


m=5; %kg
k=10; %N/m
b=20; % Ns/m
figure
sys=tf(1,[m b k]);

step(sys)
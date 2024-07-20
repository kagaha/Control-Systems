% State Space Model for Cruise Control
m = 1000;
b = 50;

A = -b/m;
B = 1/m;
C = 1;
D = 0;

cruise_ss = ss(A,B,C,D)

%Transfer Function model for Cruise control
num=1;
den=[m,b];
sys=tf(num,den)


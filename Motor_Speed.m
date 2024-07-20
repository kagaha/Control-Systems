
J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
A = [-b/J   K/J
    -K/L   -R/L];
B = [0
    1/L];
C = [1   0];
D = 0;
% Transfer Function for Motor speed
s = tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2)
%State space for Motor Speed

motor_ss = ss(A,B,C,D)
%or
motor_ss1 = ss(P_motor)


J = 3.2284E-6;
b = 3.5077E-6;
K = 0.0274;
R = 4;
L = 2.75E-6;
%State Space for Motor Position

A = [0 1 0
    0 -b/J K/J
    0 -K/L -R/L];
B = [0 ; 0 ; 1/L];
C = [1 0 0];
D = 0;

motor_ss = ss(A,B,C,D)
%Transfer Function for Motor Position

s = tf('s');
P_motor = K/(s*((J*s+b)*(L*s+R)+K^2))
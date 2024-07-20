% State Space model for Mass-SPring Damper System
m = 1;
k = 1;
b = 0.2;
F = 1;

A = [0 1; -k/m -b/m];
B = [0 1/m]';
C = [1 0];
D = 0;
sys = ss(A,B,C,D)

% Transfer Function model for Mass-SPring Damper System
s = tf('s');
sys = 1/(m*s^2+b*s+k)

% Another Transfer Function model for Mass-SPring Damper System
num = [1];
den = [m b k];
sys = tf(num,den)


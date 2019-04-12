clc;
clear all;

syms  s;
num =sym2poly((s+1));
den = sym2poly(6+5*s+s^2);

sys = tf(num,den);

subplot(2,2,1)
step(sys)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('step');

subplot(2,2,2)
impulse(sys)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('impulse');

%imp = 1+0*s;

%sys2 = sys*imp;

subplot(2,2,3)
t = 0:0.01:4;
u = sin(2*t);
lsim(sys,u,t)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('sin(2*t)');

subplot(2,2,4)
t = 0:0.01:4;
u = exp(-1*t);
lsim(sys,u,t)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('e-t');


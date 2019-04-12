clc;
t = 0:0.01:20;
t1 = -20:0.01:20; 

x1 = imp1(t1);
subplot(3,3,1)
plot(t1,x1,'y');
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('imp');
x2 = step1(t);
subplot(3,3,2);
plot(t,x2);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('step');
x3 = ramp1(t);
subplot(3,3,3);
plot(t,x3)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('ramp');


x4 = ramp_step(t1);
subplot(3,3,4);
plot(t1,x4)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('u(t)+r(t-2)');

x5 = step_int(t);
subplot(3,3,5);
plot(t,x5)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('unit impulse integral');


x6 = para1(t1);
subplot(3,3,6);
plot(t1,x6)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('unit para');
x7 = sgn1(t1);
subplot(3,3,7);
plot(t1,x7);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('signum');
x8 = sinc1(t1);
subplot(3,3,8);
plot(t1,x8);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('sinc');

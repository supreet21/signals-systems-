clc;
fs = 0.1;
t = 0:0.01:20;
t1 = 0:0.1:-20; 
N = 100;
n = 0:1:N-1;
tt = -50:50;
l = length(tt)/2;



fun_x1 = @(x) sin(2*pi*x*fs);
x1 = fun_x1(t);
fun_x2 = @(x) 0.2.^x;
x2 = fun_x2(n);
fun_x3 = @(x) 0.9.^x;
x3 = fun_x3(n);
fun_x5 = @(x) imp1(x);
x5 = imp1(t);
fun_x4 = @(x) step1(x);
x4 = step1(t);
fun_x6 = @(x) ramp1(x);
x6 = ramp1(t);
fun_x7 = @(x) step1(x)+step1(-x);
x7 = fun_x7(t);
subplot(3,3,1)
plot(t,x1,'y');
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('Sine');
subplot(3,3,2);
plot(n,x2)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('0.2^n');
subplot(3,3,3);
plot(n,x3)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('0.9^n');
subplot(3,3,4);
plot(t,x4)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('unit step');
subplot(3,3,5);
plot(t,x5)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('unit impulse');
subplot(3,3,6);
plot(t,x6)
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('unit ramp');
subplot(3,3,7);
plot(t,x7);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('x7');
x23 = x2+x3;
subplot(3,3,8);
plot(n,x23);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('x2+x3');

X = sprintf('enrygy of x1 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x1).^2)

X = sprintf('power of x1 = ');
disp(X)
p1 = norm((x1).^2)/length(x1)

X = sprintf('enrygy of x2 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x2).^2)

X = sprintf('power of x2 = ');
disp(X)
p1 = norm((x2).^2)/length(x2)

X = sprintf('enrygy of x3 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x3).^2)

X = sprintf('power of x1 = ');
disp(X)
p1 = norm((x3).^2)/length(x3)

X = sprintf('enrygy of x4 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x4).^2)

X = sprintf('power of x4 = ');
disp(X)
p1 = norm((x4).^2)/length(x4)

X = sprintf('enrygy of x5 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x5).^2)

X = sprintf('power of x5 = ');
disp(X)
p1 = norm((x5).^2)/length(x5)

X = sprintf('enrygy of x6 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x6).^2)

X = sprintf('power of x6 = ');
disp(X)
p1 = norm((x6).^2)/length(x6)

X = sprintf('enrygy of x7 = ');
disp(X)
%e1 = integral((fun_x1).^2,-Inf,Inf)
e1 = norm((x7).^2)

X = sprintf('power of x7 = ');
disp(X)
p1 = norm((x7).^2)/length(x7)

figure;
plot(t,x1,'y');
hold on;
x1t = sin(4*pi*t*fs);
plot(t,x1t,'r');
hold on;
x1a = 2*sin(2*pi*t*fs);
plot(t,x1a, 'c');
x1th = sin(2*pi*t*fs+pi/3);
plot(t,x1th,'g');
hold on;
x1ah = sin(2*pi*t*fs)+1;
plot(t,x1ah,'k');
hold on;
x1ar = -sin(2*pi*t*fs);
plot(t,x1ar,'m');
hold on;
x1tr = sin(2*pi*(-t)*fs);
plot(t,x1tr,'b');
hold on;
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('Sine');
legend('original','time scaliing', 'amplitude scalling', 'time shifting', 'amplitude scalling','amplitude reversal','time reversal');
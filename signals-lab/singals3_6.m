n = 0:1:200-1;
a = 0.9;
fun_x = @(n) (a.^n).*step1(n);
x = fun_x(n);
h = step1(n);
w = conv(x,h);
o = 0:length(w)-1;
subplot(2,2,1);
plot((0:length(x)-1),x);
subplot(2,2,2);
plot((0:length(h)-1),h);
subplot(2,2,3);
plot(o,w);
hold on;

a = 1;
fun_x = @(n) (a.^n).*step1(n);
x = fun_x(n);
w = conv(x,h);
plot(o,w,'r');
hold on;

a = 10;
fun_x = @(n) (a.^n).*step1(n);
x = fun_x(n);
w = conv(x,h);
plot(o,w,'y');
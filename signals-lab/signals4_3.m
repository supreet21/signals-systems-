clear all;
clc;
n = 1:1:10;
l = [1];
m = [0.1 -0.1176 0.1 1.7119 -0.81];
a = ones(1,10);
b = filter(m,l,a);
stem(n,b);

figure;
fun_x = @(x) cos(0.1*pi*x).*step1(x);
x = fun_x(n);
y = filter(m,l,x);
stem(n,y);

figure;
freqz(b);

figure;
zplane(b);
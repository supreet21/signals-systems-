clear all;
clc;
n = 1:1:10;
l = [1 1 -0.6];
m = [0.8 -0.44 -0.36 0.02];
a = ones(1,10);
b = filter(m,l,a);
stem(n,b);
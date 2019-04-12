n = 0: 1:200-1;
fun_s = @(n) 20*(0.9).^n; 
s = fun_s(n);
S = RandStream('mt19937ar','Seed',5489);
x = awgn(s,5,'measured');
plot(n,[x]);
hold on
plot(n, s,'m');
M = 5;
y = sum2(x,M);
hold on
plot(n, y, 'r');

M = 10;
y = sum2(x,M);
hold on
plot(n, y, 'c');

M = 20;
y = sum2(x,M);
hold on
plot(n, y, 'k');


legend('s[n]','original signal x[n]','y[n] M=5','y[n] M=10','y[n] M=20');



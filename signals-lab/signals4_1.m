t = linspace(0,4)';
x = square(t);
load enso;
f = fit(x,t,'fourier7')
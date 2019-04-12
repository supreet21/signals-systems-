h = [1 1 1];
x = [0.5 2];
w = conv(h,x);

subplot(2,2,1);
plot((0:length(w)-1),w);

subplot(2,2,2);
plot((0:length(x)-1),x);

subplot(2,2,3);
plot((0:length(h)-1),h);
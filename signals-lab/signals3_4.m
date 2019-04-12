x = [1 3 -2 1 2 -1 4 4 2];
y = [2 -1 4 1 -2 3];
w = xcorr(x,y);

subplot(2,2,1);
plot((0:length(x)-1),x);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('x');

subplot(2,2,2);
plot((0:length(y)-1),y);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('y');

subplot(2,2,3);
plot((0:length(w)-1),w);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('co-relation(x,y)');
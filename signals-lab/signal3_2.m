x = [-2 0 1 -1 3];
y = [1 2 0 -1];
w = conv(x,y);

subplot(2,2,1);
plot((0:length(x)-1),x);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('a');

subplot(2,2,2);
plot((0:length(y)-1),y);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('b');

subplot(2,2,3);
plot((0:length(w)-1),w);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('covulation(a,b)');
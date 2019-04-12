t = -20: 0.1:20;
figure('Name','e^(jt)');
fun_x1 = @(x) exp(1i*x);
x1 = fun_x1(t);
odd_x1 = odd1(x1/1i);
even_x1 = even1(x1);
subplot(2,2,1)
plot(t,even_x1);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('even');
subplot(2,2,2)
plot(t,odd_x1);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('odd');

figure('Name','1+2t+3t^2+4t^5');
%fun_x2 = @(x) (1+2*x+3*x*x+4*x^5);
x2 = (1+2.*t+3.*t.*t+4.*t.^5);
odd_x2 = odd1(x2);
even_x2 = even1(x2);
subplot(2,2,1)
plot(t,even_x2);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('even');
subplot(2,2,2)
plot(t,odd_x2);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('odd');

figure('Name','e^(-2t) cos(3t)');
%fun_x3 = @(x) exp(-2*x)*cos(3*x);
x3 = exp(-2*(t)).*cos(3*(t)) ;
odd_x3 = odd1(x3);
even_x3 = even1(x3);
subplot(2,2,1)
plot(t,even_x3);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('even');
subplot(2,2,2)
plot(t,odd_x3);
xlabel('Time (sec)');
ylabel('Amplitude') ;
title('odd');
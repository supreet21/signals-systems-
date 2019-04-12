clear all;
close all;
clc;
[s,fs]=audioread('1172010.wav');
A=audioinfo('1172010.wav');
disp(A);
%Frame window L=0.03seconds
subplot(3,2,1)
frameduration=0.03;
framesize=frameduration*fs;
signal=s(2001:2001+framesize);
framedsignal=signal*hanning(length(signal));
plot(signal);
title('Overlapping Windowed signal L=3ms');
xlabel('time');
ylabel('x(t)');
Sum=sum(abs(signal));
disp('The Sum of absolute amplitude L=3ms');
disp(Sum);
Auto=xcorr(signal,signal);
Mean_level=rms(signal);
so=audioplayer(signal,fs);
subplot(3,2,2)
plot(Auto)
title('Autocorrelation- L=3ms');
xlabel('time');
ylabel('x(t)')
[pks,locs] = findpeaks(Auto);
[mm,peak1_ind]=max(pks);
period=locs(peak1_ind+1)-locs(peak1_ind);
pitch_Hz=fs/period;
disp('The pitch L=3ms is ');
disp(pitch_Hz);
Power=sum(abs(signal))/length(signal);
disp('The Power L=3ms is ');
disp(Power)
%Frame window L=0.05seconds
subplot(3,2,3)
frameduration=0.05;
framesize=frameduration*fs;
signal=s(2001:2001+framesize);
framedsignal=signal*hanning(length(signal));
plot(signal);
title('Overlapping Windowed signal L=5ms');
xlabel('time');
ylabel('x(t)');
Sum=sum(abs(signal));
disp('The Sum of absolute amplitude  L=5ms');
disp(Sum);
Auto=xcorr(signal,signal);
Mean_level=rms(signal);
so=audioplayer(signal,fs);
subplot(3,2,4)
plot(Auto)
title('Autocorrelation- L=5ms');
xlabel('time');
ylabel('x(t)')
[pks,locs] = findpeaks(Auto);
[mm,peak1_ind]=max(pks);
period=locs(peak1_ind+1)-locs(peak1_ind);
pitch_Hz=fs/period;
disp('The pitch L=5ms is ');
disp(pitch_Hz);
Power=sum(abs(signal))/length(signal);
disp('The Power L=5ms is ');
disp(Power)
%Frame window L=0.1seconds
subplot(3,2,5)
frameduration=0.1;
framesize=frameduration*fs;
signal=s(2001:2001+framesize);
framedsignal=signal*hanning(length(signal));
plot(signal);
title('Overlapping Windowed signal L=100ms');
xlabel('time');
ylabel('x(t)');
Sum=sum(abs(signal));
disp('The Sum of absolute amplitude  L=100ms');
disp(Sum);
Auto=xcorr(signal,signal);
Mean_level=rms(signal);
so=audioplayer(signal,fs);
subplot(3,2,6)
plot(Auto)
title('Autocorrelation- L=100ms');
xlabel('time');
ylabel('x(t)')
[pks,locs] = findpeaks(Auto);
[mm,peak1_ind]=max(pks);
period=locs(peak1_ind+1)-locs(peak1_ind);
pitch_Hz=fs/period;
disp('The pitch L=100ms is ');
disp(pitch_Hz);
Power=sum(abs(signal))/length(signal);
disp('The Power L=100ms is ');
disp(Power);

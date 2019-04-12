clear all;
close all;
clc;
% Reading the audio signal
[y,fs]=audioread('1172010.wav');
A=audioinfo('1172010.wav');
%Displaying the details of the audio signal
sprintf('The details of the audio are as follows ');
disp(A);
%Plotting the right and left channel of the audio
sound(y, fs); % Playback
left=y(:,1); % Left channel
right=y(:,2); % Right channel
subplot(3,2,1), plot((1:length(left))/fs, left);
title('Original Signal-left channel');
xlabel('time');
ylabel(' x(t)');
subplot(3,2,2), plot((1:length(right))/fs, right);
title('Original Signal-right channel');
xlabel('time');
ylabel(' x(t)');
%Performing the mean subtraction
y_mean=mean(y,2);
disp('Length of Y')
length(y)
disp('Length of Y-Mean')
length(y_mean)
Avg= bsxfun(@minus,y,y_mean);
A_left=Avg(:,1); % Left channel
A_right=Avg(:,2); % Right channel
subplot(3,2,3), plot((1:length(left))/fs, A_left);
title('Mean subtracted Signal-left channel');
xlabel('time');
ylabel(' x(t)');
subplot(3,2,4), plot((1:length(right))/fs, A_right);
title('Mean subtracted Signal-right channel');
xlabel('time');
ylabel(' x(t)');
%Resampling the signal.
[P,Q]= rat(96e3/fs);
difference=abs(P/Q*96e3-48000);
disp('The difference in sapmles');
disp(difference);
x_new=resample(y,P,Q);
Fs=60e3;
x_left=x_new(:,1); % Left channel
x_right=x_new(:,2); % Right channel
subplot(3,2,5), plot((1:length(x_left))/Fs, x_left);
title('Resampled Signal-left channel');
xlabel('time');
ylabel(' x(t)');
subplot(3,2,6), plot((1:length(x_right))/Fs, x_right);
title('Resampled Signal-right channel');
xlabel('time');
ylabel(' x(t)');
original=audioplayer(y,fs);
mean_avg=audioplayer(y,fs);
resampled=audioplayer(x_new,Fs);
avgg=audioplayer(Avg,Fs);

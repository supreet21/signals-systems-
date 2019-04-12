clear all;
close all;
clc;
[s,fs]=audioread('new_sig2.wav');
A=audioinfo('new_sig2.wav');
disp(A);
no_samp = fs/0.030;
sprintf('the number of samples');
disp(A);
% subplot(3,2,1)
% frameduration=0.03;
% framesize=frameduration*fs;
[P,Q]= rat(8e3/fs);
difference=abs(P/Q*8e3-48000);
disp('The difference in sapmles');
disp(difference);
x_new=resample(s,P,Q);
Fs=8000;
resamp = audioplayer(x_new,Fs);


left=s(:,1); % Left channel
right=s(:,2); % Right channel
subplot(3,2,1), plot((1:length(left))/fs, left);
title('Original Signal-left channel');
xlabel('time');
ylabel(' x(t)');
subplot(3,2,2), plot((1:length(right))/fs, right);
title('Original Signal-right channel');
xlabel('time');
ylabel(' x(t)');

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

l1 = length(x_right);
for i=1:l1
     if(i>=l1-266)
        break
     end
    sigi = x_left(i:266+i);
    mean_sig(i) = mean(abs(sigi));
    auto_sig = xcorr(sigi,sigi);
    [pks,locs] = findpeaks(auto_sig);
    [mm,peak1_ind]=max(pks);
    period=locs(peak1_ind+1)-locs(peak1_ind);
    pitch_Hz(i)=fs/period;
    power(i)=sum(abs(sigi))/length(sigi);
    
end
figure;
subplot(3,2,1)

  plot((1:length(sigi))/Fs, sigi);
  title('original signals');
xlabel('time');
ylabel(' ');
  subplot(3,2,2)

  plot((1:length(mean_sig)), mean_sig);
  title('mean of the signals');
xlabel('time');
ylabel(' mean');
 subplot(3,2,3)
  
  plot((1:length(power)), power);
  title('power of the signals');
xlabel('time');
ylabel(' mean');

  subplot(3,2,4)
 
  plot((1:length(auto_sig)), auto_sig);
   title('auto of the signals');
xlabel('time');
ylabel(' mean');


  subplot(3,2,5)
  plot((1:length(pitch_Hz)), pitch_Hz);
   title('pitch of the signals');
xlabel('time');
ylabel(' pitch');
 
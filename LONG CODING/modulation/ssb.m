close all;
clear all;
clc;
Fc = 12000; Fs = 270000;
t = [0:1/Fs:0.01]';
s = sin(2*pi*300*t)+2*sin(2*pi*600*t);
subplot(3,1,1);
plot(t,s);
xlabel('time');
ylabel('amplitude');
title('original signal');
y1 = ssbmod(s,Fc,Fs,0); % Lower-sideband modulated signal
y2 = ssbmod(s,Fc,Fs,0,'upper'); % Upper-sideband modulated signal
subplot(3,1,2);
plot(t,y1,'r');
xlabel('time');
ylabel('amplitude');
title('ssb signal');
s1 = ssbdemod(y1,Fc,Fs); % Demodulate lower sideband
s2 = ssbdemod(y2,Fc,Fs); % Demodulate upper sideband
subplot(3,1,3);
plot(t,s1);
% Plot results to show that the curves overlap.
 plot(t,s1,'r-',t,s2,'k--');
legend('Demodulation of upper sideband','Demodulation of lower sideband');
xlabel('time');
ylabel('amplitude');
title('original back signal');

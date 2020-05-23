close all;
clear all;
clc;
Fs = 8000;                             		      	% Sampling rate of signal
Fc = 300;                                   		 % Carrier frequency
t = [0:Fs]'/Fs;                             		 % Sampling times
s1 = sin(2*pi*300*t)+2*sin(2*pi*600*t);      % Channel 1
s2 = sin(2*pi*150*t)+2*sin(2*pi*900*t);      % Channel 2
x = [s1,s2];                                		 % Two-channel signal
dev = 50;                                   		 % Frequency deviation in modulated signal
subplot(3,1,1);
plot(t,s1);
xlabel('time');
ylabel('amplitude');
title('original signal');
xlim([0 0.03]);	
y = fmmod(s1,Fc,Fs,dev);                   	 % Modulate both channels.
subplot(3,1,2);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('FM Modulate signal');
xlim([0 0.03]);
z = fmdemod(y,Fc,Fs,dev);                    	% Demodulate both channels.
subplot(3,1,3);
plot(t,z);
xlabel('time');
ylabel('amplitude');
title('FM demodulate signal');
xlim([0 0.03]);


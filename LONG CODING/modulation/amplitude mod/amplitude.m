clc;
clear;
close all;
Fc = 10000; Fs = 80000;                      % Sampling rate is 80000 samples per second and
t = [0:1/Fs:0.01]';                 	     % Sampling times for 0.01 second
s = sin(2*pi*300*t) +2*sin(2*pi*600*t); 
subplot(3,1,1);
plot(t,s)                                	 % Original signal
xlabel('time');
ylabel('amplitude');
title('original signal');
[num,den] = butter(10,Fc*2/Fs);                % Lowpass filter
y1 = ammod(s,Fc,Fs);                           %Modulate s to produce y1.
subplot(3,1,2);
plot(t,y1);
xlabel('time ');
ylabel('amplitude ');
title('modulated signal');
s1 = amdemod(y1,Fc,Fs,0,0,num,den);         % Demodulate.
subplot(3,1,3);
plot(t,s1);
xlabel('time');
ylabel('amplitude');
title('demodulated signal');

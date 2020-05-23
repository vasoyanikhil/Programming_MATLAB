% Prepare to sample a signal for two seconds,
% at a rate of 100 samples per second.
close all;
clear all;
clc;
Fs = 100;                        % Sampling rate
t = [0:2*Fs+1]'/Fs;              % Time points for sampling
x = sin(2*pi*t)                  % Create the signal, a sum of sinusoids.                            
subplot(2,2,1);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('original signal');
Fc = 10;                        % Carrier frequency in modulation
phasedev = pi/2;                % Phase deviation for phase modulation
y = pmmod(x,Fc,Fs,phasedev);    % Modulate.
subplot(2,2,2);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('pmmodulated signal');
k = awgn(y,10,'measured',103)  % Add noise.
subplot(2,2,3);
plot(t,k);
xlabel('time');
ylabel('amplitude');
z = pmdemod(y,Fc,Fs,phasedev); % Demodulate.
subplot(2,2,4);
plot(t,z);
xlabel('time');
ylabel('amplitude');
title('pmdemodulated signal');

clc;
clear;
[x,fs] = wavread('i can do.wav');

plot(x)
xlabel('Sample Number')
ylabel('Amplitude')
title('{\bf Blue Whale Call}')

%soundsc(x,fs)
bCall = x;%(2.45e4:3.10e4);
tb = 10*(0:1/fs:(length(bCall)-1)/fs); % Time base
figure(2)
plot(tb,bCall)
xlim([0 tb(end)])
xlabel('Time (seconds)')
ylabel('Amplitude')
title('{\bf Blue Whale B Call}')


m = length(bCall);      % Window length
n = pow2(nextpow2(m));  % Transform length
y = fft(bCall);         % DFT of signal
f = (0:n-1)*(fs/n)/10;  % Frequency range
p = y.*conj(y)/n;       % Power of the DFT



Plot the first half of the periodogram, up to the Nyquist frequency:
plot(f(1:floor(n/2)),p(1:floor(n/2)))
xlabel('Frequency (Hz)')
ylabel('Power')
title('{\bf Component Frequencies of a Blue Whale B Call}')
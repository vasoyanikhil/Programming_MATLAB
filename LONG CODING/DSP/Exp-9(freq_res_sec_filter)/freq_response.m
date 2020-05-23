clc;
clear;
b = [1];		        % Numerator coefficients
a = [1,-0.9];	        % Denominator coefficients
w = -pi:.01:pi;
[h w] = freqz(b,a,w);
subplot (2,1,1), plot (w/pi, abs(h));
title ('frequency response of 1 order system h(n)');
xlabel ('normalised frequency')
ylabel ('magnitude');
subplot (2,1,2), plot (w/pi, angle(h));
xlabel ('Normalised frequency')
ylabel ('phase in radians');

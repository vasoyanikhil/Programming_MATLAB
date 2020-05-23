clc;
clear;
close all;
x=[3.0000             0.5000 - 1.5388i   0.5000 + 0.3633i   0.5000 - 0.3633i   0.5000 + 1.5388i];
y=idft1(x,5);
subplot(2,1,1);
stem(abs(y));


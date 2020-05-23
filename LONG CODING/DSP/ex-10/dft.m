clc;
clear;
close all;
x=[1 1 1];
y=dft1(x,50);
subplot(2,1,1);
stem(abs(y));
subplot(2,1,2);
stem(angle(y));


clc;
close all;
clear;
w=-pi:0.01:pi;
b=[1];
a=[1 -0.9];
x=freqz(b,a,w);
m=abs(x);
subplot(2,1,1);
plot(m)
y=angle(x);
subplot(2,1,2);
plot(y);
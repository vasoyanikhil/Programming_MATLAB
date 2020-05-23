%NAME: Jadeja Jaydevsinh G.
%ROLL NO: 12MEC08
%BATCH: ME-2nd sem,2013
%DEPARTMENT: Electronics & Communication.
%SUBJECT: ADC

%1.Aim: To verify the nyquist theoram.


close all;
clear all;

t=-10:0.01:10;
T=8;
fm=1/T;
x=sin(2*pi*fm*t);
subplot(311);plot(t,x);

n=-10:1:10;
j=ones(1,length(n));
subplot(312);stem(n,j);axis([-10 10 0 2]);
xn=sin(2*pi*n*fm);
subplot(313);stem(n,xn);hold on;plot(n,xn);

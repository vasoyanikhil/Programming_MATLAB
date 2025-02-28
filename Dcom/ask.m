clc;
close all;
clear;

%sine wave 1KHz
f=1;
t=-3:.05:3;
a=sin(2*pi*f*t);
subplot(3,1,1);
plot(a);
title('square wave from 1 component')

j=0;
for k=1:101
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
   j=b+j;
end
g=j*(4/pi);
subplot(3,1,2);
plot(g);
title('square wave from 101 component');

e=a*g;
subplot(3,1,3);
plot(e);
title('psk');


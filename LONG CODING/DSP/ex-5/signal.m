clc;
close all;
clear;

%sine wave 1KHz
f=1;
t=-3:.05:3;
a=sin(2*pi*f*t);
subplot(3,2,1);
plot(a);
title('square wave from 1 component')

%3 component sine wave
i=0;
for k=1:3
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
    i=b+i;
end
e=i*(4/pi);
subplot(3,2,2);
plot(e);
title('square wave from 3 component');

%7 component sine wave
l=0;
for k=1:7
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
    l=b+l;
end
m=l*(4/pi);
subplot(3,2,3);
plot(m);
title('square wave from 7 component');


%15 component sine wave
n=0;
for k=1:15
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
    n=b+n;
end
o=n*(4/pi);
subplot(3,2,4);
plot(o);
title('square wave from 15 component');

%31 component sine wave
p=0;
for k=1:31
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
    p=b+p;
end
q=p*(4/pi);
subplot(3,2,5);
plot(q);
title('square wave from 3 component');

%101 component sine wave
j=0;
for k=1:101
    b=[[sin(2*pi*((2*k)-1)*f*t)]/[((2*k)-1)]];
   j=b+j;
end
g=j*(4/pi);
subplot(3,2,6);
plot(g);
title('square wave from 101 component');






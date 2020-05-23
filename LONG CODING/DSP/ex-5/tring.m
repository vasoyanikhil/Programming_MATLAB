clc;
close all;
clear;
t=-10:0.05:10;
f=1;

%31 component tringular wave
p=0;
for k=1:31
    b=[((-1).^k)*[[sin(((2*k)-1)*t)]/[((2*k)-1).^2]]];
    p=b+p;
end
q=p*(8/(pi.^2));
subplot(3,2,1);
plot(q);
title('tringular wave from 31 component');

%31 component saw-tooth wave
i=0;
for k=1:31
    b=[((-1).^(k+1))*[[sin(2*pi*f*k*t)]/[k]]];
    i=b+i;
end
e=i*(2/pi);
subplot(3,2,2);
plot(e);
title('saw-tooth wave from 31 component');

%half wave
f=1;
t=-3:.05:3;
a=sin(2*pi*f*t);
b=find(a<0);
a(b)=0;
subplot(3,2,3);
plot(a);
title('half wave from 1 component')

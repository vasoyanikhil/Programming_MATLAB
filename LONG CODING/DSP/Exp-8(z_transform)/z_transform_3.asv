clc;
clear;
close all;
figure(1);
% pole-zero plot of Unit step
z=0;
p=1;
subplot(321);zplane(z,p);title('Unit step');

% pole-zero plot of Exponential signal     where (0 < a < 1)
a=0.8;
z=0;
p=a;
subplot(322);zplane(z,p);title('Exponential signal 0 < a < 1');

% pole-zero plot of Exponential signal     where (1 < a )
a=1.2;
z=0;
p=a;
subplot(323);zplane(z,p);title('Exponential signal 1 < a');

% pole-zero plot of Exponential signal     where (-1 < a < 0)
a=-0.8;
z=0;
p=a;
subplot(324);zplane(z,p);title('Exponential signal -1 < a < 0');

% pole-zero plot of Exponential signal     where ( a <- 1)
a=-1.2;
z=0;
p=a;
subplot(325);zplane(z,p);title('Exponential signal a <- 1');

% pole-zero plot of Unit step(anti causal)
a=-1;
z=0;
p=a;
subplot(326);zplane(z,p);title('Exponential signal(a=-1)');


figure(2);
% pole-zero plot of	x(n)=exp(-(n/40))  u(n)
a=exp(-(1/40));
z=0;
p=a;
subplot(321);zplane(z,p);title('x(n)=exp(-(n/40))  u(n)');

% pole-zero plot of	X(z) =  (0.689 Z)/(Z^2  -1.38Z +0.95)
a=0.689;
b=[1 -1.38 0.95];
[z p k]=tf2zpk(a,b);
subplot(322);zplane(z,p);title('X(z) =  (0.689 Z)/(Z^2  -1.38Z +0.95)');

% pole-zero plot of 	H(z) =  (Z^4+ 1)/Z^4 
a=[1 0 0 0 1];
b=[1 0 0 0 0];
[z p k]=tf2zpk(a,b);
subplot(323);zplane(z,p);title('H(z) =  (Z^4+ 1)/Z^4');

% pole-zero plot of 	X(z) =  (Z-1)/(Z^2+(3/4)Z+(1/8))
a=[1 -1];
b=[1 3/4 1/8];
[z p k]=tf2zpk(a,b);
subplot(324);zplane(z,p);title('X(z) =  (Z-1)/(Z^2+(3/4)Z+(1/8))');

% pole-zero plot of    X(z) =  (Z^2  - 0.35 Z)/(Z^2  -0.707 Z+0.25)
a=[1 -0.35 0];
b=[1 -0.707 0.25];
[z p k]=tf2zpk(a,b);
subplot(325);zplane(z,p);title('X(z) =  (Z^2  - 0.35 Z)/(Z^2  -0.707 Z+0.25)');

% pole-zero plot of    X(z) =  (Z^2+ 1.5 Z+0.6)/(Z^2- Z + 0.5)
a=[1 1.5 0.6];
b=[1 1 0.5];
[z p k]=tf2zpk(a,b);
subpnlot(326);zplane(z,p);title('X(z) =  (Z^2+ 1.5 Z+0.6)/(Z^2- Z + 0.5)');
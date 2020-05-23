
%Write a program on to representation of Basic Signals.
clc;
clear;

%To generate an unit step sequence
N = 21;
x  = ones (1,N);
n =  0:1:N-1;
subplot (2,2,1), stem (n,x);
xlabel ('n'), ylabel ('x (n) ');
title ('Unit Step sequence');
grid on;

%Addition of two sinusoidal sequences
x1 = sin (0.1*pi*n) + sin (0.2*pi*n);
subplot (2,2,2), stem (n,x1);
xlabel('n'), ylabel ('x1 (n)');
title ('Addition of two sinusoidal sequences');
grid on;

%Exponential sequence
x2 = 0.8.^ (n);
subplot (2,2,3), stem (n,x2);
xlabel ('n');
ylabel ('x2(n)');
title ('Exponential Sequence');
grid on;

%Cosine sequence
x3 = cos (0.1*pi*n);
subplot (2,2,4), stem (n,x3);
xlabel ('n'), ylabel ('x3(n)');
xlabel ('n'), ylabel ('x3(n)');
title ('Sinusodial Sequence');
grid on;
clc
clear;
A=1.2;
n=1:21;
x=A.^n;
stem(n,x)
figure(2)
A=0.8;
n=1:21;
x=A.^n;
stem(n,x)

figure(3)
A=-1.2;
n=1:21;
x=A.^n;
stem(n,x)

figure(4)
A=-0.8;
n=1:21;
x=A.^n;
stem(n,x)

figure(5)
A=1.2;
n=1:21;
x=-(A.^n);
stem(n,x)

figure(6)
A=0.8;
n=1:21;
x=-(A.^n);
stem(n,x)




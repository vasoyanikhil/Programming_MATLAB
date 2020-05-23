clear all;
clc;
ifile='amplified i can do.wav';
echofile='echo i can do.wav';
[x, Fs, nbits, readinfo] = wavread(ifile);
subplot(211);plot(x);title('amplified voice');
n=1:length(x);

figure(1);
D1=11000;% value for produce the delay
D2=12000;% value for produce the delay
D3=13000;% value for produce the delay
d1=[zeros(1,D1) x(n)];% give a delay by zero padding
d2=[zeros(1,D2) x(n)];
d3=[zeros(1,D3) x(n)];

y(n)=x(n)+(0.25*d1(n))+(0.125*d2(n))+(0.0625*d3(n));%produce echo

subplot(212);plot(y);title('echo signal');
wavwrite(y,44100,16,echofile);% give a echo output file3
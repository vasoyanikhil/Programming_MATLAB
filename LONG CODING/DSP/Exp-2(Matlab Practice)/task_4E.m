clear all;
clc;
ifile='amplified i can do.wav';
[x, Fs, nbits, readinfo] = wavread(ifile);
subplot(211);plot(x);title('amplified voice');
n=1:length(x);

ofile='without noise i can do.wav';
y=x;
noise=find(y<0.1 & y>-0.1);
y(noise)=0;
subplot(212);plot(y);title('without noise between voice sample');

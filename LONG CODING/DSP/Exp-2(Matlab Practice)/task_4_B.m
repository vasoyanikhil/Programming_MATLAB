clc;
clear;
ifile='i can do.wav';
[y Fs] = wavread(ifile);
subplot(121);plot(y);title('Original signal');
y=y*16;
subplot(122);plot(y);title('Amplified signal');
ofile='amplified i can do.wav';
wavwrite(y, Fs, ofile)
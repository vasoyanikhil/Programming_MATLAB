clc;
close all;
clear;
a=2;
n=[1];
d=[1 -0.8];
[z p k]=tf2zpk(n,d);
zplane(z,p)


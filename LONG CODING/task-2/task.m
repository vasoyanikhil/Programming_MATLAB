clc;
close all;
clear;
x=imread('cameraman.tif');
%imwrite(x,'cameraman.tif');
subplot(1,2,1);
imhist(x);
title('histrogram');
subplot(1,2,2);
histeq(x);
title('histrogram equlization');

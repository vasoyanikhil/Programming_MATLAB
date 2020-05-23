clc;
close all;
clear;

x=imread('cameraman.tif');
figure(1);
imshow(x);
title('image');

d=Imcrop(x);
figure(2);
imshow(d);
title('crop image')


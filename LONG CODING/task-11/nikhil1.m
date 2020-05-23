clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(1,3,1);
imshow(x);
title('simple image');


LEN = 21;
THETA = 11;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(x, PSF, 'conv', 'circular');
subplot(1,3,2);
imshow(blurred);
title('Blurred Image');

wnr1 = deconvwnr(blurred, PSF,0.00001);
subplot(1,3,3);
imshow(wnr1);
title('Restored Image');



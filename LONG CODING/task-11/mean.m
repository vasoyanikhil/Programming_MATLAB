clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(1,4,1);
imshow(x);
title('simple image');


z = imnoise(x,'salt & pepper',0.05);
y= ordfilt2(z,2,true(2));
subplot(1,4,2);
imshow(y);
title('min image')

l = imnoise(x,'salt & pepper',0.05);
n= ordfilt2(l,5,true(5));
subplot(1,4,3);
imshow(n);
title('max image')
 
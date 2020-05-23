clc;
close all;
clear;
x=imread('jayan.jpg');
subplot(1,5,1);
imshow(x);
title('colour image');

y=rgb2gray(x);
subplot(1,5,2);
imshow(y);
title('gray image');

z=im2bw(x);
subplot(1,5,3);
imshow(z);
title('binary image');

find (y<50);
c=0;
find(y>150);
c=1;
c=y;
subplot(1,5,4);
imshow(c);
subplot(1,5,5);
imhist(c);
title('intensity gray image');
     
          


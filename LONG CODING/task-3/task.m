clc;
close all;
clear;
x=imread('cameraman.tif');
subplot(1,2,1);
imshow(x);
title('original image');
for i=1:256
    for j=1:256
        y(i,j)=255-(x(i,j));
    end
end
subplot(1,2,2);
imshow(y);
title('negetive  image');


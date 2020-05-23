
clc;
clear all;
close all;
I = imread('cameraman.tif');
subplot(2,2,1); 
imshow(I); title('Original Image');

%H = fspecial('motion',20,45);
%MotionBlur = imfilter(I,H,'replicate');
%subplot(2,2,2); 
%imshow(MotionBlur);title('Motion Blurred Image');

H = fspecial('laplacian',1.0);
j = imfilter(I,H,'replicate');
k=I-j;
subplot(2,2,2); 
imshow(k); title('laplacian Image');

H1 = -1*fspecial('laplacian',0.2);
j1 = imfilter(I,H,'replicate');
k1=I+j1;
subplot(2,2,3); 
imshow(k1); title('Image');






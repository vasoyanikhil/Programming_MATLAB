clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(3,3,1);
imshow(x);

for i=1:8
    
     a=bitget(x,i); 
     a=a*255;
     subplot(3,3,i+1);
     imshow(a);
end

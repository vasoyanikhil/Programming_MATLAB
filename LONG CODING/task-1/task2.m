clc;
close all;
clear;
x=imread('cameraman.tif');
figure(1);
imshow(x);
s=size(x)
for i=1:256
    for j=1:256
        y(i,j)=x(i,j);
    end
end
b=imresize(y,7);
figure(2);
imshow(b);

size(b);

info;

c=imrotate(b,90);
figure(3);
imshow(c);

d=Imcrop(b);
figure(4);
imshow(d);

e= histeq(b);
figure(5);
imshow(e);

imhist(b);

f=imdivide(b,2);
figure(6);
imshow(f);






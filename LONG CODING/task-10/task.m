clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(1,3,1);
imshow(x);

x=double(x);
for i=2:255
    for j=2:255
        v(i,j)=[x(i,j)+x(i,j-1)+x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1)+x(i-1,j+1)+x(i-1,j)+x(i-1,j-1)]/9;
    end
end
v=uint8(v);
subplot(1,3,2);
imshow(v);

x=double(x);
for i=2:255
    for j=2:255
        d(i,j)=[2*x(i,j)-[x(i,j)+x(i,j-1)+x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1)+x(i-1,j+1)+x(i-1,j)+x(i-1,j-1)]/8];
    end
end
d =uint8(d);
subplot(1,3,3);
imshow(d);
